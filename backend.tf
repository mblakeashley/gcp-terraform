terraform {
 backend "gcs" {
   bucket  = "skilled-snow-247114"
   prefix  = "terraform/state"
 }
}
