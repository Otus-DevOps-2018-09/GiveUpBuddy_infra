terraform {
  backend "gcs" {
    bucket = "giveup-test1-64136183"
    prefix = "terraform/state"
  }
}
