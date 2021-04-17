USING: io locals math random strings arrays kernel sequences command-line namespaces math.parser ;
IN: random-hanzi

CONSTANT: default-n 8

:: rand-int ( start end -- n )
  end start - 1 +
  random
  start + ;

: rand-hanzi ( -- s )  0x4e00 0x9fff rand-int 1string ;

: rand-hanzis ( n -- newseq ) [ rand-hanzi ] replicate ;

: get-n ( -- n )
  command-line get
    [ default-n ] [ first string>number ] if-empty
  dup number? [ drop default-n ] unless ;

rand-hanzi print

get-n rand-hanzis " " join print
