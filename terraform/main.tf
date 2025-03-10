resource "proxmox_lxc" "server" {
  start = true
  memory = 4096
  unprivileged = true
  hostname = var.lxc_hostname
  ostemplate = var.lxc_template_name
  password = var.lxc_password
  target_node = var.node_name

  features {
      nesting = true
  }

  rootfs {
    storage = var.lxc_disk_location
    size = "20G"
  }
  network {
      name = "eth0"
      bridge = var.network_adapter
      ip = "dhcp"
      ip6 = "dhcp"
  }
  provisioner "local-exec" {
    command = "echo 'nmap ${var.ip_range_cidr} -sP | grep -A1 ${proxmox_lxc.server.network[0].hwaddr}'"
  }
}