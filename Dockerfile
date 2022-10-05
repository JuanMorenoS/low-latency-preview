FROM golang:1.19.2



WORKDIR $GOPATH/src/github.com/streamlinevideo/low-latency-preview

COPY . .

RUN go mod download && go mod verify

RUN go build -o /server

RUN mkdir /tmp/www

EXPOSE 80


CMD ["/server","/tmp/www"]

