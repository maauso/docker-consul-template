FROM debian:jessie
MAINTAINER m.auso.p@gmail.com


LABEL authors="Miguel Ángel Ausó <m.auso.p@gmail.com>"
LABEL description="Consul-template using in maauso/haproxy"
LABEL version="0.18.1"

#Consul options
ENV CONSUL_TEMPLATE_VERSION=0.18.1
ENV CONSUL_SERVER=127.0.0.1:8500

# Consul-template install
RUN apt-get update && \
  apt-get -y install wget unzip && \
  mkdir -p /tmp/consul-template && \
  cd /tmp/consul-template && \
  wget https://releases.hashicorp.com/consul-template/${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip && \
  unzip consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip && \
  cp consul-template / && \
  rm -rf /tmp/consul-template
