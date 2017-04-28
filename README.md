Production with Docker (lite)
-----------------------------

## 1. Clone project https://github.com/haos616/docker-workshop-3
```bash
$ git clone git@github.com:haos616/docker-workshop-3.git
```

## 2. Create terraform structure
```bash
$ cd cookiecutter
$ docker-compose run --rm cookiecutter cookiecutter/terraform
```

## 2.1 Change permission
```bash
# cd ..
# chown user:user terraform/ -R
```

## 3. Update file secret.tfvars

**terraform/secret.tfvars**
```
digitalocean_token = "you digitalocean token"
mailgun_api_key = "you mailgun api key"
mailgn_smtp_password = "mailgn smtp password"
```

## 3. Show Terraform plan
```bash
$ cd terraform
$ docker-compose run --rm terraform plan -var-file="secret.tfvars"
```

## 4. Apply Terraform plan
```bash
$ docker-compose run --rm terraform apply -var-file="secret.tfvars"
```

## 5. Install Ansible roles

```bash
$ cd ansible
$ docker-compose run --rm ansible ansible-galaxy install -p roles -r requirements.yml
```

## 6. Add email for letsencrypt

**ansible/group_vars/all.yml**
```
letsencrypt_admin_email
```

## 6. Run Ansible playbooks

```bash
$ docker-compose run --rm ansible ansible-playbook all.yml -i inventory
```


## 500. Destroy Terraform plan
```bash
$ docker-compose run --rm terraform destroy -var-file="secret.tfvars"
```
