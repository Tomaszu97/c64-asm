    processor 6502
    org $1000

; no interrupts loop checked raster line number
loop:   lda $d012   ; load current raster line number
        cmp #120
        beq col1
        cmp #200
        beq col2
        cmp #255
        beq col3
        jmp loop

col1:   lda #$02
        jmp setcol
col2:   lda #$05
        jmp setcol
col3:   lda #$07
        jmp setcol
setcol:
        sta $d021
        jmp loop
