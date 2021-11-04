from dotenv import load_dotenv
from google.cloud import storage
from fastapi import FastAPI
import io
import pandas as pd

load_dotenv()

app = FastAPI()

storage_client = storage.Client()
bucket = storage_client.bucket("choonsik-storage")


@app.get("/")
async def root():
    blob = bucket.blob("data/insurance.csv")
    bytes = blob.download_as_bytes()
    file_buffer = io.BytesIO(bytes)
    df = pd.read_csv(file_buffer)
    # print(df)
    return {"message": df.values.tolist()[:3]}
