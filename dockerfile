FROM python:3.7-slim

RUN mkdir -p /usr/local/http-server

#RUN adduser runner -h /home/runner -D -s /bin/ash
RUN useradd runner -d /home/runner -s /bin/bash

WORKDIR /usr/local/http-server

ADD ./http-server.py /usr/local/http-server/http-server.py

RUN chown -R runner:runner /usr/local/http-server/

USER runner

CMD ["python3", "-u", "/usr/local/http-server/http-server.py"]