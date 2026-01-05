from etl.etl_shared import pipeline
import pandas as pd
import os

# This finds the folder where script_1.py is located
BASE_DIR = os.path.dirname(os.path.abspath(__file__))

# This joins that folder path with your filename
file_path = os.path.join(BASE_DIR, '../../data/raw/dim_products.csv')

def transform_data(df):
    df = df.replace(['n/a', 'N/A', ''], pd.NA)
    df['product_key'] = df['product_key'].astype('Int64')
    df['product_id'] = df['product_id'].astype('Int64')
    df['product_number'] = df['product_number'].astype('string')
    df['product_name'] = df['product_name'].astype('string')
    df['category_id'] = df['category_id'].astype('string')
    df['category'] = df['category'].astype('string')
    df['subcategory'] = df['subcategory'].astype('string')
    df['maintenance'] = df['maintenance'].astype('string')
    df['cost'] = df['cost'].astype('Int64')
    df['product_line'] = df['product_line'].astype('string')
    df['start_date'] = pd.to_datetime(df['start_date'], errors = 'coerce').dt.date
    return df


if __name__ == "__main__":
    pipeline(file_path = file_path,
             table_name = "dim_products",
             transform_func = transform_data)