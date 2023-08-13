# Use an official Python runtime as a parent image
FROM python:3.11.4

# Install any needed packages specified in requirements.txt
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r /app/requirements.txt

# Set the working directory to /app
WORKDIR /app

# Copy the rest of the application code
COPY . /app

# Expose port 80 to the outside world
EXPOSE 80

# Run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]
