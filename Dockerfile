FROM centos

MAINTAINER "billqiang" <whenjonny@gmail.com>
CMD [ "./tapi" ]
EXPOSE 8080
VOLUME ["/data"]
