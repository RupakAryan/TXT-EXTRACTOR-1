# Use supported base image
FROM python:3.10-slim-bookworm

# Install system packages
RUN apt update && apt install -y \
    build-essential \
    gcc \
    libffi-dev \
    libssl-dev \
    curl \
    git \
    ffmpeg \
    aria2 \
    python3-pip

# Upgrade pip
RUN pip3 install --upgrade pip

# Copy requirements
COPY requirements.txt /requirements.txt

# Install Python dependencies
RUN pip3 install --no-cache-dir -r /requirements.txt

# Set up working directory
RUN mkdir /EXTRACTOR
WORKDIR /EXTRACTOR

# Copy start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Start the app
CMD ["/bin/bash", "/start.sh"]
