; da65 V2.19 - Git 2fa92f9
; Created:    2026-11-27 16:34:33
; Input file: bank1.bin
; Page:       1


        .setcpu "6502"

L0000           := $0000
L0029           := $0029
L0200           := $0200
L0201           := $0201
L028E           := $028E
L0845           := $0845
L2013           := $2013
L2020           := $2020
L2040           := $2040
L20FE           := $20FE
L402D           := $402D
L4061           := $4061
L40A8           := $40A8
L40D9           := $40D9
L40EA           := $40EA
L410C           := $410C
L410E           := $410E
L4126           := $4126
L4153           := $4153
L4160           := $4160
L4220           := $4220
L4241           := $4241
L4252           := $4252
L4322           := $4322
L4428           := $4428
L44D6           := $44D6
L4544           := $4544
L454A           := $454A
L454D           := $454D
L45D5           := $45D5
L460A           := $460A
L4617           := $4617
L462B           := $462B
L4647           := $4647
L46D6           := $46D6
L4703           := $4703
L4778           := $4778
L484B           := $484B
L487E           := $487E
L4887           := $4887
L491E           := $491E
L4924           := $4924
L4926           := $4926
L4941           := $4941
L494F           := $494F
L4987           := $4987
L49DA           := $49DA
L49E3           := $49E3
L4AE1           := $4AE1
L4B4D           := $4B4D
L4B60           := $4B60
L4B7E           := $4B7E
L4B90           := $4B90
L4BA6           := $4BA6
L4C07           := $4C07
L4C45           := $4C45
L4C4E           := $4C4E
L4C84           := $4C84
L4C98           := $4C98
L4CA3           := $4CA3
L4CB0           := $4CB0
L4CBE           := $4CBE
L4CC3           := $4CC3
L4CCA           := $4CCA
L4CDA           := $4CDA
L4CE8           := $4CE8
L4CEB           := $4CEB
L4CEC           := $4CEC
L4D1F           := $4D1F
L4D44           := $4D44
L4D4A           := $4D4A
L4DE0           := $4DE0
L4E78           := $4E78
L4E9F           := $4E9F
L4EE5           := $4EE5
L4F4D           := $4F4D
L564C           := $564C
L6B08           := $6B08
LF0F1           := $F0F1
LF303           := $F303
LF845           := $F845
LFEFC           := $FEFC
        jsr     L402D
        cli
        inc     $CA
        ldx     $0C10
        cpx     $0C11
        .byte   $F0
L800D:  bpl     *-22
        cpx     #$10
        bcc     L8015
        ldx     #$00
L8015:  stx     $0C10
        ldy     $0C00,x
        jsr     L4160
L801E:  lda     $CA
        lsr     a
        bcc     L8028
        ldx     #$00
        jmp     L4B4D

L8028:  ldx     #$01
        jmp     L4B4D

        php
        sei
        .byte   $20
        tay
L8031:  rti

        lda     #$00
        sta     $0C22
        sta     $0C23
        sta     $0C24
        sta     $0C10
        sta     $0C11
        ldx     #$11
L8045:  sta     $0E2D,x
        dex
        bpl     L8045
        ldx     #$09
L804D:  sta     $0CB1,x
        .byte   $9D
L8051:  .byte   $43
        .byte   $0C
        sta     $0C4D,x
        sta     $0CD9,x
        sta     $0DA1,x
        dex
        bpl     L804D
        ldx     #$01
        lda     $5008,x
        sta     $CE
        lda     $500A,x
        sta     $CF
        lda     #$00
        ldy     #$08
        sta     ($CE),y
L8071:  .byte   $86
L8072:  cmp     $A518,y
        dec     $DA85
        lda     #$0F
        adc     $CE
        sta     $CE
        ldx     #$00
        txa
        sta     ($CE,x)
L8083:  adc     #$01
        cmp     #$07
        bne     L8083
        sta     ($CE,x)
        ldx     $D9
        lda     $DA
        sta     $CE
        ldy     #$08
        lda     #$00
        sta     ($CE),y
        lda     #$00
        ldy     #$08
L809B:  dey
        sta     ($CE),y
        bne     L809B
        dex
        bmi     L80A6
        jmp     L4061

L80A6:  plp
        rts

        lda     #$01
        sta     $DC
        jsr     L40EA
        lda     #$02
L80B1:  sta     ($DD),y
        tax
        inx
        lda     $DD
        clc
        adc     #$04
        sta     $DD
        bcc     L80C6
        inc     $DE
        lda     #$0F
        cmp     $DE
        beq     L80CB
L80C6:  txa
        cmp     #$C8
        bcc     L80B1
L80CB:  dec     $DE
        lda     $DD
        sec
        sbc     #$04
        sta     $DD
        lda     #$00
        sta     ($DD),y
        rts

        lda     $DC
        jsr     L40EA
        pha
        lda     ($DD),y
        beq     L80E7
        sta     $DC
        pla
        rts

L80E7:  lda     #$00
        rts

        pha
        tay
        dey
        sty     $DD
        sty     $D6
        ldy     #$00
        sty     $DE
        asl     $DD
        rol     $DE
        asl     $DD
        .byte   $26
L80FC:  .byte   $DE
        .byte   $A9
L80FE:  .byte   $57
        clc
L8100:  adc     $DD
        sta     $DD
        lda     #$0E
        adc     $DE
        sta     $DE
        pla
        rts

        tya
        pha
        lda     $0DD3,x
        beq     L8126
        jsr     L40EA
        pha
L8117:  lda     ($DD),y
        sta     $0DD3,x
        lda     $DC
        sta     ($DD),y
        pla
        sta     $DC
        jmp     L410E

L8126:  lda     $0DC9,x
        beq     L813E
        jsr     L40EA
        pha
        lda     ($DD),y
L8131:  sta     $0DC9,x
        lda     $DC
        sta     ($DD),y
        pla
        sta     $DC
        jmp     L4126

L813E:  pla
        tay
L8140:  rts

        php
        sei
        ldy     $0C11
        iny
        cpy     #$10
        bcc     L814D
        ldy     #$00
L814D:  sty     $0C11
        .byte   $CC
L8151:  bpl     *+14
        bne     L8159
        lda     #$FF
        plp
        rts

L8159:  sta     $0C00,y
        lda     #$00
        plp
        rts

        .byte   $C0
L8161:  ora     $14B0,x
        lda     $5252,y
        cmp     #$15
        bcs     L8178
        asl     a
        tax
        lda     $44AD,x
        pha
        lda     $44AC,x
        pha
        lda     $526F,y
L8178:  rts

        asl     a
        asl     a
        sta     $DB
        rts

        tay
        lda     $5459,y
        and     #$1F
        tax
        lda     $545A,y
        sta     $E0,x
        rts

        tay
        lda     $5459,y
        and     #$1F
        tax
        lda     $545A,y
        clc
        adc     $E0,x
        sta     $E0,x
        rts

        asl     a
        tay
        lda     $528D,y
        pha
        lda     $528C,y
        pha
        rts

        php
        sei
        sta     $D9
        ldy     #$09
L81AC:  lda     $0CB1,y
        lsr     a
        lsr     a
        eor     $D9
        bne     L81BA
        lda     #$FF
        sta     $0C25,y
L81BA:  dey
        bpl     L81AC
        plp
        rts

        php
        sei
        tay
        lda     $5252,y
        cmp     #$08
        bne     L81DF
        lda     $526F,y
        sta     $D9
        ldy     #$09
L81D0:  cmp     $0C25,y
        bne     L81DC
        lda     #$FF
        sta     $0C25,y
        lda     $D9
L81DC:  dey
        bpl     L81D0
L81DF:  plp
        rts

        sta     $D9
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        tay
        lda     $D9
        and     #$0F
        clc
        adc     $500E,y
        tay
        php
        sei
        lda     $0E2D,y
        beq     L8204
L81F8:  tay
        dey
        lda     #$FF
        sta     $0C25,y
        lda     $0E2D,y
        bne     L81F8
L8204:  plp
        rts

        php
        sei
        sta     $D9
        lda     $D9
        bne     L8214
        lda     #$80
        sta     $D9
        bne     L8218
L8214:  lda     #$40
        sta     $D9
L8218:  ldy     #$09
L821A:  lda     $0CB1,y
        beq     L821F
L821F:  dey
        bpl     L821A
        plp
        rts

        php
        sei
        tay
        lda     $5252,y
        cmp     #$08
        bne     L8259
        lda     $526F,y
        sta     $D9
        ldy     #$09
L8235:  cmp     $0C25,y
        bne     L8256
        lda     #$00
        sta     $0DE7,y
        sta     $0E0F,y
        sta     $0DFB,y
        lda     #$D0
        sta     $0E05,y
        lda     #$02
        sta     $0DF1,y
        lda     #$FE
        sta     $0C25,y
        lda     $D9
L8256:  dey
        bpl     L8235
L8259:  plp
        rts

        php
        sei
        sta     $D9
        ldy     #$09
L8261:  lda     $0CB1,y
        lsr     a
        lsr     a
        eor     $D9
        bne     L8284
        lda     #$00
        sta     $0DE7,y
        sta     $0E0F,y
        sta     $0DFB,y
        lda     #$D0
        sta     $0E05,y
        lda     #$02
        sta     $0DF1,y
        lda     #$FE
        sta     $0C25,y
L8284:  dey
        bpl     L8261
        plp
        rts

        ldy     $0C23
        sta     $0C12,y
        iny
        cpy     #$10
        bcc     L8296
        ldy     #$00
L8296:  cpy     $0C22
        beq     L829F
        sty     $0C23
        rts

L829F:  lda     #$80
        sta     $0C24
        rts

        tax
        lda     $545B,x
        cmp     #$3B
        bcs     L82EB
        cmp     #$08
        bcc     L82C5
        cmp     #$0A
        bcc     L82EB
        cmp     #$0D
        bcc     L82C5
        cmp     #$12
        bcc     L82EB
        cmp     #$16
        bcc     L82C5
        cmp     #$19
        bcc     L82EB
L82C5:  asl     a
        tay
        lda     $545E,x
        clc
        adc     #$0A
        pha
        lda     $545C,x
        sta     $0E56
        lda     $545D,x
        tax
        lda     $5252,x
        cmp     #$08
        bne     L82EA
        lda     $526F,x
        sta     $0E55
        pla
        tax
        jmp     L4B90

L82EA:  pla
L82EB:  rts

        sta     $CB
        tay
        asl     a
        tax
        bcs     L82F8
        lda     $528E,x
        bcc     L82FB
L82F8:  lda     $538E,x
L82FB:  sta     $D0
        bcs     L8304
        lda     $528F,x
        .byte   $90
L8303:  .byte   $03
L8304:  lda     $538F,x
L8307:  sta     $D1
        lda     $52C0,y
        bne     L8322
        lda     $CB
        ldy     #$09
L8312:  cmp     $0C25,y
        bne     L831F
        lda     $0CB1,y
        beq     L831D
        rts

L831D:  lda     $CB
L831F:  dey
        bpl     L8312
L8322:  ldy     #$09
L8324:  lda     $0CB1,y
        beq     L836E
        dey
        bpl     L8324
        ldy     #$00
        lda     #$D9
        clc
        adc     $D0
        sta     $D2
        lda     #$52
        adc     $D1
        sta     $D3
        lda     ($D2),y
        sta     $D4
        lda     #$19
        clc
        adc     $D0
        sta     $D2
        lda     #$53
        adc     $D1
        sta     $D3
        lda     ($D2),y
        clc
        adc     #$0A
        tax
        php
        sei
        ldy     $0E2D,x
        beq     L8364
        dey
        lda     $D4
        asl     a
        sec
        rol     a
        cmp     $0CB1,y
        bcs     L8367
L8364:  plp
        sec
        rts

L8367:  lda     $0E2D,y
        sta     $0E2D,x
        plp
L836E:  tya
        tax
        jsr     L4428
        ldy     #$00
        lda     #$D9
        clc
        adc     $D0
        sta     $D2
        lda     #$52
        adc     $D1
        sta     $D3
        lda     ($D2),y
        asl     a
        sec
L8386:  rol     a
        sta     $0CB1,x
        lda     #$19
        clc
        adc     $D0
        sta     $D2
        lda     #$53
        adc     $D1
        sta     $D3
        lda     ($D2),y
        clc
        adc     #$0A
        sta     $D4
        lda     $D0
        asl     a
        sta     $D2
        lda     $D1
        rol     a
        sta     $D3
        lda     #$59
        clc
        adc     $D2
        sta     $D2
        lda     #$53
        adc     $D3
        sta     $D3
        lda     ($D2),y
        sta     $0C2F,x
        iny
        lda     ($D2),y
        sta     $0C39,x
        ldy     $D4
        php
        sei
L83C4:  sty     $D4
        lda     $0E2D,y
        beq     L83F3
        tay
        dey
        lda     $0CB1,y
        ora     #$01
        cmp     $0CB1,x
        bcc     L83C4
        beq     L83DD
        iny
        tya
        bcs     L83EE
L83DD:  txa
        pha
        tya
        tax
        jsr     L410C
        pla
        tax
        lda     #$00
        sta     $0CB1,y
        lda     $0E2D,y
L83EE:  sta     $0E2D,x
        ldy     $D4
L83F3:  lda     $CB
        sta     $0C25,x
        inx
        txa
        sta     $0E2D,y
        plp
        ldy     #$00
        lda     $D0
        asl     a
        sta     $D2
        lda     $D1
        rol     a
        sta     $D3
        lda     #$D9
        clc
        adc     $D2
        sta     $D2
        lda     #$53
        adc     $D3
        sta     $D3
        lda     ($D2),y
        sta     $D0
        iny
        ora     ($D2),y
        beq     L8427
        lda     ($D2),y
        sta     $D1
        jmp     L4322

L8427:  rts

        lda     #$07
        sta     $0CD9,x
        lda     #$10
        sta     $0D79,x
        lda     #$A0
        sta     $0DA1,x
        .byte   $A9
L8438:  .byte   $FF
        sta     $0CC5,x
L843C:  .byte   $A9
L843D:  brk
        sta     $0D6F,x
L8441:  sta     $0CCF,x
        sta     $0E2D,x
        sta     $0D83,x
        sta     $0C57,x
        .byte   $9D
L844E:  adc     ($0C,x)
        sta     $0C6B,x
        sta     $0DAB,x
        sta     $0DDD,x
        sta     $0DB5,x
        sta     $0DBF,x
        sta     $0DC9,x
        sta     $0DD3,x
        sta     $0C75,x
        sta     $0C7F,x
        sta     $0C89,x
        sta     $0C93,x
        sta     $0DE7,x
        sta     $0DF1,x
        sta     $0D47,x
        sta     $0D51,x
        sta     $0D5B,x
        sta     $0E19,x
        sta     $0E23,x
        sta     $0D97,x
        sta     $0D8D,x
        sta     $0D33,x
        sta     $0D65,x
        sta     $0D0B,x
        sta     $0D29,x
        sta     $0CBB,x
        lda     #$10
        sta     $0CE3,x
        sta     $0CF7,x
        lda     #$50
        sta     $0CED,x
        sta     $0D01,x
        rts

        sei
        eor     ($7D,x)
        eor     ($8A,x)
        eor     ($9A,x)
        eor     ($A5,x)
        eor     ($BE,x)
        eor     ($E0,x)
        eor     ($05,x)
        .byte   $42
        .byte   $EB
        .byte   $42
        dey
        .byte   $42
        .byte   $23
        .byte   $42
        .byte   $5A
        .byte   $42
        rol     $44
        ldy     $42
        rol     $44
        rol     $44
        rol     $44
        rol     $44
        rol     $44
        rol     $44
        rol     $44
        lda     $0E2D,x
        beq     L84DD
        lda     #$FF
L84DD:  sta     $DF
        lda     $0CB1,x
        beq     L84EB
        ldy     $0C25,x
        iny
        bne     L84EE
        tya
L84EB:  jmp     L460A

L84EE:  and     #$03
        sta     $0E42
        and     #$01
        tay
        lda     $0CB1,x
        sta     $0E40,y
        lda     $0C2F,x
        sta     $CC
        lda     $0C39,x
        sta     $CD
        lda     $0C57,x
        sec
        sbc     $0D6F,x
        sta     $0C57,x
        lda     $0C61,x
        sbc     $0D79,x
        sta     $0C61,x
        bcs     L8523
        dec     $0C6B,x
        bpl     L8523
        jmp     L454D

L8523:  lda     $0C89,x
        bmi     L8542
        lda     $0C75,x
        sec
        sbc     $0D6F,x
        sta     $0C75,x
        lda     $0C7F,x
        sbc     $0D79,x
        sta     $0C7F,x
        bcs     L854A
        dec     $0C89,x
        bpl     L854A
L8542:  lda     $0E42
        beq     L854A
        jmp     L4924

L854A:  jmp     L4778

L854D:  lda     $0C2F,x
        clc
        adc     #$02
        sta     $0C2F,x
        bcc     L855B
        inc     $0C39,x
L855B:  ldy     #$00
        lda     ($CC),y
        bpl     L8580
        jsr     L4B60
        bcc     L8572
        lda     $0C39,x
        sta     $CD
        lda     $0C2F,x
        sta     $CC
        bcs     L854D
L8572:  lda     $0E42
        and     #$01
        tay
        lda     #$00
        sta     $0E40,y
        jmp     L4941

L8580:  ldy     $0E42
        beq     L8589
        cmp     #$00
        beq     L858D
L8589:  clc
        adc     $0D83,x
L858D:  ldy     $0E42
        beq     L8596
        cpy     #$01
        beq     L85B4
L8596:  pha
        sec
        sbc     $0C43,x
        sta     $0DB5,x
        asl     a
        lda     #$FF
        bcs     L85A5
        lda     #$00
L85A5:  sta     $0DBF,x
        pla
        sta     $0C43,x
        lda     #$00
        sta     $0C4D,x
        jmp     L45D5

L85B4:  asl     a
        tay
        sec
        lda     $0C43,x
        sbc     $50DE,y
        sta     $0DB5,x
        lda     $0C4D,x
        sbc     $50DF,y
        sta     $0DBF,x
        lda     $50DE,y
        sta     $0C43,x
        lda     $50DF,y
        sta     $0C4D,x
        ldy     #$01
        lda     #$00
        sta     $D9
        lda     ($CC),y
        beq     L85E2
        jmp     L462B

L85E2:  lda     $0DC9,x
        beq     L860A
        pha
        jsr     L40EA
        lda     ($DD),y
        sta     $0DC9,x
        lda     $DC
        sta     ($DD),y
        pla
        sta     $DC
        iny
        lda     ($DD),y
        sta     $0C2F,x
        sta     $CC
        iny
        lda     ($DD),y
        sta     $0C39,x
        sta     $CD
        jmp     L454D

L860A:  sta     $0CB1,x
        sta     $0CD9,x
        sta     $0C93,x
        sta     $0DE7,x
        sta     $0DF1,x
        sta     $0E48
        jsr     L410C
        lda     $0E2D,x
        ldx     $0E4B
        sta     $0E2D,x
        jmp     L4924

        pha
        lda     $0E42
        bne     L8634
        jmp     L46D6

L8634:  pla
        sta     $D9
        and     #$0F
        asl     a
        tay
        lda     $51A2,y
        clc
        adc     $0C61,x
        sta     $0C61,x
        lda     $51A3,y
        adc     $0C6B,x
        sta     $0C6B,x
        lda     $D9
        and     #$40
        beq     L866B
L8654:  .byte   $B9
        .byte   $A3
L8656:  .byte   $51
L8657:  lsr     a
L8658:  pha
        lda     $51A2,y
        ror     a
        clc
        adc     $0C61,x
        sta     $0C61,x
        pla
        adc     $0C6B,x
        sta     $0C6B,x
L866B:  lda     #$7F
        sta     $0C89,x
        lda     $D9
        bmi     L86B1
        lda     #$00
        sta     $D8
        lda     $0D79,x
        sta     $D7
        lda     $0D6F,x
        asl     a
        rol     $D7
        rol     $D8
        sta     $D6
        lda     $0C57,x
        sec
        sbc     $D6
        sta     $0C75,x
        lda     $0C61,x
        sbc     $D7
        sta     $0C7F,x
        lda     $0C6B,x
        sbc     $D8
        sta     $0C89,x
        lda     $D9
        and     #$30
        cmp     #$10
        bne     L86B1
        lsr     $0C89,x
        ror     $0C7F,x
        ror     $0C75,x
L86B1:  lda     $0C93,x
        bpl     L86C3
        lda     $0DAB,x
        bne     L8703
        sta     $0DB5,x
        sta     $0DBF,x
        beq     L8703
L86C3:  lda     #$00
        sta     $0DB5,x
        sta     $0DBF,x
        lda     $D9
        and     #$38
        asl     a
        sta     $0CBB,x
        jmp     L4703

        sta     $0CBB,x
        sta     $0DB5,x
        sta     $0DBF,x
        pla
        and     #$7F
        lsr     a
        ror     $D9
        lsr     a
        ror     $D9
        lsr     a
        ror     $D9
        pha
        clc
        lda     $D9
        adc     $0C61,x
        sta     $0C61,x
        pla
        adc     $0C6B,x
        sta     $0C6B,x
        lda     ($CC),y
        sta     $D9
        sta     $0C93,x
L8703:  lda     $0DE7,x
        ora     $0DF1,x
        bne     L8718
        ldy     $0C25,x
        cpy     #$FE
        bne     L871B
        inc     $0C25,x
        jmp     L460A

L8718:  jsr     L494F
L871B:  lda     $0C93,x
        pha
        lda     $D9
        sta     $0C93,x
        pla
        bmi     L8778
        lda     #$00
        tay
        sta     $0D47,x
        sta     $0D51,x
        sta     $0D5B,x
        sta     $0D65,x
        lda     $0CF7,x
        sta     $CC
        lda     $0D01,x
        sta     $CD
        lda     ($CC),y
        sta     $0D3D,x
        iny
        ora     ($CC),y
        iny
        ora     ($CC),y
        beq     L8751
        inc     $0D3D,x
        tya
L8751:  sta     $0D33,x
        lda     #$00
        tay
        sta     $0D1F,x
        sta     $0D29,x
        lda     $0CE3,x
        sta     $CC
        lda     $0CED,x
        sta     $CD
        lda     ($CC),y
        sta     $0D15,x
        iny
        ora     ($CC),y
        beq     L8775
        inc     $0D15,x
        tya
L8775:  sta     $0D0B,x
L8778:  ldy     $0E42
        beq     L8788
        lda     $0C43,x
        ora     $0C4D,x
        bne     L8788
        jmp     L4924

L8788:  lda     $CA
        and     #$06
        bne     L8798
        lda     $0DBF,x
        asl     a
        ror     $0DBF,x
        ror     $0DB5,x
L8798:  lda     $0CF7,x
        sta     $CC
        lda     $0D01,x
        sta     $CD
        ldy     $0D33,x
        bne     L87AC
        tya
        clc
        jmp     L484B

L87AC:  dec     $0D3D,x
        bne     L8807
L87B1:  iny
        lda     ($CC),y
        sta     $0D3D,x
        iny
        cmp     #$FF
        bne     L87E2
        lda     $0D65,x
        beq     L87C9
        dec     $0D65,x
        bne     L87CE
        iny
        bne     L87B1
L87C9:  lda     ($CC),y
        sta     $0D65,x
L87CE:  iny
        sec
        lda     $CC
        sbc     ($CC),y
        sta     $CC
        sta     $0CF7,x
        bcs     L87B1
        dec     $CD
        dec     $0D01,x
        bcc     L87B1
L87E2:  ora     ($CC),y
        iny
        cpy     #$F9
        ora     ($CC),y
        bne     L87F2
        sta     $0D33,x
        tay
        clc
        beq     L884B
L87F2:  tya
        bcc     L8804
        sbc     #$02
        adc     $0CF7,x
        sta     $0CF7,x
        lda     #$01
        bcc     L8804
        inc     $0D01,x
L8804:  sta     $0D33,x
L8807:  lda     #$00
        sta     $DA
        lda     ($CC),y
        bpl     L8811
        dec     $DA
