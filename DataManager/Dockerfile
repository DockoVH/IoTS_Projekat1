FROM golang

WORKDIR /api

COPY . .

RUN go mod download

EXPOSE 8080

CMD ["go", "run", "./cmd/api/main.go"]
