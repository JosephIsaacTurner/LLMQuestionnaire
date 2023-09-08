# Use an official Python runtime as a parent image
FROM python:3.11

# Set environment variables
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SETTINGS_MODULE myproject.settings

# Create and set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

# Install any project dependencies
RUN pip install -r requirements.txt

# Expose the port your application will run on
EXPOSE 8000

# Start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
