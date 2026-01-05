from etl.etl_shared import pipeline
import pandas as pd
import os

# This finds the folder where script_1.py is located
BASE_DIR = os.path.dirname(os.path.abspath(__file__))

# This joins that folder path with your filename
file_path = os.path.join(BASE_DIR, '../../data/raw/fact_sales.csv')

def transform_data(df):
    df = df.replace(['n/a', 'N/A', ''], pd.NA)
    df['order_number'] = df['order_number'].astype('string')
    df['product_key'] = df['product_key'].astype('Int64')
    df['customer_key'] = df['customer_key'].astype('Int64')
    df['order_date'] = pd.to_datetime(df['order_date'], errors = 'coerce').dt.date
    df['shipping_date'] = pd.to_datetime(df['shipping_date'], errors = 'coerce').dt.date
    df['due_date'] = pd.to_datetime(df['due_date'], errors = 'coerce').dt.date
    df['sales_amount'] = df['sales_amount'].astype('Int64')
    df['quantity'] = df['quantity'].astype('Int64')
    df['price'] = df['price'].astype('Int64')
    return df


if __name__ == "__main__":
    pipeline(file_path = file_path,
             table_name = "fact_sales",
             transform_func = transform_data)
