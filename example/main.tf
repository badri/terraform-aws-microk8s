module "microk8s" {
    source = "git::https://github.com/balchua/do-microk8s"
    worker_node_count = "2"
    os_image = "ubuntu-18-04-x64"
    controller_size = "s-4vcpu-8gb"
    region = "sgp1"
    worker_size = "s-4vcpu-8gb"
    microk8s_channel = "1.17/stable"
    digitalocean_ssh_fingerprint = "${var.digitalocean_ssh_fingerprint}"
    digitalocean_private_key = "${var.digitalocean_private_key}"
    digitalocean_token = "${var.digitalocean_token}"
    digitalocean_pub_key = "${var.digitalocean_pub_key}"
}