USING: io locals math random math.parser ;
IN: random-hanzi

:: rand-int ( start end -- n )
  end start - 1 +
  random
  start + ;

0x4e00 0x9fff rand-int number>string print
