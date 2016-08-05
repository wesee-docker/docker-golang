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

# iris network package 
RUN cd $GOPATH
RUN git clone https://github.com/golang/net.git
RUN git clone https://github.com/golang/crypto.git
RUN git clone https://github.com/golang/time.git
RUN mkdir -p $GOPATH/src/golang.org/x/
RUN cp -R ./net $GOPATH/src/golang.org/x/
RUN cp -R ./crypto $GOPATH/src/golang.org/x/
RUN cp -R ./time $GOPATH/src/golang.org/x/
# get iris
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

RUN go get github.com/panthesingh/goson

WORKDIR /go/src/tapi

#CMD [ "./tapi" ]

EXPOSE 8080
VOLUME ["/data"]
