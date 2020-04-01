FROM python:3

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip install --upgrade pip awsebcli

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]