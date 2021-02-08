FROM python:3.6

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip install --upgrade pip awsebcli==3.19.2

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
