  processor 6502     ;
  org $1000          ; SYS 4096

        lda #$00     ; load immediate value of 0x00 to accumulator
        clc          ; clear carry bit (required before adc)
        adc #$5      ; add with carry
        sta $d020    ; store accumulator at address
        sec          ; set carry bit (required before sbc)
        sbc #$05     ; substract with carry
        sta $d021
        asl $d021   ; shift left (x2)
        asl $d021   ; shift right (/2) ; obviously in this case these two have no effect
loop:
        jmp loop


