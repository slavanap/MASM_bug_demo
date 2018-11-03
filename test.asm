.386
.MODEL flat, stdcall
OPTION casemap: none

.CONST
  label1  DB  42
  size1   =   $-label1

.CODE

Pos proc cbSubStr:DWORD
	RET
Pos endp

Start:
	; This doesn't compile
	INVOKE Pos, size1

	; Expected code gen
	PUSH byte ptr size1
	CALL Pos

	RET

END Start
