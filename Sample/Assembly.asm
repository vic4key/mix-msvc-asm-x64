; ASSEMBLE CODE

; https://msdn.microsoft.com/en-us/library/ms235286.aspx
; http://www.tortall.net/projects/yasm/manual/html/objfmt-win64-exception.html
; https://en.wikipedia.org/wiki/X86_calling_conventions#Microsoft_x64_calling_convention

; 1. THE STACK POINTER MUST BE ALIGNED TO 16 BYTES IN ANY REGION OF CODE.

; 2. STACK SPACE IS ALLOCATED FOR THE FOUR REGISTER PARAMETERS "SHADOW SPACE". SHADOW SPACE MUST BE ALLOCATED FOR FOUR
; REGISTER PARAMETERS EVEN IF THE CALLED FUNCTION DOES NOT HAVE THIS MANY PARAMETERS.

; Basically, a function without no parameter, always used at least 4 registers * 8 bytes for
; shadow space + 8 bytes = 40 bytes, but after adjusted following the stack alignment it will be 48 bytes = 30h bytes.

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
  SUB RSP, 30H
  LEA RCX, TXT_F1
  CALL puts
  LEAVE
  RET
F1 ENDP

F2 PROC
  PUSH RBP
  MOV RBP, RSP
  SUB RSP, 30H
  LEA RCX, TXT_F2
  CALL puts
  LEAVE
  RET
F2 ENDP

END
