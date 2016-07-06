FROM yfix/baseimage

MAINTAINER Yuri Vysotskiy (yfix) <yfix.dev@gmail.com>

RUN pkg_name=percona-release_0.1-3.$(lsb_release -sc)_all.deb \
  && curl -O https://repo.percona.com/apt/$pkg_name && dpkg -i $pkg_name && rm $pkg_name \
  && apt-get update \
  && apt-get install -y \
    percona-xtrabackup-24 \
  \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /tmp/* \
  && rm -rf /usr/{{lib,share}/locale,share/{man,doc,info,gnome/help,cracklib,il8n},{lib,lib64}/gconv,bin/localedef,sbin/build-locale-archive}
