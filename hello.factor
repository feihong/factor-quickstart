USING: io unicode splitting sequences namespaces assocs locals kernel ;
IN: hello

"HELLO;WORLD;and;goodbye;universe" >lower ";" split " " join print

CONSTANT: cdict  H{ { "hello" "你好" }
                    { "world" "世界" }
                    { "goodbye" "再见" }
                    { "universe" "宇宙" } }

:: translate ( s -- )
  s >lower " " split
  [ cdict ?at drop ] map  ! drop boolean indicating whether key was found
  "" join print ;

"Hello World" translate

"GOODBYE universe" translate

"hello CAT" translate
