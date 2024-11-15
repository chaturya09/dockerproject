# Use the official Python image
FROM python:3.12

# Set the working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the project files
COPY . .

# Expose the necessary ports
EXPOSE 8000

# Run Django's migrations and start the server
CMD python manage.py migrate && python manage.py runserver 0.0.0.0:8000
