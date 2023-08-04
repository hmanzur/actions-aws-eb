FROM python:3

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip install pyyaml==5.3.1

RUN pip install --upgrade pip awsebcli

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
