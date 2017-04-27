variable "base_domain" { default = "{{ cookiecutter.base_domain }}" }

variable "production_domain" { default = "{{ cookiecutter.production_domain }}" }
variable "production_api_domain" { default = "{{ cookiecutter.production_api_domain }}" }

variable "staging_domain" { default = "{{ cookiecutter.staging_domain }}" }
variable "staging_api_domain" { default = "{{ cookiecutter.staging_api_domain }}" }

variable "development_domain" { default = "{{ cookiecutter.development_domain }}" }
variable "development_api_domain" { default = "{{ cookiecutter.development_api_domain }}" }

variable "jenkins_domain" { default = "{{ cookiecutter.jenkins_domain }}" }

variable "elasticsearch_domain" { default = "{{ cookiecutter.elasticsearch_domain }}" }
variable "kibana_domain" { default = "{{ cookiecutter.kibana_domain }}" }
variable "logstash_domain" { default = "{{ cookiecutter.logstash_domain }}" }

variable "nagios_domain" { default = "{{ cookiecutter.nagios_domain }}" }

variable "registry_domain" { default = "{{ cookiecutter.registry_domain }}" }

variable "digitalocean_region" { default = "{{ cookiecutter.digitalocean_region }}" }
variable "digitalocean_image" { default = "{{ cookiecutter.digitalocean_image }}" }
