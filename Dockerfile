FROM python:3.7-alpine

ARG AWS_CLI_VERSION=1.16.154

RUN apk add --no-cache \
        bash \
        curl \
        gawk \
        groff \
        jq \
        less \
        mailcap \
    && pip install --no-cache-dir awscli==$AWS_CLI_VERSION

VOLUME /root/.aws

CMD ["aws", "--version"]
