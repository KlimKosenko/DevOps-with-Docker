FROM golang:1.21.0
EXPOSE 8080
WORKDIR /usr/src/app
COPY go.mod go.sum ./
RUN go mod download
COPY *.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -o /golang_web_app
CMD ["/golang_web_app"]