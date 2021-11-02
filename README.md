# Hogosuru examples
You can find here some example how to use hogosuru  

First you the easy way to test this example is to used the amazing project from agniva: wasmbrowsertest  


## How to test?

There are two way to test this example: 

- Use wasmbrowsertest with WASM_HEADLESS mode enable
- Build the wasm , loaded it on your browser with an httpserver (provide in server/main.go)




## Use wasmbrowsertest

Follow the instruction here and install the tools: 

https://github.com/agnivade/wasmbrowsertest


wasmbrowsertest must be named go_js_wasm_exec and will be execute by GO. So its important to ensure that your PATH ENV contains the path where go_js_wasm_exec is.  


just go start the main of the project with  

```
WASM_HEADLESS=off GOOS=js GOARCH=wasm  go run hello/main.go
```

The hello world is automatically loaded on your chrome browser.


## Compile and serve with go

### building with tinygo

Start the tinygo container with your source  
```
docker run --rm -it -w /go/src/hogosuru-examples -v "$PWD":/go/src/hogosuru-examples tinygo/tinygo bash 
```


```
GOOS=js GOARCH=wasm go get github.com/realPy/hogosuru@main
```
If you the compiler is upgraded, Sync the wasm_exec.js loader with your current wasm_exec.js compiler version

```
cp /usr/local/tinygo/targets/wasm_exec.js /go/src/hogosuru-examples/static/
```

Optional: If you want compile all example you need make:  

```
apt-get update
apt-get install make
```

### building with Go

Just 

```
GOOS=js GOARCH=wasm go build -o ./static/hello.wasm  hello/main.go
```

dont forget to always include the wasm_exec.js from your go compiler
```
cp $(go env GOROOT)/misc/wasm/wasm_exec.js example/static/
```

Start Web Server 

```
go run server/main.go
```

go to http://localhost:9090/hello.html
