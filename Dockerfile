# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang:latest

#Cache dependencies
RUN go get "github.com/influxdb/influxdb/client"
RUN go get "github.com/joho/godotenv"

# Copy the local package files to the container's workspace.
ADD . /go/src/github.com/thethingsnetwork/croft
WORKDIR /go/src/github.com/thethingsnetwork/croft

# Document that the service listens on port 1700
EXPOSE 1700

RUN go build .

CMD ["./croft"]

