output "monitoreo1_external_ip" {
  description = "IP pública de la VM monitoreo1"
  value       = google_compute_instance.monitoreo1.network_interface[0].access_config[0].nat_ip
}

output "monitoreo1_internal_ip" {
  description = "IP interna de la VM monitoreo1"
  value       = google_compute_instance.monitoreo1.network_interface[0].network_ip
}


