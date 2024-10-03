# Use Ubuntu as the base image
FROM ubuntu:20.04

# Set the maintainer
LABEL maintainer="dheeman.das@pwc.com"

# Set up environment variable
ENV DEBIAN_FRONTEND=noninteractive

# Update and install basic packages in a single RUN command
RUN apt-get update -q && \
    apt-get install -y -q \
    curl \
    vim \
    git \
    ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Default command
CMD ["/bin/bash"]
