resource "google_compute_instance" "vm" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  # Red
  network_interface {
    network = var.network

    access_config {
      nat_ip = google_compute_address.static_ip.address
    }
  }

  # Disco de arranque
  boot_disk {
    initialize_params {
      image = var.boot_image
      size  = var.boot_disk_size
      type  = "pd-standard"
    }
  }

  # CPU architecture & platform as default (x86_64 / AMD Rome)
  advanced_machine_features {
    threads_per_core = 1
  }

  # Seguridad
  deletion_protection = true

  # Labels
  labels = var.labels

  # Metadata básica
  metadata = {
    ssh-keys = ""
  }
}
