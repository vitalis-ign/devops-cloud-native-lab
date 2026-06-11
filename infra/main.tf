terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = ">= 3.0"
    }
  }
}

provider "docker" {}

resource "docker_container" "nginx" {
  name  = "nginx-cloud-native"
  #image = "nginx:latest"
  image = "vitalis-nginx"

  ports {
    internal = 80
    external = 8080
  }
}
