FROM golang:1.19.5-buster
WORKDIR /build
ADD https://raw.githubusercontent.com/codespearhead/whatsmeow-quickstart/main/go.mod go.mod
ADD https://raw.githubusercontent.com/codespearhead/whatsmeow-quickstart/main/go.sum go.sum
ADD https://raw.githubusercontent.com/codespearhead/whatsmeow-quickstart/main/main.go main.go
RUN go mod download
RUN GOOS=linux go build -o ../main

RUN rm -rf build
RUN go clean -modcache

ENTRYPOINT ["/main"]