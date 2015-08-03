FROM ubuntu:14.04
MAINTAINER developers@ninjablocks.com

RUN apt-get -qy update && apt-get -qy install supervisor
COPY etc/supervisord.conf /etc/supervisord.conf
COPY etc/supervisor/conf.d/service.conf /etc/supervisor/conf.d/service.conf

RUN mkdir -p /usvc

CMD ["/usr/bin/supervisord"]

# extensions should copy binary into /usvc/service and configuration into /usvc