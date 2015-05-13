## Version: 0.1
FROM centos:centos6
MAINTAINER Anton Bugreev <anton@bugreev.ru>

## repo
RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

## install salt-master
RUN yum install salt-master.noarch -y

## set timezone
RUN cp -f /usr/share/zoneinfo/Asia/Novosibirsk /etc/localtime

### volumes
VOLUME ["/srv/salt/"]

### main
CMD ["/usr/bin/salt-master", "--log-file=/dev/stdout"]

### allow ports
EXPOSE 4505
EXPOSE 4506

