FROM centos

MAINTAINER "billqiang" <whenjonny@gmail.com>
WORKDIR /go/src/tapi
CMD [ "./tapi" ]
EXPOSE 8080
VOLUME ["/data"]
