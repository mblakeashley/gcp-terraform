variable "region" {}

resource "google_container_cluster" "gke-cluster" {
  project            = "${google_project_services.project.project}"
  name               = "demo-gke-cluster"
  network            = "default"
  zone               = "${var.region}"
  initial_node_count = "3"
}
