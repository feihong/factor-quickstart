USING: io io.styles colors.constants assocs locals sequences math.parser ;
QUALIFIED: colors.constants.private
IN: hello-format

:: print-color ( index name color -- )
  index number>string ". " append H{ { font-size 32 } } format
  name H{ { foreground color } { font-size 32 } } format
  " " write
  name H{ { foreground color }
          { font-size 32 }
          { background COLOR: black } } format nl ;

: print-colors ( -- )
  colors.constants.private:colors >alist
  [| array index | index array first2 print-color ] each-index ;

: main ( -- )
  "Hello World" H{ { font-size 32 } } format nl

  "你好世界！" H{ { font-size 32 }
                { foreground COLOR: red }
              } format nl ;

! MAIN: main
MAIN: print-colors
