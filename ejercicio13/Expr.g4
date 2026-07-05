grammar Expr;

root : expr EOF;
expr : EOF;

// Palabras clave DDL
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

// Palabras clave DML
INSERT      : 'INSERT' ;
INTO        : 'INTO' ;
VALUES      : 'VALUES' ;

// Palabras clave DQL
SELECT      : 'SELECT' ;
FROM        : 'FROM' ;
INNER       : 'INNER' ;
JOIN        : 'JOIN' ;
ON          : 'ON' ;
WHERE       : 'WHERE' ;
AND         : 'AND' ;
OR          : 'OR' ;

// Símbolos
PAR_I       : '(' ;
PAR_D       : ')' ;
IGUAL       : '=' ;
COMA        : ',' ;
PUNTO       : '.' ;
PUNTO_COMA  : ';' ;
ASTERISCO   : '*' ;

// Literales
CADENA      : '\'' (~['\r\n])* '\'' ;  // Cadenas entre comillas simples
NUM         : [0-9]+ ;
ID          : [a-zA-Z_][a-zA-Z0-9_]* ;

// Espacios (ignorar)
WS          : [ \t\r\n]+ -> skip ;

// Comentarios de línea
COMENTARIO  : '--' ~[\r\n]* -> skip ;