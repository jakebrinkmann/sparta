include common.mk

YAML2JSON = ( python -c 'import sys, yaml, json; json.dump(yaml.load(sys.stdin), sys.stdout, indent=4)' )
MARATHON_CURL = curl -s -X POST -H "Content-type: application/json" -H "Authorization: Basic $(BASICAUTH)" -d @-

.PHONY: deploy
deploy:
	$(YAML2JSON) < apps/$(APP).yaml | $(MARATHON_CURL) $(MARATHONHOST)/v2/apps | jq .
