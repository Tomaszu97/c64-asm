    processor 6502
    org $1000

        lda $4710   ; background value location (loaded from bitmap)
        sta $d020
        sta $d021

        ldx #$00
ldimg:
        lda $3f40,x ; copy image data starting from $3f40
        sta $0400,x

        lda $4040,x
        sta $0500,x

        lda $4140,x
        sta $0600,x

        lda $4240,x
        sta $0700,x ;;

        lda $4328,x ; copy color data from image to color ram
        sta $d800,x

        lda $4428,x
        sta $d900,x

        lda $4528,x
        sta $da00,x

        lda $4628,x
        sta $db00,x ;;

        inx
        bne ldimg


        lda #$3b
        sta $d011   ; set bitmap mode
        lda #$18
        sta $d016   ; set multicolor mode

        lda #$18    ; set screen ram address to $0400
        sta $d018   ; and bitmap address to $2000
                    ; byte is split in half like:
                    ; 18 -> 1*$400=$0400, 8*$400=$2000

loop:   jmp loop

        org $1ffe   ; PRG header is 2 bytes long so load in 2 bytes earlier
        incbin "dcc.prg"
