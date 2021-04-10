USING: io unicode splitting sequences namespaces assocs locals kernel ;

IN: hello-world

"HELLO;WORLD;and;goodbye;universe" >lower ";" split " " join print

:: translate ( d s -- s )
  s >lower
  " " split
  [ d at ] map
  "" join
  print
  d ;

H{ { "hello" "你好" }
   { "world" "世界" }
   { "goodbye" "再见" }
   { "universe" "宇宙" } }

"Hello World" translate

"GOODBYE universe" translate

! "hello cat" translate

clear
