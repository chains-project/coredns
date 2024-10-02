#include "textflag.h"

TEXT ·GetPid(SB),NOSPLIT,$0-8
    CALL ·GetStack(SB)
    MOVQ $39, AX  // syscall number for getpid
    SYSCALL
    MOVQ AX, ret+0(FP)
    RET
    