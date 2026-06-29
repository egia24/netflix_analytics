from airflow import DAG
from airflow.operators.python import PythonOperator
from datetime import datetime
import pandas as pd
from sqlalchemy import create_engine
import os

def load_to_postgres():
    user = os.getenv('POSTGRES_USER')
    password = os.getenv('POSTGRES_PASSWORD')
    host = os.getenv('POSTGRES_HOST')
    db = os.getenv('POSTGRES_DB')

    engine = create_engine(f'postgresql://{user}:{password}@{host}:5432/{db}')
    df = pd.read_csv('/opt/airflow/data/netflix_titles.csv')
    df.to_sql('netflix_titles', engine, schema='public', if_exists='replace', index=False)

with DAG(
    dag_id = 'load_netflix_movie'
) as dag :
    load = PythonOperator(
        task_id = 'load_to_postgres',
        python_callable= load_to_postgres,
    )
