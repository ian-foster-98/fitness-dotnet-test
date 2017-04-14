FROM microsoft/dotnet
MAINTAINER Ian Foster, ifoster.98@gmail.com

ENV LAST_UPDATE=2017-04-10

RUN apt-get update && \
    apt-get upgrade -y
RUN apt-get install -qy python-pip
RUN pip install awscli
