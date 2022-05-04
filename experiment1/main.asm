    processor 6502
    org $1000

chrout  .equ $ffd2
plot    .equ $fff0

init:   clc
        ldx #$0
        ldy #$0
        jsr plot
        lda #$20
        ldy #25
yloop:  ldx #40
xloop:  jsr chrout
        dex
        bne xloop
        dey
        bne yloop
        rts
