FROM golang:1.22 AS builder

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY . .
# Явно указываем целевые параметры сборки
RUN go build -o todo-app ./cmd/main.go