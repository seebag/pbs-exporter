FROM golang:1.24 AS builder
WORKDIR /app
COPY . .

RUN go build -buildvcs=false

#FROM alpine:latest
#WORKDIR /app
#COPY --from=builder /app/pbs-exporter /app/pbs-exporter

EXPOSE 10019
CMD ["/app/pbs-exporter"]

