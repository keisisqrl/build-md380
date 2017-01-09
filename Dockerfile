FROM ubuntu:latest
RUN apt-get update && apt-get install -y build-essential zip unzip curl \
    gcc-arm-none-eabi libnewlib-arm-none-eabi python
RUN mkdir /workdir
WORKDIR /workdir
CMD make distclean dist
