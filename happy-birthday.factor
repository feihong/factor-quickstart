USING: io sequences kernel locals ;
IN: happy-birthday

:: happy-birthday ( name -- )
  4 <iota> [
    "Happy birthday " write
    2 = [ "dear " name append ] [ "to you" ] if print
  ] each ;

: happy-birthday' ( name -- )
  4 <iota> [
    "Happy birthday " write
    2 = [ "dear " swap append ] [ "to you" ] if print
  ] each ;

"Bobby Knuckles" happy-birthday

nl

! "Spider-Man" happy-birthday'
