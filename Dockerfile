# Version 2.0

FROM ubuntu:14.04

MAINTAINER Abhinav Ajgaonkar <abhinav316@gmail.com>

# Install Oracle Java 8
RUN \
  apt-get update && apt-get install -y -qq software-properties-common wget; \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections; \
  add-apt-repository -y ppa:webupd8team/java; \
  apt-get update; \
  apt-get install -y oracle-java8-installer;

# Install SBT
RUN \
  wget https://dl.bintray.com/sbt/debian/sbt-0.13.7.deb; \
  dpkg -i sbt-0.13.7.deb; \
  rm sbt-0.13.7.deb;

CMD ["/bin/bash"]
