.setting "OmitUnusedFunctions", true
.target "8080"
.format "bin"
.org 0xF800

    jmp *

.function _CALL()
    nop
.endfunction


.align 0x0800,0xFF

.end
