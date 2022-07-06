FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Tokyo
WORKDIR /home

RUN apt-get update
# Python3
# AtCoderのLanguageTestより
# RUN apt-get install -y python3.8 python3.8-dev python3-pip build-essential
# RUN python3.8 -m pip install Cython numba numpy scipy scikit-learn networkx
RUN apt-get install -y python3 pip
RUN python3 -m pip install Cython numba numpy scipy scikit-learn networkx
RUN mkdir /home/python
RUN touch /home/python/main.py

# C++関連
RUN apt-get install -y build-essential
RUN mkdir /home/cpp
RUN touch /home/cpp/a.cpp


LABEL maintainer="adenohitu"
