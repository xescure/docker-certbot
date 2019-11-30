FROM debian

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install certbot

ENTRYPOINT ["certbot"]

EXPOSE 80 443
VOLUME /etc/letsencrypt /var/lib/letsencrypt /var/log/letsencrypt
WORKDIR /opt/certbot

CMD []
