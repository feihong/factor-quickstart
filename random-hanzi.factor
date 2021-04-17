USING: io locals math random strings arrays kernel sequences command-line namespaces math.parser ;
IN: random-hanzi

CONSTANT: default-n 8

:: local-rand[a,b] ( a b -- n )
  b a - 1 +
  random
  a + ;

: rand[a,b] ( a b -- n )
  over ! a b a
  - 1 + random + ;

: rand-hanzi ( -- s )  0x4e00 0x9fff rand[a,b] 1string ;

: rand-hanzis ( n -- newseq ) [ rand-hanzi ] replicate ;

: get-n ( -- n )
  command-line get
    [ default-n ] [ first string>number ] if-empty
  [ default-n ] unless* ;

rand-hanzi print

get-n rand-hanzis " " join print
