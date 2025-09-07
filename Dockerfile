FROM python:3.10-slim

WORKDIR /EXTRACTOR

# System deps
RUN apt-get update && apt-get install -y build-essential ninja-build

# Upgrade pip, setuptools, wheel
RUN pip3 install --upgrade pip setuptools wheel

# Copy requirements and install
COPY requirements.txt .
RUN pip3 install -U -r requirements.txt

# Copy rest of the app
COPY . .
