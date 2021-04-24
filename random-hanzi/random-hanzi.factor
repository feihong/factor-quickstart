USING: io locals math random strings arrays kernel sequences command-line
       namespaces math.parser continuations math.order io.styles colors.constants ;
IN: random-hanzi

<PRIVATE

CONSTANT: default-n 8

:: local-rand[a,b] ( a b -- n )
  b a - 1 +
  random
  a + ;

: rand[a,b] ( a b -- n )
  over ! a b a
  - 1 + random + ;

: get-n ( -- n )
  [ command-line get first ] [ drop f ] recover
  string>number  ! number/f
  [ default-n ] unless*
  0 max ;

PRIVATE>

: print-hanzi ( s -- )
  H{ { font-size 24 }
     { foreground COLOR: indian-red }
  } format nl ;

: rand-hanzi ( -- s )  0x4e00 0x9fff rand[a,b] 1string ;

: rand-hanzis ( n -- newseq ) [ rand-hanzi ] replicate ;

: main ( -- )
  rand-hanzi print-hanzi
  get-n rand-hanzis " " join print-hanzi ;

MAIN: main
