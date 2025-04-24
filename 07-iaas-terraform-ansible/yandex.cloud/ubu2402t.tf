terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">=0.61.0"
    }
  }
}

resource "yandex_compute_instance" "ubu2404t" {
  name        = "ubu2404t"
  platform_id = "standard-v1"
  zone        = "ru-central1-b"
  
  resources {
    core_fraction = 20
    cores         = 2
    memory        = 4
  }
  
  scheduling_policy {
  preemptible = true
  }

  boot_disk {
    initialize_params {
      image_id = "fd84b1mojb8650b9luqd"
    }
  }

  network_interface {
    subnet_id = "e2lij6cpfo7pl5rtvc01"
    nat       = true
  }

  metadata = {
    serial-port-enable = "1"
    user-data = "${file("meta.yaml")}"
  }
}
