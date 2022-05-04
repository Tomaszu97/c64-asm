    processor 6502
    org $1000

        lda #$80
        sta $07f8    ; set sprite pointer to point at $2000 ($80*$40)
        lda #%00000001
        sta $d015    ; enable first sprite
        lda #%00000001
        sta $d010    ; shift 256 units right the >>first<< sprite X coordinate
        lda #50
        sta $d000   ; set sprite X coordinate to 300 (256+44)
        lda #200
        sta $d001   ; set sprite Y coordinate to 200
loop:   jmp loop

    org $2000
    incbin "sprite.prg"
