Production with Docker (lite)
-----------------------------

## 1. Clone project https://github.com/haos616/docker-workshop-3
```bash
$ git clone git@github.com:haos616/docker-workshop-3.git
```

## 2. Create terraform dir
```bash
$ cookiecutter cookiecutter/terraform/
```

## 3. Show Terraform plan
```bash
$ terraform plan -var-file="secret.tfvars"
```
