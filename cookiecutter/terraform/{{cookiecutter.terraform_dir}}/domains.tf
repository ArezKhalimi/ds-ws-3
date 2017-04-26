# Create {{ cookiecutter.base_domain }} domain
resource "digitalocean_domain" "default" {
  name       = "{{ cookiecutter.base_domain }}"
  ip_address = "${digitalocean_droplet.production.ipv4_address}"
}

# Add a record to mailgun_sending_record_spf1 domain
resource "digitalocean_record" "mailgun_sending_record_spf1" {
  domain = "${digitalocean_domain.default.name}"
  type   = "${mailgun_domain.default.sending_records.0.record_type}"
  name   = "@"
  value  = "${mailgun_domain.default.sending_records.0.value}"
}

# Add a record to mailgun_sending_record_rsa domain
resource "digitalocean_record" "mailgun_sending_record_rsa" {
  domain = "${digitalocean_domain.default.name}"
  type   = "${mailgun_domain.default.sending_records.1.record_type}"
  name   = "${replace(mailgun_domain.default.sending_records.1.name, "/.${digitalocean_domain.default.name}$/", "")}"
  value  = "${mailgun_domain.default.sending_records.1.value}"
}

# Add a record to {{ cookiecutter.staging_domain }} domain
resource "digitalocean_record" "staging" {
  domain = "${digitalocean_domain.default.name}"
  type   = "A"
  name   = "staging"
  value  = "${digitalocean_droplet.staging.ipv4_address}"
}

# Add a record to {{ cookiecutter.development_domain }} domain
resource "digitalocean_record" "dev" {
  domain = "${digitalocean_domain.default.name}"
  type   = "A"
  name   = "dev"
  value  = "${digitalocean_droplet.dev.ipv4_address}"
}

# Add a record to {{ cookiecutter.jenkins_domain }} domain
resource "digitalocean_record" "jenkins" {
  domain = "${digitalocean_domain.default.name}"
  type   = "A"
  name   = "jenkins"
  value  = "${digitalocean_droplet.jenkins.ipv4_address}"
}

# Add a record to {{ cookiecutter.kibana_domain }} domain
resource "digitalocean_record" "kibana" {
  domain = "${digitalocean_domain.default.name}"
  type   = "A"
  name   = "kibana"
  value  = "${digitalocean_droplet.elk.ipv4_address}"
}

# Add a record to {{ cookiecutter.elasticsearch_domain }} domain
resource "digitalocean_record" "elasticsearch" {
  domain = "${digitalocean_domain.default.name}"
  type   = "A"
  name   = "elasticsearch"
  value  = "${digitalocean_droplet.elk.ipv4_address}"
}

# Add a record to {{ cookiecutter.logstash_domain }} domain
resource "digitalocean_record" "logstash" {
  domain = "${digitalocean_domain.default.name}"
  type   = "A"
  name   = "logstash"
  value  = "${digitalocean_droplet.elk.ipv4_address}"
}

# Add a record to {{ cookiecutter.nagios_domain }} domain
resource "digitalocean_record" "nagios" {
  domain = "${digitalocean_domain.default.name}"
  type   = "A"
  name   = "nagios"
  value  = "${digitalocean_droplet.nagios.ipv4_address}"
}
