FROM python:3.8

COPY . /

RUN /install_pkgs.sh

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--workers", "3"]