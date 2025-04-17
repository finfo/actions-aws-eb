FROM python:3.11

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip install "pyyaml>=6.0"

RUN pip install --upgrade pip setuptools wheel
RUN pip install awsebcli packaging

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
