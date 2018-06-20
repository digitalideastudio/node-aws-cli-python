FROM node:9.5.0
MAINTAINER Serhii Matrunchyk <serhii@digitalidea.studio>

RUN apt-get update && apt-get install -y \
    python-dev xvfb libgtk2.0-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    pip install awscli
