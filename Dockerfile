FROM golang:1.12.0-alpine3.9

# needed for git exec; go mod download will run into errors otherwise
RUN apk add git

WORKDIR /app/go-monitoring

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /go-monitoring

EXPOSE 8080

CMD [ "/go-monitoring" ]

