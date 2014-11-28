# Version 1.0

FROM phusion/baseimage:0.9.15

MAINTAINER Abhinav Ajgaonkar <abhinav316@gmail.com>

# Install Oracle Java 7
RUN \
  echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections; \
  add-apt-repository -y ppa:webupd8team/java; \
  apt-get update; \
  apt-get install -y oracle-java7-installer;

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/sbin/my_init"]