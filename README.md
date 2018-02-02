# Marathon Test Infrastructure

Tools for managing application-clusters using [Marathon][3]

## Requires:

* A running [marathon][3] host (`MARATHONHOST`)
* curl, jq, cmake, python (PyYAML)

## Usage

To startup an [example app][2]:
```bash
make APP=example deploy
make APP=example undeploy
```

Or, to startup many containers in a [group][4]:
```bash
make GROUP=tools gdeploy
make GROUP=tools ungdeploy
```

### Configuration

Edit [common.mk][1]:
```
BASICAUTH ?= dXNlcm5hbWU6cGFzc3dvcmQ=
MARATHONHOST ?= https://localhost:8080
```

## References

* More on [Marathon REST API][5]
* More on [Application Deployments][6]


[1]: common.mk
[2]: apps/example.yaml
[3]: https://mesosphere.github.io/marathon/
[4]: groups/tools.yaml
[5]: http://mesosphere.github.io/marathon/api-console/index.html
[6]: https://mesosphere.github.io/marathon/docs/deployments.html

