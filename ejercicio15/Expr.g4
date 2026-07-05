grammar Expr;

root : expr EOF;
expr : EOF;

// Comandos de red
NMAP        : 'nmap' ;
SS          : 'ss' ;
TCPDUMP     : 'tcpdump' ;
CURL        : 'curl' ;
DIG         : 'dig' ;

// Comandos del sistema
JOURNALCTL  : 'journalctl' ;
GREP        : 'grep' ;
SUDO        : 'sudo' ;
UFW         : 'ufw' ;

// Subcomandos UFW
DENY        : 'deny' ;
ALLOW       : 'allow' ;
FROM        : 'from' ;

// Símbolos
GUION       : '-' ;
PUNTO       : '.' ;
DOS_PUNTOS  : ':' ;
BARRA       : '/' ;
IGUAL       : '=' ;      // Por si acaso

// Opciones de comandos (banderas)
OPCION      : '-' [a-zA-Z][a-zA-Z0-9]* ;          // -sV, -sn, -i, -c, -I
OPCION_LARGA: '--' [a-zA-Z][a-zA-Z0-9-]* ;        // --since

// Direcciones IP
IP          : [0-9]+ '.' [0-9]+ '.' [0-9]+ '.' [0-9]+ ;
RED         : [0-9]+ '.' [0-9]+ '.' [0-9]+ '.' [0-9]+ '/' [0-9]+ ;

// Puertos
PUERTO      : [0-9]+ ;

// Rutas de archivos
RUTA        : '/' [a-zA-Z0-9_/.-]* ;

// Dominios
DOMINIO     : [a-zA-Z0-9]([a-zA-Z0-9-]*[a-zA-Z0-9])? ('.' [a-zA-Z0-9]([a-zA-Z0-9-]*[a-zA-Z0-9])?)+ ;

// Cadenas entre comillas
CADENA      : '"' (~["\r\n])* '"' ;

// Identificadores (para nombres de interfaz como eth0)
ID          : [a-zA-Z_][a-zA-Z0-9_]* ;

// Espacios
WS          : [ \t\r\n]+ -> skip ;