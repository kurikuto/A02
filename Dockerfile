FROM python:3.10-slim

ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

ADD requirements.txt /code/

RUN apt-get update && \
    apt-get install -y libpq-dev pip

RUN pip install -r requirements.txt

ADD . /code/