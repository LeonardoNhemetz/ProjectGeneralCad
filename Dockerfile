FROM python:3.11-alpine

ENV PYTHONUNBUFFERED=1

# Instalação do pacote necessário
RUN apk add --no-cache gcc musl-dev linux-headers libffi-dev openssl-dev postgresql-dev mariadb-dev

WORKDIR /code

ADD . /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install -r requirements.txt

COPY . /code
