# Use lightweight image with Node and Python
FROM ubuntu:22.04

# Install Node.js and Python
RUN apt-get update && apt-get install -y nodejs npm python3 python3-pip

WORKDIR /app

# Copy all code
COPY . .

# Default command (just list programs)
CMD ["bash", "-c", "echo 'Node Program:' && node mathApp.js && echo 'Python Program:' && python3 randomApp.py"]

