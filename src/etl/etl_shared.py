import os
import pandas as pd
import logging
from sqlalchemy import create_engine, text
from pathlib import Path
from dotenv import load_dotenv


BASE_DIR = Path(__file__).resolve().parents[2]
ENV_PATH = BASE_DIR/"config"/".env"
load_dotenv(dotenv_path=ENV_PATH) # This looks for the .env file and loads the variables
print("Looking for .env at:", ENV_PATH) #Ensure it's show the path where .env files lies
print("DB_URL loaded as:", os.getenv("DB_URL")) #To paste the content of that file


# Setting up logging
FORMAT = '%(asctime)s - %(levelname)s - %(message)s'
logging.basicConfig(format=FORMAT, level=logging.INFO)

def get_engine():
    # Get the secret URL from the environment
    db_url = os.getenv('DB_URL')
    return create_engine(db_url)


def pipeline(file_path, table_name, transform_func):
    logging.info(f"ETL pipeline started!")
    #Extarct data
    df = pd.read_csv(file_path)

    #Transform data
    df = transform_func(df)

    #Load data
    engine = get_engine()

    try:
        with engine.begin() as conn:
            df.to_sql(table_name, con = conn, if_exists = 'replace', index = False)
            query_1 = conn.execute(text(f"SELECT * FROM {table_name} LIMIT 5;"))
            rows = query_1.fetchall()
            for i in rows:
                print(i)
            
            query_2 = conn.execute(text(f"SELECT COUNT(*) FROM {table_name};"))
            count = query_2.fetchone()
            logging.info(f"Successfully loaded. Total rows in {table_name} : {count[0]}")
            logging.info(f"ETL completed")
    except Exception as e:
        logging.error(f"Error occurred: {e}")   