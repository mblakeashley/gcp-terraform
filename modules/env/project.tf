provider "google" {
 region = "${var.region}"
 credentials = "${file("./creds/serviceaccount.json")}"
}

resource "google_project" "project" {
 name            = "${var.project_name}"
 project_id      = "${var.project_name}"
 billing_account = "${var.billing_account}"
 org_id          = "${var.org_id}"
}

resource "google_project_services" "project" {
 project = "${google_project.project.project_id}"
 services = [
   "container.googleapis.com"
   "compute.googleapis.com"
 ]
}

output "project_id" {
 value = "${google_project.project.project_id}"
}
