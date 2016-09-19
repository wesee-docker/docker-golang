FROM centos

MAINTAINER "billqiang" <whenjonny@gmail.com>
WORKDIR /go/src/tapi
CMD [ "nohup ./tapi >> /data/go/tapi.log" ]
EXPOSE 8080
VOLUME ["/data"]
