FROM centos

MAINTAINER "billqiang" <whenjonny@gmail.com>
WORKDIR /go/src/tapi
CMD [ "./tapi", " > /data/log/go/tapi.log", "2>&1"]
EXPOSE 8080
VOLUME ["/data"]
