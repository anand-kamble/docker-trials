docker build -t test:llm .

docker run -it test:llm

cd /root/src/2023/langchain_gordon_experiments

export PATH="/root/.local/share/pypoetry/venv/bin"

poetry install --no-root


docker run -v Models:/root/src/2023/langchain_gordon_experiments -it test:llm


# With Compose
to start the containers
`docker-compose up -d`

to Kill,
`docker-compose down`

to get into a container, run folowing commands in a new terminal.
`docker exec -it  mydockerfile-web-1 bash`