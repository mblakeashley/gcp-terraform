resource "google_compute_subnetwork" "public_subnet" {
  name          = "${var.project_name}-pub-net"
  ip_cidr_range = "${var.public_subnet}"
  network       = "default"
  region        = "${var.region}"
}
resource "google_compute_subnetwork" "private_subnet" {
  name          = "${var.project_name}-pri-net"
  ip_cidr_range = "${var.private_subnet}"
  network       = "default"
  region        = "${var.region}"
}
