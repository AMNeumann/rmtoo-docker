FROM python:3-alpine

RUN apk add texlive-full gcc g++ musl-dev lapack openblas-dev make gnuplot ghostscript graphviz
RUN pip install rmtoo


