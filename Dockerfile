FROM percona

MAINTAINER Yuri Vysotskiy (yfix) <yfix.dev@gmail.com>

RUN apt-get update \
  && apt-get install -y \
    percona-xtrabackup \
  \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /tmp/* \
  && rm -rf /usr/{{lib,share}/locale,share/{man,doc,info,gnome/help,cracklib,il8n},{lib,lib64}/gconv,bin/localedef,sbin/build-locale-archive}
