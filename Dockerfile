#
# Industries data container Dockerfile
#
# https://github.com/tbzvst/industries-docker
#

FROM ubuntu

MAINTAINER Tobia Zorzan <tobia.zorzan@visionest.com>

VOLUME ["/var/lib/postgresql/data"]

VOLUME ["/opt/alfresco-4.2.f/alf_data"]

VOLUME ["/opt/warda/conf/environments"]

ADD https://s3.eu-central-1.amazonaws.com/warda-docker/warda-industries-data-20141218.tar.gz /data/

CMD tar xzvf /data/warda-industries-data-20141216.tar.gz
