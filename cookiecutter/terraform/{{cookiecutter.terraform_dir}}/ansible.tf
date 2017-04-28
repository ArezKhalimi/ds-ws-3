data "template_file" "inventory" {
  template = "${file("${path.module}/inventory.tpl")}"

  vars {
    production_ip = "${digitalocean_droplet.production.ipv4_address}"
    staging_ip = "${digitalocean_droplet.staging.ipv4_address}"
    dev_ip = "${digitalocean_droplet.dev.ipv4_address}"
    jenkins_ip = "${digitalocean_droplet.jenkins.ipv4_address}"
    registry_ip = "${digitalocean_droplet.registry.ipv4_address}"
  }
}

resource "local_file" "ansible" {
    content     = "${data.template_file.inventory.rendered}"
    filename = "${path.module}/../ansible/inventory"
}
