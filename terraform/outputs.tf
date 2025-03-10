output "server_address" {
 value = proxmox_lxc.server.network[0].hwaddr   
}