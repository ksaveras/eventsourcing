all:
	go fmt ./...
	go build

test:
	#base
	cd base && go test -count 1 ./...
	# event stores
	cd eventstore/bbolt && go test -count 1 ./...
	cd eventstore/sql && go test -count 1 ./...
	cd eventstore/esdb && go test esdb_test.go -count 1 ./...

	# main
	go test -count 1 ./...
