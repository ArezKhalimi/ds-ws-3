resource "digitalocean_ssh_key" "terraform" {
  name       = "Terraform"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

# Create a new production droplet in the {{ cookiecutter.digitalocean_region }} region
resource "digitalocean_droplet" "production" {
  image  = "{{ cookiecutter.digitalocean_image }}"
  name   = "{{ cookiecutter.production_domain }}"
  region = "{{ cookiecutter.digitalocean_region }}"
  size   = "512mb"
  ssh_keys = ["${digitalocean_ssh_key.terraform.id}"]
}

# Create a new staging droplet in the {{ cookiecutter.digitalocean_region }} region
resource "digitalocean_droplet" "staging" {
  image  = "{{ cookiecutter.digitalocean_image }}"
  name   = "{{ cookiecutter.staging_domain }}"
  region = "{{ cookiecutter.digitalocean_region }}"
  size   = "512mb"
  ssh_keys = ["${digitalocean_ssh_key.terraform.id}"]
}

# Create a new development droplet in the {{ cookiecutter.digitalocean_region }} region
resource "digitalocean_droplet" "dev" {
  image  = "{{ cookiecutter.digitalocean_image }}"
  name   = "{{ cookiecutter.development_domain }}"
  region = "{{ cookiecutter.digitalocean_region }}"
  size   = "512mb"
  ssh_keys = ["${digitalocean_ssh_key.terraform.id}"]
}

# Create a new jenkins droplet in the {{ cookiecutter.digitalocean_region }} region
resource "digitalocean_droplet" "jenkins" {
  image  = "{{ cookiecutter.digitalocean_image }}"
  name   = "{{ cookiecutter.jenkins_domain }}"
  region = "{{ cookiecutter.digitalocean_region }}"
  size   = "2gb"
  ssh_keys = ["${digitalocean_ssh_key.terraform.id}"]
}

# Create a new elk droplet in the {{ cookiecutter.digitalocean_region }} region
resource "digitalocean_droplet" "elk" {
  image  = "{{ cookiecutter.digitalocean_image }}"
  name   = "{{ cookiecutter.kibana_domain }}"
  region = "{{ cookiecutter.digitalocean_region }}"
  size   = "2gb"
  ssh_keys = ["${digitalocean_ssh_key.terraform.id}"]
}

# Create a new nagios droplet in the {{ cookiecutter.digitalocean_region }} region
resource "digitalocean_droplet" "nagios" {
  image  = "{{ cookiecutter.digitalocean_image }}"
  name   = "{{ cookiecutter.nagios_domain }}"
  region = "{{ cookiecutter.digitalocean_region }}"
  size   = "512mb"
  ssh_keys = ["${digitalocean_ssh_key.terraform.id}"]
}
