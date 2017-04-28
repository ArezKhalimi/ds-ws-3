Production with Docker (lite)
-----------------------------

## 1. Clone project https://github.com/haos616/docker-workshop-3
```bash
$ git clone git@github.com:haos616/docker-workshop-3.git
```

## 2. Create terraform configs
```bash
$ cd cookiecutter
$ docker-compose run --rm cookiecutter cookiecutter/terraform
$ cd ..
```

## 2.1 Change permission
```bash
$ chown user:user terraform/ -R
```

## 3. Show Terraform plan
```bash

$ docker-compose run --rm terraform plan -var-file="secret.tfvars"
```

## 4. Apply Terraform plan
```bash
$ docker-compose run --rm terraform apply -var-file="secret.tfvars"
```

## 5. Destroy Terraform plan
```bash
$ docker-compose run --rm terraform destroy -var-file="secret.tfvars"
```

## 6. Install Ansible roles

```bash
$ docker-compose run --rm ansible ansible-galaxy install -p roles -r requirements.yml
```
