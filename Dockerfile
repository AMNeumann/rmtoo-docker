FROM python:3-alpine

RUN apk add texlive gcc g++ musl-dev lapack openblas-dev
RUN pip install rmtoo


