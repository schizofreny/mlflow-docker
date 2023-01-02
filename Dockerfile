ARG VERSION=v2.1.1

FROM ghcr.io/mlflow/mlflow:$VERSION

RUN apt update && apt install -y libpq-dev build-essential
RUN pip install boto3 psycopg2 prometheus-flask-exporter
