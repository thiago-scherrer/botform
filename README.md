# botform
Github action and terraform

[![Security check](https://github.com/thiago-scherrer/botform/actions/workflows/security_scan.yml/badge.svg?branch=main)](https://github.com/thiago-scherrer/botform/actions/workflows/security_scan.yml)
[![Test](https://github.com/thiago-scherrer/botform/actions/workflows/test.yml/badge.svg?branch=main)](https://github.com/thiago-scherrer/botform/actions/workflows/test.yml)

# usage

Yml example:

```yml
name: test terraform action

on:
  push:

jobs:
  build:
    name: test1
    runs-on: ubuntu-latest
    steps:
    -
      name: Check out
      uses: actions/checkout@v2
    -
      name: example
      uses: thiago-scherrer/botform@0.0.11
      with:
        tfarg: 'apply -auto-approve'
        tfdir: '42'
        tfversion: '1.0.1'
```

- tfarg - Argument passed to terraform command (plan,apply,etc)
- tfdir - Folder where terraform code is located
- tfversion - Terraform version to use

# Refs

- [https://github.com/tfutils/tfenv](tfenv)
