terraform {
  required_version = ">= 0.12"
  required_providers {

    docker = {
      source  = "kreuzwerker/docker"
      version = "2.11.0"
    }
  }
}
  provider "docker" {
    host = "unix:///var/run/docker.sock"

  }
  resource "docker_image" "ubuntu" {
    name = "ubuntu:latest"
  }
  resource "docker_container" "my_container" {
    image = "docker_image.ubuntu.latest"
    name  = "my_container"
  }
  resource "docker_service" "my_service" {
    name = "myservice"
    task_spec {
      container_spec {
        image = "docker_image.ubuntu.latest"
      }
    }
    endpoint_spec {
      ports {
        target_port = "8080"
      }
    }
  }
