FROM alpine:latest
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
RUN pip3 install pyyaml --no-cache
COPY feed.py /feed.py
ENTRYPOINT ["/feed.py"]
