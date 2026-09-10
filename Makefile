.PHONY: build run clean test

APP_NAME=system_report
BUILD_DIR=bin

build:
	@echo "🔨 Building $(APP_NAME)..."
	go build -o $(BUILD_DIR)/$(APP_NAME) ./cmd/system_report

run:
	@echo "🚀 Running $(APP_NAME) server on port 2026..."
	go run ./cmd/system_report/main.go

clean:
	@echo "🧹 Cleaning up binary and database cache..."
	rm -rf $(BUILD_DIR) *.db

test:
	@echo "🧪 Running tests..."
	go test -v ./...

check:
	@echo "Running automated system health check..."
	go run ./cmd/system_report/health_check.go
