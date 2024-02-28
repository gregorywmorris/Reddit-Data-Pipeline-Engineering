FROM apache/airflow:2.7.1-python3.9

WORKDIR /opt/airflow/

COPY requirements.txt .

USER root

RUN apt-get update && apt-get install -y --no-install-recommends gcc python3-dev

USER airflow

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt