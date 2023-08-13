FROM python:3.10
EXPOSE 5000
ADD requirements.txt .
RUN pip install -r requirements.txt
ENV PYTHONUNBUFFERED=1
WORKDIR /app
ADD . /app
CMD ["python:3.10","./app.py"]