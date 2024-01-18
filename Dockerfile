
# Use the official image as a parent image
FROM ubuntu:22.04

# Set the working directory in the container
WORKDIR /app

EXPOSE 4891/tcp

# Run the command inside your image filesystem
# Avoid multiple layers
RUN apt-get update && \
        apt install -y curl && \
        apt install -y g++ python3.10  && \
        ln -s /usr/bin/python3.10 /usr/bin/python3 && \
        apt install -y python-is-python3  && \
        curl -sSL https://install.python-poetry.org/  | python - && \
        apt install -y cmake make git vim  && \
        apt-get install -y zsh && \
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh )" && \
        mkdir -p /root/src/2023 && \
        cd /root/src/2023 && \
        git clone https://github.com/erlebach/langchain_gordon_experiments && \
        export PATH="/root/.local/share/pypoetry/venv/bin" && \
        cd langchain_gordon_experiments

# myzshrc built for docker
# COPY my_zshrc /root  
# RUN mv /root/my_zshrc /root/.zshrc

# Set Zsh as an entry point
# WORKDIR /root
# ENTRYPOINT ["/bin/zsh"]

# Inform Docker that the container is listening on the specified port at runtime


# All that is left to do: 
# - set up a shared volume with a few language models
# - expose the port 4891 for the client/server
