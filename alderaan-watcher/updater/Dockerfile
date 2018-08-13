#Dockerfile for jjb-watcher
FROM centos:7
MAINTAINER Naga Ravi Chaitanya Elluri <nelluri@redhat.com>

# Setup jenkins-builder, clone aos-cd-repo
RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum install -y git ansible python-pip which inotify-tools && \
    yum clean all

COPY pull.sh /root/pull.sh

ENTRYPOINT ["/root/pull.sh"]
