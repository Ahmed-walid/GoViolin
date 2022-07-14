FROM golang:alpine3.16

WORKDIR /app
COPY . /app/
RUN if [[ -f "go.mod" ]] ; then echo "go.mod exists" ; else go mod init; fi
RUN go build -o app

ENTRYPOINT ./app

