    processor 6502
    org $1000

        lda #$00
        sta $d020
        sta $d021   ; set black bg and fg
        tax         ; set x to 0
        lda #$20    ; space character

loop1:  sta $0400,x
        sta $0500,x
        sta $0600,x
        sta $0700,x
        dex         ; decrement x
        bne loop1   ; jump if not 0

loop:   jmp loop
