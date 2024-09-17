FROM golang:1.23.1-alpine3.20 AS build
ENV GOBIN=/usr/local/bin
RUN go install github.com/birdayz/kaf/cmd/kaf@v0.2.8

FROM alpine:3.20.3
COPY --from=build  /usr/local/bin/kaf /usr/bin/kaf