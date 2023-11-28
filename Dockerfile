# https://www.aise.ics.saitama-u.ac.jp/~gotoh/Ubuntu2004JPonWSL2.html

FROM ubuntu:20.04


ENV DISPLAY host.docker.internal:0.0

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y tzdata
# timezone setting
ENV TZ=Asia/Tokyo 

# RUN apt-get update
RUN apt-get install -y texlive-lang-japanese  texlive-latex-extra xdvik-ja evince
# windows上でx-serverに接続するために必要
RUN apt-get install x11-apps -y
RUN apt-get install git -y
RUN apt-get install dos2unix -y

WORKDIR /work
COPY run.sh /work/
COPY compile.sh /work/

RUN dos2unix /work/run.sh