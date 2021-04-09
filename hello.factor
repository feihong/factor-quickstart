USING: io unicode splitting sequences namespaces assocs ;

IN: hello-world

SYMBOL: cdict
H{ { "hello" "你好" } { "world" "世界" } } cdict set

"HELLO;WORLD;and;goodbye;universe" >lower ";" split " " join print

"hello" cdict get at print
