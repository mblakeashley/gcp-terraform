resource "google_container_cluster" "gke-cluster" {
  project            = "${var.project_name}"
  name               = "demo-gke-cluster"
  network            = "default"
  zone               = "${var.region}"
  initial_node_count = "2"
}
