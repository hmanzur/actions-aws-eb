FROM python:3

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip install awsebcli cryptography==3.3.1

RUN git config --system --add safe.directory *

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
