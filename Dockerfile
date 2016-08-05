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

RUN go get github.com/golang/net    
RUN go get github.com/golang/crypto
RUN go get github.com/golang/time
RUN mkdir -p $GOPATH/src/golang.org/x/
RUN cp -R $GOPATH/src/github.com/golang/net $GOPATH/src/golang.org/x/
RUN cp -R $GOPATH/src/github.com/golang/crypto $GOPATH/src/golang.org/x/
RUN cp -R $GOPATH/src/github.com/golang/time $GOPATH/src/golang.org/x/
RUN 
# 安装iris
# go get -u github.com/kataras/iris
RUN go get github.com/kataras/iris
RUN go get -u github.com/beego/bee
RUN go get -u github.com/astaxie/beego
RUN go get gopkg.in/mgo.v2
RUN go get github.com/go-sql-driver/mysql
RUN go get -u github.com/gosexy/redis
# 会遇到问题的：menteslibres.net/gosexy/to
RUN go get github.com/golang/protobuf
RUN go get qiniupkg.com/api.v7/conf
RUN go get qiniupkg.com/api.v7/kodo

RUN go get github.com/pingplusplus/pingpp-go/pingpp
RUN go get github.com/yinhui87/server-sdk-go/RCServerSDK
RUN go get github.com/pili-engineering/pili-sdk-go/pili


WORKDIR /go/src/tapi

#CMD [ "./tapi" ]

EXPOSE 8080
VOLUME ["/data"]
