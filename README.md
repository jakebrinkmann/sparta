# sparta
You will cross land and sea to do my bidding

## Requires:

* curl, jq, cmake, python (PyYAML)
* access to running marathon host (`MARATHONHOST`)

## Usage

To startup an [example app][2]:
```bash
make APP=example deploy
```

### Configuration

Edit [common.mk][1]:
```
BASICAUTH ?= dXNlcm5hbWU6cGFzc3dvcmQ=
MARATHONHOST ?= https://localhost:8080
```


[1]: common.mk
[2]: apps/example.yaml
