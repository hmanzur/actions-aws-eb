FROM python:3

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip install --upgrade pip awsebcli

RUN chmod +x entrypoint.sh

# Set dev environment as safe git directory to prevent "dubious ownership" errors
# when bind-mounting the source into the dev-container. See https://github.com/actions/runner-images/issues/6775
RUN git config --global --add safe.directory /github/workspace

ENTRYPOINT ["/entrypoint.sh"]
