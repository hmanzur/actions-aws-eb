FROM python:3

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y \
  && pip install --upgrade pip awsebcli \
  && chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
