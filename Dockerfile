FROM python:3.8-slim
ENV PYTHONUNBUFFERED 1
WORKDIR /app
ENV PORT 8080
ADD . /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . /app
# Expose the port the app runs on.
EXPOSE 8000
# Run the application.
CMD ["python", "manage.py", "runserver", "127.0.0.1:8000"]