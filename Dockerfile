FROM ubuntu:14.04
MAINTAINER developers@ninjablocks.com

RUN apt-get -qy update && apt-get -qy install supervisor linux-tools-common linux-tools-3.16.0-43-generic
COPY etc/supervisord.conf /etc/supervisord.conf
COPY etc/supervisor/conf.d/service.conf /etc/supervisor/conf.d/service.conf
COPY service-wrapper.sh /usvc/service-wrapper.sh
RUN mkdir -p /usvc

CMD ["/usr/bin/supervisord"]

# extensions should copy binary into /usvc/service and configuration into /usvc