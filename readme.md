# Docker Trial Project

This is a trial project to experiment with Docker and Docker Compose.

## Getting Started

These instructions will help you set up and run the Docker trial on your local machine.

### Prerequisites

Make sure you have Docker and Docker Compose installed on your machine.

### Build and Run

Follow these steps to build and run the Docker trial:

#### Build Docker Image

```bash
docker build -t test:llm .
```

#### Run Docker Container

```bash
docker run -it test:llm
```

#### Change Directory and Install Dependencies
Make sure to run these commands inside the container.
```bash
cd /root/src/2023/langchain_gordon_experiments
export PATH="/root/.local/share/pypoetry/venv/bin"
poetry install --no-root
```

#### Mount Volumes and Run Docker Container

```bash
docker run -v Models:/root/src/2023/langchain_gordon_experiments -it test:llm
```

#### Using Docker Compose

To start the containers:

```bash
docker-compose up -d
```

To stop the containers:

```bash
docker-compose down
```

#### Accessing a Container

To get into a container, run the following commands in a new terminal:

```bash
docker exec -it mydockerfile-web-1 bash
```
