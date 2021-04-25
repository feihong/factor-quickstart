USING: io io.styles colors.constants assocs locals sequences ;
QUALIFIED: colors.constants.private
IN: hello-format

:: print-color ( name color -- )
  name H{ { foreground color } { font-size 32 } } format
  " " write
  name H{ { foreground color }
          { font-size 32 }
          { background COLOR: black } } format nl ;

: print-colors ( -- )
  colors.constants.private:colors >alist [ first2 print-color ] each ;

: main ( -- )
  "Hello World" H{ { font-size 32 } } format nl

  "你好世界！" H{ { font-size 32 }
                { foreground COLOR: indian-red }
              } format nl ;

! MAIN: main
MAIN: print-colors
