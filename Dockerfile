FROM continuumio/miniconda3
WORKDIR /home
COPY . .
RUN apt update -y && \
    apt upgrade -y && \
    apt install -y nano build-essential gcc \
    apt install python3 python3-pip
RUN pip install -r requirements.txt
ENV PYTHONPATH=/home
CMD ["-m", "pytest", "tests/"]
