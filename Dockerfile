FROM debian
MAINTAINER firstname lastname

ADD kromoz-install.sh /

RUN /bin/bash /kromoz-install.sh

ENTRYPOINT /bin/bash /kromoz-install.sh && /bin/bash
