USING: io math.ranges math.functions combinators math present kernel sequences
       strings ;
IN: fizzbuzz

: fizzbuzz ( n -- seq )
  [1,b] [
    {
      { [ dup 15 divisor? ] [ drop "FizzBuzz" ] }
      { [ dup 3 divisor? ] [ drop "Fizz" ] }
      { [ dup 5 divisor? ] [ drop "Buzz" ] }
      [ present ]
    } cond
  ] map ;

100 fizzbuzz ", " join print
