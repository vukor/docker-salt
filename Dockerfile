## Version: 0.3
FROM ubuntu:14.04
MAINTAINER Anton Bugreev <anton@bugreev.ru>

## install salt-master
RUN apt-get update && apt-get install -y \
  salt-master

### volumes
VOLUME ["/srv/"]

### main
CMD ["/usr/bin/salt-master", "--log-file=/dev/stdout"]

### allow ports
EXPOSE 4505
EXPOSE 4506

