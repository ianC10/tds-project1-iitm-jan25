# Use an official Python image as the base
FROM python:3.9.13

# Set the working directory in the container
WORKDIR /app

# Copy Python dependencies first for better caching
COPY requirements.txt ./

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . .

# Expose the port the application runs on (if applicable)
EXPOSE 8000

# Define the command to run the application
CMD ["python", "app/main.py"]
