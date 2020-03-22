FROM python:3

ARG command="--version"

RUN apt-get update -y

RUN pip install --upgrade pip awsebcli

ENTRYPOINT ["eb"]