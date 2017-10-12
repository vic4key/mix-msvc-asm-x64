; ASSEMBLE CODE

; Exportation
PUBLIC F1
PUBLIC F2

; Importation
EXTERN puts : PROC

; Declaration
.DATA
TXT_F1 db "I am F1() from asm code.",0
TXT_F2 db "I am F2() from asm code.",0

; Implementation
.CODE

F1 PROC
  PUSH RBP
  MOV RBP, RSP
  LEA RCX, TXT_F1
  CALL puts
  LEAVE
  RET
F1 ENDP

F2 PROC
  PUSH RBP
  MOV RBP, RSP
  LEA RCX, TXT_F2
  CALL puts
  LEAVE
  RET
F2 ENDP

END
