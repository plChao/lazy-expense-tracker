# Base image: Ubuntu + Node
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y curl git bash \
    && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g yarn \
    && rm -rf /var/lib/apt/lists/*

# Set workdir
WORKDIR /usr/src/app

# Default command
CMD [ "bash" ]
