FROM python:3.10.9-alpine

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
RUN pylint /app/demo
RUN pytest