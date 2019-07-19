provider "google" {
  project     = "${var.project_name}"
  region      = "${var.region}"
  credentials = "${file("./creds/serviceaccount.json")}"
}
module "env" {
  source                = "./modules/env" 
  region                = "${var.region}"
  project_name          = "${var.project_name}"
  public_subnet         = "${var.public_subnet}"
  private_subnet        = "${var.private_subnet}"
  org_id                = "${var.org_id}"
}
module "infra" {
  source                = "./modules/infra"
  region                = "${var.region}"
  project_name          = "${var.project_name}"
  public_subnet         = "${var.public_subnet}"
  private_subnet        = "${var.private_subnet}"
  org_id                = "${var.org_id}"
}
