grammar TestGrammar;

// just an example, content doesn't really matter

@header {
    package test;
}

file: seq EOF;

seq: element (',' element)*;

element: OPERATOR DIGIT;

DIGIT: [0-9]
      ;

OPERATOR: '+' 
         | '-'
         ;

WS: [\n\t ] -> skip;