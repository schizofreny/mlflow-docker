ARG VERSION=v3.3.1

FROM ghcr.io/mlflow/mlflow:$VERSION

RUN apt update && \
  apt install -y libpq-dev build-essential && \
  pip install boto3 psycopg2 prometheus-flask-exporter google-cloud-storage && \
  rm -rf /var/lib/apt/lists/*

RUN mkdir /mlflow && chmod 777 /mlflow