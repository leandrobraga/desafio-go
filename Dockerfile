FROM golang:1.17.7-alpine3.15 as builder

WORKDIR /src

COPY desafio.go .

RUN go build desafio.go

FROM scratch
WORKDIR /home
COPY --from=builder /src/desafio .
CMD [ "./desafio" ]
