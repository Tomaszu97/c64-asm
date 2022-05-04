    processor 6502
    org $1000

loop:   lda $d012   ; load current raster line number
        cmp #$ff
        bne loop    ; compare accumulator and branch if not equal
        inc $d021
        jmp loop
