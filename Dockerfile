FROM python:3.8

COPY ./install_pkgs.sh /install_pkgs.sh
RUN /install_pkgs.sh

COPY . /

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--workers", "3"]