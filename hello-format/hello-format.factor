USING: io io.styles ;
IN: hello-format

: main ( -- )
  "Hello World" H{ { font-size 32 } } format nl
  "你好世界！" H{ { font-size 32 } } format nl ;

MAIN: main
