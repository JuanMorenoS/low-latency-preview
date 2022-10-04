FROM golang:1.19.2



WORKDIR $GOPATH/src/github.com/streamlinevideo/low-latency-preview

COPY . .

RUN go mod init lowlatency

RUN go mod tidy

RUN go build -o /server

RUN mkdir /tmp/www

EXPOSE 8080


CMD ["/server","/tmp/www"]

