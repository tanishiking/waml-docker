## usage

See: https://github.com/WebAssembly/gc/tree/waml/proposals/gc/waml#usage

```sh
$ docker build . -t waml
$ ./waml -x -c
waml 0.2 interpreter
> val f x = x + 7;  f 5;
(module
  (type $0 (sub (struct (field i32))))
  (type $1 (func (param (ref 0) (ref eq)) (result (ref eq))))
  (type $2 (func))
  (rec
    (type $3 (func (param (ref 4) (ref eq)) (result (ref eq))))
    (type $4 (sub 0 (struct (field i32) (field (ref 3)))))
  )
  (type $5 (sub final 4 (struct (field i32) (field (ref 3)))))
  (import "waml-runtime" "func_apply1" (func $0 (type 1)))
  (global $0 (mut (ref null 4)) (ref.null 4))
  (global $1 (mut (ref null i31)) (ref.null i31))
  (func $1
    (type 2)
    (i32.const 1)
    (ref.func 2)
    (struct.new 5)
    (global.set 0)
    (global.get 0)
    (ref.as_non_null)
    (i32.const 5)
    (ref.i31)
    (call 2)
    (ref.cast (ref i31))
    (global.set 1)
  )
  (func $2
    (type 3)
    (local i32)
    (local.get 1)
    (ref.cast (ref i31))
    (i31.get_s)
    (local.set 2)
    (local.get 2)
    (i32.const 7)
    (i32.add)
    (ref.i31)
  )
  (export "return" (global 1))
  (export "f" (global 0))
  (export "func f" (func 2))
  (start 1)
  (elem $0 declare func 2)
)
(i31 12) : Int
val f : Int ->1 Int
```
