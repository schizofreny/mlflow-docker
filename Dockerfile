FROM python:slim

ARG VERSION
ENV VERSION ${VERSION:-1.8.0}

RUN apt update && apt install -y libpq-dev build-essential

RUN echo "Installing MLFlow ${VERSION}"
RUN pip install mlflow==${VERSION} boto3 psycopg2

EXPOSE 80


