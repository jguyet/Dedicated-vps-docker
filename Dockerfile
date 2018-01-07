#DOCKERFILE
#Author jguyet

#Import Docker image debian:jessie
FROM debian:jessie

#AUTHOR
MAINTAINER firstname lastname

#ADD file to docker vm
ADD kromoz-install.sh /

#run bash and kromoz-install on first start vm
RUN /bin/bash /kromoz-install.sh

#launch this command on boot vm
ENTRYPOINT /bin/bash /kromoz-install.sh && /bin/bash
