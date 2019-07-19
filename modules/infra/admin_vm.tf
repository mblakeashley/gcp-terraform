resource "google_compute_instance" "default" {
  name         = "${var.project_name}-admin-vm"
  machine_type  = "n1-standard-1"
  zone          = "${var.region}-b"
  tags          = ["ssh"]
  boot_disk {
    initialize_params {
      image     =  "centos-7-v20190619"     
    }
  }

network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
}
