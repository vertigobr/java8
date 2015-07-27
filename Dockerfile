# Base Java Image

FROM registry.vtg/vertigo/docker-base:latest

MAINTAINER Rubens Neto

WORKDIR /opt

RUN wget http://registry.vtg/files/oracle/jdk-8u51-linux-x64.rpm -q -O /opt/jdk.rpm && \ 
    yum localinstall /opt/jdk.rpm -y && \
    rm /opt/jdk.rpm && \
    yum clean all

#ENV JAVA_HOME /usr/lib/jvm/java

#RUN echo "JAVA_HOME=/usr/lib/jvm/java" >> /etc/environment