L8811:  sta     $D9
        dey
        lda     ($CC),y
        asl     a
        rol     $D9
        rol     $DA
        asl     a
        rol     $D9
        rol     $DA
        asl     a
        rol     $D9
        rol     $DA
        clc
        adc     $0D47,x
        sta     $0D47,x
        lda     $D9
        adc     $0D51,x
        sta     $0D51,x
        sta     $D9
        lda     $DA
        adc     $0D5B,x
        sta     $0D5B,x
        tay
        lda     $0E42
        cmp     #$02
        bne     L8848
        dec     $D9
L8848:  lda     $D9
        clc
L884B:  adc     $0C43,x
        sta     $D9
        tya
        adc     $0C4D,x
        tay
        clc
        lda     $D9
        adc     $0DB5,x
        sta     $D9
        tya
        adc     $0DBF,x
        sta     $0E4A
        lda     $0E42
        and     #$01
        tay
        lda     $D9
        sta     $0E48,y
        lda     $0CE3,x
        sta     $CC
        lda     $0CED,x
        sta     $CD
        ldy     $0D0B,x
        bne     L8884
        lda     $0CD9,x
        jmp     L491E

L8884:  dec     $0D15,x
        bne     L88DB
L8889:  iny
        lda     ($CC),y
        sta     $0D15,x
        iny
        cmp     #$FF
        bne     L88BA
        lda     $0D29,x
        beq     L88A1
        dec     $0D29,x
        bne     L88A6
        iny
        bne     L8889
L88A1:  lda     ($CC),y
        sta     $0D29,x
L88A6:  iny
        sec
        lda     $CC
        sbc     ($CC),y
        sta     $CC
        sta     $0CE3,x
        bcs     L8889
        dec     $CD
        dec     $0CED,x
        bcc     L8889
L88BA:  cpy     #$F9
        ora     ($CC),y
        bne     L88C6
        sta     $0D0B,x
        jmp     L487E

L88C6:  tya
        bcc     L88D8
        sbc     #$02
        adc     $0CE3,x
        sta     $0CE3,x
        lda     #$01
        bcc     L88D8
        inc     $0CED,x
L88D8:  sta     $0D0B,x
L88DB:  lda     ($CC),y
        clc
        adc     $0D1F,x
        bvc     L88E9
        lda     #$80
        bcs     L88E9
        lda     #$7F
L88E9:  sta     $0D1F,x
        ldy     $0CBB,x
        clc
        adc     $51D2,y
        bvc     L88FB
        lda     #$80
        bcs     L88FB
        lda     #$7F
L88FB:  pha
        tya
        and     #$0F
        cmp     #$0F
        beq     L8906
        inc     $0CBB,x
L8906:  pla
        lsr     a
        lsr     a
        lsr     a
        cmp     #$10
        bcc     L8910
        ora     #$F0
L8910:  clc
        adc     $0CD9,x
        bpl     L8918
        lda     #$00
L8918:  cmp     #$10
        bcc     L891E
        lda     #$0F
L891E:  ora     $0DA1,x
        jmp     L4926

        lda     #$00
        pha
        lda     $0E42
        and     #$01
        tay
        pla
        sta     $0E46,y
        cpx     #$0A
        bcs     L8941
        lda     $0CCF,x
        sta     $0E4D,y
        lda     $0CC5,x
        sta     $0E51,y
L8941:  lda     $0E2D,x
        beq     L894E
        stx     $0E4B
        tax
        dex
        jmp     L44D6

L894E:  rts

        lda     $0DFB,x
        sta     $D6
        lda     $0E05,x
        sta     $D7
        lda     $D9
        pha
        and     #$0F
        tay
        lda     $51C2,y
        sta     $D9
        cmp     #$FF
        bne     L897A
        lda     $0DF1,x
        bne     L8972
        sta     $0DE7,x
        beq     L8975
L8972:  dec     $0DF1,x
L8975:  lda     $D7
        jmp     L49DA

L897A:  lda     $0DE7,x
        sec
        sbc     $D9
        sta     $0DE7,x
        bcs     L8992
        dec     $0DF1,x
        bpl     L8992
        lda     #$00
        sta     $0DE7,x
        sta     $0DF1,x
L8992:  ldy     #$07
        lda     $D7
L8996:  cmp     #$80
        ror     a
        ror     $D6
        dey
        bmi     L89A2
        asl     $D9
        bcc     L8996
L89A2:  ldy     #$00
        sty     $D9
        sta     $D7
        cmp     #$80
        bcc     L89BF
        sta     $D9
        eor     #$FF
        sta     $D7
        lda     $D6
        eor     #$FF
        clc
        adc     #$01
        sta     $D6
        bcc     L89BF
        inc     $D7
L89BF:  lda     $0E0F,x
        clc
        adc     $D6
        sta     $0E0F,x
        bcc     L89CC
        inc     $D7
L89CC:  lda     $D7
        tay
        beq     L89DF
        ldy     $D9
        bpl     L89DA
        eor     #$FF
        clc
        adc     #$01
L89DA:  jsr     L4CCA
        ldy     #$FF
L89DF:  pla
        sta     $D9
        rts

        tya
        pha
        iny
        lda     #$00
        sta     $0E43
        sta     $0E44
        sta     $0E40
        sta     $0E41
        sta     $0E47
        sta     $0E46
        sta     $0E4D
        sta     $0E4E
        sta     $0E4F
        lda     #$FF
        sta     $0E51
        sta     $0E52
        sta     $0E53
        ldx     $0E2D,y
        beq     L8A5C
        dex
        sty     $0E4B
        lda     #$00
        jsr     L44D6
        lda     $0E40
        sta     $0E43
        cmp     $DB
        lda     #$00
        bcc     L8A37
        lda     $0E4D
        sta     $0E4F
        lda     $0E51
        sta     $0E53
        lda     $0E46
L8A37:  sta     $0E44
        lda     $0E48
        sta     $0E45
        lda     #$00
        sta     $0E40
        sta     $0E41
        sta     $0E47
        sta     $0E46
        sta     $0E4D
        sta     $0E4E
        lda     #$FF
        sta     $0E51
        sta     $0E52
L8A5C:  pla
        tay
        ldx     $0E2D,y
        beq     L8A6C
        dex
        sty     $0E4B
        lda     #$00
        jsr     L44D6
L8A6C:  lda     $0E40
        cmp     $0E41
        bcs     L8A77
        lda     $0E41
L8A77:  cmp     $DB
        bcs     L8A91
        lda     #$00
        sta     $0E46
        sta     $0E47
        sta     $0E4D
        sta     $0E4E
        lda     #$FF
        sta     $0E51
        sta     $0E52
L8A91:  lda     $0E40
        cmp     $0E43
        bcc     L8A9C
        sta     $0E43
L8A9C:  lda     $0E41
        cmp     $0E43
        bcc     L8AB9
        lda     #$00
        sta     $0E46
        lda     $0E52
        and     $0E54
        sta     $0E54
        lda     $0E4E
        ora     $0E50
        rts

L8AB9:  lda     $0E45
        sta     $0E4A
        lda     $0E48
        sta     $0E49
        lda     $0E44
        sta     $0E47
        lda     $0E51
        and     $0E53
        and     $0E54
        sta     $0E54
        lda     $0E4D
        ora     $0E4F
        ora     $0E50
        rts

        lda     #$00
        sta     $0E50
        lda     #$FF
        sta     $0E54
        txa
        pha
        lda     $500E,x
        pha
        tay
        iny
        iny
        jsr     L49E3
        bcc     L8AFB
        ora     #$28
L8AFB:  sta     $0E50
        ldy     #$04
        lda     $0E49
        sta     ($CE),y
        iny
        iny
        lda     $0E4A
        sta     ($CE),y
        dey
        lda     $0E46
        sta     ($CE),y
        iny
        iny
        lda     $0E47
        sta     ($CE),y
        pla
        tay
        jsr     L49E3
        bcc     L8B22
        ora     #$50
L8B22:  sta     $0E50
        pla
        tax
        lda     $0E50
        and     $0E54
        ldy     #$08
        sta     ($CE),y
        ldy     #$00
        lda     $0E49
        sta     ($CE),y
        iny
        iny
        lda     $0E4A
        sta     ($CE),y
        dey
        lda     $0E46
        sta     ($CE),y
        iny
        iny
        lda     $0E47
        sta     ($CE),y
        rts

        lda     $5008,x
        sta     $CE
        lda     $500A,x
        sta     $CF
        lda     $500C,x
        sta     $0E4C
        jmp     L4AE1

        cmp     #$BB
        bcc     L8B6B
        lda     #$FF
        sta     $0C25,x
        clc
        rts

L8B6B:  iny
        stx     $D9
        asl     a
        tax
        lda     $4BB3,x
        pha
        lda     $4BB2,x
        pha
        ldx     $D9
        lda     ($CC),y
        sec
        rts

        lda     $0C2F,x
        clc
        adc     #$01
        sta     $0C2F,x
        bcc     L8B8C
        inc     $0C39,x
L8B8C:  iny
        lda     ($CC),y
        rts

        php
        sei
L8B92:  lda     $0E2D,x
        beq     L8BA4
        tax
        dex
        lda     $0C25,x
        cmp     $0E55
        bne     L8B92
        jsr     L4BA6
L8BA4:  plp
        rts

        lda     $4BB3,y
        pha
        lda     $4BB2,y
        pha
        lda     $0E56
        rts

        .byte   $B7
        jmp     L4CA3

        cmp     $C24C,y
        jmp     L4CEB

        .byte   $E7
        jmp     L4C98

        sta     $274C
        jmp     L4C84

        beq     L8C14
        .byte   $F4
        jmp     L4D1F

        .byte   $23
        eor     $4D51
        .byte   $7C
        eor     $4FB1
        cmp     $4C4F
        eor     $4C
        eor     $4C
        eor     $4C
        eor     $4C
        eor     $DC
        .byte   $4F
        jmp     LF845

        .byte   $4F
        jmp     L0845

        eor     $4F93
        jmp     L4C45

        eor     $4C
        eor     $4C
        eor     $4C
        eor     $4C
        eor     $4C
        eor     $AE
        eor     $454C
        jmp     L4C45

        eor     $4C
        eor     $DB
        eor     $4DE7
        sbc     ($4D),y
        .byte   $F7
        eor     $4DFD
        eor     L844E,x
        lsr     $4EB2
L8C14:  inc     $4E
        .byte   $03
        .byte   $4F
        .byte   $03
        lsr     $4E30
        clc
        .byte   $4F
        .byte   $1F
        .byte   $4F
        rol     $4F
        and     $094F
        .byte   $4F
        .byte   $0C
        .byte   $4F
        lda     #$00
        sta     $0C57,x
        sta     $0C61,x
        sta     $0C6B,x
        ldy     $0D8D,x
        beq     L8C40
        iny
        bne     L8C73
L8C3B:  sta     $0D8D,x
        sec
        rts

L8C40:  lda     $0D97,x
        sta     $0D8D,x
        ldy     #$09
L8C48:  cmp     $0D97,y
        bne     L8C5A
        cmp     $0D8D,y
        beq     L8C5A
        lda     $0CB1,y
        bne     L8C73
        lda     $0D97,x
L8C5A:  dey
        bpl     L8C48
        ldy     #$09
L8C5F:  cmp     $0D97,y
        bne     L8C6C
        lda     #$FF
        sta     $0D8D,y
        lda     $0D97,x
L8C6C:  dey
        bpl     L8C5F
        lda     #$00
        beq     L8C3B
L8C73:  lda     $0C2F,x
        cmp     #$02
        bcs     L8C7D
        dec     $0C39,x
L8C7D:  dec     $0C2F,x
        dec     $0C2F,x
        clc
        rts

        sta     $0D97,x
        lda     #$00
        sta     $0D8D,x
        rts

        sta     $0CE3,x
        jsr     L4B7E
        sta     $0CED,x
        sec
        rts

        sta     $0CF7,x
        jsr     L4B7E
        sta     $0D01,x
        sec
        rts

        clc
        adc     $0D6F,x
        sta     $0D6F,x
        php
        jsr     L4B7E
        plp
        adc     $0D79,x
        sta     $0D79,x
        sec
        rts

        sta     $0D6F,x
        jsr     L4B7E
        sta     $0D79,x
        sec
        rts

        ldy     $0C25,x
        cpy     #$FE
        beq     L8CE6
        clc
        adc     $0CD9,x
        bpl     L8CD2
        lda     #$00
L8CD2:  cmp     #$10
        bcc     L8CE1
        lda     #$0F
        bne     L8CE1
        ldy     $0C25,x
        cpy     #$FE
        beq     L8CE6
L8CE1:  sta     $0CD9,x
        sec
        rts

L8CE6:  clc
        rts

        clc
        adc     $0D83,x
        sta     $0D83,x
        sec
        rts

        sta     $0DA1,x
        rts

        ldy     $0E4C
        beq     L8D02
        eor     $0E4D
        and     #$09
        eor     $0E4D
L8D02:  ora     $0CCF,x
        sta     $0CCF,x
        rts

        eor     #$FF
        ldy     $0E4C
        bne     L8D17
        and     $0CC5,x
        sta     $0CC5,x
        rts

L8D17:  ora     #$F6
        and     $0CCF,x
        sta     $0CCF,x
        rts

        sta     $0DAB,x
        rts

        sta     $D9
        jsr     L4B7E
        sta     $DA
        jsr     L40D9
        beq     L8D50
        pha
        lda     $0DC9,x
        sta     ($DD),y
        pla
        sta     $0DC9,x
        iny
        lda     $0C2F,x
        sta     ($DD),y
        iny
        lda     $0C39,x
        sta     ($DD),y
        lda     $D9
        sta     $0C2F,x
        lda     $DA
        sta     $0C39,x
L8D50:  sec
        rts

        pha
        jsr     L40D9
        beq     L8D7A
        pha
        lda     $0DD3,x
        sta     ($DD),y
        pla
        sta     $0DD3,x
        iny
        lda     $0C2F,x
        sta     ($DD),y
        iny
        lda     $0C39,x
        sta     ($DD),y
        iny
        lda     $0DDD,x
        sta     ($DD),y
        pla
        sta     $0DDD,x
        sec
        rts

L8D7A:  pla
        sec
        rts

        lda     $0DD3,x
        beq     L8D96
        jsr     L40EA
        dec     $0DDD,x
        beq     L8D98
        iny
        lda     ($DD),y
        sta     $0C2F,x
        iny
        lda     ($DD),y
        sta     $0C39,x
L8D96:  sec
        rts

L8D98:  pha
        lda     ($DD),y
        sta     $0DD3,x
        lda     $DC
        sta     ($DD),y
        pla
        sta     $DC
        iny
        iny
        iny
        lda     ($DD),y
        sta     $0DDD,x
        sec
        rts

        sta     $D9
        jsr     L4B7E
        ldy     $0C25,x
        cpy     #$FE
        beq     L8DDA
        sta     $0E05,x
        lda     $D9
        lsr     a
        lsr     a
        lsr     a
        sta     $0DF1,x
        lda     #$00
        sta     $0DE7,x
        sta     $0E0F,x
        lda     $D9
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        sta     $0DFB,x
        sec
        rts

L8DDA:  clc
        rts

        clc
        adc     $0E19,x
        sta     $0E19,x
        sta     $0E23,x
        sec
        rts

        sta     $D9
        lda     $0E19,x
        sbc     $D9
        jmp     L4DE0

        and     $0E19,x
        jmp     L4DE0

        ora     $0E19,x
        jmp     L4DE0

        eor     $0E19,x
        .byte   $4C
L8E02:  cpx     #$4D
L8E04:  clc
        tay
        lda     $0E19,x
        cpy     #$04
        beq     L8E2A
        cpy     #$02
        beq     L8E2C
        cpy     #$06
        beq     L8E28
        cpy     #$07
        beq     L8E27
        cpy     #$05
        beq     L8E29
        cpy     #$03
        beq     L8E2B
        cpy     #$01
        beq     L8E2D
        sec
        rts

L8E27:  lsr     a
L8E28:  lsr     a
L8E29:  lsr     a
L8E2A:  lsr     a
L8E2B:  lsr     a
L8E2C:  lsr     a
L8E2D:  lsr     a
        jmp     L4DE0

        clc
        tay
        lda     $0E19,x
        cpy     #$04
        beq     L8E57
        cpy     #$02
        beq     L8E59
        cpy     #$06
        beq     L8E55
        cpy     #$07
        beq     L8E54
        cpy     #$05
        beq     L8E56
        cpy     #$03
        beq     L8E58
        cpy     #$01
        beq     L8E5A
        sec
        rts

L8E54:  asl     a
L8E55:  asl     a
L8E56:  asl     a
L8E57:  asl     a
L8E58:  asl     a
L8E59:  asl     a
L8E5A:  asl     a
        jmp     L4DE0

        sta     $D9
        lda     $0E19,x
        bne     L8E6A
        lda     $D9
        jmp     L4E78

L8E6A:  sta     $D8
L8E6C:  jsr     L4B7E
        jsr     L4B7E
        sta     $D9
        dec     $D8
        bne     L8E6C
        jsr     L4B7E
        sta     $0C39,x
        lda     $D9
        sta     $0C2F,x
        sec
        rts

        sta     $D9
        lda     $0E19,x
        bne     L8E91
        lda     $D9
        jmp     L4E9F

L8E91:  sta     $D8
L8E93:  jsr     L4B7E
        jsr     L4B7E
        sta     $D9
        dec     $D8
        bne     L8E93
        jsr     L4B7E
        sta     $0C39,x
        lda     $D9
        sta     $0C2F,x
        inc     $0E19,x
        lda     $0E19,x
        jmp     L4DE0

        cmp     #$26
        bcs     L8EE5
        cmp     #$06
        bcc     L8EC7
        sbc     #$06
        tay
        lda     $0E19,x
        sta     $E0,y
        jmp     L4EE5

L8EC7:  cmp     #$05
        beq     L8EE5
        cmp     #$03
        bcs     L8EE5
        tay
        lda     $0E19,x
        cpy     #$02
        bcc     L8EDA
        jmp     L4CEC

L8EDA:  cpy     #$01
        bcc     L8EE1
        jmp     L4CBE

L8EE1:  sec
        jmp     L4CDA

L8EE5:  sec
        rts

        cmp     #$03
        bcs     L8F02
        tay
        lda     $0E19,x
        cpy     #$02
        bcc     L8EF6
        jmp     L4CE8

L8EF6:  cpy     #$01
        bcc     L8EFE
        clc
        jmp     L4CB0

L8EFE:  sec
        jmp     L4CC3

L8F02:  sec
        rts

        jsr     L4F4D
        jmp     L4DE0

        jsr     L4F4D
        sta     $D9
        lda     $0E19,x
        sbc     $D9
L8F14:  sta     $0E23,x
L8F17:  sec
        rts

        jsr     L4F4D
        beq     L8F3B
        bne     L8F33
        jsr     L4F4D
        bne     L8F3B
        beq     L8F33
        jsr     L4F4D
        bpl     L8F3B
        bmi     L8F33
        jsr     L4F4D
        bmi     L8F3B
L8F33:  jsr     L4B7E
        jsr     L4B7E
        sec
        rts

L8F3B:  jsr     L4B7E
        sta     $D9
        jsr     L4B7E
        sta     $0C39,x
        lda     $D9
        sta     $0C2F,x
        sec
        rts

        sty     $D9
        cmp     #$26
        bcs     L8F8E
        cmp     #$06
        bcs     L8F79
        cmp     #$05
        beq     L8F84
        cmp     #$03
        bcs     L8F8E
        cmp     #$02
        bcc     L8F69
        ldy     $D9
        lda     $0D83,x
        rts

L8F69:  cmp     #$01
        bcc     L8F73
        ldy     $D9
        lda     $0D79,x
        rts

L8F73:  ldy     $D9
        lda     $0CD9,x
        rts

L8F79:  sbc     #$06
        tay
        lda     $E0,y
        pha
        ldy     $D9
        pla
        rts

L8F84:  ldy     #$0A
        lda     $2800,y
        pha
        ldy     $D9
        pla
        rts

L8F8E:  ldy     $D9
        lda     $0E23,x
        rts

        lda     $0E42
        and     #$01
        tay
        lda     #$00
        sta     $0E40,y
        lda     $0CB1,x
        and     #$FC
        ora     #$02
        sta     $0CB1,x
        sta     $0E40
        ldy     #$02
        sty     $0E42
        rts

        lda     $0E42
        and     #$01
        tay
        lda     #$00
        sta     $0E40,y
        lda     $0CB1,x
        and     #$FC
        sta     $0CB1,x
        ldy     #$00
        sty     $0E42
        sta     $0E40
        rts

        ldy     #$01
        sty     $0E42
        ora     $0CB1,x
        sta     $0CB1,x
        sta     $0E40,y
        rts

        lda     #$00
        sta     $0DE7,x
        sta     $0E0F,x
        sta     $0DFB,x
        lda     #$D0
        sta     $0E05,x
        lda     #$02
        sta     $0DF1,x
        lda     #$FE
        sta     $0C25,x
        sec
        rts

        sta     $D9
        jsr     L4B7E
        sta     $0C39,x
        lda     $D9
        sta     $0C2F,x
        sec
        rts

        brk
        bpl     L9033
        plp
        brk
        brk
        asl     a
        asl     a:L0000
        brk
        brk
        .byte   $02
        brk
        ora     $02
        brk
        brk
        .byte   $02
        brk
        inc     a:$02,x
        brk
        .byte   $02
        brk
        sbc     a:L0000,x
        brk
        ora     (L0000,x)
        .byte   $02
        .byte   $02
        brk
        inc     a:$02,x
        .byte   $02
        .byte   $02
        brk
        .byte   $FE
        .byte   $02
L9033:  brk
        .byte   $02
        .byte   $02
        brk
        inc     a:$02,x
        .byte   $02
        .byte   $02
        brk
        inc     a:$02,x
        .byte   $02
        .byte   $02
        brk
        inc     a:$02,x
        .byte   $02
        .byte   $02
        brk
        inc     a:$02,x
        .byte   $02
        .byte   $02
        brk
        inc     a:$02,x
        .byte   $02
        .byte   $02
        brk
        inc     a:$02,x
        .byte   $02
        .byte   $02
        brk
        inc     a:$02,x
        .byte   $02
        .byte   $02
        brk
        inc     a:$02,x
        .byte   $02
        .byte   $02
        brk
        inc     a:$02,x
        .byte   $02
        .byte   $02
        brk
        inc     a:$02,x
        .byte   $02
        .byte   $02
        brk
        inc     a:$02,x
        .byte   $02
        .byte   $02
        brk
        inc     a:$02,x
        .byte   $02
        .byte   $02
        brk
        inc     a:$02,x
        .byte   $02
        .byte   $02
        brk
        inc     a:$02,x
        .byte   $02
        .byte   $02
        brk
        inc     a:$01,x
        .byte   $02
        brk
        brk
        brk
        php
        .byte   $04
        php
        .byte   $FC
L9096:  php
        .byte   $FC
        jsr     LFEFC
        brk
        php
        asl     a
        .byte   $50
L909F:  .byte   $FF
        inc     $0800,x
        brk
        php
        ora     ($18,x)
        .byte   $02
        php
        ora     ($FE,x)
        brk
        php
        .byte   $03
        php
        sbc     $0508,y
        php
        .byte   $FC
        php
        ora     $08
        sbc     $0508,y
        php
        .byte   $FC
        php
        ora     $08
        .byte   $FA
        php
        ora     $08
        .byte   $FC
        php
        ora     $08
        .byte   $FA
        php
        ora     $08
        .byte   $FA
        inc     $0800,x
        php
        jsr     L20FE
        brk
        ora     ($80,x)
        inc     $0800,x
        asl     a
        .byte   $D0
