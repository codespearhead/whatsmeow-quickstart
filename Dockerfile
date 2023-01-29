FROM golang:1.19.5-buster

WORKDIR /build
ADD https://raw.githubusercontent.com/Paguiar735/whatsmeow-quickstart/main/go.mod go.mod
ADD https://raw.githubusercontent.com/Paguiar735/whatsmeow-quickstart/main/go.sum go.sum
ADD https://raw.githubusercontent.com/Paguiar735/whatsmeow-quickstart/main/main.go main.go

RUN go mod download
RUN go build -o ../main .

WORKDIR /
RUN rm -rf build
RUN go clean -modcache

ENTRYPOINT ["/main"]