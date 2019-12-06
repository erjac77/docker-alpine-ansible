FROM python:3.7-alpine
LABEL maintainer="Eric Jacob <@erjac77>"

RUN apk add --no-cache --virtual build-dependencies \
    python3-dev libffi-dev openssl-dev build-base \
    && pip3 install --upgrade pip \
    && pip3 install ansible \
    && apk del build-dependencies \
    && rm -rf /var/cache/apk/*

RUN mkdir -p /etc/ansible \
    && echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

CMD ["ansible", "--version"]
