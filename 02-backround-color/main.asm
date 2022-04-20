  processor 6502     ;
  org $1000          ; SYS 4096

loop:   ldy #$03
        ldx #$20
        sty $d020
        dey
        dey
        dey
        sty $d021
        jmp loop

