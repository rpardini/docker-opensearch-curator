FROM python:3-slim-buster

ARG UPSTREAM_VERSION=0.0.5
RUN pip install curator-opensearch==${UPSTREAM_VERSION}

RUN useradd --create-home curator
WORKDIR /home/curator
USER curator

RUN /usr/local/bin/curator --version
RUN /usr/local/bin/curator --help

ENTRYPOINT [ "/usr/local/bin/curator" ]
