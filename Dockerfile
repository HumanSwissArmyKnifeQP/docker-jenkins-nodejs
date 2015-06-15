FROM jenkins:1.596.2

USER root

# Install dependencies for building node.
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    git \
    python2.7

# Install node from source.
RUN wget http://nodejs.org/dist/v0.12.4/node-v0.12.4.tar.gz && \
    tar -zxf node-v0.12.4.tar.gz && \
    cd node-v0.12.4 && \
    ./configure && \
    make && \
    make install

RUN cd / && \
    rm node-v0.12.4.tar.gz && \
    rm -drf node-v0.12.4

USER jenkins
