grammar Expr;

root : expr EOF;
expr : EOF;


CREATE      : 'CREATE' ;
TABLE       : 'TABLE' ;
SERIAL      : 'SERIAL' ;
PRIMARY     : 'PRIMARY' ;
KEY         : 'KEY' ;
VARCHAR     : 'VARCHAR' ;
INTEGER     : 'INTEGER' ;
NOT         : 'NOT' ;
NULL        : 'NULL' ;
DATE        : 'DATE' ;


INSERT      : 'INSERT' ;
INTO        : 'INTO' ;
VALUES      : 'VALUES' ;
UPDATE      : 'UPDATE' ;   // ← NUEVO
SET         : 'SET' ;      // ← NUEVO


SELECT      : 'SELECT' ;
FROM        : 'FROM' ;
INNER       : 'INNER' ;
JOIN        : 'JOIN' ;
ON          : 'ON' ;
WHERE       : 'WHERE' ;
AND         : 'AND' ;
OR          : 'OR' ;

PAR_I       : '(' ;
PAR_D       : ')' ;
IGUAL       : '=' ;
COMA        : ',' ;
PUNTO       : '.' ;
PUNTO_COMA  : ';' ;
ASTERISCO   : '*' ;


CADENA      : '\'' (~['\r\n])* '\'' ;
NUM         : [0-9]+ ;
ID          : [a-zA-Z_][a-zA-Z0-9_]* ;

WS          : [ \t\r\n]+ -> skip ;
COMENTARIO  : '--' ~[\r\n]* -> skip ;