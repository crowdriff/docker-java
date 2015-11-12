# Version 2.0

FROM ubuntu:14.04

MAINTAINER Abhinav Ajgaonkar <abhinav316@gmail.com>

# Install Git, Oracle Java 8, SBT
RUN \
  apt-get update && apt-get install -y -qq software-properties-common wget git; \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections; \
  add-apt-repository -y ppa:webupd8team/java; \
  apt-get update; \
  apt-get install -y oracle-java8-installer; \
  wget https://dl.bintray.com/sbt/debian/sbt-0.13.7.deb; \
  dpkg -i sbt-0.13.7.deb; \
  rm sbt-0.13.7.deb; \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/bin/bash"]
