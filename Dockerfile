# Python Base Image
FROM python:latest

# Installing required OS packages
RUN apt update && apt upgrade -y && \
    apt install -y git curl python3-pip ffmpeg aria2

# Upgrade pip
RUN pip3 install --upgrade pip

# Copy requirements.txt
COPY requirements.txt /requirements.txt

# Install Python dependencies
RUN pip3 install --upgrade -r /requirements.txt

# Make working directory
RUN mkdir /EXTRACTOR
WORKDIR /EXTRACTOR

# Copy start.sh script
COPY start.sh /start.sh

# Make sure start.sh is executable
RUN chmod +x /start.sh

# Expose port (important for Render)
EXPOSE 8000

# Run the start script
CMD ["/bin/bash", "/start.sh"]
