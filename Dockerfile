# Use a lightweight Python base image
FROM python:3.11-slim-buster 

# Set the working directory inside the container
WORKDIR /app

# Copy your application code into the container
COPY . /app