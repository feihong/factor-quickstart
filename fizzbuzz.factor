USING: io math.ranges combinators math present kernel sequences strings ;
IN: fizzbuzz

: fizzbuzz ( n -- seq )
  [1,b] [
    {
      { [ dup 15 mod 0 = ] [ drop "FizzBuzz" ] }
      { [ dup 3 mod 0 = ] [ drop "Fizz" ] }
      { [ dup 5 mod 0 = ] [ drop "Buzz" ] }
      [ present ]
    } cond
  ] map ;

100 fizzbuzz ", " join print
