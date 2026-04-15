FROM python:2.7-alpine

RUN apk update
RUN apk add build-base tiff-dev libjpeg-turbo-dev libpng-dev imagemagick
RUN pip install imread
RUN pip install numpy==1.16

RUN install -d /work

WORKDIR /work
