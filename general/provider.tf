terraform {
  required_providers {
    harvester = {
      source = "harvester/harvester"
      version = "1.8.0"
    }
  }
}

provider "harvester" {
  kubeconfig = "../local.yaml"
  kubecontext = "local"
}
