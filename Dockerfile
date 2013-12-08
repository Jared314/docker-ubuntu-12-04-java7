# Dockerfile for Ubuntu 12.04 and Oracle Java 7
FROM ubuntu:precise
MAINTAINER Jared Lobberecht <jared@lobberecht.com>

RUN apt-get update && apt-get -y upgrade && apt-get -y install python-software-properties && add-apt-repository ppa:webupd8team/java -y && apt-get update

RUN (echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections) && apt-get install -y oracle-java7-installer && update-alternatives --display java

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
ENV PATH $JAVA_HOME/bin:$PATH
