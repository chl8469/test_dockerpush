FROM hl8469/mlops-project:base-image-1.0

COPY . /

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--workers", "3"]