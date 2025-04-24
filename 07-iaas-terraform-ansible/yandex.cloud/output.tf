output "internal_ip_address_ubu2404t" {
  value = yandex_compute_instance.ubu2404t.network_interface.0.ip_address
}

output "external_ip_address_ubu2404t" {
  value = yandex_compute_instance.ubu2404t.network_interface.0.nat_ip_address
}