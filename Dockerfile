# syntax=docker/dockerfile:1.4

FROM ubuntu:20.04

ENV LANG en_US.utf8

ENV NFS_SERVER_DEBUG "0"
ENV NFS_SERVER_ALLOWED_CLIENTS "172.16.0.0/12"

#RUN yum install -y nfs-utils
RUN apt-get update && apt-get install -y nfs-kernel-server 

EXPOSE 2049

COPY nfs-server /usr/local/bin
ENTRYPOINT ["/usr/local/bin/nfs-server"]
