FROM python:3.7-alpine
MAINTAINER SJC App Dev Ltd

ENV PYTHONUNBUFFERED 1

# Install dependecies
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Setup directory Structure
RUN mkdir /app
WORKDIR /app
COPY ./app/ /app

RUN adduser -D user
USER user
