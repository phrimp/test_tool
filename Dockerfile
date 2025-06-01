# Use the official Go image as base
FROM golang:1.21-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Go source file
COPY main.txt main.go

# Initialize Go module
RUN go mod init myapp

# Build the Go application
RUN go build -o main main.go

# Run the application
CMD ["./main"]