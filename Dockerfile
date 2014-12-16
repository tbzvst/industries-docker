FROM ubuntu

MAINTAINER Tobia Zorzan <tobia.zorzan@visionest.com>

VOLUME ["/var/lib/postgresql/data"]

VOLUME ["/opt/alfresco-4.2.f/alf_data"]

VOLUME ["/opt/warda/conf/configuration.edn"]

ADD https://s3-eu-west-1.amazonaws.com/warda-setup/docker/data/warda-industries-data-20141216.tar.gz /data/

CMD tar xzvf /data/warda-industries-data-20141216.tar.gz
