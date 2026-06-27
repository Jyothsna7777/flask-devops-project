# 1. Use Python as the base image
FROM python:3.12

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy the requirements file first
COPY requirements.txt .

# 4. Install Python dependencies
RUN pip install -r requirements.txt

# 5. Copy the remaining project files
COPY . .

# 6. Tell Docker the application uses port 5000
EXPOSE 5000

# 7. Start the Flask application
CMD ["python", "app.py"]
