GO=tinygo

.PHONY: hello array json draganddrop fetch websocket node xmlhttprequest map date promise indexeddb history broadcastchannel console webassembly keyobservable
all: hello array json draganddrop fetch websocket node xmlhttprequest map date promise indexeddb history broadcastchannel console webassembly loading keyobservable


hello:
	$(GO) build  -o ./static/hello.wasm --no-debug -target wasm hello/main.go

array:
	$(GO) build  -o ./static/array.wasm --no-debug -target wasm array/main.go
map:
	$(GO) build  -o ./static/map.wasm --no-debug -target wasm map/main.go
date:
	$(GO) build  -o ./static/date.wasm --no-debug -target wasm date/main.go
promise:
	$(GO) build  -o ./static/promise.wasm --no-debug -target wasm promise/main.go
indexeddb:
	$(GO) build  -o ./static/indexeddb.wasm --no-debug -target wasm indexeddb/main.go
	
node:
	$(GO) build  -o ./static/node.wasm --no-debug -target wasm node/main.go

json:
	$(GO) build  -o ./static/json.wasm --no-debug -target wasm json/main.go

fetch:
	$(GO) build  -o ./static/fetch.wasm --no-debug -target wasm fetch/main.go

draganddrop:
	$(GO) build  -o ./static/draganddrop.wasm --no-debug -target wasm draganddrop/main.go

xmlhttprequest:
	$(GO) build  -o ./static/xmlhttprequest.wasm --no-debug -target wasm xmlhttprequest/main.go

websocket:
	$(GO) build  -o ./static/websocket.wasm --no-debug -target wasm websocket/main.go

history:
	$(GO) build  -o ./static/history.wasm --no-debug -target wasm history/main.go
routing:
	$(GO) build  -o ./static/routing.wasm --no-debug -target wasm routing/main.go
broadcastchannel:
	$(GO) build  -o ./static/broadcastchannel.wasm --no-debug -target wasm broadcastchannel/main.go
console:
	$(GO) build  -o ./static/console.wasm --no-debug -target wasm console/main.go
webassembly:
	$(GO) build  -o ./static/webassembly.wasm --no-debug -target wasm webassembly/main.go
loading:
	$(GO) build  -o ./static/loading.wasm --no-debug -target wasm loading/main.go
keyobservable:
	$(GO) build  -o ./static/keyobservable.wasm --no-debug -target wasm keyobservable/main.go