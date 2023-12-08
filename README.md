## usage

See: https://github.com/WebAssembly/gc/tree/waml/proposals/gc/waml#usage

```sh
$ docker build . -t waml
$ docker run -it waml waml -x -c
waml 0.2 interpreter
> val f x = x + 7;  f 5;
...

# compile waml to wasm
$ docker run -i -v "$PWD":/data waml waml -c /data/test.waml

# compile waml to wat
$ docker run -i -v "$PWD":/data waml waml -c -x /data/test.waml

# convert wat to wasm
$ docker run -i -v "$PWD":/data waml wasm -d /data/test.wat -o /data/test.wasm

# interpret wasm
$ docker run -i -v "$PWD":/data waml wasm /data/test.wasm
```
