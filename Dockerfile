FROM python:3.9-slim
WORKDIR /home
COPY . .
RUN 
    apt update -y && \
    apt upgrade -y && \
    apt install -y nano build-essential gcc \
RUN pip install -r requirements.txt
ENV PYTHONPATH=/home
CMD ["-m", "pytest", "tests/"]
