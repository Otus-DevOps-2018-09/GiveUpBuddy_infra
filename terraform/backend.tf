terraform {
  backend "gcs" {
    bucket = "giveup-test1-6413683"
    prefix = "terraform/state"
  }
}
