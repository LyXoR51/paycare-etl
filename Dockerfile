FROM continuumio/miniconda3
WORKDIR /home
COPY . .
RUN apt update -y && \
    apt upgrade -y && \
    apt install -y nano build-essential gcc
RUN python3 -m pip install -r requirements.txt
ENV PYTHONPATH=/home
CMD ["-m", "pytest", "tests/"]
