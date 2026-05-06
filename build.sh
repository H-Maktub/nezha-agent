rm ./bin/*
go mod tidy
Version=2.0.3
CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build  -ldflags "-s -w -X github.com/nezhahq/agent/pkg/monitor.Version=$Version -X main.arch=amd64" -o ./bin/nezha-agent.exe cmd/agent/main.go
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build  -ldflags "-s -w -X github.com/nezhahq/agent/pkg/monitor.Version=$Version -X main.arch=amd64" -o ./bin/nezha-agent cmd/agent/main.go
CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build  -ldflags "-s -w -X github.com/nezhahq/agent/pkg/monitor.Version=$Version -X main.arch=arm64" -o ./bin/nezha-agent-arm cmd/agent/main.go