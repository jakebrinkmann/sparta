include common.mk

YAML2JSON = ( python -c 'import sys, yaml, json; json.dump(yaml.load(sys.stdin), sys.stdout, indent=4)' )
MARATHON_CURL = -s -H "Content-type: application/json" -H "Authorization: Basic $(BASICAUTH)"

.PHONY: deploy
deploy:
	$(YAML2JSON) < apps/$(APP).yaml | curl -X POST $(MARATHON_CURL) $(MARATHONHOST)/v2/apps  -d @- | jq .

.PHONY: gdeploy
gdeploy:
	$(YAML2JSON) < groups/$(GROUP).yaml | curl -X PUT $(MARATHON_CURL) $(MARATHONHOST)/v2/groups  -d @- | jq .

.PHONY: undeploy
undeploy:
	curl -X DELETE $(MARATHON_CURL) $(MARATHONHOST)/v2/apps/$(APP) | jq .

.PHONY: ungdeploy
ungdeploy:
	curl -X DELETE $(MARATHON_CURL) $(MARATHONHOST)/v2/groups/$(GROUP)?force=true | jq .
