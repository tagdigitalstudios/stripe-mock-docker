FROM golang:1.9-alpine

RUN go get -v -u github.com/stripe/stripe-mock

RUN go install github.com/stripe/stripe-mock

EXPOSE 12111

ENTRYPOINT ["stripe-mock"]
