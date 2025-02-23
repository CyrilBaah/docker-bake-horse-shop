# Makefile for the Horse Shop project using Docker Bake

# Docker image tags (update with your Docker Hub username)
FRONTEND_IMAGE = cyrilbaah/horse-shop-frontend:latest
BACKEND_IMAGE  = cyrilbaah/horse-shop-backend:latest

.PHONY: all build build-all build-frontend build-backend run-frontend run-backend run clean push-frontend push-backend help

# Default target shows help
all: help

# Build both images using Docker Buildx Bake
build: build-all

build-all:
	@echo "Building both images using docker buildx bake..."
	docker buildx bake

# Build only the frontend image using Docker Buildx Bake
build-frontend:
	@echo "Building only the frontend image..."
	docker buildx bake frontend

# Build only the backend image using Docker Buildx Bake
build-backend:
	@echo "Building only the backend image..."
	docker buildx bake backend

# Run the frontend container (exposes port 80)
run-frontend:
	@echo "Running frontend container..."
	docker run -p 80:80 $(FRONTEND_IMAGE)

# Run the backend container (exposes port 3001)
run-backend:
	@echo "Running backend container..."
	docker run -p 3001:3001 $(BACKEND_IMAGE)

# Run both containers (Note: They run in the foreground. Use separate terminals for simultaneous runs or consider docker-compose)
run:
	@echo "Running both backend and frontend containers..."
	@echo "Starting backend on port 3001..."
	$(MAKE) run-backend &
	@sleep 2
	@echo "Starting frontend on port 80..."
	$(MAKE) run-frontend

# Push the frontend image to Docker registry
push-frontend:
	@echo "Pushing frontend image to Docker registry..."
	docker push $(FRONTEND_IMAGE)

# Push the backend image to Docker registry
push-backend:
	@echo "Pushing backend image to Docker registry..."
	docker push $(BACKEND_IMAGE)

# Clean up Docker images
clean:
	@echo "Removing Docker images..."
	docker rmi $(FRONTEND_IMAGE) $(BACKEND_IMAGE)

# Help text to display available commands
help:
	@echo "Makefile Commands for the Horse Shop project:"
	@echo "  build           - Build both images using docker buildx bake"
	@echo "  build-frontend  - Build only the frontend image using docker buildx bake"
	@echo "  build-backend   - Build only the backend image using docker buildx bake"
	@echo "  run-frontend    - Run the frontend container (exposes port 80)"
	@echo "  run-backend     - Run the backend container (exposes port 3001)"
	@echo "  run             - Run both frontend and backend containers"
	@echo "  push-frontend   - Push the frontend image to the Docker registry"
	@echo "  push-backend    - Push the backend image to the Docker registry"
	@echo "  clean           - Remove both Docker images"
	@echo "  help            - Display this help message"
