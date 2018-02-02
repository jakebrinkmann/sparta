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

### Configuration

Edit [common.mk][1]:
```
BASICAUTH ?= dXNlcm5hbWU6cGFzc3dvcmQ=
MARATHONHOST ?= https://localhost:8080
```


[1]: common.mk
[2]: apps/example.yaml
[3]: https://mesosphere.github.io/marathon/
