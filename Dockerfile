FROM golang

MAINTAINER "billqiang" <whenjonny@gmail.com>

RUN go get -u github.com/kataras/iris
RUN go get -u github.com/gosexy/redis
RUN go get gopkg.in/mgo.v2
RUN go get github.com/go-sql-driver/mysql
RUN go get qiniupkg.com/api.v7/conf
RUN go get qiniupkg.com/api.v7/kodo
RUN go get -u github.com/beego/bee
RUN go get -u github.com/astaxie/beego

WORKDIR /go/src/tapi

EXPOSE 8080
VOLUME ["/data"]
