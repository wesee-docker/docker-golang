FROM golang

MAINTAINER "billqiang" <whenjonny@gmail.com>

#RUN go get -u github.com/kataras/iris
#RUN go get -u github.com/gosexy/redis
#RUN go get github.com/golang/protobuf/proto
#RUN go get github.com/iris-contrib/middleware/logger
#RUN go get gopkg.in/mgo.v2
#RUN go get github.com/go-sql-driver/mysql
#RUN go get qiniupkg.com/api.v7/conf
#RUN go get qiniupkg.com/api.v7/kodo
#RUN go get -u github.com/beego/bee
#RUN go get -u github.com/astaxie/beego

# dot env
RUN go get github.com/joho/godotenv
RUN go get golang.org/x/net; exit 0
RUN go get golang.org/x/crypto; exit 0
RUN go get golang.org/x/time; exit 0
# get iris
RUN go get github.com/kataras/iris
RUN go get github.com/iris-contrib/middleware; exit 0
RUN go get -u github.com/beego/bee
RUN go get -u github.com/astaxie/beego
RUN go get gopkg.in/mgo.v2
RUN go get github.com/go-sql-driver/mysql
RUN go get -u github.com/gosexy/redis
# 会遇到问题的：menteslibres.net/gosexy/to
RUN go get github.com/golang/protobuf; exit 0
RUN go get qiniupkg.com/api.v7/conf
RUN go get qiniupkg.com/api.v7/kodo

RUN go get github.com/pingplusplus/pingpp-go/pingpp
RUN go get github.com/yinhui87/server-sdk-go/RCServerSDK
RUN go get github.com/pili-engineering/pili-sdk-go/pili

RUN go get github.com/panthesingh/goson

RUN go get github.com/go-errors/errors

WORKDIR /go/src/tapi

CMD [ "./tapi" ]

EXPOSE 8080
VOLUME ["/data"]
