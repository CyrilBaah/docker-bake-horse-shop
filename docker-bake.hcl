group "default" {
  targets = ["frontend", "backend"]
}

target "frontend" {
  context = "./frontend"
  dockerfile = "Dockerfile"
  tags = ["cyrilbaah/horse-shop-frontend:latest"]
}

target "backend" {
  context = "./backend"
  dockerfile = "Dockerfile"
  tags = ["cyrilbaah/horse-shop-backend:latest"]
}
