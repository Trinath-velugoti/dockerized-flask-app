# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Flask app into the container
COPY app.py /app/app.py

# Install Flask
RUN pip install flask

# Expose the port for Flask app
EXPOSE 5000

# Command to run the Flask app
CMD ["python", "app.py"]
