#Dockerfile for jjb-watcher
FROM centos:7
MAINTAINER Naga Ravi Chaitanya Elluri <nelluri@redhat.com>

# Setup jenkins-builder, clone aos-cd-repo
RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum install -y git ansible python-pip which inotify-tools && \
    mkdir -p /root/.ssh && \
    cd /usr/lib/python2.7/site-packages/ && rm -rf six-1.9.0-py2.7.egg-info six.py six.pyc && \
    pip install jenkins-job-builder six && \
    git clone https://github.com/chaitanyaenr/aos-cd-jobs.git /root/aos-cd-jobs && cd /root/aos-cd-jobs && git checkout alderaan && \
    git clone https://github.com/chaitanyaenr/pipeline-groovy-scripts.git /root/pipeline-groovy-scripts && \
    yum clean all

COPY watch.sh /root/watch.sh

ENTRYPOINT ["/root/watch.sh"]
