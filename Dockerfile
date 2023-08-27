# Use the official Python image as the base image
FROM python:3.9
 
# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Create and set the working directory
WORKDIR /app

# Copy the Pipfile and Pipfile.lock to the container
COPY requirements.txt /app/

# Install dependencies
RUN pip install -r requirements.txt

# Copy the project files to the container
COPY . /app/

# Start the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
