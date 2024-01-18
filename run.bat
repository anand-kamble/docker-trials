@echo off
REM Batch file to build and run Docker container for langchain_gordon_experiments

REM Step 1: Build Docker image with tag 'test:llm'
echo Building Docker image...
docker build -t test:llm .

REM Step 2: Run Docker container with volume mount
echo Running Docker container...
docker run -v Models:/root/src/2023/langchain_gordon_experiments -it test:llm


