FROM python:3.7.5-slim-buster

RUN pip install elasticsearch-curator==5.8.1

RUN useradd --create-home curator
WORKDIR /home/curator
USER curator

ENTRYPOINT [ "/usr/local/bin/curator" ]
