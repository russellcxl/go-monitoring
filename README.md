# go-monitoring
Grafana and Prometheus

___

## prometheus
- start ` ./prometheus --config.file=./prometheus.yml`
- scrapes data every 5 seconds


## grafana
- install `brew install grafana`
- start `brew services start grafana`
- open http://localhost:3000
- configure data source as prometheus; url = `localhost:9090`
- create new panel and import settings from `/grafana/grafana.json` 
- stop `brew services stop grafana`

## server
- start server on :8080 `go run main.go`
- server will send data to :8080/metrics