USING: io sequences kernel locals ;
IN: happy-birthday

:: happy-birthday ( name -- )
  4 <iota> [
    "Happy birthday to " write
    2 = name "you" ? print
  ] each ;

"Bobby Knuckles" happy-birthday

nl

"Spider-Man" happy-birthday