L90DB:  .byte   $FF
        inc     a:L0000,x
        brk
        iny
        cmp     $C8,x
        cmp     #$74
        ldx     LB3C3,y
        ldy     $26A9
        ldy     #$28
        .byte   $97
        ldy     LAA8E
        stx     $1A
        .byte   $7F
        sed
        .byte   $77
        .byte   $3C
        adc     ($E0),y
        ror     a
        cpx     #$64
        .byte   $37
        .byte   $5F
        dec     $D259,x
        .byte   $54
        .byte   $0F
        bvc     L9096
        .byte   $4B
        .byte   $53
        .byte   $47
        eor     ($43),y
        txa
        .byte   $3F
        sed
        .byte   $3B
        txs
        sec
        adc     $6D35
        .byte   $32
        tya
        .byte   $2F
        .byte   $EC
        .byte   $2C
L9118:  ror     $2A
        .byte   $04
        plp
        cmp     $25
        ldx     $23
        lda     $21
        cmp     ($1F,x)
        sbc     $4A1D,y
        .byte   $1C
        .byte   $B3
        .byte   $1A
        .byte   $33
        ora     $17C8,y
        .byte   $72
        asl     $2F,x
        ora     $FF,x
        .byte   $13
        .byte   $DF
        .byte   $12
        .byte   $CF
        ora     ($CF),y
        bpl     L9118
        .byte   $0F
        sbc     $210E,y
        asl     $0D56
        stx     $0C,y
        sbc     ($0B,x)
        rol     $0B,x
        sty     $0A,x
        .byte   $FC
        ora     #$6C
        ora     #$E4
        php
        .byte   $64
        php
        .byte   $EB
        .byte   $07
        adc     $0D07,y
        .byte   $07
        .byte   $A7
        asl     $47
        asl     $ED
        ora     $97
        ora     $47
        ora     $FA
        .byte   $04
        .byte   $B2
        .byte   $04
        .byte   $6F
        .byte   $04
        .byte   $2F
        .byte   $04
        .byte   $F2
        .byte   $03
        lda     L8303,y
        .byte   $03
        bvc     L9175
        jsr     LF303
L9175:  .byte   $02
        iny
        .byte   $02
        ldy     #$02
        .byte   $7A
        .byte   $02
        lsr     $02,x
        .byte   $34
        .byte   $02
        .byte   $14
        .byte   $02
        inc     $01,x
        cmp     LBE01,y
        ora     ($A5,x)
        ora     ($8D,x)
        ora     ($76,x)
        ora     ($61,x)
        ora     ($4C,x)
        ora     ($39,x)
        ora     ($27,x)
        ora     ($16,x)
        ora     ($06,x)
        ora     ($F7,x)
        brk
        sbc     #$00
        .byte   $DC
        brk
        .byte   $CF
        brk
        brk
        brk
        brk
        asl     $0F00,x
        .byte   $80
        .byte   $07
        cpy     #$03
        brk
        asl     a
        brk
        ora     $80
        .byte   $02
        brk
        asl     $E0
        ora     ($F0,x)
        brk
        sei
        brk
        .byte   $3C
        brk
        rti

        ora     ($A0,x)
        brk
        brk
        .byte   $03
        brk
        .byte   $FF
        .byte   $80
        rti

        jsr     L2040
        bpl     L920B
        bpl     L91D5
        .byte   $04
        .byte   $02
        php
        .byte   $04
        jsr     L0000
        brk
L91D5:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        brk
        brk
        brk
        cpy     #$80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
