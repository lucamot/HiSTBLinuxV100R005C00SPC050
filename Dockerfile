FROM ubuntu:latest

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install basic utilities
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    vim \
    git \
    bzip2 \
    ca-certificates \
    build-essential \
    bison \
    flex \
    bc \
    zlib1g-dev \
    libncurses5-dev \
    gettext \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /root

# Default command
CMD ["bash"]


