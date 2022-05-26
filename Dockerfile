FROM python:3.8

RUN mkdir /app

COPY /src /app
COPY pyproject.toml /app
COPY main.py /app

WORKDIR /app
ENV PYTHONPATH=${PYTHONPATH}:${PWD}
RUN pip3 install poetry
RUN poetry config virtualenvs.create false
RUN poetry install
