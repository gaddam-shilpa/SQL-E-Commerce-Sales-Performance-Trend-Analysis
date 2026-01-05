from etl.etl_shared import pipeline
import pandas as pd
import os

# This finds the folder where script_1.py is located
BASE_DIR = os.path.dirname(os.path.abspath(__file__))

# This joins that folder path with your filename
file_path = os.path.join(BASE_DIR, '../../data/raw/dim_customers.csv')


def transform_data(df):
    df = df.replace(['n/a', 'N/A', ''], pd.NA)
    df['customer_key'] = df['customer_key'].astype('Int64')
    df['customer_id'] = df['customer_id'].astype('Int64')
    df['customer_number'] = df['customer_number'].astype('string')
    df['first_name'] = df['first_name'].astype('string')
    df['last_name'] = df['last_name'].astype('string')
    df['country'] = df['country'].astype('string')
    df['marital_status'] = df['marital_status'].astype('string')
    df['gender'] = df['gender'].astype('string')
    df['birthdate'] = pd.to_datetime(df['birthdate'], errors = 'coerce').dt.date
    df['create_date'] = pd.to_datetime(df['create_date'], errors = 'coerce').dt.date
    return df

if __name__ == "__main__":
    pipeline(file_path = file_path,
             table_name = "dim_customers",
             transform_func = transform_data)