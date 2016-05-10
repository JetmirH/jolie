# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang:latest


# Copy the local package files to the container's workspace.
ADD . /go/src/github.com/thethingsnetwork/jolie
WORKDIR /go/src/github.com/thethingsnetwork/jolie

#Cache dependencies
RUN go get "github.com/streadway/amqp"
RUN go get "github.com/gorilla/mux"
#RUN go get "github.com/thethingsnetwork/server-shared"
RUN go get "github.com/JetmirH/server-shared"
RUN go get "gopkg.in/mgo.v2"
RUN go get "gopkg.in/mgo.v2/bson"
RUN go get "git.eclipse.org/gitroot/paho/org.eclipse.paho.mqtt.golang.git"



RUN go build .

CMD ["./jolie"]
