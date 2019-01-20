FROM phusion/baseimage

RUN apt-get update && apt-get -y install geoip-bin bro broctl logrotate openssl gnutls-bin binutils binfmt-support python-tk net-tools less 

ADD local.bro  /var/spool/bro/installed-scripts-do-not-touch/site/local.bro
ADD mac-logging.bro /usr/share/bro/policy/protocols/conn/mac-logging.bro
ENTRYPOINT [ "/bin/bash" ]
