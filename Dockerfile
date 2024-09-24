# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt before copying the rest of the code
COPY requirement.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirement.txt

# Copy the rest of the application code
COPY . /app

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the application
CMD ["python", "app.py"]
