# main.py
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def root():
    return {"message": "Welcome to SignalForge API!"}

@app.get("/ping")
def ping():
    return {"status": "alive"}
