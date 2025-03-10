variable "lxc_hostname" {
    default =  "GameServer"
    type = string
}

variable "network_adapter" {
    default = "vmbr0"
    type = string
}

variable "lxc_password" {
    default = "changeme"
    type = string
}

variable "lxc_disk_location" {
    default = "local-lvm"
    type = string
}

variable "lxc_template_name" {
    default = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    type = string
}

variable "proxmox_domain" {
    type = string
    nullable = false
}

variable "proxmox_user" {
    default = "root"
    type = string
    nullable = false
}

variable "proxmox_token_name" {
    type = string
    nullable = false
}

variable "proxmox_token_secret" {
    type = string
    nullable = false
}

variable "node_name" {
    type = string
    nullable = false
}

variable "ip_range_cidr" {
    default = "192.168.1.1/24"
    type = string
    nullable = false
}
