USING: io locals math random strings arrays kernel sequences ;
IN: random-hanzi

:: rand-int ( start end -- n )
  end start - 1 +
  random
  start + ;

: rand-hanzi ( -- s )
  0x4e00 0x9fff rand-int
  1string ;

: rand-hanzis ( n -- array )
  f <array>
  [ drop rand-hanzi ] map ;

rand-hanzi print

8 rand-hanzis " " join print
