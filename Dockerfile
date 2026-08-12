FROM apache/airflow:2.10.4-python3.11

USER root

RUN python3 -m venv /opt/dbt_venv && \
    /opt/dbt_venv/bin/pip install --upgrade pip && \
    /opt/dbt_venv/bin/pip install --no-cache-dir \
        dbt-core==1.10.22 \
        dbt-snowflake==1.9.4

USER airflow

RUN pip install --no-cache-dir apache-airflow-providers-snowflake==5.2.0