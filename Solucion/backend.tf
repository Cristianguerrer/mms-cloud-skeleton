terraform {
  backend "gcs" {
    bucket  = "bucket-terraform-test"
    prefix  = "terraform-state"
    credentials = "./azjtp4imscisnfy8crfrxje12x2ln4-2516b0c406c6.json"
  }
}
