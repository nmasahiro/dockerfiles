FROM centos:centos6.8

MAINTAINER Masahiro Nomura

RUN yum install -y centos-release-scl-rh
RUN yum install -y python27
RUN yum install -y wget
RUN yum install -y mysql
COPY cmd.sh /
RUN /bin/bash -c "source /cmd.sh"

