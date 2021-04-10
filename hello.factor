USING: io unicode splitting sequences namespaces assocs ;

IN: hello-world

SYMBOL: cdict
H{ { "hello" "你好" }
   { "world" "世界" }
   { "goodbye" "再见" }
   { "universe" "宇宙" } } cdict set

"HELLO;WORLD;and;goodbye;universe" >lower ";" split " " join print

: translate ( s -- )
  >lower
  " " split
  [ cdict get at ] map
  "" join
  print ;

"Hello World" translate

"GOODBYE universe" translate