L920B:  .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        jsr     L2020
        jsr     L2020
        .byte   $1F
        ora     $161A,x
        .byte   $12
        .byte   $0C
        asl     $03
        ora     (L0000,x)
        jsr     L2020
        ora     $0C16,x
        .byte   $04
        ora     (L0000,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        rti

        rti

        rti

        rti

        rti

        rti

        .byte   $3F
        .byte   $3B
        and     $2D,x
        bit     $18
        .byte   $0C
        .byte   $04
        ora     (L0000,x)
        rti

        rti

        rti

        .byte   $3B
        and     $0418
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        brk
        brk
        php
        php
        php
        php
        php
        php
        .byte   $04
        php
        php
        php
        php
        php
        php
        php
        php
        php
        php
        php
        php
        php
        php
        php
        php
        php
        php
        php
        brk
        .byte   $3C
        brk
        brk
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     $07
        asl     $07
        php
        ora     #$0A
        .byte   $0B
        .byte   $0C
        ora     $0F0E
        bpl     L9296
        .byte   $12
        .byte   $13
        .byte   $14
        ora     $16,x
        .byte   $17
        clc
        bit     a:$40
        brk
        .byte   $04
        brk
        php
        brk
        .byte   $0B
        brk
L9296:  asl     $1200
        brk
        asl     L0000,x
        .byte   $1A
        brk
        ora     $2000,x
        brk
        .byte   $23
        brk
        rol     L0000
        and     #$00
        bit     $2F00
        brk
        bmi     L92AE
L92AE:  .byte   $32
        brk
        .byte   $34
        brk
        and     L0000,x
        .byte   $37
        brk
        and     $3B00,y
        brk
        and     $3E00,x
        brk
        .byte   $3F
        brk
        brk
        brk
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        brk
        brk
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        php
        php
        php
        php
        php
        php
        php
        php
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        and     $3D3D,x
        and     $0808,x
        php
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        ora     $3F3F,x
        ora     $1D1D,x
        ora     $201D,x
        jsr     L2020
        plp
        plp
        plp
        plp
        plp
        brk
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     $06
        .byte   $07
        brk
        .byte   $02
        .byte   $04
        brk
        .byte   $02
        .byte   $04
        brk
        .byte   $02
        .byte   $04
        asl     L0000
        .byte   $02
        .byte   $04
        asl     L0000
        .byte   $02
        .byte   $04
        asl     L0000
        .byte   $02
        .byte   $04
        brk
        .byte   $02
        .byte   $04
        brk
        .byte   $02
        .byte   $04
        brk
        .byte   $02
        .byte   $04
        brk
        .byte   $02
        .byte   $04
        brk
        .byte   $02
        .byte   $04
        brk
        .byte   $02
        .byte   $04
        .byte   $07
        asl     $07
        asl     $07
        asl     $06
        .byte   $07
        asl     $07
        asl     $07
        .byte   $04
        asl     L0000
        .byte   $02
        .byte   $02
        iny
        cli
        sbc     $3258,x
        eor     $5952,y
        iny
        cli
        sbc     $3258,x
        eor     $5952,y
        .byte   $9C
        eor     $5CC5,y
        sec
        .byte   $5F
        lda     $61
        .byte   $73
        adc     $99
        .byte   $67
        and     ($74,x)
        .byte   $BF
        .byte   $74
        sbc     $7374,x
        adc     $5E,x
        adc     ($1A),y
L9380:  .byte   $72
        ror     $72,x
        cpy     $73
        ora     LAC6B
        .byte   $6B
        .byte   $67
        jmp     (L6B08)

        .byte   $3F
        ror     a
        .byte   $62
        ror     a
        .byte   $83
        ror     a
        tya
        ror     a
        cpy     #$6A
        inc     $6A
        .byte   $CF
        adc     $FE,x
        adc     $2F,x
        ror     $B9,x
        adc     #$EB
        adc     #$15
        ror     a
        bit     $DD6D
L93A8:  adc     $6E8E
        bit     $6F
        .byte   $A3
        .byte   $6F
        .byte   $22
        bvs     L9431
        bvs     L93A8
        bvs     L93ED
        adc     ($6D),y
        .byte   $54
        dec     $2656
        .byte   $57
        ldy     $55
        eor     $56,x
        .byte   $8F
        .byte   $54
        cmp     $2754,x
        eor     $54,x
        .byte   $57
        sty     $EE57
        .byte   $57
        bvc     L9427
        rts

        cli
        ror     a
        cli
        .byte   $7C
        cli
        .byte   $74
        cli
        ldx     $58
        ora     (L0000,x)
        .byte   $02
        brk
        .byte   $03
        brk
        brk
        brk
        ora     L0000
        asl     L0000
        .byte   $07
        brk
        brk
        brk
        ora     #$00
        asl     a
        brk
L93ED:  brk
        brk
        .byte   $0C
        brk
        ora     a:L0000
        brk
        .byte   $0F
        brk
        bpl     L93F9
L93F9:  ora     (L0000),y
        brk
        brk
        .byte   $13
        brk
        .byte   $14
        brk
        ora     L0000,x
        brk
        brk
        .byte   $17
        brk
        clc
        brk
        ora     L0000,y
        brk
        .byte   $1B
        brk
        .byte   $1C
        brk
        brk
        brk
        asl     $1F00,x
        brk
        brk
        brk
        and     (L0000,x)
        .byte   $22
        brk
        brk
        brk
        bit     L0000
        and     L0000
        brk
        brk
        .byte   $27
        brk
L9427:  plp
        brk
        brk
        brk
        rol     a
        brk
        .byte   $2B
        brk
        brk
        brk
L9431:  and     $2E00
        brk
        brk
        brk
        brk
        brk
        and     (L0000),y
        brk
        brk
        .byte   $33
        brk
        brk
        brk
        brk
        brk
        rol     L0000,x
        brk
        brk
        sec
        brk
        brk
        brk
        .byte   $3A
        brk
        brk
        brk
        .byte   $3C
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $02
        plp
        php
        brk
        .byte   $02
        .byte   $FC
        php
        sed
        .byte   $02
        bvs     L946B
        .byte   $12
L946B:  brk
        brk
        .byte   $87
        .byte   $5F
        .byte   $54
        stx     $67
        .byte   $54
        bcc     L9475
L9475:  .byte   $82
        brk
        txa
        brk
        brk
        asl     a
        brk
        brk
        .byte   $02
        bmi     L9482
        brk
        .byte   $02
L9482:  sed
        asl     L0000
        php
        .byte   $FC
        .byte   $04
        sed
        .byte   $02
        brk
        .byte   $02
        asl     L0000,x
        brk
        .byte   $87
        adc     L8654,x
        .byte   $89
        .byte   $54
        bcc     L9497
L9497:  .byte   $82
        brk
        txa
        ldy     #$00
        .byte   $0C
        brk
        brk
        .byte   $02
        plp
        .byte   $12
        brk
        .byte   $02
        .byte   $FC
        .byte   $02
        sed
        .byte   $02
        .byte   $FC
        .byte   $02
        sed
        .byte   $04
        .byte   $FC
        .byte   $02
        beq     L94B2
        .byte   $02
        .byte   $B0
L94B2:  .byte   $FF
        .byte   $02
        jsr     L0200
        .byte   $B0
L94B8:  .byte   $FF
        .byte   $02
        jsr     L0200
        .byte   $90
L94BE:  .byte   $FF
        .byte   $02
        bvc     L94C2
L94C2:  .byte   $02
        rts

        .byte   $FF
        .byte   $02
        bvc     L94C8
L94C8:  .byte   $02
        .byte   $70
L94CA:  .byte   $FF
        .byte   $02
        rti

        brk
        .byte   $02
        .byte   $70
L94D0:  .byte   $FF
        .byte   $02
        bvc     L94D4
L94D4:  .byte   $02
        .byte   $70
L94D6:  .byte   $FF
        .byte   $02
        bvc     L94DA
L94DA:  .byte   $02
        .byte   $70
L94DC:  .byte   $FF
        .byte   $87
        .byte   $9F
        .byte   $54
        stx     $AD
        .byte   $54
        bcc     L94E5
L94E5:  .byte   $82
        brk
        txa
        ldy     #$00
        bpl     L94EC
L94EC:  brk
        .byte   $02
        plp
        .byte   $12
        brk
        .byte   $02
        .byte   $FC
        .byte   $04
        sed
        asl     $FC
        .byte   $02
        beq     L94FC
        .byte   $02
        rts

L94FC:  brk
        .byte   $02
        cpy     #$FF
        .byte   $02
        .byte   $80
        brk
        .byte   $02
        ldy     #$FF
        .byte   $02
        .byte   $80
        brk
        .byte   $02
        .byte   $B0
L950B:  .byte   $FF
        .byte   $02
        .byte   $80
        brk
        .byte   $02
        cpy     #$FF
        .byte   $02
        ldy     #$00
        .byte   $02
        .byte   $B0
L9517:  .byte   $FF
        .byte   $02
        cpy     #$00
        .byte   $02
        .byte   $90
L951D:  .byte   $FF
        .byte   $02
        bpl     L9522
        .byte   $02
L9522:  rts

        .byte   $FF
        .byte   $02
        bvs     L9528
        .byte   $87
L9528:  sbc     L8654
        .byte   $F7
        .byte   $54
        bcc     L952F
L952F:  .byte   $82
        brk
        txa
        ldy     #$00
        bpl     L9536
L9536:  brk
        .byte   $02
        .byte   $0C
        .byte   $02
        brk
        .byte   $02
        .byte   $04
        php
        brk
        .byte   $02
        .byte   $04
        asl     a
        brk
        .byte   $02
        .byte   $04
        asl     L0000
        .byte   $02
        .byte   $04
        asl     L0000
        .byte   $02
        .byte   $04
        .byte   $04
        brk
        .byte   $02
        .byte   $04
        php
        brk
        .byte   $02
        bmi     L9559
        .byte   $02
        brk
        brk
L9559:  .byte   $02
        rts

        brk
        .byte   $02
        brk
        brk
        .byte   $02
        ldy     #$00
        .byte   $02
        brk
        brk
        .byte   $02
        bvs     L9568
L9568:  .byte   $02
L9569:  bvc     L9569
        .byte   $02
        brk
        brk
        .byte   $02
        rti

        brk
        .byte   $02
        brk
        brk
        .byte   $02
        bcc     L9577
L9577:  .byte   $02
        brk
        brk
        .byte   $02
        cpx     #$FE
        .byte   $02
        brk
        brk
        .byte   $04
        rts

        brk
        .byte   $02
L9584:  bcs     L9584
        .byte   $02
        brk
        brk
        .byte   $04
        bvs     L958C
L958C:  .byte   $02
        ldy     #$FE
        .byte   $02
        ldy     #$00
        .byte   $02
        brk
        brk
        .byte   $02
        rts

        brk
        .byte   $02
        rts

        inc     LB002,x
        brk
        .byte   $02
        bcc     L95A1
L95A1:  .byte   $02
        brk
        brk
        .byte   $87
        .byte   $37
        eor     $86,x
        .byte   $53
        eor     $90,x
        brk
        .byte   $82
        brk
        txa
        ldy     #$00
        ora     a:L0000,x
        asl     L0000
        .byte   $02
        .byte   $0C
        .byte   $02
        .byte   $04
        php
        brk
        .byte   $02
        .byte   $04
        asl     a
        brk
        .byte   $02
        .byte   $04
        asl     L0000
        .byte   $02
        .byte   $04
        asl     L0000
        .byte   $02
        .byte   $04
        .byte   $04
        brk
        .byte   $02
        .byte   $04
        .byte   $14
        brk
        .byte   $02
        .byte   $04
        .byte   $12
        brk
        .byte   $02
        bmi     L95DA
        asl     L0000
        brk
L95DA:  .byte   $02
        rts

        brk
        .byte   $02
        brk
        brk
        .byte   $02
        ldy     #$00
        .byte   $02
        brk
        brk
        .byte   $02
        bvs     L95E9
L95E9:  .byte   $02
L95EA:  bvc     L95EA
        .byte   $02
        brk
        brk
        .byte   $02
        rti

        brk
        .byte   $02
        brk
        brk
        .byte   $02
        bcc     L95F8
L95F8:  .byte   $02
        brk
        brk
        .byte   $02
        cpx     #$FE
        .byte   $02
        brk
        brk
        .byte   $04
        rts

        brk
        .byte   $02
L9605:  bcs     L9605
        .byte   $02
        brk
        brk
        .byte   $04
        bvs     L960D
L960D:  .byte   $02
        rti

        .byte   $FF
        .byte   $02
        bvs     L9613
L9613:  .byte   $02
        rts

        brk
        .byte   $02
        beq     L9619
L9619:  .byte   $02
L961A:  bcc     L961A
        .byte   $02
        cpx     #$00
        .byte   $02
        brk
        brk
        .byte   $02
        bne     L9625
L9625:  .byte   $02
L9626:  beq     L9626
        .byte   $02
        bne     L962C
        .byte   $02
L962C:  bcs     L962C
        .byte   $02
        brk
        brk
        .byte   $02
        cpy     #$00
        .byte   $02
        bpl     L9638
        .byte   $02
L9638:  cpy     #$FE
        .byte   $02
        brk
        brk
        .byte   $02
        bpl     L9641
        .byte   $02
L9641:  cpx     #$01
        .byte   $02
        brk
        brk
        .byte   $02
        cpx     #$FD
        .byte   $02
        bmi     L964F
        .byte   $02
        brk
        brk
L964F:  .byte   $02
        jsr     L0201
        brk
        brk
        .byte   $87
        ldy     $55,x
        stx     $D4
        eor     $90,x
        brk
        .byte   $82
        brk
        txa
        ldy     #$00
        .byte   $2F
        brk
        brk
        .byte   $02
        .byte   $34
        .byte   $02
        .byte   $FC
        .byte   $02
        .byte   $FC
        .byte   $04
        brk
        asl     $FC
        .byte   $02
        beq     L9675
        asl     a:L0000
L9675:  .byte   $87
        adc     $56
        stx     $6F
        lsr     $90,x
        brk
        .byte   $82
        brk
        txa
        rts

        brk
        .byte   $02
        txa
        brk
        brk
        stx     L0000
        brk
        .byte   $02
        .byte   $3C
        .byte   $02
        brk
        .byte   $02
        sed
        .byte   $02
        brk
        .byte   $02
        .byte   $FC
        .byte   $02
        sed
        .byte   $04
        .byte   $FC
        .byte   $02
        .byte   $0C
        .byte   $02
        brk
        php
        .byte   $FC
        .byte   $02
        sed
        .byte   $02
        .byte   $FC
        .byte   $02
        bvc     L96AB
        .byte   $02
        .byte   $90
L96A6:  .byte   $FF
        .byte   $02
        ldy     #$FF
        .byte   $02
L96AB:  cpy     #$FF
        .byte   $02
        ldy     #$FF
        .byte   $04
        .byte   $B0
L96B2:  .byte   $FF
        .byte   $02
        ldy     #$FF
        .byte   $02
        rti

        .byte   $03
        .byte   $02
        bne     L96BC
L96BC:  .byte   $02
        jsr     L0201
        beq     L96C2
L96C2:  .byte   $02
        bne     L96C5
L96C5:  .byte   $02
        bvc     L96C9
        .byte   $02
L96C9:  bmi     L96CC
        .byte   $02
L96CC:  bvs     L96CF
        .byte   $87
L96CF:  .byte   $89
        lsr     $86,x
        lda     ($56,x)
        bcc     L96D6
L96D6:  .byte   $82
        brk
        txa
        ldy     #$00
        bpl     L96DD
L96DD:  brk
        .byte   $02
        .byte   $3C
        asl     L0000
        .byte   $02
        sed
        .byte   $02
        brk
        .byte   $02
        .byte   $FC
        .byte   $02
        sed
        .byte   $04
        .byte   $FC
        .byte   $02
        .byte   $0C
        .byte   $02
        brk
        php
        .byte   $FC
        .byte   $02
        sed
        .byte   $02
        .byte   $FC
        .byte   $02
        bvc     L9700
        .byte   $04
        brk
        brk
        .byte   $02
        .byte   $90
L96FE:  .byte   $FF
        .byte   $02
L9700:  ldy     #$FF
        .byte   $02
        cpy     #$FF
        .byte   $02
        ldy     #$FF
        .byte   $04
        .byte   $B0
L970A:  .byte   $FF
        .byte   $02
        ldy     #$FF
        .byte   $02
        rti

        .byte   $03
        .byte   $02
        bne     L9714
L9714:  .byte   $02
        jsr     L0201
        beq     L971A
L971A:  .byte   $02
        bne     L971D
L971D:  .byte   $02
        bvc     L9721
        .byte   $02
L9721:  bmi     L9724
        .byte   $02
L9724:  bvs     L9727
        .byte   $87
L9727:  dec     L8656,x
        inc     $56,x
        bcc     L972E
L972E:  .byte   $82
        brk
        txa
        ldy     #$00
        .byte   $12
        brk
        brk
        .byte   $02
        .byte   $1C
        .byte   $02
        brk
        asl     $0204
        bvs     L9744
        .byte   $02
L9740:  bne     L9740
        .byte   $02
        .byte   $90
L9744:  brk
        .byte   $02
        bvc     L9748
L9748:  .byte   $02
L9749:  bne     L9749
        .byte   $04
        bvs     L974E
L974E:  .byte   $02
        .byte   $80
        inc     LB002,x
        brk
        .byte   $87
        rol     $57,x
        stx     $3C
        .byte   $57
        bcc     L975C
L975C:  .byte   $82
        brk
        txa
        ldy     #$00
        php
        brk
        brk
        .byte   $02
        .byte   $1C
        .byte   $02
        brk
        .byte   $02
        .byte   $04
        .byte   $02
        brk
        .byte   $02
        .byte   $04
        .byte   $02
        brk
        .byte   $02
        .byte   $04
        .byte   $02
        brk
        .byte   $02
        cpx     #$02
        .byte   $02
        bne     L977A
L977A:  .byte   $02
        bpl     L977E
        .byte   $02
L977E:  .byte   $80
        brk
        .byte   $02
        bvs     L9783
L9783:  .byte   $02
        bmi     L9787
        .byte   $02
L9787:  beq     L9789
L9789:  .byte   $02
        rti

        ora     ($87,x)
        .byte   $64
        .byte   $57
        stx     $74
        .byte   $57
        bcc     L9794
L9794:  .byte   $82
        brk
        txa
        ldy     #$00
        .byte   $07
        brk
        brk
        .byte   $02
        .byte   $14
        .byte   $04
        brk
        .byte   $02
        .byte   $04
        asl     L0000
        .byte   $02
        .byte   $04
        .byte   $02
        brk
        .byte   $02
        .byte   $04
        .byte   $02
        brk
        .byte   $02
        .byte   $04
        .byte   $02
        brk
        .byte   $02
        .byte   $04
        .byte   $02
        brk
        .byte   $04
        .byte   $04
        .byte   $02
        brk
        .byte   $02
        bne     L97C2
        .byte   $02
        brk
        brk
        .byte   $02
L97BF:  beq     L97BF
        .byte   $02
L97C2:  brk
        brk
        .byte   $02
L97C5:  bne     L97C5
        .byte   $02
        brk
        brk
        .byte   $02
        bcs     L97CE
        .byte   $02
L97CE:  brk
        brk
        .byte   $02
        cpx     #$FE
        .byte   $02
        brk
        brk
        .byte   $02
        .byte   $10
L97D8:  .byte   $FF
        .byte   $02
        brk
        brk
        .byte   $02
        rts

        ora     ($02,x)
        brk
        brk
        .byte   $02
        cpx     #$FE
        .byte   $02
        brk
        brk
        .byte   $02
L97E9:  bcs     L97E9
        .byte   $02
        brk
        brk
        .byte   $87
        .byte   $9C
        .byte   $57
        stx     $B8
        .byte   $57
        bcc     L97F6
L97F6:  .byte   $82
        brk
        txa
        ldy     #$00
        .byte   $12
        brk
        brk
        .byte   $02
        .byte   $14
        asl     a
        brk
        .byte   $02
        .byte   $04
        asl     L0000
        .byte   $02
        .byte   $04
        .byte   $02
        brk
        .byte   $02
        .byte   $04
        .byte   $02
        brk
        .byte   $02
        .byte   $04
        .byte   $02
        brk
        .byte   $02
        .byte   $04
        .byte   $02
        brk
        .byte   $04
        .byte   $04
        .byte   $02
        brk
        .byte   $02
        bne     L9824
        php
        brk
        brk
        .byte   $02
L9821:  beq     L9821
        .byte   $02
L9824:  brk
        brk
        .byte   $02
L9827:  bne     L9827
        .byte   $02
        brk
        brk
        .byte   $02
        bcs     L9830
        .byte   $02
L9830:  brk
        brk
        .byte   $02
        cpx     #$FE
        .byte   $02
        brk
        brk
        .byte   $02
        .byte   $10
L983A:  .byte   $FF
        .byte   $02
        brk
        brk
        .byte   $02
        rts

        ora     ($02,x)
        brk
        brk
        .byte   $02
        cpx     #$FE
        .byte   $02
        brk
        brk
        .byte   $02
L984B:  bcs     L984B
        .byte   $02
        brk
        brk
        .byte   $87
        inc     L8657,x
        .byte   $1A
        cli
        bcc     L9858
L9858:  .byte   $82
        brk
        txa
        ldy     #$00
        ora     L0000,x
        brk
        .byte   $82
        asl     a
        .byte   $B2
        .byte   $07
        bcs     L9868
        .byte   $2C
        asl     a
L9868:  brk
        brk
        .byte   $82
        asl     a
        .byte   $B2
        .byte   $07
        bcs     L9872
        and     #$0A
L9872:  brk
        brk
        .byte   $B2
        .byte   $07
        lda     #$01
        bcs     L9881
        brk
        brk
        .byte   $AB
        brk
        bcs     L9886
        .byte   $B0
L9881:  .byte   $07
        .byte   $02
        .byte   $3C
        .byte   $02
        brk
L9886:  .byte   $02
        cpx     $02
        .byte   $FC
        .byte   $04
        sed
        .byte   $04
        .byte   $FC
        .byte   $02
        bvc     L9893
        .byte   $02
        .byte   $70
L9893:  inc     $D002,x
        .byte   $FF
        .byte   $02
        .byte   $F0
L9899:  .byte   $FF
        .byte   $02
        cpx     #$FF
        .byte   $02
        brk
        brk
        .byte   $02
        cpx     #$FF
        .byte   $02
        .byte   $F0
L98A5:  .byte   $FF
        .byte   $87
        .byte   $82
        cli
        stx     $8E
        cli
        bcc     L98AE
L98AE:  .byte   $82
        brk
        txa
        brk
        brk
        .byte   $02
        txa
        .byte   $80
        brk
        stx     L0000
        brk
        .byte   $02
        .byte   $3C
        asl     L0200,x
        cpy     $9E
        brk
        .byte   $02
        bcc     L98CC
        ldx     a:L0000,y
        .byte   $87
        tsx
        cli
        .byte   $86
L98CC:  .byte   $C2
        cli
        bcc     L98D0
L98D0:  .byte   $82
        brk
        txa
        ldy     #$00
        rts

        .byte   $87
        .byte   $62
        eor     $6686,y
        eor     $90,y
        .byte   $82
        brk
        txa
        ldy     #$00
        adc     LA08A,x
        brk
        adc     $E499,x
        cli
        brk
        brk
        bmi     L98EF
L98EF:  .byte   $02
        .byte   $3C
        asl     L0200,x
        cpy     $6E
        brk
        .byte   $02
        brk
        asl     $BE
        brk
        brk
        .byte   $87
        sbc     L8658
        .byte   $F7
L9902:  cli
        bcc     L9905
L9905:  .byte   $82
        brk
        txa
        ldy     #$00
        rts

        .byte   $87
        .byte   $7C
        eor     L8386,y
        eor     $90,y
        .byte   $82
        brk
        txa
        ldy     #$00
        adc     LA08A,x
        brk
        adc     $1999,x
        eor     L0000,y
        lsr     L0200,x
        .byte   $3C
        asl     L0200,x
        cpy     $0C
        brk
        .byte   $02
        bpl     L9934
        dey
        brk
        brk
        .byte   $87
        .byte   $22
L9934:  eor     $2C86,y
        eor     $90,y
        .byte   $82
        brk
        txa
        ldy     #$00
        eor     L0000
        brk
        sty     L0200
        .byte   $3C
        rol     L0000
        .byte   $02
        cpy     $0C
        brk
        .byte   $02
        cpy     #$03
        ldx     a:L0000,y
        .byte   $87
        .byte   $42
        eor     $4C86,y
        eor     $90,y
        .byte   $82
        brk
        txa
        ldy     #$00
        rts

        brk
        brk
        .byte   $02
        .byte   $3C
        .byte   $FC
        brk
        .byte   $02
        bcc     L9970
        .byte   $FC
        brk
        brk
        .byte   $87
        .byte   $62
        .byte   $59
        .byte   $86
L9970:  ror     $59
        bcc     L9974
L9974:  .byte   $82
        brk
        txa
        ldy     #$00
        .byte   $7F
        brk
        brk
        .byte   $02
        .byte   $3C
        .byte   $FC
        brk
        .byte   $FF
        .byte   $FF
        ora     $02
        bpl     L998B
        .byte   $FC
        brk
        brk
        .byte   $FF
        .byte   $FF
L998B:  asl     $87
        .byte   $7C
        eor     L8386,y
        eor     $90,y
        .byte   $82
        brk
        txa
        ldy     #$00
        .byte   $7F
        brk
        brk
        .byte   $82
        .byte   $03
        .byte   $80
        .byte   $80
        jsr     L028E
        .byte   $43
        .byte   $13
        .byte   $44
        .byte   $14
        brk
        .byte   $04
        .byte   $44
        .byte   $02
        .byte   $43
        .byte   $13
        .byte   $44
        .byte   $13
        .byte   $44
        .byte   $02
        .byte   $43
        sty     $44
        sty     $43
        sty     $44
        .byte   $04
        lsr     $84
        .byte   $44
        .byte   $04
        .byte   $43
        sty     $41
        .byte   $04
        .byte   $43
        .byte   $03
        .byte   $44
        .byte   $14
        brk
        .byte   $04
        .byte   $44
        .byte   $02
        eor     ($13,x)
        .byte   $42
        .byte   $14
        brk
        .byte   $04
        .byte   $42
        .byte   $02
        eor     ($13,x)
        .byte   $42
        .byte   $13
        .byte   $42
        .byte   $02
        eor     ($84,x)
        .byte   $42
        sty     $41
        sty     $42
        .byte   $04
        .byte   $44
        sty     $42
        sty     $41
        sty     $3F
        .byte   $04
        sta     (L0000,x)
        inc     L843D,x
        .byte   $3F
        sty     $81
        brk
        inc     L843D,x
        .byte   $3F
        .byte   $04
        sta     (L0000,x)
        inc     L8441,x
        .byte   $3F
        sty     $81
        brk
        inc     L843D,x
        .byte   $3C
        sty     $81
        brk
        asl     a:$8F
        .byte   $80
        brk
        .byte   $2B
        stx     $4802
        .byte   $14
        pha
        .byte   $14
        lsr     $14
        lsr     $14
        .byte   $44
        .byte   $14
        .byte   $44
        .byte   $14
        lsr     $14
        lsr     $14
        .byte   $8F
        brk
        pha
        .byte   $14
        pha
        .byte   $14
        lsr     $14
        lsr     $14
        .byte   $44
        .byte   $14
        .byte   $44
        .byte   $14
        .byte   $43
        .byte   $14
        .byte   $43
        .byte   $14
        eor     ($13,x)
        brk
        .byte   $42
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     $3C84,x
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     $3C84,x
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     $3C84,x
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     $3C84,x
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3C
        sty     $3A
        .byte   $14
        sec
        .byte   $14
        sec
        .byte   $14
        .byte   $3A
        sty     $38
        .byte   $14
        .byte   $37
        .byte   $14
        .byte   $37
        .byte   $14
        sec
        sty     $37
        .byte   $04
        sec
        .byte   $14
        sec
        .byte   $14
        sec
        .byte   $14
        brk
        .byte   $04
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     $3C84,x
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3D
L9A80:  sty     $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     $3C84,x
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     $3C84,x
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3C
        sty     $3A
        .byte   $14
        sec
        .byte   $14
        sec
        .byte   $14
        .byte   $3A
        sty     $38
        .byte   $14
        .byte   $37
        .byte   $14
        .byte   $37
        .byte   $14
        sec
        sty     $37
        .byte   $14
        sec
        .byte   $14
        sec
        .byte   $14
        .byte   $3A
        sty     $38
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3C
        sty     $3A
        .byte   $14
        sec
        .byte   $14
        sec
        .byte   $14
        .byte   $3A
        sty     $38
        .byte   $14
        .byte   $37
        .byte   $14
        .byte   $37
        .byte   $14
        sec
        sty     $37
        .byte   $14
        sec
        .byte   $14
        sec
        .byte   $14
        sec
        .byte   $14
        brk
        .byte   $04
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     $3C09,x
        ora     #$3C
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     $3C09,x
        ora     #$3C
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     $3C09,x
        ora     #$3C
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     $3C09,x
        ora     #$3C
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3C
        ora     #$3A
        ora     #$3A
        .byte   $14
        sec
        .byte   $14
        sec
        .byte   $14
        .byte   $3A
        ora     #$38
        ora     #$38
        .byte   $14
        .byte   $37
        .byte   $14
        .byte   $37
        .byte   $14
        sec
        ora     #$37
        ora     #$37
        .byte   $14
        sec
        .byte   $14
        sec
        .byte   $14
        .byte   $3A
        ora     #$38
        ora     #$38
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3C
        ora     #$3A
        ora     #$3A
        .byte   $14
        sec
        .byte   $14
        sec
        .byte   $14
        .byte   $3A
        ora     #$38
        ora     #$38
        .byte   $14
        .byte   $37
        .byte   $14
        .byte   $37
        .byte   $14
        sec
        ora     #$37
        ora     #$37
        .byte   $14
        sec
        .byte   $14
        sec
        .byte   $14
        sec
        .byte   $14
        brk
        .byte   $04
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     $3C09,x
        ora     #$3A
        ora     #$3C
        ora     #$3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     $3C09,x
        ora     #$3A
        ora     #$3C
        ora     #$3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     $3C09,x
        ora     #$3A
        ora     #$3C
        ora     #$3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     $3C09,x
        ora     #$3A
        ora     #$3C
        ora     #$3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3C
        ora     #$3A
        ora     #$38
        ora     #$3A
        ora     #$38
        .byte   $14
        sec
        .byte   $14
        .byte   $3A
        ora     #$38
        ora     #$37
        ora     #$38
        ora     #$37
        .byte   $14
        .byte   $37
        .byte   $14
        sec
        ora     #$37
        .byte   $09
L9B99:  and     $09,x
        .byte   $37
        ora     #$38
        .byte   $14
        sec
        .byte   $14
        .byte   $3A
        ora     #$38
        ora     #$37
        ora     #$38
        ora     #$3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3C
        ora     #$3A
        ora     #$38
        ora     #$3A
        ora     #$38
        .byte   $14
        sec
        .byte   $14
        .byte   $3A
        ora     #$38
        ora     #$37
        ora     #$38
        ora     #$37
        .byte   $14
        .byte   $37
        .byte   $14
        sec
        ora     #$37
        ora     #$35
        ora     #$37
        ora     #$38
        ora     #$37
        ora     #$35
        ora     #$37
        ora     #$38
        ora     #$37
        ora     #$35
        ora     #$37
        ora     #$3F
        ora     #$3D
        ora     #$3C
        ora     #$3A
        ora     #$3D
        ora     #$3C
        ora     #$3A
        ora     #$38
        ora     #$3C
        ora     #$3A
        ora     #$38
        ora     #$37
        ora     #$3A
        ora     #$38
        ora     #$37
        ora     #$3A
        ora     #$38
        .byte   $14
        sec
        .byte   $14
        sec
        .byte   $14
        brk
        .byte   $04
        brk
        .byte   $02
        .byte   $80
        .byte   $80
        bmi     L9B99
        .byte   $02
        pha
        .byte   $43
        .byte   $44
        .byte   $04
        .byte   $3F
        .byte   $13
        .byte   $3F
        .byte   $13
        eor     #$43
        lsr     $04
        .byte   $43
        .byte   $13
        eor     ($13,x)
        .byte   $3F
        .byte   $13
        .byte   $3F
        .byte   $13
        eor     ($13,x)
        .byte   $43
        .byte   $13
        lsr     $04
        .byte   $44
        .byte   $03
        .byte   $43
        ora     #$44
        ora     #$46
        ora     #$44
        ora     #$43
        ora     #$46
        ora     #$44
        .byte   $13
        .byte   $8F
        brk
        pha
        .byte   $13
        pha
        .byte   $13
        .byte   $4B
        .byte   $13
        .byte   $4B
        .byte   $13
        eor     #$04
        eor     #$03
        pha
        .byte   $04
        eor     #$04
        eor     #$53
        lsr     $13
        lsr     $13
        eor     #$13
        eor     #$13
        pha
        .byte   $04
        pha
        .byte   $03
        lsr     $04
        pha
        .byte   $04
        pha
        .byte   $03
        lsr     $04
        .byte   $44
        .byte   $13
        .byte   $44
        .byte   $13
        pha
        .byte   $13
        pha
        .byte   $13
        lsr     $04
        lsr     $03
        eor     $04
        lsr     $04
        lsr     $03
        .byte   $43
        .byte   $04
        .byte   $3F
        .byte   $13
        brk
        .byte   $04
        .byte   $3F
        .byte   $04
        eor     ($13,x)
        .byte   $43
        .byte   $13
        lsr     $04
        .byte   $44
        .byte   $03
        .byte   $43
        ora     #$44
        ora     #$46
        ora     #$44
        ora     #$43
        ora     #$46
        ora     #$44
        .byte   $13
        stx     $4802
        .byte   $43
        .byte   $44
        .byte   $04
        .byte   $3F
        .byte   $13
        .byte   $3F
        .byte   $13
        eor     #$43
        lsr     $04
        .byte   $43
        .byte   $13
        eor     ($13,x)
        .byte   $3F
        .byte   $13
        .byte   $3F
        .byte   $13
        eor     ($13,x)
        .byte   $43
        .byte   $13
        lsr     $04
        .byte   $44
        .byte   $03
        .byte   $43
        ora     #$44
        ora     #$46
        ora     #$44
        ora     #$43
        ora     #$46
        ora     #$44
        .byte   $13
        .byte   $8F
        brk
        brk
        .byte   $02
        sty     L0000
        sta     $59A1,y
        brk
        brk
        .byte   $82
        .byte   $03
        .byte   $80
        .byte   $80
        jsr     L028E
        brk
        .byte   $03
        .byte   $3C
        .byte   $14
        brk
        .byte   $04
        brk
        .byte   $03
        .byte   $3C
        .byte   $03
        brk
        .byte   $03
        .byte   $3C
        .byte   $13
        brk
        .byte   $03
        .byte   $3C
        .byte   $03
        brk
        .byte   $03
        .byte   $3C
        .byte   $03
        brk
        .byte   $03
        .byte   $3C
        .byte   $03
        brk
        .byte   $03
        .byte   $3C
        .byte   $14
        brk
        .byte   $04
        brk
        .byte   $03
        .byte   $3C
        .byte   $03
        brk
        .byte   $03
        .byte   $3A
        .byte   $14
        brk
        .byte   $04
        brk
        .byte   $03
        .byte   $3A
        .byte   $03
        brk
        .byte   $03
        .byte   $3A
        .byte   $13
        brk
        .byte   $03
        .byte   $3A
        .byte   $03
        brk
        .byte   $03
        .byte   $3A
        .byte   $03
        brk
        .byte   $03
        .byte   $3A
        .byte   $03
        sta     (L0000,x)
        inc     L8438,x
        .byte   $3A
        sty     $81
        brk
        inc     L8438,x
        .byte   $3A
        .byte   $04
        sta     (L0000,x)
        inc     L843C,x
        .byte   $3A
        sty     $81
        brk
        inc     L8438,x
        .byte   $37
        sty     $81
        brk
        asl     a:$8F
        .byte   $80
        brk
        .byte   $2B
        stx     $3502
        .byte   $13
        .byte   $33
        .byte   $13
        and     ($13),y
        .byte   $33
        .byte   $13
        .byte   $8F
        brk
        and     $13,x
        .byte   $33
        .byte   $13
        and     ($13),y
        bmi     L9D55
        bmi     L9D57
        brk
        .byte   $42
        stx     $3303
        .byte   $03
        brk
        .byte   $03
        .byte   $33
        .byte   $03
        brk
        .byte   $03
        .byte   $8F
        brk
        .byte   $33
        .byte   $03
        brk
L9D55:  .byte   $03
        .byte   $33
L9D57:  .byte   $14
        .byte   $33
        .byte   $14
        .byte   $33
        .byte   $14
        brk
        .byte   $04
        stx     $3305
        .byte   $13
        .byte   $33
        .byte   $13
        .byte   $33
        .byte   $13
        .byte   $33
        .byte   $13
        .byte   $8F
        brk
        .byte   $33
        .byte   $13
        .byte   $33
        .byte   $13
        .byte   $33
        .byte   $13
        .byte   $33
        .byte   $14
        brk
        .byte   $04
        stx     $3305
        .byte   $13
        .byte   $33
        .byte   $13
        .byte   $33
        .byte   $13
L9D7C:  .byte   $33
        .byte   $14
        .byte   $33
        .byte   $14
        .byte   $8F
        brk
        .byte   $33
        .byte   $13
        .byte   $33
        .byte   $13
        .byte   $33
        .byte   $13
        .byte   $33
        .byte   $14
        brk
        .byte   $04
        stx     $2C02
        .byte   $07
        bmi     L9D99
        .byte   $33
        .byte   $07
        sec
        .byte   $07
        .byte   $33
        .byte   $07
        .byte   $30
L9D99:  .byte   $07
        bit     $3007
        .byte   $07
        .byte   $33
        .byte   $07
        sec
        .byte   $07
        .byte   $33
        .byte   $07
        bmi     L9DAD
        .byte   $8F
        brk
        stx     $2B03
        .byte   $07
        .byte   $31
L9DAD:  .byte   $07
        .byte   $33
        .byte   $07
        .byte   $37
        .byte   $07
        .byte   $33
        .byte   $07
        and     ($07),y
        bit     $3007
        .byte   $07
        .byte   $33
        .byte   $07
        sec
        .byte   $07
        .byte   $33
        .byte   $07
        bmi     L9DC9
        .byte   $8F
        brk
        stx     $2B02
        .byte   $07
        .byte   $31
L9DC9:  .byte   $07
        .byte   $33
        .byte   $07
        .byte   $37
        .byte   $07
        .byte   $33
        .byte   $07
        and     ($07),y
        .byte   $2B
        .byte   $07
        and     ($07),y
        .byte   $33
        .byte   $07
        .byte   $37
        .byte   $07
        .byte   $33
        .byte   $07
        and     ($07),y
        .byte   $8F
        brk
        .byte   $33
        .byte   $14
        .byte   $33
        .byte   $14
        .byte   $33
        .byte   $14
        brk
        .byte   $04
        brk
        .byte   $02
        .byte   $80
        .byte   $80
        bmi     L9D7C
        .byte   $02
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        and     $04,x
        brk
        .byte   $04
        and     $04,x
        brk
        .byte   $04
        and     $04,x
        brk
        .byte   $04
        and     $04,x
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        .byte   $8F
        brk
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        and     $04,x
        brk
        .byte   $04
        and     $04,x
        brk
        .byte   $04
        and     $04,x
        brk
        .byte   $04
        and     $04,x
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        bmi     L9E79
        brk
        .byte   $04
        bmi     L9E7D
L9E79:  brk
        .byte   $04
        bmi     L9E81
L9E7D:  brk
        .byte   $04
        bmi     L9E85
L9E81:  brk
        .byte   $04
        and     $04,x
L9E85:  brk
        .byte   $04
        and     $04,x
        brk
        .byte   $04
        and     $04,x
        brk
        .byte   $04
        and     $04,x
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        and     $04,x
        brk
        .byte   $04
        and     $04,x
        brk
        .byte   $04
        and     $04,x
        brk
        .byte   $04
        and     $04,x
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        and     $04,x
        brk
        .byte   $04
        and     $04,x
        brk
        .byte   $04
        and     $04,x
        brk
        .byte   $04
        and     $04,x
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        and     ($04),y
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $04
        and     ($04),y
        bmi     L9F42
        brk
        .byte   $02
        sty     L0000
        sta     $5CCA,y
        brk
        brk
        .byte   $82
        .byte   $03
        .byte   $80
        .byte   $80
        jsr     L028E
        and     #$03
        sec
L9F42:  .byte   $14
        brk
        .byte   $04
        bit     $03
        sec
        .byte   $03
        and     #$03
        sec
        .byte   $13
        bit     $03
        sec
        .byte   $03
        and     #$03
        sec
        .byte   $03
        bit     $03
        sec
        .byte   $03
        and     #$03
        sec
        .byte   $14
        brk
        .byte   $04
        bit     $03
        sec
        .byte   $03
        .byte   $27
        .byte   $03
        rol     $14,x
        brk
        .byte   $04
        .byte   $22
        .byte   $03
        rol     $03,x
        .byte   $27
        .byte   $03
        rol     $13,x
        .byte   $22
        .byte   $03
        rol     $03,x
        .byte   $27
        .byte   $03
        rol     $03,x
        .byte   $22
        .byte   $03
        rol     $03,x
        sta     (L0000,x)
        inc     $0300,x
        sta     (L0000,x)
        inc     $0300,x
        sta     (L0000,x)
        inc     $0300,x
        sta     (L0000,x)
        inc     $0300,x
        sta     (L0000,x)
        asl     a:$8F
        .byte   $80
        brk
        .byte   $2B
        stx     $3102
        .byte   $13
        bmi     L9FB2
        rol     $3013
        .byte   $13
        .byte   $8F
        brk
        and     ($13),y
        bmi     L9FBC
        rol     $2E13
        .byte   $13
        bit     a:$13
        .byte   $03
        .byte   $1D
L9FB2:  .byte   $13
        brk
        .byte   $03
        bmi     L9FBA
        brk
        .byte   $03
        .byte   $30
L9FBA:  .byte   $03
        brk
L9FBC:  .byte   $03
        bmi     L9FC2
        brk
        .byte   $03
        .byte   $30
L9FC2:  .byte   $03
        brk
        .byte   $03
        and     ($03),y
        brk
        .byte   $03
        bmi     L9FCE
        brk
        .byte   $03
        .byte   $31
L9FCE:  .byte   $03
        brk
        .byte   $03
        bmi     L9FE7
        bmi     L9FE9
        bmi     L9FEB
        brk
        .byte   $04
        stx     $3002
        .byte   $13
        bmi     L9FF2
        bmi     L9FF4
        bmi     L9FF6
        .byte   $8F
        brk
        .byte   $8E
        .byte   $03
L9FE7:  and     ($13),y
L9FE9:  and     ($13),y
L9FEB:  bmi     LA000
        bmi     LA002
        .byte   $8F
        brk
        .byte   $31
L9FF2:  .byte   $13
        .byte   $31
L9FF4:  .byte   $13
        .byte   $30
L9FF6:  .byte   $14
        bmi     LA00D
        bmi     LA00F
        brk
        .byte   $04
        stx     $3002
LA000:  .byte   $13
        .byte   $30
LA002:  .byte   $13
        bmi     LA018
        bmi     LA01B
        bmi     LA01D
        .byte   $8F
        brk
        .byte   $8E
        .byte   $03
LA00D:  and     ($13),y
LA00F:  and     ($13),y
        bmi     LA026
        bmi     LA029
        bmi     LA02B
        .byte   $8F
LA018:  brk
        and     ($13),y
LA01B:  and     ($13),y
LA01D:  bmi     LA033
        bmi     LA035
        bmi     LA037
        brk
        .byte   $04
        .byte   $8E
LA026:  .byte   $02
        .byte   $2C
        .byte   $13
LA029:  .byte   $2C
        .byte   $13
LA02B:  bit     $2C13
        .byte   $13
        .byte   $8F
        brk
        .byte   $8E
        .byte   $03
LA033:  .byte   $27
        .byte   $13
LA035:  .byte   $27
        .byte   $13
LA037:  bit     $2C13
        .byte   $13
        .byte   $8F
        brk
        .byte   $27
        .byte   $13
        .byte   $27
        .byte   $13
        .byte   $27
        .byte   $13
        .byte   $27
        .byte   $13
        .byte   $27
        .byte   $13
        .byte   $27
        .byte   $13
        .byte   $27
        .byte   $13
        .byte   $27
        .byte   $13
        bit     $2C14
        .byte   $14
        bit     a:$14
        .byte   $04
        brk
        .byte   $02
        .byte   $80
        .byte   $80
        bmi     L9FE9
        .byte   $02
        bit     $3004
        .byte   $04
        .byte   $27
        .byte   $04
        bmi     LA068
        bit     $3004
        .byte   $04
LA068:  .byte   $27
        .byte   $04
        bmi     LA070
        rol     $3104
        .byte   $04
LA070:  and     #$04
        and     ($04),y
        rol     $3104
        .byte   $04
        and     #$04
        and     ($04),y
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
        bit     $2B04
        .byte   $04
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
        .byte   $2C
        .byte   $04
LA08A:  .byte   $2B
        .byte   $04
        bit     $3004
        .byte   $04
        and     #$04
        bmi     LA098
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
LA098:  bit     $3004
        .byte   $04
        .byte   $8F
        brk
        bit     $3004
        .byte   $04
        .byte   $27
        .byte   $04
        bmi     LA0AA
        bit     $3004
        .byte   $04
LA0AA:  .byte   $27
        .byte   $04
        bmi     LA0B2
        rol     $3104
        .byte   $04
LA0B2:  and     #$04
        and     ($04),y
        rol     $3104
        .byte   $04
        and     #$04
        and     ($04),y
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
        .byte   $22
        .byte   $04
        .byte   $2B
        .byte   $04
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
        .byte   $22
        .byte   $04
        .byte   $2B
        .byte   $04
        bit     $3004
        .byte   $04
        .byte   $27
        .byte   $04
        bmi     LA0DA
        bit     $3004
        .byte   $04
LA0DA:  .byte   $27
        .byte   $04
        bmi     LA0E2
        and     #$04
        .byte   $2C
        .byte   $04
LA0E2:  bit     $04
        bit     $2904
        .byte   $04
        bit     $2404
        .byte   $04
        bit     $2E04
        .byte   $04
        and     ($04),y
        and     #$04
        and     ($04),y
        rol     $3104
        .byte   $04
        and     #$04
        and     ($04),y
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
        bit     $2B04
        .byte   $04
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
        bit     $2B04
        .byte   $04
        bit     $3004
        .byte   $04
        and     #$04
        bmi     LA11A
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
LA11A:  bit     $3004
        .byte   $04
        bit     $3004
        .byte   $04
        .byte   $27
        .byte   $04
        bmi     LA12A
        bit     $3004
        .byte   $04
LA12A:  .byte   $27
        .byte   $04
        bmi     LA132
        rol     $3104
        .byte   $04
LA132:  and     #$04
        and     ($04),y
        rol     $3104
        .byte   $04
        and     #$04
        and     ($04),y
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
        bit     $2B04
        .byte   $04
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
        bit     $2B04
        .byte   $04
        bit     $3004
        .byte   $04
        and     #$04
        bmi     LA15A
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
LA15A:  bit     $3004
        .byte   $04
        bit     $3004
        .byte   $04
        .byte   $27
        .byte   $04
        bmi     LA16A
        bit     $3004
        .byte   $04
LA16A:  .byte   $27
        .byte   $04
        bmi     LA172
        rol     $3104
        .byte   $04
LA172:  and     #$04
        and     ($04),y
        rol     $3104
        .byte   $04
        and     #$04
        and     ($04),y
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
        bit     $2B04
        .byte   $04
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
        bit     $2B04
        .byte   $04
        bit     $3004
        .byte   $04
        and     #$04
        bmi     LA19A
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
LA19A:  bit     a:$03
        .byte   $02
        sty     L0000
        sta     $5F3D,y
        brk
        brk
        .byte   $80
        .byte   $80
        bit     $0782
        stx     $4802
        ora     #$00
        ora     #$48
        ora     #$00
        ora     #$49
        ora     #$48
        ora     #$46
        ora     #$49
        ora     #$48
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$44
        sty     $46
        ora     #$00
        ora     #$44
        ora     #$00
        ora     #$44
        ora     #$00
        ora     #$46
        ora     #$44
        ora     #$43
        ora     #$44
        ora     #$41
        .byte   $04
        brk
        .byte   $04
        bmi     LA1E4
        brk
        .byte   $04
        .byte   $8F
        brk
LA1E4:  pha
        ora     #$00
        ora     #$48
        ora     #$00
        ora     #$49
        ora     #$48
        ora     #$46
        ora     #$49
        ora     #$46
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$48
        ora     #$46
        ora     #$44
        ora     #$48
        ora     #$44
        ora     #$00
        ora     #$44
        ora     #$00
        ora     #$46
        ora     #$44
        ora     #$43
        ora     #$46
        ora     #$43
        ora     #$00
        ora     #$43
        ora     #$00
        ora     #$44
        sty     $46
        ora     #$00
        ora     #$48
        ora     #$00
        ora     #$48
        ora     #$00
        ora     #$49
        ora     #$48
        ora     #$46
        ora     #$49
        ora     #$48
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$44
        sty     $46
        ora     #$00
        ora     #$44
        ora     #$00
        ora     #$44
        ora     #$00
        ora     #$46
        ora     #$44
        ora     #$43
        ora     #$44
        ora     #$41
        .byte   $04
        brk
        .byte   $04
        bmi     LA25A
        brk
        .byte   $04
        pha
        .byte   $09
LA25A:  brk
        ora     #$48
        ora     #$00
        ora     #$49
        sty     $4B
        ora     #$00
        ora     #$4D
        sty     $4B
        ora     #$00
        ora     #$49
        sty     $48
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$48
        sty     $46
        ora     #$00
        ora     #$44
        ora     #$00
        ora     #$44
        ora     #$00
        ora     #$46
        sty     $48
        ora     #$00
        ora     #$48
        ora     #$00
        ora     #$48
        ora     #$00
        ora     #$49
        sty     $4B
        ora     #$00
        ora     #$4D
        sty     $4B
        ora     #$00
        ora     #$49
        sty     $48
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$48
        sty     $46
        ora     #$00
        ora     #$44
        .byte   $04
        brk
        .byte   $04
        bmi     LA2C0
        brk
        .byte   $04
        pha
        .byte   $09
LA2C0:  brk
        ora     #$48
        ora     #$00
        ora     #$49
        sty     $4B
        ora     #$00
        ora     #$4D
        sty     $4B
        ora     #$00
        ora     #$49
        sty     $48
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$48
        sty     $46
        ora     #$00
        ora     #$44
        ora     #$00
        ora     #$44
        ora     #$00
        ora     #$46
        sty     $48
        ora     #$00
        ora     #$48
        ora     #$00
        ora     #$48
        ora     #$00
        ora     #$49
        sty     $4B
        ora     #$00
        ora     #$4D
        sty     $4B
        ora     #$00
        ora     #$49
        sty     $48
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$44
        sty     $43
        ora     #$00
        ora     #$41
        .byte   $04
        brk
        .byte   $04
        bmi     LA326
        brk
        .byte   $04
        .byte   $8E
        .byte   $02
LA326:  pha
        ora     #$00
        ora     #$48
        ora     #$00
        ora     #$49
        ora     #$48
        ora     #$46
        ora     #$49
        ora     #$48
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$44
        sty     $46
        ora     #$00
        ora     #$44
        ora     #$00
        ora     #$44
        ora     #$00
        ora     #$46
        ora     #$44
        ora     #$43
        ora     #$44
        ora     #$41
        .byte   $04
        brk
        .byte   $04
        bmi     LA35E
        brk
        .byte   $04
        .byte   $8F
        brk
LA35E:  pha
        ora     #$00
        ora     #$48
        ora     #$00
        ora     #$49
        ora     #$48
        ora     #$46
        ora     #$49
        ora     #$46
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$48
        ora     #$46
        ora     #$44
        ora     #$48
        ora     #$44
        ora     #$00
        ora     #$44
        ora     #$00
        ora     #$46
        ora     #$44
        ora     #$43
        ora     #$46
        ora     #$43
        ora     #$00
        ora     #$43
        ora     #$00
        ora     #$44
        sty     $46
        ora     #$00
        ora     #$48
        ora     #$00
        ora     #$48
        ora     #$00
        ora     #$49
        ora     #$48
        ora     #$46
        ora     #$49
        ora     #$48
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$44
        sty     $46
        ora     #$00
        ora     #$44
        ora     #$00
        ora     #$44
        ora     #$00
        ora     #$46
        ora     #$44
        ora     #$43
        ora     #$44
        ora     #$41
        .byte   $04
        brk
        .byte   $04
        bmi     LA3D4
        brk
        .byte   $04
        pha
        .byte   $07
LA3D4:  pha
        .byte   $07
        pha
        .byte   $07
        eor     #$87
        pha
        .byte   $07
        pha
        .byte   $07
        .byte   $4B
        .byte   $87
        pha
        .byte   $07
        pha
        .byte   $07
        jmp     L4887

        .byte   $07
        pha
        .byte   $07
        eor     L4C07
        .byte   $07
        .byte   $4B
        .byte   $07
        eor     #$07
        .byte   $4B
        .byte   $07
        eor     #$07
        pha
        .byte   $07
        lsr     $07
        .byte   $44
        .byte   $07
        .byte   $43
        .byte   $07
        .byte   $44
        .byte   $07
        rti

        .byte   $07
        eor     ($07,x)
        .byte   $43
        .byte   $07
        .byte   $44
        .byte   $07
        lsr     $07
        pha
        .byte   $07
        eor     #$07
        .byte   $4B
        .byte   $87
        pha
        .byte   $07
        pha
        .byte   $07
        jmp     L4887

        .byte   $07
        pha
        .byte   $07
        eor     #$07
        bvc     LA425
        .byte   $4F
        .byte   $07
        eor     $4B07
        .byte   $07
        .byte   $49
LA425:  .byte   $07
        pha
        .byte   $07
        lsr     $07
        .byte   $44
        .byte   $07
        .byte   $43
        .byte   $07
        .byte   $44
        .byte   $07
        lsr     $07
        pha
        .byte   $07
        lsr     $07
        .byte   $44
        .byte   $07
        .byte   $43
        .byte   $07
        lsr     $07
        .byte   $44
        .byte   $07
        eor     ($07,x)
        .byte   $44
        .byte   $07
        .byte   $43
        .byte   $07
        rti

        .byte   $07
        .byte   $43
        .byte   $07
        rti

        .byte   $07
        eor     ($07,x)
        .byte   $43
        .byte   $07
        .byte   $44
        .byte   $07
        lsr     $07
        pha
        .byte   $07
        eor     #$07
        eor     L4C07
        .byte   $07
        .byte   $4B
        .byte   $07
        eor     #$07
        pha
        .byte   $07
        lsr     $07
        .byte   $44
        .byte   $07
        lsr     $07
        .byte   $44
        .byte   $07
        .byte   $43
        .byte   $07
        .byte   $44
        .byte   $07
        rti

        .byte   $07
        eor     ($07,x)
        .byte   $43
        .byte   $07
        .byte   $44
        .byte   $07
        lsr     $07
        pha
        .byte   $07
        eor     #$07
        eor     $5207
        .byte   $07
        bvc     LA487
        .byte   $4F
        .byte   $07
        eor     $4B07
        .byte   $07
        .byte   $4D
LA487:  .byte   $07
        .byte   $4B
        .byte   $07
        eor     #$07
        pha
        .byte   $07
        lsr     $07
        .byte   $44
        .byte   $07
        lsr     $07
        .byte   $44
        .byte   $07
        .byte   $43
        .byte   $07
        .byte   $44
        .byte   $07
        .byte   $43
        .byte   $07
        eor     ($07,x)
        .byte   $43
        .byte   $87
        rti

        .byte   $07
        rti

        .byte   $07
        .byte   $43
        .byte   $87
        rti

        .byte   $07
        rti

        .byte   $07
        lsr     $87
        .byte   $43
        .byte   $07
        .byte   $43
        .byte   $07
        lsr     $87
        .byte   $43
        .byte   $07
        .byte   $43
        .byte   $07
        eor     #$87
        lsr     $07
        lsr     $07
        eor     #$87
        lsr     $07
        lsr     $07
        jmp     L4987

        .byte   $07
        eor     #$07
        jmp     L4987

        .byte   $07
        eor     #$07
        .byte   $4F
        .byte   $87
        jmp     L4C07

        .byte   $07
        .byte   $4F
        .byte   $87
        jmp     L4C07

        .byte   $07
        eor     a:$04
        .byte   $04
        brk
        .byte   $03
        lsr     $04
        brk
        .byte   $04
        brk
        .byte   $03
        .byte   $44
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $42
        pha
        .byte   $43
        .byte   $44
        .byte   $04
        eor     ($03,x)
        brk
        .byte   $03
        eor     #$43
        lsr     $04
        .byte   $42
        .byte   $03
        brk
        .byte   $03
        pha
        .byte   $43
        .byte   $44
        .byte   $04
        eor     ($04,x)
        brk
        .byte   $04
        eor     ($04,x)
        brk
        .byte   $04
        lsr     $43
        .byte   $43
        .byte   $04
        rti

        .byte   $04
        .byte   $43
        .byte   $04
        lsr     $04
        .byte   $43
        .byte   $04
        pha
        .byte   $43
        .byte   $44
        .byte   $04
        eor     ($04,x)
        brk
        .byte   $04
        eor     ($04,x)
        brk
        .byte   $04
        eor     #$43
        lsr     $04
        .byte   $42
        .byte   $04
        lsr     $04
        eor     #$04
        lsr     $04
        pha
        .byte   $04
        .byte   $44
        .byte   $04
        eor     ($04,x)
        .byte   $44
        .byte   $04
        rti

        .byte   $04
        .byte   $43
        .byte   $04
        lsr     $04
        .byte   $43
        .byte   $04
        eor     ($04,x)
        .byte   $44
        .byte   $04
        pha
        .byte   $04
        .byte   $44
        .byte   $04
        lsr     $04
        .byte   $43
        .byte   $04
        rti

        .byte   $04
        .byte   $43
        .byte   $04
        pha
        .byte   $04
        .byte   $44
        .byte   $04
        eor     ($04,x)
        .byte   $44
        .byte   $04
        rti

        .byte   $04
        .byte   $43
        .byte   $04
        lsr     $04
        rti

        .byte   $04
        eor     ($04,x)
        brk
        .byte   $04
        brk
        .byte   $03
        pha
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $03
        eor     a:$04
        .byte   $04
        brk
        .byte   $42
        sta     $61AA,y
        brk
        brk
        .byte   $80
        .byte   $80
        bit     $0382
        stx     a:$02
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        and     a:$04,x
        .byte   $04
        and     a:$04,x
        .byte   $04
        .byte   $3A
        .byte   $04
        brk
        .byte   $04
        .byte   $3A
        .byte   $04
        sec
        .byte   $04
        brk
        .byte   $04
        bit     a:$04
        .byte   $04
        .byte   $8F
        brk
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        and     a:$04,x
        .byte   $04
        and     a:$04,x
        .byte   $04
        and     a:$04,x
        .byte   $04
        and     a:$04,x
        .byte   $04
        .byte   $3A
        .byte   $04
        brk
        .byte   $04
        .byte   $3A
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        and     a:$04,x
        .byte   $04
        and     a:$04,x
        .byte   $04
        .byte   $3A
        .byte   $04
        brk
        .byte   $04
        .byte   $3A
        .byte   $04
        sec
        .byte   $04
        brk
        .byte   $04
        bit     a:$04
        .byte   $04
        stx     a:$02
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3A
        .byte   $04
        brk
        .byte   $04
        .byte   $3A
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3A
        .byte   $04
        brk
        .byte   $04
        .byte   $3A
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        bit     a:$04
        .byte   $04
        .byte   $8F
        brk
        stx     a:$02
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        and     a:$04,x
        .byte   $04
        and     a:$04,x
        .byte   $04
        .byte   $3A
        .byte   $04
        brk
        .byte   $04
        .byte   $3A
        .byte   $04
        sec
        .byte   $04
        brk
        .byte   $04
        bit     a:$04
        .byte   $04
        .byte   $8F
        brk
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        and     a:$04,x
        .byte   $04
        and     a:$04,x
        .byte   $04
        and     a:$04,x
        .byte   $04
        and     a:$04,x
        .byte   $04
        .byte   $3A
        .byte   $04
        brk
        .byte   $04
        .byte   $3A
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        and     a:$04,x
        .byte   $04
        and     a:$04,x
        .byte   $04
        .byte   $3A
        .byte   $04
        brk
        .byte   $04
        .byte   $3A
        .byte   $04
        sec
        .byte   $04
        brk
        .byte   $04
        bit     a:$04
        .byte   $04
        brk
        ora     ($8E,x)
        .byte   $03
        bit     a:$04
        .byte   $04
        bit     a:$04
        .byte   $04
        bit     a:$04
        .byte   $04
        rol     a:$04
        .byte   $04
        .byte   $8F
        brk
        bit     a:$04
        .byte   $04
        brk
        .byte   $42
        bit     a:$04
        .byte   $04
        bit     a:$04
        .byte   $04
        bit     a:$04
        .byte   $04
        rol     a:$04
        .byte   $04
        bit     a:$04
        .byte   $04
        bit     a:$04
        .byte   $04
        bit     a:$04
        .byte   $04
        bit     a:$04
        .byte   $04
        rol     a:$04
        .byte   $04
        rol     a:$04
        .byte   $04
        rol     a:$04
        .byte   $04
        rol     a:$04
        .byte   $04
        bit     a:$04
        .byte   $04
        bit     a:$04
        .byte   $04
        rol     a:$04
        .byte   $04
        brk
        .byte   $03
        and     ($04),y
        brk
        .byte   $04
        brk
        .byte   $03
        .byte   $34
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $03
        .byte   $37
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $03
        .byte   $3A
        .byte   $87
        .byte   $37
        .byte   $07
        .byte   $37
        .byte   $07
        .byte   $3A
        .byte   $87
        .byte   $37
        .byte   $07
        .byte   $37
        .byte   $07
        sec
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $03
        .byte   $34
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $03
        and     $04,x
        brk
        .byte   $04
        brk
        .byte   $42
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        and     a:$04,x
        .byte   $04
        and     a:$04,x
        .byte   $04
        and     a:$04,x
        .byte   $04
        and     a:$04,x
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3A
        .byte   $04
        brk
        .byte   $04
        .byte   $3A
        .byte   $04
        brk
        .byte   $04
        .byte   $3A
        .byte   $04
        brk
        .byte   $04
        .byte   $3A
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
LA75F:  .byte   $04
        and     a:$04,x
        .byte   $04
        and     a:$04,x
        .byte   $04
        and     a:$04,x
        .byte   $04
        and     L8E04,x
        .byte   $03
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3A
        .byte   $04
        brk
        .byte   $04
        .byte   $3A
        .byte   $04
        .byte   $8F
        brk
        sec
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $03
        .byte   $3A
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $03
        sec
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $42
        sta     $6578,y
        brk
        brk
        .byte   $80
        .byte   $80
        bit     $0382
        stx     $2902
        .byte   $04
        sec
        .byte   $04
        bit     $04
        sec
        .byte   $04
        .byte   $2B
        .byte   $04
        .byte   $3A
        .byte   $04
        and     $04
        .byte   $3A
        .byte   $04
        bit     $04
        .byte   $34
        .byte   $04
        .byte   $1F
        .byte   $04
        .byte   $34
        .byte   $04
        and     #$04
        brk
        .byte   $04
        and     #$04
        brk
        .byte   $04
        .byte   $8F
        brk
        and     #$04
        sec
        .byte   $04
        bit     $04
        sec
        .byte   $04
        .byte   $22
        .byte   $04
        .byte   $3A
        .byte   $04
        and     #$04
        .byte   $3A
        .byte   $04
        .byte   $2B
        .byte   $04
        .byte   $3A
        .byte   $04
        and     $04
        .byte   $3A
        .byte   $04
        bit     $04
        .byte   $34
        .byte   $04
        .byte   $1F
        .byte   $04
        .byte   $34
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     $04
        sec
        .byte   $04
        .byte   $2B
        .byte   $04
        .byte   $3A
        .byte   $04
        and     $04
        .byte   $3A
        .byte   $04
        bit     $04
        .byte   $34
        .byte   $04
        .byte   $1F
        .byte   $04
        .byte   $34
        .byte   $04
        and     #$04
        brk
        .byte   $04
        and     #$04
        brk
        .byte   $04
        stx     $2902
        .byte   $04
        sec
        .byte   $04
        bit     $04
        sec
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     $04
        sec
        .byte   $04
        bit     $04
        .byte   $34
        .byte   $04
        .byte   $1F
        .byte   $04
        .byte   $34
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     $04
        sec
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     $04
        sec
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     $04
        sec
        .byte   $04
        bit     $04
        .byte   $34
        .byte   $04
        .byte   $1F
        .byte   $04
        .byte   $34
        .byte   $04
        and     #$04
        brk
        .byte   $04
        and     #$04
        brk
        .byte   $04
        .byte   $8F
        brk
        stx     $2902
        .byte   $04
        sec
        .byte   $04
        bit     $04
        sec
        .byte   $04
        .byte   $2B
        .byte   $04
        .byte   $3A
        .byte   $04
        and     $04
        .byte   $3A
        .byte   $04
        bit     $04
        .byte   $34
        .byte   $04
        .byte   $1F
        .byte   $04
        .byte   $34
        .byte   $04
        and     #$04
        brk
        .byte   $04
        and     #$04
        brk
        .byte   $04
        .byte   $8F
        brk
        and     #$04
        sec
        .byte   $04
        bit     $04
        sec
        .byte   $04
        .byte   $22
        .byte   $04
        .byte   $3A
        .byte   $04
        and     #$04
        .byte   $3A
        .byte   $04
        .byte   $2B
        .byte   $04
        .byte   $3A
        .byte   $04
        and     $04
        .byte   $3A
        .byte   $04
        bit     $04
        .byte   $34
        .byte   $04
        .byte   $1F
        .byte   $04
        .byte   $34
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     $04
        sec
        .byte   $04
        .byte   $2B
        .byte   $04
        .byte   $3A
        .byte   $04
        and     $04
        .byte   $3A
        .byte   $04
        bit     $04
        .byte   $34
        .byte   $04
        .byte   $1F
        .byte   $04
        .byte   $34
        .byte   $04
        and     #$04
        brk
        .byte   $04
        and     #$04
        brk
        .byte   $04
        brk
        ora     ($8E,x)
        .byte   $03
        and     #$04
        brk
        .byte   $04
        and     #$04
        brk
        .byte   $04
        and     #$04
        brk
        .byte   $04
        plp
        .byte   $04
        brk
        .byte   $04
        .byte   $8F
        brk
        and     #$04
        brk
        .byte   $04
        brk
        .byte   $42
        and     #$04
        brk
        .byte   $04
        and     #$04
        brk
        .byte   $04
        and     #$04
        brk
        .byte   $04
        plp
        .byte   $04
        brk
        .byte   $04
        and     #$04
        brk
        .byte   $04
        and     #$04
        brk
        .byte   $04
        and     #$04
        brk
        .byte   $04
        and     #$04
        brk
        .byte   $04
        and     #$04
        brk
        .byte   $04
        and     #$04
        brk
        .byte   $04
        and     #$04
        brk
        .byte   $04
        and     #$04
        brk
        .byte   $04
        and     #$04
        brk
        .byte   $04
        and     #$04
        brk
        .byte   $04
        plp
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $04
        rol     a:$04
        .byte   $04
        brk
        .byte   $03
        and     ($04),y
        brk
        .byte   $04
        brk
        .byte   $03
        .byte   $34
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $42
        and     $04,x
        brk
        .byte   $04
        brk
        .byte   $03
        bmi     LA924
        brk
        .byte   $04
        brk
        .byte   $03
LA924:  and     #$04
        brk
        .byte   $04
        brk
        .byte   $42
        and     #$04
        sec
        .byte   $04
        bit     $04
        sec
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     $04
        sec
        .byte   $04
        rol     a
        .byte   $04
        .byte   $3A
        .byte   $04
        and     $04
        .byte   $3A
        .byte   $04
        rol     a
        .byte   $04
        .byte   $3A
        .byte   $04
        and     $04
        .byte   $3A
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     $04
        sec
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     $04
        sec
        .byte   $04
        bit     $04
        .byte   $34
        .byte   $04
        .byte   $1F
        .byte   $04
        .byte   $34
        .byte   $04
        bit     $04
        .byte   $34
        .byte   $04
        .byte   $1F
        .byte   $04
        .byte   $34
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     $04
        sec
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     $04
        sec
        .byte   $04
        rol     a
        .byte   $04
        .byte   $3A
        .byte   $04
        and     $04
        .byte   $3A
        .byte   $04
        rol     a
        .byte   $04
        .byte   $3A
        .byte   $04
        and     $04
        .byte   $3A
        .byte   $04
        stx     $2903
        .byte   $04
        sec
        .byte   $04
        bit     $04
        sec
        .byte   $04
        bit     $04
        .byte   $34
        .byte   $04
        .byte   $1F
        .byte   $04
        .byte   $34
        .byte   $04
        .byte   $8F
        brk
        and     #$04
        brk
        .byte   $04
        brk
        .byte   $03
        plp
        .byte   $04
        brk
        .byte   $04
        brk
        .byte   $03
        and     #$04
        brk
        .byte   $04
        brk
        .byte   $03
        ora     a:$03,x
        .byte   $03
        sta     $679E,y
        brk
        brk
        .byte   $82
        .byte   $07
        .byte   $80
        brk
        .byte   $32
        brk
        ora     #$30
        .byte   $07
        and     $17,x
        .byte   $37
        .byte   $17
        .byte   $3C
        .byte   $03
        and     $07,x
        .byte   $3A
        .byte   $17
        and     $3E17,y
        .byte   $03
        sta     (L0000,x)
        inc     $173A,x
        rol     $3C17,x
        .byte   $17
        sta     (L0000,x)
        sbc     $1740,x
        rol     L8117,x
        brk
        sbc     $173C,x
        eor     ($03,x)
        brk
        .byte   $02
        brk
        brk
        .byte   $82
        .byte   $07
        .byte   $80
        brk
        .byte   $32
        brk
        ora     #$00
        .byte   $03
        and     $03,y
        .byte   $03
        .byte   $3A
        .byte   $03
        sta     (L0000,x)
        inc     $1737,x
        .byte   $3A
        .byte   $17
        and     L8117,y
        brk
        sbc     $173C,x
        .byte   $3A
        .byte   $17
        sta     (L0000,x)
        sbc     $1737,x
        and     $03,y
        .byte   $02
        brk
        brk
        .byte   $82
        .byte   $07
        .byte   $80
        brk
        .byte   $32
        brk
        ora     #$00
        .byte   $03
        and     #$03
        brk
        .byte   $03
        .byte   $2B
        .byte   $03
        sta     (L0000,x)
        inc     $1700,x
        brk
        .byte   $17
        brk
        .byte   $17
        sta     (L0000,x)
        sbc     $1730,x
        .byte   $32
        .byte   $17
        sta     (L0000,x)
        sbc     $1734,x
        and     $03,x
        brk
        .byte   $02
        brk
        brk
        .byte   $82
        .byte   $07
        .byte   $80
        .byte   $80
        and     #$4B
        .byte   $07
        eor     $4B07
        .byte   $07
        eor     #$07
        .byte   $4B
        .byte   $07
        eor     #$07
        pha
        .byte   $07
        eor     #$07
        pha
        .byte   $07
        lsr     $07
        pha
        .byte   $07
        .byte   $43
        .byte   $07
        .byte   $44
        .byte   $13
        brk
        .byte   $43
        brk
        brk
        .byte   $82
        .byte   $07
        .byte   $80
        .byte   $80
        and     #$48
        .byte   $07
        eor     #$07
        pha
        .byte   $07
        lsr     $07
        pha
        .byte   $07
        lsr     $07
        .byte   $44
        .byte   $07
        lsr     $07
        .byte   $44
        .byte   $07
        .byte   $43
        .byte   $07
        .byte   $44
        .byte   $07
        .byte   $3F
        .byte   $07
        .byte   $3C
        .byte   $13
        brk
        brk
        .byte   $80
        .byte   $80
        and     #$82
        .byte   $07
        bit     $2B13
        .byte   $13
        and     #$13
LAA8E:  .byte   $27
        .byte   $13
        bit     L2013
        .byte   $13
        brk
        .byte   $04
        brk
        brk
        .byte   $80
        pha
        and     ($82,x)
        .byte   $03
        and     $3C19,y
        ora     $08A4,y
        .byte   $07
        eor     ($14,x)
        rti

        ora     $1943,y
        lsr     $17
        .byte   $43
        .byte   $17
        lsr     $17
        lsr     a
        .byte   $17
        eor     $17
        pha
        .byte   $17
        jmp     L4617

        .byte   $17
        lsr     a
        .byte   $17
        eor     a:$02
        brk
        .byte   $80
        pha
        and     (L0000,x)
        .byte   $04
        .byte   $82
        .byte   $03
        ldy     $08
        .byte   $07
        and     $3C14,y
        ora     $1940,y
        .byte   $43
        .byte   $17
        rti

        .byte   $17
        .byte   $3C
        .byte   $17
        lsr     $17
        eor     ($17,x)
        rol     $3C17,x
        .byte   $17
        rti

        .byte   $17
        .byte   $43
        .byte   $17
        eor     $02
        brk
        brk
        .byte   $80
        pha
        and     (L0000,x)
        .byte   $04
        .byte   $82
        .byte   $03
        ldy     $08
        .byte   $07
        and     ($14,x)
        bit     $19
        plp
        ora     $171C,y
        .byte   $1F
        stx     $1F
        .byte   $17
        and     ($86,x)
        and     ($17,x)
        .byte   $22
        .byte   $17
        bit     $17
        and     #$02
        brk
        brk
        .byte   $80
        .byte   $80
        and     #$00
        asl     a
        .byte   $82
        .byte   $07
        .byte   $80
        .byte   $80
        and     #$48
        .byte   $14
        pha
        .byte   $13
        pha
        .byte   $04
        lsr     $06
        pha
        .byte   $07
        lsr     $04
        .byte   $43
        .byte   $14
        .byte   $44
        .byte   $14
        .byte   $44
        .byte   $13
        .byte   $44
        .byte   $04
        .byte   $43
        asl     $44
        .byte   $07
        .byte   $43
        .byte   $04
        rti

        .byte   $14
        eor     ($14,x)
        eor     ($13,x)
        eor     ($04,x)
        .byte   $43
        asl     $44
        .byte   $07
        lsr     $04
        .byte   $43
        .byte   $14
        .byte   $44
        .byte   $14
        .byte   $44
        .byte   $13
        .byte   $44
        .byte   $04
        lsr     $06
        pha
        .byte   $07
        eor     #$04
        lsr     $14
        pha
        .byte   $14
        pha
        .byte   $13
        pha
        .byte   $04
        eor     #$06
        pha
        .byte   $07
        lsr     $04
        eor     #$14
        lsr     $14
        lsr     $13
        lsr     $04
        pha
        asl     $46
        .byte   $07
        .byte   $44
        .byte   $04
        rti

        .byte   $14
        eor     ($14,x)
        eor     ($13,x)
        eor     ($84,x)
        .byte   $43
        .byte   $14
        .byte   $43
        .byte   $13
        .byte   $43
        sty     $44
        .byte   $14
        .byte   $44
        .byte   $13
        .byte   $44
        sty     $46
        .byte   $14
        lsr     $13
        lsr     $84
        pha
        .byte   $14
        pha
        .byte   $13
        pha
        sty     $46
        .byte   $14
        lsr     $13
        .byte   $43
        sty     $44
        .byte   $14
        .byte   $44
        .byte   $13
        .byte   $44
        sty     $43
        .byte   $14
        .byte   $43
        .byte   $13
        rti

        sty     $41
        .byte   $13
        brk
        .byte   $03
        .byte   $44
        .byte   $07
        .byte   $43
        .byte   $07
        eor     ($07,x)
        rti

        .byte   $07
        and     $3C07,x
        .byte   $07
        eor     a:$04
        .byte   $04
        brk
        brk
        .byte   $82
        .byte   $07
        .byte   $80
        .byte   $80
        and     #$00
        .byte   $04
        .byte   $3C
        .byte   $14
        brk
        .byte   $04
        .byte   $3C
        .byte   $14
        brk
        .byte   $04
        .byte   $3C
        .byte   $14
        brk
        .byte   $04
        .byte   $3C
        .byte   $14
        brk
        .byte   $04
        and     a:$14,x
        .byte   $04
        and     a:$14,x
        .byte   $04
        .byte   $3C
        .byte   $14
        brk
        .byte   $04
        .byte   $3C
        .byte   $14
        brk
        .byte   $04
        .byte   $3C
        .byte   $14
        brk
        .byte   $04
        .byte   $3C
        .byte   $14
        brk
        .byte   $04
        and     a:$14,x
        .byte   $04
        and     a:$14,x
        .byte   $04
        .byte   $3F
        .byte   $14
        brk
        .byte   $04
        .byte   $3F
        .byte   $14
        brk
        .byte   $04
        eor     ($14,x)
        brk
        .byte   $04
        eor     ($14,x)
        brk
        .byte   $04
        .byte   $3C
        .byte   $14
        brk
        .byte   $04
        .byte   $3C
        .byte   $14
        brk
        .byte   $04
        eor     ($14,x)
        brk
        .byte   $04
        eor     ($14,x)
        brk
        .byte   $04
        and     a:$14,x
        .byte   $04
        and     a:$14,x
        .byte   $04
        .byte   $3C
        .byte   $14
        brk
        .byte   $04
        .byte   $3C
        .byte   $14
        brk
        .byte   $04
        .byte   $3C
        .byte   $14
        brk
        .byte   $04
        .byte   $3C
        .byte   $14
        brk
        .byte   $04
        and     a:$14,x
        .byte   $04
        and     a:$14,x
        .byte   $04
        .byte   $3F
        .byte   $14
        brk
        .byte   $04
        .byte   $3F
        .byte   $14
        brk
        .byte   $04
        eor     ($14,x)
        brk
        .byte   $04
        eor     ($14,x)
        brk
        .byte   $04
        .byte   $3C
        .byte   $14
        brk
        .byte   $04
        .byte   $3C
        .byte   $14
        brk
        .byte   $04
        eor     ($14,x)
        brk
        .byte   $04
        eor     ($14,x)
        brk
        .byte   $04
        and     a:$14,x
        .byte   $04
        and     a:$14,x
        .byte   $04
        .byte   $3C
        .byte   $14
        brk
        .byte   $04
        .byte   $3C
        .byte   $14
        brk
        .byte   $02
        pha
        .byte   $07
        lsr     $07
        .byte   $44
        .byte   $07
        .byte   $43
        .byte   $07
        eor     ($07,x)
        rti

        .byte   $07
        brk
        .byte   $03
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        brk
        brk
        .byte   $82
        .byte   $07
        .byte   $80
        .byte   $80
LAC6B:  and     #$29
        .byte   $04
        sec
        .byte   $14
        bit     $04
        sec
        .byte   $14
        and     #$04
        sec
        .byte   $14
        bit     $04
        sec
        .byte   $14
        .byte   $2B
        .byte   $04
        .byte   $3A
        .byte   $14
        and     $04
        .byte   $3A
        .byte   $14
        plp
        .byte   $04
        .byte   $3A
        .byte   $14
        bit     $04
        .byte   $3A
        .byte   $14
        and     #$04
        sec
        .byte   $14
        bit     $04
        sec
        .byte   $14
        .byte   $2B
        .byte   $04
        .byte   $3A
        .byte   $14
        and     $04
        .byte   $3A
        .byte   $14
        bit     $3C04
        .byte   $14
        .byte   $27
        .byte   $04
        .byte   $3C
        .byte   $14
        rol     $3D04
        .byte   $14
        and     #$04
        and     $2914,x
        .byte   $04
        sec
        .byte   $14
        bit     $04
        sec
        .byte   $14
        .byte   $22
        .byte   $04
        and     $2914,x
        .byte   $04
        and     $2B14,x
        .byte   $04
        .byte   $3A
        .byte   $14
        and     $04
        .byte   $3A
        .byte   $14
        plp
        .byte   $04
        .byte   $3A
        .byte   $14
        bit     $04
        .byte   $3A
        .byte   $14
        and     #$04
        sec
        .byte   $14
        bit     $04
        sec
        .byte   $14
        .byte   $2B
        .byte   $04
        .byte   $3A
        .byte   $14
        and     $04
        .byte   $3A
        .byte   $14
        bit     $3C04
        .byte   $14
        .byte   $27
        .byte   $04
        .byte   $3C
        .byte   $14
        rol     $3D04
        .byte   $14
        and     #$04
        and     $2914,x
        .byte   $04
        sec
        .byte   $14
        bit     $04
        sec
        .byte   $14
        .byte   $22
        .byte   $04
        and     $2914,x
        .byte   $04
        and     $2B14,x
        .byte   $04
        .byte   $3A
        .byte   $14
        and     $04
        .byte   $3A
        .byte   $14
        plp
        .byte   $04
        .byte   $3A
        .byte   $14
        bit     $04
        .byte   $3A
        .byte   $14
        and     #$07
        .byte   $2B
        .byte   $07
        bit     $2E07
        .byte   $07
        bmi     LAD1D
        and     ($07),y
        .byte   $34
        .byte   $07
        and     $07,x
        .byte   $37
LAD1D:  .byte   $07
        sec
        .byte   $07
        .byte   $3A
        .byte   $07
        .byte   $3C
        .byte   $07
        brk
        .byte   $02
        and     #$04
        brk
        .byte   $04
        brk
        brk
        .byte   $80
        .byte   $14
        rol     $0382
        ldy     $10
        ora     $46
        .byte   $14
        lsr     $14
        lsr     $14
        lsr     $09
        lsr     $09
        lsr     $14
        lsr     $14
        lsr     $14
        lsr     $09
        lsr     $09
        lsr     $14
        lsr     $14
        lsr     $14
        lsr     $09
        lsr     $09
        lsr     $14
        lsr     $14
        lsr     $14
        lsr     $09
        lsr     $09
        .byte   $47
        ldy     $46
        .byte   $14
        lsr     $14
        lsr     $14
        lsr     $14
        lsr     $14
        lsr     $14
        lsr     $09
        lsr     $09
        .byte   $47
        ldy     $46
        .byte   $14
        lsr     $14
        lsr     $14
        .byte   $47
        ldy     $46
        .byte   $14
        .byte   $47
        ldy     $46
        .byte   $14
        .byte   $47
        ldy     $46
        .byte   $14
        .byte   $47
        ldy     $46
        .byte   $14
        lsr     $84
        .byte   $44
        .byte   $14
        .byte   $42
        .byte   $14
        eor     ($14,x)
        .byte   $3F
        .byte   $13
        .byte   $4B
        .byte   $03
        lsr     $02
        lsr     $84
        .byte   $44
        .byte   $14
        .byte   $42
        .byte   $14
        eor     ($14,x)
        .byte   $3F
        .byte   $14
        .byte   $82
        ora     $46
        .byte   $14
        lsr     $14
        lsr     $14
        ldy     $10
        .byte   $03
        .byte   $47
        ora     #$46
        ora     #$46
        .byte   $04
        .byte   $47
        ora     #$46
        ora     #$46
        .byte   $04
        .byte   $47
        ora     #$46
        ora     #$46
        .byte   $04
        .byte   $47
        ora     #$46
        ora     #$46
        .byte   $04
        lsr     a
        .byte   $42
        lsr     $03
        .byte   $4B
        .byte   $04
        lsr     a
        .byte   $04
        .byte   $4B
        .byte   $04
        lsr     a
        .byte   $04
        .byte   $4B
        .byte   $04
        lsr     a
        .byte   $04
        .byte   $4B
        .byte   $04
        lsr     a
        .byte   $04
        .byte   $4B
        .byte   $13
        lsr     $13
        .byte   $3F
        .byte   $13
        brk
        brk
        .byte   $80
        .byte   $14
        rol     $0382
        ldy     $10
        ora     L0000
        .byte   $02
        .byte   $42
        .byte   $14
        .byte   $42
        .byte   $14
        .byte   $42
        .byte   $14
        .byte   $42
        ora     #$42
        ora     #$3F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        ora     #$3F
        ora     #$3F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        ora     #$3F
        ora     #$38
        ldy     $36
        .byte   $14
        rol     $14,x
        rol     $14,x
        rol     $14,x
        rol     $14,x
        rol     $14,x
        rol     $09,x
        rol     $09,x
        sec
        ldy     $36
        .byte   $14
        rol     $14,x
        rol     $14,x
        sec
        ldy     $36
        .byte   $14
        sec
        ldy     $36
        .byte   $14
        sec
        ldy     $36
        .byte   $14
        sec
        ldy     $36
        .byte   $14
        .byte   $33
        sty     $35
        .byte   $14
        rol     $14,x
        sec
        .byte   $14
        .byte   $3A
        .byte   $13
        .byte   $3B
        .byte   $03
        rol     $3602,x
        sty     $35
        .byte   $14
        .byte   $3B
        .byte   $04
        sec
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $82
        ora     $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        ldy     $10
        .byte   $03
        rol     $3F09,x
        ora     #$3F
        .byte   $14
        rol     $3F09,x
        ora     #$3F
        .byte   $14
        rol     $3F09,x
        ora     #$3F
        .byte   $14
        rol     $3F09,x
        ora     #$3F
        .byte   $14
        .byte   $82
        ora     #$8E
        php
        .byte   $3B
        ora     #$3E
        ora     #$8F
        brk
        .byte   $82
        ora     $0444
        eor     ($04,x)
        .byte   $42
        .byte   $04
        .byte   $44
        .byte   $04
        .byte   $3F
        .byte   $04
        .byte   $3B
        .byte   $04
        .byte   $3A
        .byte   $04
        rol     $04,x
        and     $13,x
        rol     $3613,x
        .byte   $13
        brk
        brk
        .byte   $80
        .byte   $14
        rol     $0382
        ldy     $10
        ora     L0000
        ora     (L0000,x)
        .byte   $02
        rol     $14,x
        rol     $14,x
        rol     $14,x
        rol     $09,x
        rol     $09,x
        .byte   $82
        ora     $0432
        .byte   $33
        .byte   $04
        rol     a
        .byte   $04
        rol     $2704
        .byte   $04
        rol     a
        .byte   $04
        rol     $3304
        .byte   $04
        .byte   $32
        .byte   $04
        .byte   $27
        .byte   $04
        rol     a
        .byte   $04
        .byte   $27
        .byte   $04
        .byte   $32
        .byte   $04
        .byte   $27
        .byte   $04
        .byte   $32
        .byte   $04
        .byte   $27
        .byte   $04
        rol     $04
        .byte   $27
        .byte   $04
        and     #$04
        rol     a
        .byte   $04
        rol     a
        .byte   $04
        .byte   $2F
        .byte   $04
        rol     $2604
        .byte   $04
        .byte   $27
        .byte   $13
        brk
        .byte   $43
        .byte   $27
        .byte   $04
        and     #$04
        rol     a
        .byte   $04
        bit     $2E04
        .byte   $04
        .byte   $2F
        .byte   $04
        .byte   $32
        .byte   $04
        .byte   $33
        .byte   $04
        brk
        .byte   $43
        .byte   $22
        .byte   $04
        .byte   $23
        .byte   $04
        rol     $04
        .byte   $27
        .byte   $04
        and     #$04
        rol     a
        .byte   $04
        bit     $2E04
        .byte   $04
        .byte   $32
        .byte   $04
        .byte   $33
        .byte   $04
        and     $04,x
        rol     $04,x
        sec
        .byte   $04
        .byte   $3A
        .byte   $04
        .byte   $3B
        .byte   $04
        rol     $2F04,x
        .byte   $04
        bit     $2E04
        .byte   $04
        and     #$04
        rol     a
        .byte   $04
        rol     $04
        .byte   $27
        .byte   $04
        .byte   $23
        .byte   $04
        .byte   $22
        .byte   $13
        .byte   $22
        .byte   $13
        .byte   $27
        .byte   $13
        brk
        brk
        .byte   $80
        .byte   $14
        rol     $0D82
        .byte   $3F
        .byte   $14
        .byte   $3F
        ora     #$3F
        ora     #$3F
        .byte   $14
        .byte   $3F
        .byte   $14
        rol     $3F84,x
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        ora     #$3F
        ora     #$3F
        .byte   $14
        .byte   $3F
        .byte   $14
        rol     $3F84,x
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $42
        sty     $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        ora     #$3F
        ora     #$3E
        sty     $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        ora     #$3F
        ora     #$44
        sty     $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        ora     #$3F
        ora     #$46
        sty     $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        ora     #$3F
        ora     #$47
        sty     $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        lsr     $09
        lsr     a
        ora     #$82
        .byte   $0F
        .byte   $4B
        .byte   $14
        lsr     a
        .byte   $14
        .byte   $47
        .byte   $14
        .byte   $44
        .byte   $14
        lsr     $14
        .byte   $42
        .byte   $14
        eor     ($14,x)
        rol     $3F14,x
        .byte   $13
        .byte   $42
        .byte   $13
        lsr     $13
        lsr     a
        .byte   $13
        .byte   $4B
        .byte   $13
        brk
        .byte   $44
        .byte   $3F
        ora     #$3F
        .byte   $03
        brk
        brk
        .byte   $80
        .byte   $14
        rol     $0D82
        .byte   $3A
        .byte   $14
        .byte   $3A
        ora     #$3A
        ora     #$3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3B
        sty     $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        ora     #$3A
        ora     #$3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3B
        sty     $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3B
        sty     $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        ora     #$3A
        ora     #$3B
        sty     $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        ora     #$3A
        ora     #$3E
        sty     $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        ora     #$3A
        ora     #$38
        sty     $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        ora     #$3A
        ora     #$38
        sty     $3A
        .byte   $14
        .byte   $3B
        .byte   $14
        eor     ($09,x)
        .byte   $44
        ora     #$82
        .byte   $0F
        lsr     $14
LB002:  .byte   $44
        .byte   $14
        .byte   $42
        .byte   $14
        eor     ($14,x)
        .byte   $42
        .byte   $14
        .byte   $3F
        .byte   $14
        rol     $3B14,x
        .byte   $14
        .byte   $3A
        .byte   $13
        .byte   $3B
        .byte   $13
        rol     $3813,x
        .byte   $13
        .byte   $3A
        .byte   $13
        brk
        .byte   $44
        rol     $09,x
        rol     $03,x
        brk
        brk
        .byte   $80
        .byte   $14
        rol     $0D82
        .byte   $27
        .byte   $13
        rol     a
        sty     $2E
        .byte   $04
        bit     $2E03
        sty     $2C
        .byte   $04
        .byte   $27
        .byte   $13
        rol     a
        sty     $2E
        .byte   $04
        bit     $2E03
        sty     $2C
        .byte   $04
        .byte   $27
        .byte   $13
        rol     a
        sty     $2E
        .byte   $04
        .byte   $2F
        .byte   $13
        rol     $3284
        .byte   $04
        .byte   $2F
        sty     $2E
        .byte   $14
        rol     a
        .byte   $14
        .byte   $27
        .byte   $14
        rol     $84
        .byte   $27
        .byte   $14
        rol     a
        .byte   $14
        rol     $2F14
        sty     $32
        .byte   $14
        .byte   $33
        sty     $35
        .byte   $14
        .byte   $82
        .byte   $0F
        .byte   $27
        .byte   $13
        and     #$13
        rol     a
        .byte   $13
        bit     $3613
        .byte   $13
        .byte   $33
        .byte   $13
        .byte   $32
        .byte   $13
        rol     $2713
        .byte   $13
        brk
        .byte   $44
        rol     $2E09
        .byte   $03
        brk
        brk
        .byte   $80
        .byte   $14
        rol     $0D82
        .byte   $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3B
        .byte   $14
        rol     $3E14,x
        .byte   $14
        .byte   $3B
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        sec
        .byte   $14
        sec
        .byte   $14
        and     $14,x
        and     $14,x
        .byte   $33
        .byte   $14
        .byte   $33
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        rol     $3E14,x
        .byte   $14
        .byte   $3B
        .byte   $14
        .byte   $3B
        .byte   $14
        .byte   $3A
        sty     $3B
        .byte   $14
        .byte   $3A
        .byte   $14
        sec
        .byte   $14
        rol     $84,x
        sec
        .byte   $14
        and     $14,x
        .byte   $32
        .byte   $14
        .byte   $33
        .byte   $14
        .byte   $3F
        .byte   $13
        .byte   $3A
        .byte   $14
        .byte   $3B
        .byte   $14
        rol     $3813,x
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3B
        .byte   $14
        .byte   $3A
        .byte   $14
        sec
        .byte   $14
        rol     $14,x
        sec
        .byte   $14
        rol     $14,x
        and     $14,x
        .byte   $33
        .byte   $14
        .byte   $33
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        sec
        .byte   $14
        sec
        .byte   $14
        .byte   $3B
        .byte   $14
        rol     $3F14,x
        .byte   $03
        brk
        brk
        .byte   $80
        .byte   $14
        rol     $0D82
        brk
        ora     (L0000,x)
        ora     (L0000,x)
        ora     ($36,x)
        sty     $38
        .byte   $14
        rol     $14,x
        and     $14,x
        .byte   $33
        .byte   $14
        and     $14,x
        and     ($14),y
        rol     L8214
        asl     a
        rol     $02,x
        sec
        .byte   $02
        rol     $03,x
        and     $03,x
        .byte   $33
        .byte   $14
        .byte   $33
        .byte   $14
        .byte   $32
        .byte   $14
        .byte   $32
        .byte   $14
        .byte   $82
        ora     $142E
        rol     $3614
        .byte   $14
        rol     $14,x
        and     $14,x
        and     $14,x
        rol     $14,x
        .byte   $3A
        .byte   $14
        rol     $03,x
        brk
        brk
        .byte   $80
        .byte   $14
        rol     $068E
        .byte   $27
        .byte   $13
        and     $2E84
        .byte   $14
        rol     a
        .byte   $04
        .byte   $2F
        .byte   $03
        bit     L8F14
        brk
        rol     a
        .byte   $14
        rol     a
        .byte   $14
        bit     $2C14
        .byte   $14
        .byte   $2F
        .byte   $14
        rol     $2C14
        .byte   $14
        and     #$14
        .byte   $27
        .byte   $03
        brk
        brk
        .byte   $82
        ora     $80
        cpy     #$26
        stx     a:$08
        ora     ($8F,x)
        brk
        stx     $4102
        .byte   $02
        and     $3F02,x
        .byte   $02
        .byte   $3C
        .byte   $02
        and     $3904,x
        .byte   $04
        .byte   $3A
        .byte   $04
        .byte   $3C
        .byte   $04
        and     $3A04,x
        .byte   $04
        .byte   $3C
        .byte   $04
        and     $3F04,x
        .byte   $02
        and     $4102,y
        .byte   $82
        eor     ($04,x)
        .byte   $3A
        .byte   $04
        .byte   $3C
        .byte   $04
        and     $3F04,x
        .byte   $42
        and     $3C04,x
        .byte   $04
        .byte   $3A
        .byte   $02
        and     $3A02,y
        .byte   $02
        .byte   $37
        .byte   $04
        and     $3A04,y
        .byte   $04
        .byte   $3C
        .byte   $04
        .byte   $8F
        brk
        stx     $4602
        .byte   $02
        lsr     $14
        lsr     $14
        eor     $14
        lsr     $14
        pha
        .byte   $43
        eor     $04
        eor     ($02,x)
        eor     #$03
        lsr     $03
        and     $3F03,x
        .byte   $03
        eor     ($42,x)
        brk
        .byte   $03
        lsr     $43
        pha
        .byte   $14
        eor     #$14
        pha
        .byte   $14
        lsr     $14
        eor     ($14,x)
        .byte   $3F
        .byte   $43
        .byte   $42
        .byte   $04
        lsr     $03
        pha
        .byte   $04
        lsr     $14
        eor     ($43,x)
        .byte   $42
        .byte   $04
        eor     ($14,x)
        .byte   $3F
        .byte   $14
        .byte   $3C
        .byte   $14
        and     $3A14,x
        .byte   $42
        brk
        .byte   $04
        eor     ($04,x)
        .byte   $8F
        brk
        lsr     $43
        pha
        .byte   $14
        eor     #$14
        pha
        .byte   $14
        lsr     $14
        eor     ($14,x)
        .byte   $3F
        .byte   $43
        .byte   $42
        .byte   $04
        lsr     $03
        pha
        .byte   $04
        lsr     $14
        eor     ($43,x)
        .byte   $42
        .byte   $04
        eor     ($14,x)
        .byte   $3F
        .byte   $14
        .byte   $3C
        .byte   $14
        and     $3A14,x
        .byte   $42
        brk
        .byte   $03
        sta     $7169,y
        brk
        brk
        .byte   $82
        ora     $80
        cpy     #$26
        stx     a:$08
        ora     ($8F,x)
        brk
        stx     a:$08
        ora     ($8F,x)
        brk
        .byte   $3A
        .byte   $13
        .byte   $3A
        .byte   $13
        .byte   $3A
        .byte   $13
        .byte   $3A
        .byte   $13
        and     $13,x
        and     $13,x
        and     $13,x
        and     $13,x
        .byte   $3A
        .byte   $13
        .byte   $3A
        .byte   $13
        rol     $13,x
        rol     $13,x
        and     $13,x
        and     $13,x
        and     $13,x
        and     $13,x
        .byte   $3A
        .byte   $13
        .byte   $3A
        .byte   $13
        .byte   $3A
        .byte   $13
        .byte   $3A
        .byte   $13
        .byte   $33
        .byte   $13
        .byte   $33
        .byte   $13
        .byte   $33
        .byte   $13
        .byte   $33
        .byte   $13
        and     $13,x
        and     $13,x
        and     $13,x
        and     $13,x
        .byte   $3A
        .byte   $13
        .byte   $3A
        .byte   $13
        .byte   $3A
        .byte   $13
        .byte   $3A
        .byte   $13
        stx     a:$14
        ora     ($8F,x)
        brk
        sta     $7225,y
        brk
        brk
        .byte   $82
        ora     $80
        cpy     #$26
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        and     ($04,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        and     ($04,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        .byte   $22
        .byte   $04
        rol     a
        .byte   $04
        .byte   $27
        .byte   $04
        rol     a
        .byte   $04
        and     ($04,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        and     ($04,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        .byte   $22
        .byte   $04
        rol     a
        .byte   $04
        .byte   $27
        .byte   $04
        rol     a
        .byte   $04
        .byte   $22
        .byte   $04
        rol     a
        .byte   $04
        .byte   $27
        .byte   $04
        rol     a
        .byte   $04
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        and     ($04,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        stx     $2204
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        and     ($04,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        and     ($04,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        .byte   $22
        .byte   $04
        rol     a
        .byte   $04
        .byte   $27
        .byte   $04
        rol     a
        .byte   $04
        and     ($04,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        and     ($04,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        .byte   $22
        .byte   $04
        rol     a
        .byte   $04
        .byte   $27
        .byte   $04
        rol     a
        .byte   $04
        .byte   $22
        .byte   $04
        rol     a
        .byte   $04
        .byte   $27
        .byte   $04
        rol     a
        .byte   $04
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        and     ($04,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        .byte   $8F
        brk
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        .byte   $22
        .byte   $04
        rol     a
        .byte   $04
        .byte   $27
        .byte   $04
        rol     a
        .byte   $04
        .byte   $22
        .byte   $04
        rol     a
        .byte   $04
        .byte   $27
        .byte   $04
        rol     a
        .byte   $04
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        and     ($04,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     $04
        and     #$04
        sta     $72FB,y
        brk
LB3C3:  brk
        .byte   $80
        cpy     #$26
        .byte   $87
        sed
        .byte   $73
        stx     $06
        .byte   $74
        .byte   $9C
        brk
        .byte   $82
        brk
        txa
        .byte   $80
        stx     a:$08
        ora     ($8F,x)
        brk
        stx     a:$10
        ora     ($8F,x)
        brk
        stx     a:$14
        .byte   $04
        ora     ($04,x)
        brk
        .byte   $04
        ora     ($04,x)
        brk
        .byte   $04
        ora     ($04,x)
        brk
        .byte   $04
        ora     ($04,x)
        .byte   $8F
        brk
        sta     $73D9,y
        brk
        brk
        .byte   $02
        bit     $02
        brk
        .byte   $02
        cpx     $02
        .byte   $FC
        .byte   $04
        sed
        .byte   $04
        .byte   $FC
        brk
        brk
        .byte   $02
        .byte   $80
        ora     ($02,x)
        .byte   $90
LB40B:  .byte   $FF
        .byte   $02
        .byte   $D0
LB40E:  .byte   $FF
        .byte   $02
        .byte   $F0
LB411:  .byte   $FF
        .byte   $02
        cpx     #$FF
        .byte   $02
        brk
        brk
        .byte   $02
        cpx     #$FF
        .byte   $02
        .byte   $F0
LB41D:  .byte   $FF
        brk
        brk
        brk
        .byte   $82
        ora     $80
        cpy     #$26
        .byte   $3F
        .byte   $03
        and     $3A02,x
        .byte   $04
        and     $3B04,x
        .byte   $04
        .byte   $3A
        ora     #$38
        ora     #$36
        .byte   $03
        and     ($03),y
        .byte   $3A
        .byte   $04
        and     $3804,x
        .byte   $04
        .byte   $3A
        .byte   $04
        rol     $03,x
        and     ($03),y
        .byte   $33
        .byte   $03
        .byte   $33
        .byte   $04
        and     $04,x
        sec
        .byte   $04
        rol     $04,x
        and     $04,x
        .byte   $33
        .byte   $04
        and     ($03),y
        and     ($03),y
        and     ($03),y
        and     $3A03,x
        .byte   $04
        and     $3B04,x
        .byte   $04
        .byte   $3A
        ora     #$38
        ora     #$36
        .byte   $03
        and     ($03),y
        .byte   $3A
        .byte   $04
        and     $3804,x
        .byte   $04
        .byte   $3A
        .byte   $04
        rol     $03,x
        and     ($03),y
        .byte   $33
        .byte   $03
        .byte   $33
        .byte   $04
        and     $04,x
        sec
        .byte   $04
        rol     $04,x
        and     $04,x
        .byte   $33
        .byte   $04
        and     $3B03,x
        .byte   $03
        .byte   $3A
        ora     ($38,x)
        .byte   $03
        and     $04,x
        rol     $04,x
        sec
        .byte   $03
        and     $04,x
        rol     $04,x
        sec
        .byte   $03
        rol     $04,x
        and     $04,x
        .byte   $33
        .byte   $03
        .byte   $33
        .byte   $04
        .byte   $33
        .byte   $04
        sec
        .byte   $44
        rol     $09,x
        and     $04,x
        rol     $04,x
        sec
        .byte   $03
        and     $04,x
        rol     $04,x
        sec
        .byte   $03
        rol     $04,x
        and     $04,x
        .byte   $33
        .byte   $13
        .byte   $3F
        .byte   $03
        and     L9902,x
        rol     a
        .byte   $74
        brk
        brk
        .byte   $82
        .byte   $03
        .byte   $80
        cpy     #$26
        brk
        .byte   $42
        stx     a:$03
        ora     ($8F,x)
        brk
        brk
        .byte   $04
        sec
        .byte   $04
        brk
        .byte   $04
        sec
        .byte   $04
        sec
        .byte   $03
        brk
        .byte   $03
        stx     a:$03
        ora     ($8F,x)
        brk
        brk
        .byte   $02
        and     $01,x
        .byte   $3B
        .byte   $12
        .byte   $3B
        .byte   $12
        .byte   $3B
        .byte   $12
        .byte   $3A
        .byte   $03
        and     $3D04,x
        .byte   $04
        .byte   $3B
        .byte   $12
        .byte   $3B
        .byte   $12
        .byte   $3B
        .byte   $12
        .byte   $3A
        .byte   $13
        brk
        .byte   $42
        sta     $74C6,y
        brk
        brk
        .byte   $82
        ora     $80
        cpy     #$26
        brk
        .byte   $42
        rol     a
        .byte   $13
        and     $13
        rol     a
        .byte   $13
        rol     a
        .byte   $13
        rol     a
        .byte   $13
        and     $13
        asl     $2213,x
        .byte   $13
        .byte   $23
        .byte   $13
        .byte   $23
        .byte   $13
        jsr     L2013
        .byte   $13
        and     $13
        and     $13
        and     $13
        brk
        .byte   $03
        rol     a
        .byte   $13
        and     $13
        rol     a
        .byte   $13
        rol     a
        .byte   $13
        rol     a
        .byte   $13
        and     $13
        asl     $2213,x
        .byte   $13
        .byte   $23
        .byte   $13
        .byte   $23
        .byte   $13
        bit     $13
        bit     $13
        and     $13
        and     $13
        .byte   $22
        ora     ($22,x)
        .byte   $13
        .byte   $22
        .byte   $04
        rol     $2204
        .byte   $13
        .byte   $22
        .byte   $04
        rol     $2204
        .byte   $13
        rol     $2204
        .byte   $04
        .byte   $27
        .byte   $13
        .byte   $27
        .byte   $13
        .byte   $22
        .byte   $44
        rol     $2209
        .byte   $04
        rol     $2204
        .byte   $03
        .byte   $22
        .byte   $04
        rol     $2204
        .byte   $13
        rol     $2204
        .byte   $04
        .byte   $27
        .byte   $13
        brk
        .byte   $42
        sta     $7504,y
        .byte   $80
        cpy     #$26
        .byte   $87
        sed
        .byte   $73
        stx     $06
        .byte   $74
        .byte   $9C
        brk
        .byte   $82
        brk
        txa
        .byte   $80
        brk
        .byte   $42
        stx     a:$03
        .byte   $04
        ora     ($04,x)
        brk
        .byte   $04
        ora     ($04,x)
        brk
        .byte   $04
        ora     ($04,x)
        brk
        .byte   $04
        ora     ($04,x)
        .byte   $8F
        brk
        brk
        .byte   $04
        ora     ($04,x)
        brk
        .byte   $04
        ora     ($04,x)
        ora     ($04,x)
        brk
        .byte   $43
        stx     L8E02
        .byte   $03
        brk
        .byte   $04
        ora     ($04,x)
        brk
        .byte   $04
        ora     ($04,x)
        brk
        .byte   $04
        ora     ($04,x)
        brk
        .byte   $04
        ora     ($04,x)
        .byte   $8F
        brk
        brk
        .byte   $04
        ora     ($04,x)
        brk
        .byte   $04
        ora     ($04,x)
        ora     ($04,x)
        brk
        .byte   $04
        brk
        .byte   $42
        .byte   $8F
        brk
        sta     $7584,y
        brk
        brk
        .byte   $80
        clv
        asl     $0D82,x
        stx     $4203
        .byte   $14
        .byte   $42
        ora     $0D42
        .byte   $42
        ora     $1742
        .byte   $42
        .byte   $17
        .byte   $42
        .byte   $17
        .byte   $8F
        brk
        .byte   $80
        and     #$1C
        .byte   $42
        .byte   $14
        .byte   $42
        ora     $0D42
        .byte   $42
        ora     L9A80
        ora     $1742,y
        .byte   $44
        .byte   $17
        lsr     $17
        .byte   $47
        .byte   $02
        brk
        brk
        .byte   $80
        clv
        asl     $0D82,x
        brk
        .byte   $02
        stx     $3E02
        .byte   $14
        rol     $3E0D,x
        ora     $0D3E
        rol     $3E17,x
        .byte   $17
        rol     L8F17,x
        brk
        .byte   $80
        and     #$1C
        rol     $3E14,x
        ora     $0D3E
        rol     L800D,x
        txs
        ora     $173E,y
        .byte   $3F
        .byte   $17
        and     $4717,x
        .byte   $02
        brk
        brk
        .byte   $80
        clv
        asl     $0D82,x
        brk
        ora     ($3A,x)
        .byte   $14
        .byte   $3A
        ora     $0D3A
        .byte   $3A
        ora     $173A
        sec
        .byte   $17
        rol     $17,x
        .byte   $80
        and     #$1C
        .byte   $32
        .byte   $14
        .byte   $2F
        ora     $0D2C
        rol     a
        ora     L9A80
        ora     $1728,y
        .byte   $27
        .byte   $17
        and     $17
        .byte   $23
        .byte   $02
        brk
        brk
        .byte   $4B
        lsr     $54
        jsr     L4C4E
        eor     ($20,x)
        .byte   $4B
        eor     $4D
        jsr     L4544
        .byte   $53
        jsr     L4647
        eor     $4520
        .byte   $44
        jsr     L4220
        eor     ($46,x)
        jsr     L4D4A
        .byte   $52
        jsr     L4252
        .byte   $44
        jsr     L4153
        .byte   $53
        jsr     L4D44
        .byte   $53
        jsr     L454A
        .byte   $53
        jsr     L564C
        .byte   $52
        jsr     L454D
        eor     ($20,x)
        eor     ($20,x)
        bvc     LB6B8
        lsr     $20,x
        .byte   $47
        jsr     LF0F1
LB69E:  .byte   $F0
LB69F:  asl     a:L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        rol     $F0F0
        beq     LB69E
        .byte   $F0
LB6AE:  beq     LB6EE
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LB6B8:  lsr     $F0F0
        beq     LB6AE
        .byte   $F0
LB6BE:  .byte   $F0
LB6BF:  lsr     a:L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        ror     $F0F0
        beq     LB6BE
        .byte   $F0
LB6CE:  .byte   $F0
LB6CF:  ror     a:L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        asl     $F0F0,x
        beq     LB6CE
        .byte   $F0
LB6DE:  .byte   $F0
LB6DF:  rol     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        rol     $F0F0,x
        beq     LB6DE
        .byte   $F0
LB6EE:  .byte   $F0
LB6EF:  lsr     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        lsr     $F0F0,x
        beq     LB6EE
        .byte   $F0
LB6FE:  .byte   $F0
LB6FF:  ror     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        ror     $F0F0,x
        beq     LB6FE
        .byte   $F0
LB70E:  beq     LB72E
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        rol     $F0F0
LB71B:  beq     LB70E
        .byte   $F0
LB71E:  .byte   $F0
LB71F:  brk
LB720:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB71B
LB72B:  beq     LB71E
        .byte   $F0
LB72E:  .byte   $F0
LB72F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB72B
LB73B:  beq     LB72E
        .byte   $F0
LB73E:  .byte   $F0
LB73F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB73B
LB74B:  beq     LB73E
        .byte   $F0
LB74E:  .byte   $F0
LB74F:  asl     a:L0000,x
        brk
        rol     a:L0000
        brk
        brk
        brk
        beq     LB74B
LB75B:  beq     LB74E
        .byte   $F0
LB75E:  .byte   $F0
LB75F:  brk
        brk
        rol     a:L0000,x
        brk
        lsr     a:$5E
        brk
        beq     LB75B
LB76B:  beq     LB75E
        .byte   $F0
LB76E:  .byte   $F0
LB76F:  brk
        brk
        brk
        brk
        brk
        ror     a:L0000
        brk
        brk
        beq     LB76B
        .byte   $F0
LB77C:  sbc     ($F0),y
        beq     *+2
        brk
        brk
        ror     a:L0000,x
        brk
        brk
        asl     $F000,x
        .byte   $F0
LB78B:  beq     *-13
        .byte   $F0
LB78E:  .byte   $F0
LB78F:  brk
LB790:  rol     a:L0000
        brk
        brk
        rol     a:L0000,x
        brk
        beq     LB78B
LB79B:  beq     LB78E
        .byte   $F0
LB79E:  .byte   $F0
LB79F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB79B
LB7AB:  beq     LB79E
        .byte   $F0
LB7AE:  .byte   $F0
LB7AF:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB7AB
LB7BB:  beq     LB7AE
        .byte   $F0
LB7BE:  .byte   $F0
LB7BF:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB7BB
LB7CB:  beq     LB7BE
        .byte   $F0
LB7CE:  .byte   $F0
LB7CF:  brk
        brk
        brk
        brk
        asl     a:$2E,x
        brk
        brk
        brk
        beq     LB7CB
LB7DB:  beq     LB7CE
        .byte   $F0
LB7DE:  .byte   $F0
LB7DF:  brk
        brk
        brk
        rol     $5E4E,x
        ror     a:L0000
        brk
        beq     LB7DB
LB7EB:  beq     LB7DE
        .byte   $F0
LB7EE:  .byte   $F0
LB7EF:  brk
        brk
        ror     a:$1E,x
        brk
        rol     a:$3E
        brk
        beq     LB7EB
LB7FB:  beq     LB7EE
        .byte   $F0
LB7FE:  .byte   $F0
LB7FF:  brk
        lsr     a:$5E
        ror     a:$7E
        asl     a:$2E,x
        beq     LB7FB
        beq     LB7FE
        .byte   $F0
LB80E:  .byte   $F0
LB80F:  rol     a:$4E,x
        lsr     $7E6E,x
        asl     $2E00,x
        rol     $F0F0,x
LB81B:  beq     LB80E
        .byte   $F0
LB81E:  .byte   $F0
LB81F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB81B
LB82B:  beq     LB81E
        .byte   $F0
LB82E:  .byte   $F0
LB82F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB82B
LB83B:  beq     LB82E
        .byte   $F0
LB83E:  .byte   $F0
LB83F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB83B
LB84B:  beq     LB83E
        .byte   $F0
LB84E:  .byte   $F0
LB84F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB84B
LB85B:  beq     LB84E
        .byte   $F0
LB85E:  .byte   $F0
LB85F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB85B
LB86B:  beq     LB85E
        .byte   $F0
LB86E:  .byte   $F0
LB86F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $23
        brk
        brk
        beq     LB86B
LB87B:  beq     LB86E
        .byte   $F0
LB87E:  .byte   $F0
LB87F:  .byte   $3A
        and     a:$43,x
        bvs     LB902
        jsr     L0029
        brk
        beq     LB87B
LB88B:  beq     LB87E
        .byte   $F0
LB88E:  .byte   $F0
LB88F:  .byte   $3C
        .byte   $3B
        jmp     L4241

        .byte   $7C
        .byte   $72
        and     $1E
        brk
        beq     LB88B
LB89B:  beq     LB88E
        .byte   $F0
LB89E:  .byte   $F0
LB89F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB89B
LB8AB:  beq     LB89E
        .byte   $F0
LB8AE:  .byte   $F0
LB8AF:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB8AB
LB8BB:  beq     LB8AE
        .byte   $F0
LB8BE:  .byte   $F0
LB8BF:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB8BB
        beq     LB8BE
        .byte   $F0
LB8CE:  .byte   $F0
LB8CF:  asl     a:L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        rol     $F0F0,x
        .byte   $F0
LB8DC:  sbc     ($F0),y
        beq     LB90E
        rol     a:L0000,x
        brk
        brk
        brk
        brk
        lsr     $F07E,x
        .byte   $F0
LB8EB:  beq     *-13
        .byte   $F0
LB8EE:  .byte   $F0
LB8EF:  lsr     $6E5E
        brk
        brk
        brk
        brk
        rol     $6E4E
        beq     LB8EB
        .byte   $F0
LB8FC:  sbc     ($F0),y
        beq     LB97E
        .byte   $1E
        brk
LB902:  brk
        brk
        brk
        brk
        brk
        asl     $F03E,x
        beq     LB8FC
        sbc     ($F0),y
LB90E:  .byte   $F0
LB90F:  rol     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        lsr     $F0F0,x
LB91B:  beq     LB90E
        .byte   $F0
LB91E:  .byte   $F0
LB91F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB91B
LB92B:  beq     LB91E
        .byte   $F0
LB92E:  beq     *+2
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB92B
LB93B:  beq     LB92E
        .byte   $F0
LB93E:  .byte   $F0
LB93F:  brk
LB940:  brk
        brk
        brk
        rol     a:$4E
        brk
        brk
        brk
        beq     LB93B
LB94B:  beq     LB93E
        .byte   $F0
LB94E:  .byte   $F0
LB94F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB94B
LB95B:  beq     LB94E
        .byte   $F0
LB95E:  .byte   $F0
LB95F:  brk
        brk
        ror     a:L0000
        brk
        brk
        asl     a:L0000,x
        beq     LB95B
LB96B:  beq     LB95E
        .byte   $F0
LB96E:  .byte   $F0
LB96F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB96B
LB97B:  beq     LB96E
        .byte   $F0
LB97E:  .byte   $F0
LB97F:  brk
        brk
        brk
        brk
        rol     a:$5E,x
        brk
        brk
        brk
        beq     LB97B
LB98B:  beq     LB97E
        .byte   $F0
LB98E:  .byte   $F0
LB98F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB98B
LB99B:  beq     LB98E
LB99D:  .byte   $F0
LB99E:  .byte   $F0
LB99F:  brk
        brk
LB9A1:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB99B
LB9AB:  beq     LB99E
        .byte   $F0
LB9AE:  .byte   $F0
LB9AF:  brk
        asl     a:L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LB9AB
        .byte   $F0
LB9BC:  sbc     ($F0),y
        beq     LB9DE
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        rol     $F000
        .byte   $F0
LB9CB:  beq     *-13
        .byte   $F0
LB9CE:  .byte   $F0
LB9CF:  brk
LB9D0:  brk
        brk
        brk
        brk
        brk
        brk
        rol     a:L0000
        beq     LB9CB
LB9DB:  beq     LB9CE
        .byte   $F0
LB9DE:  .byte   $F0
LB9DF:  brk
        brk
        brk
        rol     a:L0000,x
        rol     a:L0000
        brk
        beq     LB9DB
        beq     LB9DE
        .byte   $F0
LB9EE:  .byte   $F0
LB9EF:  brk
        brk
        rol     a:L0000,x
        brk
        brk
        brk
        brk
        lsr     $F0F0
        .byte   $F0
LB9FC:  sbc     ($F0),y
        beq     *+2
        rol     a:L0000,x
        brk
        brk
        brk
        brk
        lsr     $F000
        .byte   $F0
LBA0B:  beq     *-13
        beq     *-14
        rol     a:L0000,x
        brk
        brk
        brk
        brk
        lsr     a:L0000
        beq     LBA0B
        beq     LB99D
        .byte   $92
        bvs     LB9A1
        .byte   $03
        .byte   $FF
        .byte   $02
        sbc     L0201,x
        sbc     $FC04,x
        ora     $FC
        .byte   $02
        sbc     $FC04,x
        .byte   $04
        .byte   $FC
        ora     ($05,x)
        brk
        .byte   $FA
        ora     ($01,x)
        .byte   $FF
        ora     ($FF,x)
        .byte   $02
        sbc     $FC05,x
        .byte   $02
        sbc     L0201,x
        sbc     $FC04,x
        ora     ($06,x)
        sta     ($04,x)
        sbc     $0C,x
        sbc     L0201,x
LBA4E:  sbc     $0C,x
        .byte   $F4
        ora     $0CF2
        sbc     $0C,x
        .byte   $F4
        .byte   $0C
        .byte   $80
        ora     #$50
        brk
        .byte   $80
LBA5D:  ldx     #$60
        .byte   $80
        ora     #$50
        brk
        brk
        .byte   $80
        .byte   $9E
        bvs     LBA5D
        .byte   $0B
        sbc     $0C,x
        sbc     $0D,x
        .byte   $F2
        .byte   $0C
        sbc     L0201,x
        sbc     $0C,x
        .byte   $FC
        ora     ($FE,x)
        .byte   $04
        .byte   $04
        ora     ($F3,x)
        .byte   $02
        .byte   $FA
        bpl     LBA80
        .byte   $80
LBA80:  lda     L0000
        ora     ($01,x)
        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        ora     #$50
        .byte   $7F
        ora     $80
        ora     ($60,x)
        .byte   $80
        tay
        rts

        .byte   $80
        ora     ($60,x)
        .byte   $80
        brk
        .byte   $80
        .byte   $80
        lda     #$80
LBA9D:  sta     ($03,x)
        .byte   $80
        brk
        .byte   $80
        .byte   $80
        ora     #$50
LBAA5:  .byte   $7F
        .byte   $04
        .byte   $80
        .byte   $A3
        bvs     LBAAC
        .byte   $F0
LBAAC:  ora     $FC
        asl     $FB01
        sed
        .byte   $02
        .byte   $FA
        .byte   $0C
        sed
        .byte   $FC
        .byte   $80
        ora     #$50
        brk
        .byte   $80
        lda     L8100
        ora     $80
        ora     #$50
        .byte   $7F
        ora     $80
        .byte   $B3
        rts

        ora     ($01,x)
        .byte   $80
        ldx     $80,y
        sta     ($04,x)
        .byte   $80
        brk
LBAD1:  .byte   $80
        .byte   $80
        lda     $40
        ora     ($01,x)
        .byte   $80
        brk
        rti

        brk
        brk
        .byte   $80
        ora     #$50
        .byte   $80
        sty     $70,x
        ora     ($0A,x)
LBAE4:  sbc     $05,x
        .byte   $FC
        asl     a
        sed
        .byte   $FC
        ora     ($0C,x)
        .byte   $80
        ora     #$50
        brk
        brk
        .byte   $80
        .byte   $BB
        brk
        sta     ($05,x)
        .byte   $80
        ora     #$50
        .byte   $7F
        ora     $80
        ora     ($60,x)
        .byte   $80
        cmp     ($60,x)
        ora     ($80,x)
        .byte   $C3
        .byte   $80
        sta     ($05,x)
        .byte   $80
        .byte   $AD
LBB09:  rti

        sta     ($05,x)
        .byte   $80
        ora     #$50
        brk
        .byte   $80
        .byte   $9E
        bvs     LBB09
        ora     ($01,x)
        asl     a
        sbc     $0C,x
        .byte   $80
        brk
        bpl     LBA9D
        lda     #$10
        sta     ($03,x)
        .byte   $80
        brk
        .byte   $10
LBB24:  .byte   $80
        cmp     #$00
        sta     ($05,x)
        .byte   $80
        ora     #$50
        .byte   $80
        .byte   $CF
        bvc     LBB31
        .byte   $01
LBB31:  .byte   $80
        ora     #$50
        brk
        .byte   $80
        ora     ($60,x)
        .byte   $80
LBB39:  .byte   $D2
        rts

        ora     ($80,x)
        brk
        .byte   $80
        .byte   $80
        .byte   $D4
        .byte   $80
        ora     ($01,x)
        .byte   $80
        brk
        .byte   $80
        brk
        .byte   $80
        .byte   $BB
        rti

        sta     ($05,x)
        .byte   $80
LBB4E:  brk
        bpl     LBAD1
        lda     #$10
        sta     ($03,x)
        .byte   $80
        .byte   $9E
        bvs     LBB4E
        ora     #$01
        .byte   $80
        ldx     $10,y
        sta     ($04,x)
        .byte   $80
LBB61:  brk
        bpl     LBAE4
        .byte   $D7
        brk
        ora     ($80,x)
        brk
        brk
        .byte   $80
        cmp     $0100,y
        .byte   $80
        brk
        brk
        .byte   $80
        ora     #$50
        .byte   $80
        .byte   $DB
        bvc     LBB79
        .byte   $01
LBB79:  .byte   $80
LBB7A:  ora     #$50
        brk
        .byte   $80
        .byte   $DE
LBB7F:  rts

        ora     ($01,x)
        .byte   $80
        brk
        .byte   $80
        .byte   $80
        sbc     ($80,x)
        ora     ($01,x)
        .byte   $80
        brk
        .byte   $80
        brk
        .byte   $80
        cmp     #$40
        sta     ($05,x)
        .byte   $80
        ldx     $10,y
        sta     ($03,x)
        .byte   $2B
        .byte   $80
        .byte   $9C
        bvs     LBB9E
        .byte   $06
LBB9E:  ora     ($80,x)
        .byte   $C3
        bpl     LBB24
        ora     $80
        brk
        brk
        .byte   $80
        sbc     L0000
        .byte   $80
        brk
        brk
        .byte   $80
        inc     L0000
        ora     ($80,x)
        brk
        brk
        .byte   $80
        inx
        bvc     LBB39
        ora     $80
        inc     $0160
        ora     ($80,x)
        ora     ($60,x)
        .byte   $80
        ora     ($30,x)
        .byte   $80
        sbc     ($30),y
        .byte   $80
        ora     ($30,x)
        brk
        .byte   $80
        ora     #$50
        .byte   $80
        .byte   $D7
        rti

        ora     ($80,x)
        brk
        rti

        .byte   $80
        cmp     $0140,y
        .byte   $80
        brk
        rti

        .byte   $80
        .byte   $C3
        bpl     LBB61
        .byte   $04
        .byte   $80
        .byte   $A3
        bvs     LBBE6
        .byte   $4E
LBBE6:  .byte   $A7
        .byte   $5A
        .byte   $80
        .byte   $D4
        bpl     LBBED
        .byte   $01
LBBED:  .byte   $80
        brk
        .byte   $10
LBBF0:  brk
LBBF1:  .byte   $80
        ora     #$50
        brk
        .byte   $80
        .byte   $F4
        bvc     LBB7A
        ora     $80
        .byte   $FA
        bmi     LBB7F
        .byte   $04
        .byte   $80
        .byte   $FF
        rts

        ora     ($01,x)
        .byte   $80
        .byte   $02
        and     ($81),y
        .byte   $03
        .byte   $80
        ora     #$50
        .byte   $80
        brk
        rti

        .byte   $80
        sbc     $40
        .byte   $80
        brk
        rti

        .byte   $80
        inc     $40
        ora     ($80,x)
        brk
        rti

        .byte   $80
        ora     #$50
        .byte   $80
        .byte   $D4
        bpl     LBC24
        .byte   $01
LBC24:  .byte   $80
        .byte   $97
        bvs     LBC2A
        .byte   $FA
        .byte   $01
LBC2A:  ora     ($0A,x)
        .byte   $80
        sbc     ($10,x)
        ora     ($01,x)
        .byte   $80
        brk
        bpl     LBC35
LBC35:  .byte   $80
        ora     #$50
        .byte   $80
        asl     $51
        sta     ($06,x)
        .byte   $80
        ora     L8131
        .byte   $03
        .byte   $80
        ora     ($61),y
        ora     ($01,x)
        .byte   $80
        .byte   $14
        and     ($81),y
        .byte   $04
        .byte   $80
        ora     L8051,y
        ora     #$50
        brk
        .byte   $80
        .byte   $1A
        eor     ($81),y
        .byte   $04
        .byte   $80
LBC59:  sbc     ($10,x)
        ora     ($01,x)
        .byte   $80
        .byte   $9F
        bvs     LBC59
        .byte   $FC
        ora     $06
        sbc     $80,x
        .byte   $1F
        eor     ($FC),y
        ora     ($04,x)
        inc     $0980,x
        bvc     LBBF0
        and     ($51,x)
        sta     ($05,x)
        .byte   $80
        .byte   $27
        and     ($81),y
        .byte   $04
        .byte   $80
        bit     L8161
        .byte   $03
        .byte   $80
        bmi     LBCB2
        sta     ($03,x)
        .byte   $80
        .byte   $34
        eor     ($81),y
        ora     #$80
        ora     #$50
        .byte   $80
        sty     $70,x
        .byte   $0C
        sed
        .byte   $80
        rol     $0171,x
        .byte   $80
        rol     $51,x
        sta     ($07,x)
        .byte   $03
        sta     ($04,x)
        .byte   $80
        eor     $31
        .byte   $80
        lsr     $61
        sta     ($07,x)
        .byte   $80
        lsr     L8131
        .byte   $03
        .byte   $80
        .byte   $52
        eor     ($81),y
        ora     #$DB
        ora     ($80,x)
        .byte   $5C
LBCB2:  adc     ($01),y
        .byte   $80
        tya
        bvs     LBCBF
        .byte   $80
        .byte   $54
        eor     ($81),y
        .byte   $07
        .byte   $03
        .byte   $81
LBCBF:  .byte   $04
        .byte   $80
        .byte   $63
LBCC2:  and     ($80),y
        .byte   $64
        adc     ($81,x)
        asl     a
        .byte   $80
        .byte   $6F
        and     ($80),y
        .byte   $70
LBCCD:  eor     ($81),y
        .byte   $0B
        .byte   $80
        .byte   $9F
        bvs     LBCCD
        .byte   $03
        sbc     $3F80,y
        adc     ($80),y
        .byte   $73
        eor     ($81),y
        .byte   $0B
        .byte   $80
        .byte   $7F
        adc     ($81,x)
        .byte   $0B
        .byte   $80
        .byte   $8B
        and     ($80),y
        sty     L8151
        ora     $ED
        .byte   $14
        ora     ($01,x)
        .byte   $80
        ora     #$50
        .byte   $80
        .byte   $5C
        adc     ($80),y
        .byte   $93
        bvs     LBD01
        .byte   $80
        .byte   $3E
        .byte   $71
LBCFC:  .byte   $80
        .byte   $93
        bvs     LBD08
        .byte   $80
LBD01:  .byte   $8F
        eor     ($01),y
        ora     ($ED,x)
        .byte   $14
        .byte   $81
LBD08:  asl     $80
        ora     #$50
        .byte   $80
        sta     L8161,y
        php
        .byte   $80
        ldx     #$31
        .byte   $80
        .byte   $A3
        adc     ($01,x)
        .byte   $80
        lda     $31
        .byte   $80
        ldx     $51
        .byte   $80
LBD1F:  ora     #$50
        .byte   $7F
        .byte   $03
        .byte   $80
        .byte   $A7
        eor     ($01),y
        .byte   $80
        ora     #$50
        .byte   $80
        tya
        eor     ($80),y
LBD2E:  ora     #$50
        brk
        .byte   $80
        .byte   $9B
        bvs     LBD2E
        .byte   $80
        eor     L8071,x
        sty     $70,x
        .byte   $80
        .byte   $3F
        adc     ($80),y
        .byte   $9F
        bvs     LBCC2
        lda     #$51
        .byte   $80
        ora     #$50
        brk
        brk
        .byte   $80
        tax
        eor     ($01),y
        .byte   $80
        ora     #$50
        brk
        .byte   $80
        ldy     $0151
        ora     ($80,x)
        .byte   $AF
        adc     ($81,x)
        ora     #$80
        lda     L8031,y
        tsx
        adc     ($01,x)
        ora     ($80,x)
        ora     #$50
        brk
        .byte   $80
        tax
        eor     ($01),y
        .byte   $80
        ora     #$50
        brk
        .byte   $80
        lda     $0151,x
        sbc     L80FE
        ora     #$50
        .byte   $80
        .byte   $9F
        bvs     LBCFC
        .byte   $5C
        adc     ($80),y
        .byte   $93
        bvs     LBD87
        .byte   $03
        .byte   $80
        .byte   $BF
        eor     ($81),y
LBD87:  .byte   $0B
        .byte   $80
        .byte   $CB
        adc     ($81,x)
        .byte   $0D
        .byte   $80
LBD8E:  cmp     $EA51,y
        sta     ($03,x)
        .byte   $14
        ora     ($01,x)
        .byte   $E3
        ora     ($01,x)
        .byte   $80
        ora     #$50
        .byte   $80
LBD9D:  .byte   $9B
        bvs     LBD9D
        .byte   $03
        .byte   $04
        sbc     $0980,y
        bvc     LBE26
        asl     $80
        cmp     L8051,x
        ora     #$50
        brk
        .byte   $80
        dec     L8161,x
        .byte   $0F
        .byte   $80
        ora     #$50
        brk
        brk
        .byte   $80
        inc     L8051
        ora     #$50
        .byte   $7F
        ora     $80
        tya
        bvs     LBDCC
        .byte   $FC
        brk
        sbc     $3E80,x
        adc     ($01),y
LBDCC:  .byte   $80
        .byte   $EF
        eor     ($7F),y
        php
        .byte   $80
        beq     LBDF5
        ora     ($80,x)
        .byte   $F2
        adc     ($81,x)
        asl     a
        .byte   $FA
        .byte   $07
        .byte   $80
        inc     $0121,x
        .byte   $80
        .byte   $EF
        eor     ($7F),y
        .byte   $07
        .byte   $80
        .byte   $5C
        adc     ($01),y
        .byte   $80
        tya
        bvs     LBDF0
        .byte   $04
        .byte   $80
        .byte   $3E
LBDF0:  adc     ($01),y
        .byte   $80
        .byte   $9F
        .byte   $70
LBDF5:  .byte   $80
        brk
        .byte   $52
        .byte   $7F
        php
        .byte   $80
        ora     ($22,x)
        .byte   $80
        .byte   $02
        .byte   $62
        .byte   $81
LBE01:  asl     $1180
        .byte   $22
        .byte   $80
        brk
        .byte   $52
LBE08:  .byte   $7F
        .byte   $07
        .byte   $80
        .byte   $9F
        bvs     LBD8E
        .byte   $5C
        adc     ($01),y
        .byte   $80
        .byte   $9F
        bvs     LBE08
        ora     ($0C,x)
        sbc     $1280,y
        .byte   $52
        .byte   $7F
        php
        .byte   $80
        .byte   $13
        .byte   $22
        .byte   $80
        .byte   $14
        .byte   $62
        sta     ($0E,x)
        .byte   $80
LBE26:  .byte   $23
        .byte   $22
        .byte   $80
        .byte   $12
        .byte   $52
        .byte   $7F
        .byte   $07
        .byte   $80
        tya
        bvs     LBE38
        sbc     $06,x
        ora     ($FD,x)
        .byte   $FC
        .byte   $0D
        .byte   $F2
LBE38:  ora     $80
        bit     $62
        ora     ($7F,x)
        .byte   $03
        ora     (L0000,x)
        sta     ($11,x)
        .byte   $EF
        .byte   $7F
        .byte   $05
LBE46:  .byte   $80
        tya
LBE48:  bvs     LBE46
        ora     $05F2
        .byte   $03
        .byte   $04
        .byte   $FC
        ora     ($01,x)
        .byte   $FB
        .byte   $80
        rol     $0171,x
        .byte   $80
        sec
        .byte   $62
        sta     ($0C,x)
LBE5C:  .byte   $FA
        ora     ($06,x)
        sta     ($0B,x)
        cpx     $5C80
        adc     ($01),y
        .byte   $80
        tya
        bvs     LBE6E
        ora     ($FE,x)
        .byte   $04
        .byte   $F9
LBE6E:  .byte   $03
        php
        ora     ($80,x)
LBE72:  rol     $0171,x
        .byte   $80
        .byte   $9F
        bvs     LBE72
        .byte   $80
        eor     ($62),y
        sta     ($16,x)
        sbc     $2CE8
        .byte   $80
        tya
        bvs     LBE8C
        .byte   $80
        .byte   $5C
        adc     ($01),y
        .byte   $80
        .byte   $A3
        .byte   $70
LBE8C:  ora     ($F7,x)
        .byte   $FD
LBE8F:  .byte   $03
        .byte   $04
        sbc     L80FC,y
        adc     #$72
        ora     ($80,x)
        sty     $70,x
        ora     $05F2
        .byte   $80
        .byte   $6B
        .byte   $62
        sbc     #$00
        clc
        ora     ($E7,x)
        .byte   $1A
        ora     ($01,x)
        cpx     $1D
        sta     ($06,x)
        .byte   $FF
        .byte   $02
        ora     ($01,x)
        .byte   $DA
LBEB1:  .byte   $80
        tya
        bvs     LBEB1
        ora     $0CF2
        .byte   $80
        .byte   $7B
        .byte   $72
        .byte   $80
        .byte   $93
        bvs     LBEC4
        .byte   $07
        .byte   $FC
        .byte   $80
        .byte   $3E
        .byte   $71
LBEC4:  .byte   $80
        .byte   $93
        bvs     LBE48
        rol     $0171,x
        .byte   $80
        .byte   $7C
        .byte   $72
LBECE:  .byte   $80
        .byte   $93
        bvs     LBED7
        .byte   $FC
        asl     $01
        .byte   $80
        .byte   $6B
LBED7:  .byte   $62
        .byte   $80
        tya
        bvs     LBE5C
        .byte   $54
        .byte   $62
        and     #$01
        dec     $2B,x
        sta     ($09,x)
LBEE4:  .byte   $FF
        .byte   $02
        sta     ($03,x)
        iny
        .byte   $80
        .byte   $9B
        bvs     LBEE4
        ora     ($05,x)
        .byte   $FC
        .byte   $80
        sta     L8072
        .byte   $5C
        adc     ($01),y
        .byte   $80
        sty     $70,x
        .byte   $80
        eor     L8071,x
        .byte   $97
        bvs     LBF03
        .byte   $FA
        .byte   $0C
LBF03:  sbc     $0DFC,y
        .byte   $F2
        php
        .byte   $80
        stx     L8072
        .byte   $93
        bvs     LBE8F
        rol     $0171,x
        .byte   $80
        .byte   $54
        .byte   $62
        .byte   $7F
        ora     ($80),y
        sty     $70,x
LBF1A:  .byte   $80
        .byte   $8F
        .byte   $72
        .byte   $80
        .byte   $9B
        bvs     LBF1A
        ora     $05F2
        .byte   $07
        sbc     $05,x
        .byte   $FC
        asl     a
        sbc     $02,x
        sbc     $3E80,x
        adc     ($01),y
        .byte   $80
        .byte   $94
LBF32:  bvs     *+3
        asl     a
        sbc     $FB01,x
LBF38:  .byte   $07
        sbc     $5480,y
        .byte   $62
        .byte   $80
        sty     $70,x
LBF40:  .byte   $02
        sbc     LA75F,x
        .byte   $5A
        lda     #$01
        .byte   $80
        bcc     LBFAC
        .byte   $80
        tya
        bvs     LBECE
        bcc     LBFB2
        .byte   $80
        tya
        .byte   $70
LBF53:  .byte   $FF
        .byte   $02
        .byte   $80
        sta     ($72),y
        ora     ($80,x)
        .byte   $9C
        bvs     LBF5E
        .byte   $02
LBF5E:  sed
        .byte   $FC
        .byte   $80
        .byte   $5C
        adc     ($01),y
        .byte   $80
        sty     $70,x
        .byte   $02
        sbc     $FD0C,x
        ora     ($02,x)
        sed
        .byte   $FC
        .byte   $0C
        sbc     $F506,y
        bpl     LBF76
        .byte   $F7
LBF76:  sbc     L9380,y
        .byte   $72
        .byte   $80
        .byte   $9C
        bvs     LBF7F
        .byte   $02
LBF7F:  sbc     $01FC,y
        asl     a
        .byte   $04
        ora     ($F4,x)
        .byte   $80
        sty     $72,x
        .byte   $80
        .byte   $93
        bvs     LBF95
        .byte   $04
        sed
        .byte   $80
        sta     ($72),y
        .byte   $04
        .byte   $80
        .byte   $A3
LBF95:  bvs     LBF98
        .byte   $F0
LBF98:  .byte   $0C
        sed
        .byte   $07
        sbc     $01,x
        asl     a
        sbc     $0601,x
        ora     ($F0,x)
        .byte   $0C
        .byte   $F4
        ora     $07
        .byte   $F4
        ora     L0000
        .byte   $FA
        .byte   $80
LBFAC:  rol     L8071,x
        .byte   $93
        bvs     LBF32
LBFB2:  stx     $72,y
        .byte   $80
        .byte   $A3
        bvs     LBF38
        .byte   $97
        .byte   $72
        sta     ($03,x)
        .byte   $80
        .byte   $9E
        bvs     LBF40
        .byte   $9B
        .byte   $72
        sta     ($04,x)
        .byte   $80
        sty     $70,x
        .byte   $80
        ldy     #$72
        sta     ($04,x)
        .byte   $80
        sty     $70,x
        ora     L0000
        .byte   $FA
        .byte   $0B
        .byte   $FB
        .byte   $FA
        .byte   $0B
        sbc     $10,x
        ora     (L0000,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
