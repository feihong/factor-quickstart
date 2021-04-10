USING: io unicode splitting sequences namespaces assocs locals kernel ;

IN: hello-world

"HELLO;WORLD;and;goodbye;universe" >lower ";" split " " join print

:: translate ( d s -- d )
  s >lower
  " " split
  [ d ?at drop ] map  ! drop boolean indicating whether key was found
  "" join
  print
  d ;

! Use the same hashtable for all translate calls
H{ { "hello" "你好" }
   { "world" "世界" }
   { "goodbye" "再见" }
   { "universe" "宇宙" } }

"Hello World" translate

"GOODBYE universe" translate

"hello CAT" translate

drop  ! dictionary is still on the stack
