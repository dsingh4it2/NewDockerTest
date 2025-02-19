# Use an official base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Copy files from the repo to the container
COPY . .

# Install dependencies (example: curl)
RUN apt-get update && apt-get install -y curl

# Set an environment variable
ENV MY_ENV_VAR="Hello from Docker"

# Define the default command
CMD ["echo", "New Test Docker container is running!"]