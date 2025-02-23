# 🐎 Docker Bake Horse Shop

This project demonstrates the use of **Docker Bake** for building and managing multi-service applications. It consists of a **frontend** and a **backend**, both containerized and managed using Docker.  

## 🚀 Project Overview  

- **Frontend**: A simple Horse Shop website built with HTML, CSS, and JavaScript.  
- **Backend**: A basic REST API for managing horse-related data, built with Node.js and Express.  
- **Docker Bake**: Used for efficiently building and pushing multi-container images.  


## 🛠 Prerequisites  

Ensure you have the following installed:  
- [Docker](https://docs.docker.com/get-docker/)  
- [Docker Buildx](https://docs.docker.com/build/buildx/install/)  
- [Docker Compose](https://docs.docker.com/compose/install/)  

## 🔧 Setup & Usage  

###  Clone the Repository  

```sh
git clone https://github.com/CyrilBaah/docker-bake-horse-shop.git
cd docker-bake-horse-shop
```

### Build Everything (Frontend + Backend)

```sh
docker buildx bake
```

### Build Only Backend

```sh
docker buildx bake backend
```

### Build Only Frontend

```sh
docker buildx bake frontend
```

## 📦 Makefile Commands
You can also use the [Makefile](./Makefile)  for convenience



