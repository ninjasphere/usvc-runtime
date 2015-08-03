#NAME
usvc-runtime - a base image for go usvc runtimes

#DESCRIPTION
Extensions of this image can add a service binary to /usvc/service which will be started automatically. The current working
directory of the service will be set to /usvc directory.

The supervisord configuration for this service is located in: /etc/supervisor/conf.d/service.conf

