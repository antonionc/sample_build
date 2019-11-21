FROM registry.redhat.io/openjdk/openjdk-8-rhel8

USER root

RUN yum -y install \
  ruby wget\
  && yum clean all
#RUN yum -y install --disableplugin=subscription-manager \
  #httpd24 rh-php72 rh-php72-php \
  #&& yum --disableplugin=subscription-manager clean all

EXPOSE 8080

USER 1001

CMD sleep 3600
