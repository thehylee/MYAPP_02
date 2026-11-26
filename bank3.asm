; da65 V2.19 - Git 2fa92f9
; Created:    2026-11-27 00:53:23
; Input file: bank3.bin
; Page:       1


        .setcpu "6502"

L0000           := $0000
L0020           := $0020
L0100           := $0100
L06E0           := $06E0
L2010           := $2010
L2011           := $2011
L2015           := $2015
L2019           := $2019
L201A           := $201A
L201C           := $201C
L201E           := $201E
L2022           := $2022
L2029           := $2029
L202A           := $202A
L202C           := $202C
L2041           := $2041
L2043           := $2043
L2045           := $2045
L2049           := $2049
L204B           := $204B
L204F           := $204F
L2063           := $2063
L2065           := $2065
L2069           := $2069
L206B           := $206B
L206F           := $206F
L2073           := $2073
L2075           := $2075
L2079           := $2079
L207B           := $207B
L207E           := $207E
L2080           := $2080
L2120           := $2120
L30D0           := $30D0
L4000           := $4000
L4004           := $4004
L402D           := $402D
L4141           := $4141
L4328           := $4328
L45A4           := $45A4
L4885           := $4885
L4E20           := $4E20
L5256           := $5256
L5441           := $5441
L6000           := $6000
L6040           := $6040
L6D6C           := $6D6C
L6E20           := $6E20
LC1AB           := $C1AB
LC1BA           := $C1BA
LC228           := $C228
LC2EA           := $C2EA
LC2EB           := $C2EB
LC310           := $C310
LC391           := $C391
LC3E5           := $C3E5
LC436           := $C436
LC453           := $C453
LC4E9           := $C4E9
LC528           := $C528
LC543           := $C543
LC5EF           := $C5EF
LC60E           := $C60E
LC66B           := $C66B
LC779           := $C779
LC858           := $C858
LC8A1           := $C8A1
LC8D0           := $C8D0
LC90F           := $C90F
LC96D           := $C96D
LCA1A           := $CA1A
LCA8C           := $CA8C
LCAA9           := $CAA9
LCAF3           := $CAF3
LCB05           := $CB05
LCB98           := $CB98
LCBBE           := $CBBE
LCBC0           := $CBC0
LCC7C           := $CC7C
LCD50           := $CD50
LD552           := $D552
LD55B           := $D55B
LD5C2           := $D5C2
LD64A           := $D64A
LD65C           := $D65C
LD670           := $D670
LD696           := $D696
LD7D4           := $D7D4
LD810           := $D810
LD85D           := $D85D
LD8CA           := $D8CA
LE0F9           := $E0F9
LE10C           := $E10C
LE145           := $E145
LE21B           := $E21B
LE29B           := $E29B
LE31D           := $E31D
LE36C           := $E36C
LE396           := $E396
LE412           := $E412
LE41D           := $E41D
LE428           := $E428
LE4EE           := $E4EE
LE56F           := $E56F
LE57A           := $E57A
LE585           := $E585
LE629           := $E629
LE649           := $E649
LE651           := $E651
LE659           := $E659
LE6AD           := $E6AD
LE7E4           := $E7E4
LE8AC           := $E8AC
LE8CF           := $E8CF
LE90A           := $E90A
LE973           := $E973
LEA24           := $EA24
LEAD0           := $EAD0
LEB1D           := $EB1D
LEB28           := $EB28
LEB5C           := $EB5C
LEB6F           := $EB6F
LEB8C           := $EB8C
LEBC0           := $EBC0
LEC45           := $EC45
LEC6E           := $EC6E
LEC96           := $EC96
LED09           := $ED09
LED44           := $ED44
LEE0E           := $EE0E
LEE1B           := $EE1B
LEE23           := $EE23
LEE3B           := $EE3B
LEE7C           := $EE7C
LEECE           := $EECE
LEFA1           := $EFA1
LF010           := $F010
LF02B           := $F02B
LF044           := $F044
LF058           := $F058
LF0ED           := $F0ED
LF0F9           := $F0F9
LF14C           := $F14C
LF160           := $F160
LF17D           := $F17D
LF1B8           := $F1B8
LF1D4           := $F1D4
LF254           := $F254
LF277           := $F277
LF2CF           := $F2CF
LF2DD           := $F2DD
LF37E           := $F37E
LF3E1           := $F3E1
        .byte   $64
        bcs     L8008
        lda     #$64
        sta     $06B9,x
L8008:  clv
        bvc     L8017
        lda     $06B9,x
        cmp     #$8C
L8010:  bcs     L8017
        lda     #$8C
        sta     $06B9,x
L8017:  lda     $35,x
        beq     L8027
        lda     $06B9,x
        cmp     #$46
        bcs     L8027
        lda     #$46
        sta     $06B9,x
L8027:  rts

        .byte   $2F
        .byte   $7C
        .byte   $9B
        .byte   $AB
        dex
        cmp     $F8,y
        bit     $60
        sei
        sty     $9C
        tay
        cpy     #$00
        and     ($58,x)
        ror     L8F79
        txs
        bcs     L8040
L8040:  .byte   $1A
        .byte   $44
        eor     $5E,x
        .byte   $6F
        .byte   $77
        dey
        brk
        .byte   $12
        bmi     L8087
        .byte   $42
        lsr     $6054
        brk
        asl     $2A,x
        .byte   $32
        rol     $3E,x
        .byte   $42
        lsr     a
        brk
        .byte   $13
        .byte   $22
        plp
        .byte   $2B
        and     ($34),y
        .byte   $3A
        brk
L8060:  .byte   $13
        .byte   $22
        plp
        .byte   $2B
        and     ($34),y
        .byte   $3A
        brk
        .byte   $12
        asl     $2623,x
        .byte   $2B
        and     a:$32
        .byte   $12
        asl     $2623,x
        .byte   $2B
        and     a:$32
        bpl     L8094
        asl     $2420,x
        rol     $2A
        brk
        bpl     L809C
        asl     $2420,x
        rol     $2A
L8087:  brk
        .byte   $0F
        asl     $19,x
        .byte   $1B
        asl     $221F,x
        brk
        .byte   $0F
        asl     $19,x
        .byte   $1B
L8094:  asl     $221F,x
        brk
        .byte   $0F
        asl     $19,x
        .byte   $1B
L809C:  asl     $221F,x
        brk
        .byte   $0F
        asl     $19,x
        .byte   $1B
        asl     $221F,x
        brk
        brk
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     $15
        .byte   $14
        .byte   $0B
        asl     $290B
        and     #$3C
        and     #$29
        and     #$3C
        and     #$29
        and     #$29
        eor     $45
        and     $3D3C,x
        eor     $3D
        eor     $3D
        eor     $3D
        eor     $29
        and     #$29
        .byte   $3C
        and     #$29
        and     #$3C
        and     #$29
        eor     $46
        lsr     $46
        lsr     $46
        lsr     $46
        eor     $3D
        eor     $3D
        eor     $3D
        eor     $3D
        eor     $3D
        eor     $3D
        eor     $46
        lsr     $46
        lsr     $46
        and     #$11
L80F0:  bpl     L8105
        bpl     L8107
        bpl     L8109
        bpl     L810B
L80F8:  bpl     L810D
        bpl     L810D
        .byte   $0B
        .byte   $14
        ora     $05,x
        .byte   $04
        .byte   $03
        .byte   $02
        ora     (L0000,x)
L8105:  brk
        brk
L8107:  brk
        brk
L8109:  brk
        brk
L810B:  brk
        .byte   $29
L810D:  and     #$47
        .byte   $47
        pha
        eor     #$67
        pla
        adc     #$6A
        adc     #$6B
        jmp     (L6D6C)

        .byte   $6F
        ror     $706F
        .byte   $6F
        ror     $706F
        .byte   $6F
        ror     $706F
        adc     ($71),y
        .byte   $72
        adc     ($73),y
        .byte   $74
        adc     $05,x
        .byte   $04
        .byte   $03
        .byte   $02
        ora     (L0000,x)
        and     #$29
        .byte   $47
        .byte   $47
        pha
        eor     #$67
        pla
        adc     #$6A
        adc     #$6B
        jmp     (L6D6C)

        .byte   $6F
        ror     $706F
        .byte   $6F
        ror     $706F
        .byte   $6F
        ror     $706F
        adc     ($71),y
        .byte   $72
        adc     ($76),y
        .byte   $77
        sei
        ora     $04
        .byte   $03
        .byte   $02
        ora     (L0000,x)
        ldx     #$00
        lda     $08
        beq     L81C9
        cmp     #$FC
        beq     L81D5
        cmp     #$FB
        beq     L817A
        cmp     #$EF
        beq     L817A
        cmp     #$EE
        beq     L817A
        cmp     #$F0
        bne     L8179
        jmp     LC3E5

L8179:  rts

L817A:  jsr     LD552
        lda     $067D
        beq     L8196
        lda     $0F
        and     #$3F
        bne     L8193
        dec     $067D
        lda     $067D
        bne     L8193
        jmp     LC1BA

L8193:  clv
        bvc     L81AB
L8196:  lda     $14
        cmp     #$04
        bne     L81AB
        lda     $13
        cmp     #$20
        beq     L81A8
        jmp     LC1AB

        clv
        bvc     L81AB
L81A8:  jmp     LC1BA

L81AB:  jsr     LC228
        cmp     #$00
        beq     L81B9
        lda     #$00
        sta     $067D
        beq     L81BA
L81B9:  rts

L81BA:  lda     $08
        cmp     #$FB
        bne     L81C6
        jmp     LA88F

        clv
        bvc     L81C9
L81C6:  jmp     LA864

L81C9:  lda     $0619
        cmp     #$03
        bcc     L8227
        inx
        lda     $77,x
        beq     L8227
L81D5:  jsr     LD552
        jsr     LC228
        cmp     #$00
        bne     L81E8
        lda     $0F
        bne     L81FD
        dec     $0681
        bne     L81FD
L81E8:  lda     #$00
        sta     $77
        sta     $78
        sta     $0677
        sta     $0678
        sta     $0679
        sta     $067A
        jmp     LCA8C

L81FD:  ldy     #$00
        lda     $0F
        and     #$07
        bne     L8213
        lda     $0630
        sec
        sbc     $89,x
        beq     L8213
        ldy     #$04
        bcs     L8213
        ldy     #$08
L8213:  lda     $0F
        and     #$07
        bne     L8225
        lda     $0631
        sec
        sbc     $8F,x
        beq     L8225
        tya
        ora     #$01
        tay
L8225:  sty     $29,x
L8227:  rts

        lda     $066F
        beq     L8235
        dec     $066F
        lda     #$00
        clv
        bvc     L8246
L8235:  lda     $27
        and     #$08
        beq     L8246
        lda     $28
        and     #$04
        beq     L8246
        lda     #$28
        sta     $066F
L8246:  rts

        ldx     #$00
        lda     $08
        cmp     #$00
        bne     L8251
        ldx     #$01
L8251:  lda     $08
        cmp     #$F7
        bne     L8259
        ldx     #$01
L8259:  cpx     #$01
        beq     L8260
        jmp     LC2EA

L8260:  lda     $0F
        and     #$7F
        bne     L82A5
        ldx     #$00
L8268:  lda     $77,x
        bne     L82A0
        lda     $4E,x
        bne     L82A0
        stx     $1B
        lda     #$01
        sec
        sbc     $064B
        sta     $064B
        bne     L8298
        lda     a:$C1
        bne     L828D
        clc
        lda     #$40
        adc     $1B
        jsr     LD670
        clv
        bvc     L8295
L828D:  clc
        lda     #$44
        adc     $1B
        jsr     LD670
L8295:  clv
        bvc     L82A0
L8298:  clc
        lda     #$42
L829B:  adc     $1B
        jsr     LD670
L82A0:  inx
        cpx     #$02
        bcc     L8268
L82A5:  ldx     #$00
L82A7:  lda     $0663,x
        bmi     L82D9
        jsr     LE7E4
        lda     $0663,x
        bpl     L82D9
        jsr     LAFF4
        lda     $77
        ora     $78
        bne     L82D9
        lda     $4E
        ora     $4F
        bne     L82D9
        ldy     LBA76,x
        lda     $0663,y
        bpl     L82D9
        lda     #$00
        sta     $066D
        sta     a:$C2
        sta     a:$C3
        jmp     LA5AD

L82D9:  inx
        cpx     #$02
        bcc     L82A7
        jsr     LC2EB
        lda     $4E
        ora     $4F
        beq     L82EA
        jsr     LA4E0
L82EA:  rts

        ldx     #$00
L82ED:  lda     $77,x
        bne     L830A
        lda     $0663,x
        bpl     L830A
        lda     $4E,x
        cmp     #$0A
        bcs     L830A
        lda     a:$C1
        beq     L830A
        lda     $29,x
        and     #$01
        beq     L830A
        jsr     LC310
L830A:  inx
        cpx     #$02
        bcc     L82ED
        rts

        lda     #$16
        jsr     LE659
        lda     $0618
        sec
        sbc     $CB3E
        cmp     #$30
        bcs     L8325
        lda     #$14
        jmp     LE659

L8325:  sta     $0618
        sei
        lda     a:$C1
        sec
        sbc     $CB3E
        sta     a:$C1
        cli
        jsr     LBC16
        lda     #$00
        sta     $0B
        sta     $0619
        lda     $77
        beq     L834D
        lda     $78
        beq     L834D
        lda     #$01
        sta     $0B
        sta     $0619
L834D:  stx     $1C
        lda     #$48
        clc
        adc     $1C
        jsr     LD670
        jsr     LBCD3
        lda     $4E,x
        bne     L8382
        txa
        eor     #$01
        tay
        lda     $2F,y
        cmp     #$06
        bcc     L836D
        lda     #$02
        bne     L8377
L836D:  cmp     #$03
        bcc     L8375
        lda     #$01
        bne     L8377
L8375:  lda     #$00
L8377:  sta     $75,x
        jsr     LAC1B
        jsr     LAFF4
        clv
        bvc     L8390
L8382:  lda     #$03
        sta     $75,x
        lda     #$00
        sta     $4E,x
        jsr     LAD62
        jsr     LAFF4
L8390:  rts

        lda     $14
        cmp     #$01
        bcc     L83E4
        lda     $0645
        cmp     #$14
        bne     L83A4
        jsr     LCC7C
        jsr     LCD50
L83A4:  inc     $0644
        lda     $0644
        cmp     #$08
        bcc     L83E4
        lda     #$00
        sta     $0644
        lda     $0645
        cmp     #$14
        beq     L83E4
        lda     $0645
        asl     a
        tay
        lda     $CF9E,y
        sta     $47
        lda     $CF9F,y
        sta     $48
        ldy     #$00
L83CB:  lda     ($47),y
        sta     $2000,y
        iny
        cpy     #$8F
        bcc     L83CB
        inc     $0645
        lda     $0645
        cmp     #$0A
        bne     L83E4
        lda     #$14
        sta     $0645
L83E4:  rts

        jsr     LD552
        lda     $08
        cmp     #$F0
        beq     L83EF
        rts

L83EF:  jsr     LC228
        cmp     #$00
        beq     L83FB
        lda     #$3B
        sta     $067F
L83FB:  dec     $067E
        lda     $067E
        cmp     #$00
        beq     L8408
        jmp     LC453

L8408:  ldx     #$00
        lda     #$1D
        sta     $067E
        inc     $067F
        ldy     $067F
        cpy     #$27
        bcc     L841C
        jmp     LC436

L841C:  ldy     $067F
        lda     $C471,y
        bne     L8427
        jmp     LC453

L8427:  jsr     L9DFA
        jsr     L9EC0
        ldy     $067F
        lda     $C471,y
        jsr     LC4E9
        ldy     $067F
        lda     $C471,y
        bne     L8441
        jmp     LC453

L8441:  ldy     $067F
        lda     $C471,y
        jsr     LC528
        ldy     $067F
        lda     $C471,y
        jsr     LC543
        ldy     $067F
        lda     $C4AD,y
        cmp     #$00
        beq     L8460
        jsr     LD670
L8460:  lda     $067F
        cmp     #$3B
        bcc     L8470
        lda     #$00
        sta     $77
        sta     $78
        jsr     LA5AD
L8470:  rts

        brk
        brk
        ora     (L0000,x)
        brk
        brk
        ora     ($02,x)
        brk
        brk
        .byte   $02
        brk
        ora     ($02,x)
        brk
        brk
        brk
        brk
        ora     ($02,x)
        brk
        brk
        .byte   $04
        .byte   $02
        .byte   $04
        .byte   $02
        .byte   $04
        .byte   $02
        .byte   $04
        .byte   $02
        .byte   $04
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        brk
        brk
        brk
        brk
        bpl     L849F
L849F:  brk
        brk
        brk
        brk
        jsr     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        bit     $2C2C
        bit     $2C2C
        and     $2D2D
        and     $2D2D
        and     $2E2E
        rol     $2E2E
        rol     $2E2E
        rol     $2F2F
        .byte   $2F
        .byte   $2F
        .byte   $2F
        .byte   $2F
        .byte   $2F
        .byte   $2F
        and     ($31),y
        .byte   $32
        .byte   $32
        .byte   $32
        sec
        sec
        sec
        sec
        sec
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $34
        .byte   $34
        .byte   $34
        .byte   $34
        and     $35,x
        and     $35,x
        and     $35,x
        and     $35,x
        and     $35,x
        cmp     #$08
        bne     L84EF
        dec     $89
L84EF:  cmp     #$04
        bne     L84FC
        inc     $89
        jsr     L9F2A
        bcs     L84FC
        dec     $89
L84FC:  cmp     #$02
        bne     L8509
        inc     $87
        jsr     L9F2A
        bcs     L8509
        dec     $87
L8509:  cmp     #$01
        bne     L8521
        lda     $8F
        sta     $1B
        clc
        adc     #$01
        and     #$03
        sta     $8F
        jsr     L9F2A
        bcs     L8521
        lda     $1B
        sta     $8F
L8521:  jsr     L9EE8
        jsr     L9E8F
        rts

        cmp     #$10
        bne     L8542
        lda     #$90
        sta     $1F
        lda     #$03
        sta     L0020
        ldy     #$03
        lda     #$08
L8538:  sta     ($1F),y
        iny
        cpy     #$0D
        bcc     L8538
        jsr     LA3B3
L8542:  rts

        cmp     #$20
        bne     L8560
        lda     #$19
        sta     $93
        lda     #$00
        sta     $95
        ldx     #$00
        jsr     LA02E
        lda     #$01
        sta     $95
        ldx     #$00
        jsr     LA02E
        jsr     LA02E
L8560:  jsr     LC66B
        rts

        lda     $08
        cmp     #$EC
        beq     L856B
        rts

L856B:  lda     $0F
        and     #$1F
        bne     L8586
        lda     #$01
        sec
        sbc     $0650
        sta     $0650
        bne     L8581
        lda     #$0B
        clv
        bvc     L8583
L8581:  lda     #$37
L8583:  jsr     LD670
L8586:  lda     $29
        ora     $2A
        and     #$01
        beq     L85AF
        lda     $0655
        bne     L85AC
        inc     $0656
        lda     $0656
        cmp     #$03
        bcc     L85A7
        lda     #$01
        sta     $067E
        lda     #$24
        sta     $067F
L85A7:  lda     #$01
        sta     $0655
L85AC:  clv
        bvc     L85B4
L85AF:  lda     #$00
        sta     $0655
L85B4:  dec     $067E
        lda     $067E
        cmp     #$00
        beq     L85C1
        jmp     LC60E

L85C1:  ldx     #$00
        lda     #$1D
        sta     $067E
        inc     $067F
        ldy     $067F
        cpy     #$15
        bcc     L85D5
        jmp     LC5EF

L85D5:  ldy     $067F
        lda     $C61E,y
        bne     L85E0
        jmp     LC60E

L85E0:  jsr     L9DFA
        jsr     L9EC0
        ldy     $067F
        lda     $C61E,y
        jsr     LC4E9
        ldy     $067F
        lda     $C61E,y
        jsr     LC528
        ldy     $067F
        lda     $C61E,y
        jsr     LC543
        ldy     $067F
        lda     $C645,y
        cmp     #$00
        beq     L860E
        jsr     LD670
L860E:  lda     $067F
        cmp     #$25
        bcc     L861D
        lda     $064F
        sta     $0B
        jsr     LA945
L861D:  rts

        brk
        brk
        brk
        .byte   $04
        brk
        .byte   $02
        brk
        ora     (L0000,x)
        .byte   $02
        brk
        .byte   $04
        .byte   $02
        brk
        .byte   $04
        .byte   $02
        brk
        .byte   $02
        .byte   $02
        brk
        .byte   $02
        brk
        brk
        brk
        brk
        bpl     L8639
L8639:  brk
        brk
        brk
        brk
        jsr     L0000
        brk
        brk
        brk
        brk
        brk
        lsr     $4E4E
        lsr     $4E4E
        lsr     $4E4E
        lsr     $4E4E
        lsr     $4E4E
        lsr     $4E4E
        lsr     $4E4E
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $34
        .byte   $34
        .byte   $34
        .byte   $34
        and     $35,x
        and     $35,x
        and     $35,x
        and     $35,x
        lda     #$00
        sta     $1B
        lda     #$02
        sta     $1C
        ldy     #$60
        ldx     #$00
L8677:  lda     #$F1
        sta     ($1B),y
        tya
        clc
        adc     #$10
        tay
        bcc     L8684
        inc     $1C
L8684:  inx
        cpx     #$14
        bcc     L8677
        ldx     #$00
        jsr     LA43A
        rts

        lda     #$B0
        sta     $05
        lda     #$5D
        jsr     LD670
        lda     #$10
        sta     $1B
        lda     #$11
        sta     $1C
        ldx     #$00
L86A2:  lda     $08AA,x
        sta     $1E
        lda     $08AB,x
        sta     $1F
        ldy     #$02
        jsr     LC858
        lda     #$01
        jsr     LC8A1
        lda     $1B
        clc
        adc     #$80
        sta     $1B
        lda     $1C
        adc     #$00
        sta     $1C
        inx
        inx
        cpx     #$0E
        bcc     L86A2
        lda     #$90
        sta     $1B
        lda     #$14
        sta     $1C
        ldx     #$14
L86D3:  lda     $08AA,x
        sta     $1F
        lda     $08AB,x
        sta     $1E
        lda     $08AC,x
        sta     $1D
        ldy     #$03
        jsr     LC858
        lda     #$00
        jsr     LC8A1
        lda     $1B
        clc
        adc     #$80
        sta     $1B
        lda     $1C
        adc     #$00
        sta     $1C
        inx
        inx
        inx
        cpx     #$1D
        bcc     L86D3
        lda     #$10
        sta     $1B
        lda     #$16
        sta     $1C
        lda     #$00
        sta     L06E0
        sta     $06E1
        ldx     #$06
L8712:  lda     L06E0
        clc
        adc     $08AA,x
        sta     L06E0
        lda     $06E1
        adc     $08AB,x
        sta     $06E1
        bcc     L8731
        lda     #$FF
        sta     $06E1
        sta     L06E0
        bne     L8737
L8731:  inx
        inx
        cpx     #$0E
        bcc     L8712
L8737:  lda     L06E0
        ora     $06E1
        bne     L8744
        lda     #$01
        sta     L06E0
L8744:  jsr     LC779
        lda     #$2A
        sta     $1B
        lda     #$11
        sta     $1C
        ldx     #$1E
L8751:  lda     $08AA,x
        sta     $1E
        lda     $08AB,x
        sta     $1F
        ldy     #$02
        jsr     LC858
        lda     #$01
        jsr     LC8A1
        lda     $1B
        clc
        adc     #$80
        sta     $1B
        lda     $1C
        adc     #$00
        sta     $1C
        inx
        inx
        cpx     #$50
        bcc     L8751
        rts

        lda     $08C6
        asl     a
        sta     $06DC
        lda     $08C5
        rol     a
        sta     $06DD
        lda     $08C4
        rol     a
        sta     $06DE
        lda     #$00
        rol     a
        sta     $06DF
        lda     $06DC
        clc
        adc     $08C3
        sta     $06DC
        lda     $06DD
        adc     $08C2
        sta     $06DD
        lda     $06DE
        adc     $08C1
        sta     $06DE
        lda     $06DF
        adc     #$00
        sta     $06DF
        jsr     LC8D0
        lda     $06DC
        sta     $1E
        lda     $06DD
        sta     $1F
        ldy     #$02
        jsr     LC858
        lda     #$03
        jsr     LC8A1
        lda     $06DE
        sta     $1F
        sta     $06DD
        lda     $06DF
        sta     L0020
        sta     $06DE
        lda     #$00
        sta     $06DF
        sta     $06DC
        lsr     $06DE
        ror     $06DD
        ror     $06DC
        lsr     $06DE
        ror     $06DD
        ror     $06DC
        lda     #$00
        sta     $21
        asl     $1F
        rol     L0020
        rol     $21
        asl     $1F
        rol     L0020
        rol     $21
        lda     $06DC
        sec
        sbc     $1F
        sta     $06DC
        lda     $06DD
        sbc     L0020
        .byte   $8D
L8818:  cmp     $AD06,x
        dec     $E506,x
        and     ($8D,x)
        dec     $AD06,x
        .byte   $DF
        asl     $E9
        brk
        sta     $06DF
        jsr     LC8D0
        lda     $06DC
        cmp     #$3C
        bcc     L8836
        lda     #$3B
L8836:  sta     $1F
        ldy     #$01
        jsr     LC858
        lda     $1B
        clc
        adc     #$04
        sta     $1B
        lda     #$3A
        ldy     #$00
        sta     ($1B),y
        iny
        lda     #$B0
        sta     ($1B),y
        inc     $1B
        inc     $1B
        lda     #$03
        jmp     LC8A1

        txa
        pha
        lda     #$00
        sta     $06D7
        sta     $06D8
        sta     $06D9
        sta     $06DA
        ldx     $C89D,y
        sed
L886C:  asl     $1D
        rol     $1E
        rol     $1F
        lda     $06DA
        adc     $06DA
        sta     $06DA
        lda     $06D9
        adc     $06D9
        sta     $06D9
        lda     $06D8
        adc     $06D8
        sta     $06D8
        lda     $06D7
        adc     $06D7
        sta     $06D7
        dex
        bpl     L886C
        cld
        pla
        tax
        rts

        brk
        .byte   $07
        .byte   $0F
        .byte   $17
        tay
        txa
        pha
        tya
        tax
        ldy     #$00
L88A8:  lda     $06D7,x
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        ora     #$30
        sta     ($1B),y
        iny
        lda     $05
        sta     ($1B),y
        iny
        lda     $06D7,x
        and     #$0F
        ora     #$30
        sta     ($1B),y
        iny
        lda     $05
        sta     ($1B),y
        iny
        inx
        cpx     #$04
        bcc     L88A8
        pla
        tax
        rts

        ldy     #$10
L88D2:  asl     $06DC
        rol     $06DD
        rol     $06DE
        rol     $06DF
        bcc     L88F5
        lda     $06DE
        sbc     L06E0
        sta     $06DE
        lda     $06DF
        sbc     $06E1
        sta     $06DF
        jmp     LC90F

L88F5:  lda     $06DE
        cmp     L06E0
        lda     $06DF
        sbc     $06E1
        bcc     L8912
        sta     $06DF
        lda     $06DE
        sbc     L06E0
        sta     $06DE
        inc     $06DC
L8912:  dey
        bne     L88D2
        rts

        jsr     LCA1A
        lda     #$00
        sta     $21
        sta     $22
        ldx     #$02
L8921:  ldy     $1B
        jsr     LC96D
        lda     $1B
        clc
        adc     #$04
        tay
        jsr     LC96D
        lda     $1B
        clc
        adc     #$08
        tay
        jsr     LC96D
        lda     $1B
        clc
        adc     #$0C
        tay
        jsr     LC96D
        inx
        cpx     #$0E
        bcc     L8921
        ldx     $1F
        ldy     $1D
        lda     $21
        clc
        adc     #$0C
        cmp     $22
        bcs     L8957
        ldx     L0020
        ldy     $1E
L8957:  stx     $0631
        lda     $1B
        cmp     #$10
        bne     L8969
        cpx     #$01
        beq     L8968
        cpx     #$03
        bne     L8969
L8968:  dey
L8969:  sty     $0630
        rts

        lda     $CBFD,y
        cmp     #$80
        beq     L897D
        clc
        adc     $05C0,x
        cmp     $05C1,x
        bne     L89B4
L897D:  lda     $CBFE,y
        cmp     #$80
        beq     L898D
        clc
        adc     $05C0,x
        cmp     $05C2,x
        bne     L89B4
L898D:  lda     $CBFF,y
        cmp     #$80
        beq     L899D
        clc
        adc     $05C0,x
        cmp     $05C3,x
        bne     L89B4
L899D:  lda     $05C0,x
        clc
        adc     $CBFC,y
        cmp     $21
        bcc     L89B3
        sta     $21
        stx     $1D
        tya
        lsr     a
        lsr     a
        and     #$03
        sta     $1F
L89B3:  rts

L89B4:  lda     $05C0,x
        sta     $1C
        lda     $CBFD,y
        cmp     #$80
        beq     L89D2
        cpx     #$0C
        bcs     L8A19
        adc     $1C
        sec
        sbc     $05C1,x
        bcc     L89D2
        eor     #$FF
        adc     $1C
        sta     $1C
L89D2:  lda     $CBFE,y
        cmp     #$80
        beq     L89EB
        cpx     #$0C
        bcs     L8A19
        adc     $1C
        sec
        sbc     $05C2,x
        bcc     L89EB
        eor     #$FF
        adc     $1C
        sta     $1C
L89EB:  lda     $CBFF,y
        cmp     #$80
        beq     L8A04
        cpx     #$0C
        bcs     L8A19
        adc     $1C
        sec
        sbc     $05C3,x
        bcc     L8A04
        eor     #$FF
        adc     $1C
        sta     $1C
L8A04:  lda     $1C
        clc
        adc     $CBFC,y
        cmp     $22
        bcc     L8A19
        sta     $22
        stx     $1E
        tya
        lsr     a
        lsr     a
        and     #$03
        sta     L0020
L8A19:  rts

        lda     $8B,x
        asl     a
        asl     a
        asl     a
        asl     a
        sta     $1B
        lda     #$50
        sta     $1F
        bit     $0B
        bpl     L8A2C
        ldx     #$02
L8A2C:  lda     L9E8C,x
        sta     L0020
        ldx     #$00
        ldy     #$00
        sty     $05D0
L8A38:  lda     L0020
        sta     $1E
        lda     $1F
        sta     $1D
L8A40:  lda     $1D
        clc
        adc     #$10
        sta     $1D
        bcc     L8A4B
        inc     $1E
L8A4B:  lda     ($1D),y
        beq     L8A40
        lda     $1E
        lsr     a
        lda     $1D
        ror     a
        and     #$F8
        sta     $05C0,x
        inc     $1F
        inx
        cpx     #$10
        bcc     L8A38
        rts

        lda     $06A8
        and     #$01
        bne     L8A75
        lda     #$EF
        sta     $08
        lda     #$FB
        jmp     LCAA9

        clv
        bvc     L8A8C
L8A75:  lda     #$EE
        sta     $08
        lda     #$0F
        sta     $067D
        lda     #$08
        sta     $07
        lda     #$0C
        jsr     L8818
        lda     #$54
        jmp     LD670

L8A8C:  jsr     LE649
        inc     $06A8
        lda     $08BB
        and     #$04
        beq     L8AA5
        lda     $06A8
        and     #$03
        bne     L8AA5
        lda     #$0A
        jsr     LE659
L8AA5:  lda     #$FB
        sta     $08
        lda     #$02
        sta     $07
        sta     $06AC
        lda     #$F0
        sta     $06BB
        sta     $06BC
        lda     #$00
        sta     $06B5
        sta     $06B6
        sta     $067D
        sta     $0644
        sta     $0645
        sta     $0646
        sta     $0647
        sta     $06AB
        sta     $0659
        sta     $065A
        sta     $0637
        sta     $13
        sta     $14
        sta     $09
        sta     $93
        sta     $94
        sta     $95
        sta     $96
        sta     $4E
        sta     $4F
        lda     #$08
        jsr     L8818
        rts

        lda     $0618
        cmp     #$31
        bne     L8AFF
        lda     #$29
        clv
        bvc     L8B01
L8AFF:  lda     #$2A
L8B01:  jsr     LD670
        rts

        lda     #$FE
        sta     $08
        lda     #$00
        sta     $46
        jsr     LE659
        lda     #$14
        sta     $06B4
        lda     #$06
        sta     $07
        lda     #$06
        jsr     L8818
        lda     #$3E
        ldy     #$01
        jsr     LCBC0
        ldy     $0619
        lda     $CB3A,y
        sta     $0B
        sta     $91
        lda     #$02
        jsr     LE659
        lda     #$3F
        jsr     LD670
        rts

        brk
        ora     ($FF,x)
        .byte   $FF
        ora     ($02,x)
        .byte   $02
        ora     ($A5,x)
        php
        cmp     #$FE
        beq     L8B49
        rts

L8B49:  lda     $0F
        and     #$3F
        bne     L8B5A
        dec     $06B4
        bne     L8B5A
        lda     #$01
        sta     $29
        sta     $2A
L8B5A:  lda     $29
        ldy     $0619
        cpy     #$01
        bne     L8B65
        lda     $2A
L8B65:  and     #$0E
        beq     L8B71
        jsr     LCB98
        lda     #$15
        jsr     LE659
L8B71:  lda     $29
        ldy     $0619
        cpy     #$01
        bne     L8B7C
        lda     $2A
L8B7C:  and     #$01
        bne     L8B81
        rts

L8B81:  lda     $46
        sta     $75
        ldy     $0B
        beq     L8B90
        sta     $76
        ldy     #$04
        jsr     LF14C
L8B90:  lda     #$16
        jsr     LE659
        jmp     LA8E9

        pha
        lda     #$00
        jsr     LCBC0
        pla
        and     #$04
        beq     L8BB3
        lda     $46
        clc
        adc     #$01
        cmp     #$03
        bne     L8BAE
        lda     #$02
L8BAE:  sta     $46
        jmp     LCBBE

L8BB3:  lda     $46
        cmp     #$00
        beq     L8BBE
        sec
        sbc     #$01
        sta     $46
L8BBE:  lda     #$01
        sta     $1D
        pha
        lda     $46
        asl     a
        tay
        lda     $CBF6,y
        sta     $02
        lda     $CBF7,y
        sta     $03
        lda     #$B0
        sta     $05
        pla
        beq     L8BDA
        lda     #$3E
L8BDA:  jsr     LD64A
        lda     $CBFC,y
        sta     $02
        lda     $CBFD,y
        sta     $03
        lda     $1D
        beq     L8BED
        lda     #$3F
L8BED:  jsr     LD64A
        rts

        rol     $3F3E,x
        rol     $083F,x
        .byte   $12
        .byte   $22
        .byte   $12
        rti

        .byte   $12
        .byte   $12
        .byte   $12
        bmi     L8C12
        lsr     a
        .byte   $12
        brk
        .byte   $04
        asl     $1006
        .byte   $03
        .byte   $03
        .byte   $03
        ora     $05
        brk
        brk
        brk
        brk
        sbc     ($80),y
L8C12:  .byte   $80
        .byte   $80
        inc     a:L0000,x
        brk
        .byte   $EF
        .byte   $80
        .byte   $80
        .byte   $80
        ora     #$08
        brk
        .byte   $80
        brk
        sed
        .byte   $80
        .byte   $80
        .byte   $02
L8C25:  brk
        brk
        .byte   $80
        php
        php
        .byte   $80
        .byte   $80
        brk
        brk
        .byte   $80
        .byte   $80
        brk
        brk
        .byte   $80
        .byte   $80
        brk
        brk
        .byte   $80
        .byte   $80
        brk
        brk
        .byte   $80
        .byte   $80
        .byte   $07
        brk
        php
        .byte   $80
        inc     L80F0,x
        .byte   $80
        ora     (L0000,x)
        brk
        .byte   $80
        brk
        brk
        .byte   $80
        .byte   $80
        .byte   $FF
        sed
        sed
        .byte   $80
        brk
        brk
        .byte   $80
        .byte   $80
        ora     (L0000,x)
        brk
        .byte   $80
        asl     L8010
        .byte   $80
        ora     (L0000,x)
        sed
        .byte   $80
        php
        php
        .byte   $80
        .byte   $80
        .byte   $FF
        brk
        sed
        .byte   $80
        asl     $08
        .byte   $80
        .byte   $80
        ora     #$08
        php
        .byte   $80
        brk
        sed
        .byte   $80
        .byte   $80
        .byte   $07
        php
        php
        .byte   $80
        inc     L80F8,x
        .byte   $80
        inc     $06A9
        lda     $06A9
        cmp     #$07
        beq     L8C87
        rts

L8C87:  lda     #$00
        sta     $06A9
L8C8C:  lda     #$00
        sta     $19
        lda     $0647
        and     #$01
        beq     L8C9B
        lda     #$01
        sta     $19
L8C9B:  lda     $06AD
        bne     L8CEF
        lda     $0647
        asl     a
        tay
        lda     $CE4E,y
        sta     $47
        lda     $CE4F,y
        sta     $48
        lda     $0646
        asl     a
        asl     a
        asl     a
        asl     a
        tax
        ldy     #$00
L8CB9:  lda     $19
        bne     L8CC3
        lda     $CEFE,x
        clv
        bvc     L8CD4
L8CC3:  stx     $064D
        lda     $CE62,x
        clc
        adc     $0659
        tax
        lda     $CEE2,x
        ldx     $064D
L8CD4:  sta     ($47),y
        inx
        iny
        cpy     #$0F
        bne     L8CB9
        lda     $19
        beq     L8CEF
        lda     $0659
        clc
        adc     #$07
        cmp     #$1C
        bcc     L8CEC
        lda     #$00
L8CEC:  sta     $0659
L8CEF:  inc     $0646
        lda     $19
        bne     L8D24
        lda     $0646
        cmp     #$0A
        bne     L8D21
        lda     #$00
        .byte   $8D
L8D00:  lsr     $06
        sta     $06AD
        inc     $0647
        lda     $0647
        cmp     #$04
        bne     L8D14
        lda     #$00
        sta     $0647
L8D14:  lda     $0647
        cmp     $06AC
        bne     L8D21
        lda     #$01
        sta     $06AD
L8D21:  clv
        bvc     L8D4F
L8D24:  lda     $0646
        cmp     #$08
        bne     L8D4F
        lda     #$00
        sta     $0646
        sta     $06AD
        inc     $0647
        lda     $0647
        cmp     #$04
        bne     L8D42
        lda     #$00
        sta     $0647
L8D42:  .byte   $AD
        .byte   $47
L8D44:  asl     $CD
        ldy     $D006
L8D49:  ora     $A9
        ora     ($8D,x)
        .byte   $AD
        .byte   $06
L8D4F:  rts

        inc     $06AA
        lda     $06AA
        cmp     #$05
        beq     L8D5B
        rts

L8D5B:  lda     #$00
        sta     $06AA
        lda     #$00
        sta     $19
        lda     $06AC
        and     #$01
        beq     L8D6F
        lda     #$01
        sta     $19
L8D6F:  lda     $06AE
        bne     L8DC3
        lda     $06AC
        asl     a
        tay
        lda     $CE56,y
        sta     $47
        lda     $CE57,y
        sta     $48
        lda     $06AB
        asl     a
        asl     a
        asl     a
        asl     a
        tax
        ldy     #$00
L8D8D:  lda     $19
        bne     L8D97
        lda     $CEFE,x
        clv
        bvc     L8DA8
L8D97:  stx     $064D
        lda     $CE62,x
        clc
        adc     $0659
        tax
        lda     $CEE2,x
        ldx     $064D
L8DA8:  sta     ($47),y
        inx
        iny
        cpy     #$0F
        bne     L8D8D
        lda     $19
        beq     L8DC3
        lda     $0659
        clc
        adc     #$07
        cmp     #$1C
        bcc     L8DC0
        lda     #$00
L8DC0:  sta     $0659
L8DC3:  inc     $06AB
        lda     $19
        bne     L8E0D
        lda     $06AB
        cmp     #$0A
        bne     L8E0A
        lda     #$00
        sta     $06AB
        sta     $06AE
        inc     $06AC
        lda     $08
        cmp     #$F8
        beq     L8DF1
        lda     $06AC
        cmp     #$04
        bne     L8DEE
        lda     #$00
        sta     $06AC
L8DEE:  clv
        bvc     L8DFD
L8DF1:  lda     $06AC
        cmp     #$06
        bne     L8DFD
        lda     #$00
        sta     $06AC
L8DFD:  lda     $06AC
        cmp     $0647
        bne     L8E0A
        lda     #$01
        sta     $06AE
L8E0A:  clv
        bvc     L8E4D
L8E0D:  lda     $06AB
        cmp     #$08
        bne     L8E4D
        lda     #$00
        sta     $06AB
        sta     $06AE
        inc     $06AC
        lda     $08
        cmp     #$F8
        beq     L8E34
        lda     $06AC
        cmp     #$04
        bne     L8E31
        lda     #$00
        sta     $06AC
L8E31:  clv
        bvc     L8E40
L8E34:  lda     $06AC
        cmp     #$06
        bne     L8E40
        lda     #$00
        sta     $06AC
L8E40:  lda     $06AC
        cmp     $0647
        bne     L8E4D
        lda     #$01
        sta     $06AE
L8E4D:  rts

        brk
        jsr     L2010
        rti

        jsr     L2080
        brk
        jsr     L2010
        rti

        jsr     L2080
        bvc     L8E80
        jsr     L0020
        brk
        .byte   $02
        .byte   $03
        .byte   $04
        ora     L0000
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
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     L0000
        brk
        brk
        brk
        brk
        brk
        brk
L8E80:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        .byte   $04
        ora     $06
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
        .byte   $03
        .byte   $04
        ora     $06
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
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     L0000
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
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     L0000
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
        ora     ($02,x)
        .byte   $03
        ora     $06
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
        cpx     #$EC
        .byte   $F4
        .byte   $FF
        .byte   $D7
L8EE8:  .byte   $62
        brk
        bpl     L8F08
        .byte   $F4
        .byte   $DB
        .byte   $D7
        .byte   $62
        brk
        .byte   $03
        bpl     L8EE8
        sbc     $62B3,x
        brk
        .byte   $C3
        .byte   $D3
        .byte   $F2
        inc     $62B3,x
        brk
        brk
        .byte   $12
        .byte   $F4
        .byte   $FF
        .byte   $D7
        brk
        brk
        brk
        brk
L8F08:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        .byte   $12
        .byte   $F4
        .byte   $FF
        .byte   $D7
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
        .byte   $12
        .byte   $F4
        .byte   $FF
        .byte   $D7
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
        .byte   $03
        .byte   $12
        .byte   $F4
        .byte   $FF
        .byte   $D7
        .byte   $62
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
        .byte   $03
        .byte   $12
        .byte   $F4
        .byte   $FF
        .byte   $D7
        .byte   $62
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
        .byte   $03
        .byte   $12
        .byte   $F4
        .byte   $FF
        .byte   $D7
        .byte   $62
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
        .byte   $03
        .byte   $12
        .byte   $F4
        .byte   $FF
        .byte   $D7
        .byte   $62
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
L8F75:  brk
        .byte   $03
        .byte   $12
        .byte   $F4
L8F79:  .byte   $FF
        .byte   $D7
        .byte   $62
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
        .byte   $03
        .byte   $12
        .byte   $F4
        .byte   $FF
        .byte   $D7
        .byte   $62
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
        .byte   $B2
        .byte   $CF
        .byte   $42
        bne     L8F75
        bne     L9007
        cmp     ($F2),y
        cmp     ($82),y
        .byte   $D2
        .byte   $12
        .byte   $D3
        ldx     #$D3
        .byte   $32
        .byte   $D4
        .byte   $C2
        .byte   $D4
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        brk
        brk
        ldy     #$01
        cpx     $0302
        lsr     a
        stx     $0741
        .byte   $80
        rts

        .byte   $0B
        .byte   $D2
        .byte   $0F
        .byte   $B7
        .byte   $0F
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     L9341
        .byte   $80
        rts

        rti

        .byte   $D2
        .byte   $73
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        brk
        .byte   $04
        .byte   $41
L9005:  ora     ($02,x)
L9007:  .byte   $03
        .byte   $07
        .byte   $0B
        .byte   $0F
        .byte   $0F
        .byte   $73
        .byte   $93
        .byte   $B7
        .byte   $D2
        cpx     a:$4A
        .byte   $0F
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     $FA41
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     L9023
L9023:  bpl     L9005
        .byte   $92
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        eor     #$25
        ora     ($10,x)
        bpl     L9042
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
        .byte   $0F
L9042:  .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        brk
        brk
        ldy     #$00
        cpx     $0202
        lsr     a
        stx     $0341
        .byte   $80
        rts

        .byte   $07
        .byte   $D2
        .byte   $0B
        .byte   $93
        .byte   $0B
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     $6F41
        .byte   $80
        rts

        rti

        .byte   $D2
        .byte   $4F
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        brk
        .byte   $04
        .byte   $41
L9095:  brk
        ora     ($02,x)
        .byte   $03
        .byte   $07
        .byte   $0B
        .byte   $0B
        .byte   $4F
        .byte   $6F
        .byte   $93
        .byte   $D2
        cpx     a:$4A
        .byte   $0B
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     $FA41
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     L90B3
L90B3:  bpl     L9095
        .byte   $92
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        eor     #$25
        ora     ($10,x)
        bpl     L90CE
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
L90CE:  .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $0B
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
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        brk
        brk
        ldy     #$00
        cpx     $0201
        lsr     a
        stx     $0720
        .byte   $80
        rts

        .byte   $07
        .byte   $D2
        .byte   $07
        .byte   $8F
        .byte   $07
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     $6B20
        .byte   $80
        rts

        rti

        .byte   $D2
        .byte   $2B
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
        .byte   $07
        .byte   $07
        brk
        .byte   $04
        .byte   $20
L9125:  brk
        ora     ($02,x)
        .byte   $03
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $2B
        .byte   $6B
        .byte   $8F
        .byte   $D2
        cpx     a:$4A
        .byte   $07
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     $FA20
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     L9143
L9143:  bpl     L9125
        .byte   $92
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        eor     #$25
        ora     ($10,x)
        bpl     L915A
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
L915A:  .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        brk
        brk
        ldy     #$00
        cpx     $0202
        lsr     a
        stx     $0320
        .byte   $80
        rts

        .byte   $03
        .byte   $D2
        .byte   $03
        .byte   $6B
        .byte   $03
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     $6720
        .byte   $80
        rts

        rti

        .byte   $D2
        .byte   $07
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        brk
        .byte   $04
        .byte   $20
L91B5:  brk
        ora     ($02,x)
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $07
        .byte   $67
        .byte   $6B
        .byte   $D2
        cpx     a:$4A
        .byte   $03
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     $FA20
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     L91D3
L91D3:  bpl     L91B5
        .byte   $92
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        eor     #$25
        ora     ($10,x)
        bpl     L91E6
        .byte   $03
        .byte   $03
        .byte   $03
L91E6:  .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        brk
        ldy     #$00
        cpx     $0202
        lsr     a
        stx     $0220
        .byte   $80
        rts

        .byte   $02
        .byte   $D2
        .byte   $02
        .byte   $67
        .byte   $02
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     $4320
        .byte   $80
        rts

        rti

        .byte   $D2
        .byte   $03
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        brk
        .byte   $04
        .byte   $20
L9245:  brk
        ora     ($02,x)
        .byte   $02
L9249:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $43
        .byte   $67
        .byte   $D2
        cpx     a:$4A
        .byte   $02
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     $FA20
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     L9263
L9263:  bpl     L9245
        .byte   $92
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        eor     #$25
        ora     ($10,x)
        bpl     L9275
        .byte   $02
        .byte   $02
L9275:  .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
L9292:  ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        brk
        brk
        ldy     #$00
        cpx     $0102
        lsr     a
        stx     $0120
        .byte   $80
        rts

        ora     ($D2,x)
        ora     ($63,x)
        ora     ($A0,x)
        cpx     #$EC
        .byte   $04
        .byte   $02
        lsr     a
        stx     $0320
        .byte   $80
        rts

        rti

        .byte   $D2
        .byte   $02
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        brk
        .byte   $04
        .byte   $20
L92D5:  brk
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $02
        .byte   $03
        .byte   $63
        .byte   $D2
        cpx     a:$4A
        ora     ($A0,x)
        cpx     #$EC
        .byte   $04
        .byte   $02
        lsr     a
        stx     $FA20
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     L92F3
L92F3:  bpl     L92D5
        .byte   $92
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        eor     #$25
        ora     ($10,x)
        bpl     L9304
        .byte   $01
L9304:  ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        .byte   $01
L9325:  ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     (L0000,x)
        brk
        ldy     #$00
        cpx     $0102
        lsr     a
        stx     $0120
        .byte   $80
        rts

        ora     ($D2,x)
L9341:  ora     ($23,x)
        ora     ($A0,x)
        cpx     #$EC
        .byte   $04
        .byte   $02
L9349:  lsr     a
        stx     $0220
        .byte   $80
        rts

        rti

        .byte   $D2
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     (L0000,x)
        .byte   $04
        .byte   $20
L9365:  brk
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($02,x)
        .byte   $23
        .byte   $D2
        cpx     a:$4A
        ora     ($A0,x)
        cpx     #$EC
        .byte   $04
        .byte   $02
        lsr     a
        stx     $FA20
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     L9383
L9383:  bpl     L9365
        .byte   $92
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        eor     #$25
        ora     ($10,x)
        bpl     L9394
        .byte   $01
L9394:  ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
        ora     ($01,x)
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
        ldy     #$00
        cpx     a:$02
        lsr     a
        stx     a:L0020
        .byte   $80
        rts

        brk
        .byte   $D2
        brk
        .byte   $02
        brk
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     $0120
        .byte   $80
        rts

        rti

        .byte   $D2
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
        .byte   $04
        .byte   $20
L93F5:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     ($02,x)
        .byte   $D2
        cpx     a:$4A
        brk
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     $FA20
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     L9413
L9413:  bpl     L93F5
        .byte   $92
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        eor     #$25
        ora     ($10,x)
        bpl     L9423
L9423:  brk
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
        ldy     #$00
        cpx     a:$02
        lsr     a
        stx     a:L0020
        .byte   $80
        rts

        brk
        .byte   $D2
        brk
        and     (L0000,x)
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     a:L0020
        .byte   $80
        rts

        rti

        .byte   $D2
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
        .byte   $04
        .byte   $20
L9485:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        and     ($D2,x)
        cpx     a:$4A
        brk
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     $FA20
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     L94A3
L94A3:  bpl     L9485
        .byte   $92
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        eor     #$25
        ora     ($10,x)
        bpl     L94B3
L94B3:  brk
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
        ldy     #$00
        cpx     a:$02
        lsr     a
        stx     a:L0020
        .byte   $80
        rts

        brk
        .byte   $D2
        brk
        brk
        brk
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     a:L0020
        .byte   $80
        rts

        rti

        .byte   $D2
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
        .byte   $04
        .byte   $20
L9515:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $D2
        cpx     a:$4A
        brk
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     $FA20
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     L9533
L9533:  bpl     L9515
        .byte   $92
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        eor     #$25
        ora     ($10,x)
        bpl     L9543
L9543:  brk
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
        lda     a:$C1
        beq     L955A
        jsr     LD55B
L955A:  rts

        jsr     LCAF3
        lda     $29
        ora     $2A
        and     #$01
        bne     L9567
        rts

L9567:  lda     #$16
        jsr     LE659
        lda     $29
        and     #$01
        beq     L957A
        lda     #$00
        sta     $0619
        clv
        bvc     L957F
L957A:  lda     #$01
        sta     $0619
L957F:  lda     #$00
        sta     $77
        sta     $78
        ldy     $0619
        lda     $0618
        sec
        sbc     $CB3E,y
        cmp     #$30
        bcs     L9598
        lda     #$14
        jmp     LE659

L9598:  sta     $0618
        sei
        lda     a:$C1
        sec
        sbc     $CB3E,y
        sta     a:$C1
        cli
        lda     $CB3A,y
        sta     $0B
        lda     $4E
        ora     $4F
        bne     L95B5
        jmp     LCB05

L95B5:  jmp     LA945

        php
        sei
        lda     L6000
        lda     $6080
        plp
        rts

        php
        sei
        lda     L6000
        lda     $6090
        plp
        rts

        sta     $04
        sty     $06
        ldy     #$00
L95D2:  lda     (L0000),y
        sta     ($02),y
        inc     $02
        lda     $05
        sta     ($02),y
        iny
        cpy     $04
        bcc     L95D2
        ldy     $06
        rts

        sta     $04
        sty     $06
        php
        sei
        lda     L6000
        lda     $754F
        lda     $60B0
        lda     $7540
        lda     $7541
        lda     $7551
        lda     $6090
        plp
        ldy     #$00
L9602:  lda     (L0000),y
        beq     L9614
        cmp     #$F0
        bcc     L960E
        lda     #$00
        beq     L9614
L960E:  and     #$0F
        clc
        adc     $6505
L9614:  sta     ($02),y
        inc     $02
        lda     (L0000),y
        beq     L9629
        cmp     #$F0
        bcc     L9624
        lda     #$00
        beq     L9629
L9624:  and     #$70
        clc
        adc     #$70
L9629:  sta     ($02),y
        iny
        cpy     $04
        bcc     L9602
        ldy     $06
        rts

        sta     $04
        sty     $06
        ldy     #$00
L9639:  lda     (L0000),y
        sta     ($02),y
        iny
        lda     (L0000),y
        sta     ($02),y
        iny
        dec     $04
        bne     L9639
        ldy     $06
        rts

        sta     $04
        sty     $06
        ldy     #$00
        lda     $04
        sta     ($02),y
        iny
        lda     $05
        sta     ($02),y
        ldy     $06
        rts

        ldy     #$00
        lda     (L0000),y
L9660:  sta     ($02),y
        inc     $02
        lda     $05
        sta     ($02),y
        iny
        lda     (L0000),y
        cmp     #$FF
        bne     L9660
        rts

        asl     a
        tay
        php
        sei
        lda     L6000
        lda     $754F
        lda     $6090
        lda     $7541
        lda     $7543
        lda     $7552
        lda     $6090
        plp
        lda     $4040,y
        sta     L0000
        lda     $4041,y
        sta     $01
        ldy     #$00
        lda     (L0000),y
        beq     L96B9
        sta     $02
        iny
        lda     (L0000),y
        sta     $03
        iny
        lda     (L0000),y
        sta     $05
        tya
        sec
        adc     L0000
        sta     L0000
        lda     $01
        adc     #$00
        sta     $01
        jsr     LD65C
        iny
        jmp     LD696

L96B9:  rts

        bpl     L96C1
        eor     #$FF
        clc
        adc     #$01
L96C1:  rts

        lda     #$10
        sta     $1C
        lda     #$00
        sta     $1B
        lda     #$00
        tax
        tay
L96CE:  sta     ($1B),y
        iny
        bne     L96CE
        inc     $1C
        inx
        cpx     #$10
        bne     L96CE
        rts

        lda     $25
        sta     $23
        lda     $26
        sta     $24
        sta     $281B
        lda     $2818
        sta     $25
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        sta     $26
        lda     $27
        eor     #$FF
        and     $25
        sta     $29
        lda     $28
        eor     #$FF
        and     $26
        sta     $2A
        lda     $23
        ora     $25
        sta     $27
        lda     $24
        ora     $26
        sta     $28
        rts

        pha
        txa
        pha
        tya
        pha
        lda     L4000
        sta     $0D
        cld
        sta     $280B
        lda     $2808
        sta     $0700
        bpl     L9745
        and     #$40
        bne     L9742
        inc     $AC
        inc     $09
        inc     $13
        bne     L9732
        inc     $14
L9732:  inc     $0F
        bne     L9738
        inc     $10
L9738:  lda     $0F
        and     #$07
        sta     $12
        and     #$03
        sta     $11
L9742:  jmp     LD7D4

L9745:  and     #$40
        bne     L976C
        lda     $09
        bpl     L9750
        jmp     L829B

L9750:  sta     $3000
        inc     $09
        jsr     LD810
        inc     $13
        inc     $0F
        bne     L9762
        inc     $14
        inc     $10
L9762:  lda     $0F
        and     #$07
        sta     $12
        and     #$03
        sta     $11
L976C:  lda     $08BC
        sta     a:$C0
        jsr     LF37E
        lda     a:$C1
        cmp     #$0A
        bcc     L9788
        lda     #$09
        sta     a:$C1
        sta     $51
        lda     #$39
        clv
        bvc     L978A
L9788:  ora     #$30
L978A:  sta     $0618
        lda     a:$C1
        cmp     $51
        beq     L97A0
        sta     $51
        bcc     L97A0
        jsr     LBC16
        lda     #$13
        jsr     LE659
L97A0:  lda     $52
        eor     #$80
        and     a:$C7
        bpl     L97B1
        ldy     #$00
        jsr     LF14C
        jsr     LBC16
L97B1:  lda     $53
        eor     #$80
        and     a:$C8
        bpl     L97C2
        ldy     #$02
        jsr     LF14C
        jsr     LBC16
L97C2:  lda     a:$C7
        sta     $52
        asl     a
        lda     a:$C8
        sta     $53
        ror     a
        lsr     a
        lsr     a
        and     #$30
        sta     $0E
        jsr     LE651
        jsr     LEB1D
        lda     $0D
        bne     L97F6
        php
        sei
        lda     L6000
        lda     $754F
        lda     $60B0
        lda     $7542
        lda     $7543
        lda     $7553
        lda     $60B0
        plp
L97F6:  lda     $0E
        sta     $3C00
L97FB:  sta     $280B
        lda     $2808
        sta     $58
        and     #$40
        beq     L97FB
        sta     $3800
        pla
        tay
        pla
        tax
        pla
        rti

        lda     L6000
        lda     $06A2
        bne     L981E
        jsr     LD85D
        clv
        bvc     L985C
L981E:  cmp     #$03
        bne     L9841
        lda     $754F
        lda     $6090
        lda     $7541
        lda     $7543
        lda     $7552
        lda     $6090
        jsr     LD8CA
        lda     #$00
        sta     $06A2
        lda     #$00
        sta     $06A3
L9841:  lda     $06A2
        cmp     #$01
        bne     L985C
        ldy     #$00
L984A:  lda     #$00
        sta     $2000,y
        iny
        bne     L984A
        lda     #$01
        sta     $06A3
        lda     #$02
        sta     $06A2
L985C:  rts

        lda     $754F
        sta     $B8
        lda     $6090
        sta     $BC
        lda     $7541
        sta     $BA
        lda     $7543
        sta     $BB
        lda     $7553
        sta     $B9
        lda     $6090
        sta     $BD
        jsr     LE0F9
        jsr     LD8CA
        lda     $08
        cmp     #$FB
        beq     L98BD
        cmp     #$EF
        beq     L98BD
        jsr     LE145
        jsr     LE396
        jsr     LE21B
        lda     $0F
        and     #$03
        bne     L98A0
        jsr     LE412
        clv
        bvc     L98B7
L98A0:  cmp     #$01
        bne     L98AA
        jsr     LE41D
        clv
        bvc     L98B7
L98AA:  cmp     #$02
        bne     L98B4
        jsr     LE56F
        clv
        bvc     L98B7
L98B4:  jsr     LE57A
L98B7:  jsr     LE4EE
        jsr     LE10C
L98BD:  lda     $08
        cmp     #$F8
        bne     L98C9
        jsr     LCC7C
        jsr     LCD50
L98C9:  rts

        lda     $07
        beq     L98E8
        asl     a
        tay
        lda     $D8E7,y
        sta     $5A
        lda     $D8E8,y
        sta     $5B
        ldy     #$00
L98DC:  lda     ($5A),y
        sta     $2000,y
        iny
        bne     L98DC
        lda     #$00
        sta     $07
L98E8:  rts

        sbc     $F9D8,y
        cmp     $DAF9,y
        sbc     $F9DB,y
        .byte   $DC
        sbc     $F9DD,y
        dec     $DFF9,x
        brk
        cpx     #$1C
        .byte   $03
        and     $49
        .byte   $92
        ldx     $B7,y
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpx     #$A0
        dec     $DB,x
        asl     $8D
        eor     #$42
        eor     #$49
        .byte   $92
        eor     ($F4,x)
        cpx     #$00
        cpx     $C3
        .byte   $03
        .byte   $17
        clc
        sed
        cpx     #$8D
        eor     (L0000,x)
        brk
        brk
        brk
        .byte   $92
        eor     #$00
        .byte   $03
        jsr     L6040
        ldy     #$64
        sty     $8E
        eor     ($B1,x)
        dec     $49,x
        dey
        .byte   $DB
L9938:  brk
        brk
        cpx     $C3
        .byte   $03
        .byte   $17
        bpl     L9938
        cpx     #$8D
        .byte   $64
        ldy     $4108
        sta     ($60,x)
        ldy     #$00
        .byte   $FF
        cpx     #$A0
        .byte   $FA
        dec     $06,x
        eor     #$8D
        eor     ($8D,x)
        sta     L9249
        .byte   $DB
        brk
        brk
        brk
        ldy     #$E0
        cpx     $0604
        lsr     a
        stx     LB249
        dec     $49,x
        .byte   $92
        .byte   $FF
        .byte   $80
        brk
        jsr     L6000
        .byte   $80
        ldy     #$C0
        cpx     #$00
        eor     ($6A,x)
        stx     a:L0000
        .byte   $03
        .byte   $02
        and     $FF
        brk
        brk
        eor     ($A0,x)
        cpx     #$E9
        .byte   $F7
        .byte   $DB
        brk
L9984:  brk
        brk
        brk
        brk
        cpx     #$00
        cpx     #$00
        brk
        ora     #$0C
        .byte   $54
        sta     $DBBE,y
        brk
        brk
        brk
        brk
        brk
        .byte   $1C
        brk
        .byte   $4B
        brk
        brk
        ora     ($06,x)
        .byte   $0B
        .byte   $53
        .byte   $B7
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        brk
        .byte   $FF
        .byte   $03
        cpx     #$6D
        bcc     L9984
        cmp     $DBFE,y
        brk
        brk
        brk
        brk
        brk
        .byte   $FC
        brk
        cpy     #$00
        brk
        .byte   $42
        .byte   $82
        .byte   $C3
        .byte   $EB
        .byte   $D3
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        .byte   $E3
        brk
        .byte   $4B
        brk
        brk
        asl     a
        .byte   $12
        asl     $5B,x
        .byte   $BB
        .byte   $DB
        brk
        brk
        brk
L99D6:  brk
        brk
        .byte   $17
        dec     $A0,x
        brk
        brk
        eor     $AC
        beq     L99D6
        .byte   $FA
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        sty     $02D6
        brk
        brk
        and     $49
        .byte   $92
        ldx     $B7,y
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        brk
        brk
        ldy     #$01
        cpx     $0302
        lsr     a
        stx     $0741
        .byte   $80
        rts

        .byte   $0B
        .byte   $D2
        .byte   $0F
        .byte   $FF
        .byte   $13
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     $DB41
        .byte   $80
        rts

        rti

        .byte   $D2
        .byte   $97
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
L9A45:  .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        brk
        .byte   $04
        .byte   $41
L9A4C:  ora     ($02,x)
        .byte   $03
        .byte   $07
        .byte   $0B
        .byte   $0F
        .byte   $13
        .byte   $97
        .byte   $DB
        .byte   $FF
        .byte   $D2
        cpx     a:$4A
        .byte   $13
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     $FA41
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     L9A6A
L9A6A:  bpl     L9A4C
        .byte   $92
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        eor     #$25
        ora     ($10,x)
        bpl     L9A8D
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
L9A84:  .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        brk
        cpx     #$00
        brk
L9A8D:  ora     #$0C
        .byte   $54
        sta     $DBBE,y
        brk
        brk
        brk
        brk
        brk
        .byte   $1C
        brk
        .byte   $4B
        brk
        brk
        ora     ($06,x)
        .byte   $0B
        .byte   $53
        .byte   $B7
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        brk
        .byte   $FF
        .byte   $03
        cpx     #$6D
        bcc     L9A84
        cmp     $DBFE,y
        brk
        brk
        brk
        brk
        brk
        .byte   $FC
        brk
        cpy     #$00
        brk
        .byte   $42
        .byte   $82
        .byte   $C3
        .byte   $EB
        .byte   $D3
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        .byte   $E3
        brk
        .byte   $4B
        brk
        brk
        asl     a
        .byte   $12
        asl     $5B,x
        .byte   $BB
        .byte   $DB
        brk
        brk
        brk
L9AD6:  brk
        brk
        .byte   $17
        brk
        ldy     #$00
        brk
        eor     $AC
        beq     L9AD6
        .byte   $FA
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        sty     $0200
        brk
        brk
        and     $49
        .byte   $92
        ldx     $B7,y
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L9B66
        .byte   $DA
        .byte   $DB
        cpy     $4A02
        stx     $4A41
        .byte   $92
        stx     $D625
        beq     L9B0A
L9B0A:  .byte   $92
        .byte   $92
        ldx     $DB,y
        .byte   $92
        .byte   $02
        .byte   $92
        stx     L9292
        .byte   $92
        .byte   $92
        and     $92
        .byte   $92
        brk
        .byte   $92
        .byte   $92
        ldx     $DB,y
        .byte   $92
        .byte   $02
        .byte   $92
        stx     L9292
        .byte   $92
        .byte   $92
        and     $92
        .byte   $92
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
        .byte   $92
        brk
        and     L0000
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
        .byte   $92
        brk
        and     L0000
        brk
        brk
        lda     ($E0),y
        ldx     $DB,y
        eor     #$A0
        pla
        .byte   $DB
        .byte   $44
        lsr     a
        .byte   $92
        .byte   $02
        and     $E0
        lda     $4A00
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        .byte   $02
        lsr     a
        lsr     a
        and     $25
        and     $25
L9B66:  and     $25
        and     L0000
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        .byte   $02
        lsr     a
        lsr     a
        and     $25
        and     $25
        and     $25
        and     $25
        .byte   $FF
        brk
        brk
        eor     ($A0,x)
        cpx     #$E9
        .byte   $F7
        .byte   $DB
        brk
L9B84:  cpx     L8060
        cpy     #$00
        brk
        .byte   $FF
        brk
        brk
        ora     #$0C
        .byte   $54
        sta     $DBBE,y
        brk
        brk
        brk
        brk
        brk
        .byte   $1C
        .byte   $92
        .byte   $02
        brk
        brk
        ora     ($06,x)
        .byte   $0B
        .byte   $53
        .byte   $B7
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        and     $FF
        .byte   $03
        cpx     #$6D
        bcc     L9B84
        cmp     $DBFE,y
        brk
        brk
        brk
        brk
        brk
        .byte   $FC
        brk
        cpx     #$00
        brk
        .byte   $42
        .byte   $82
        .byte   $C3
        .byte   $EB
        .byte   $D3
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        .byte   $E3
        brk
        .byte   $93
        brk
        brk
        asl     a
        .byte   $12
        asl     $5B,x
        .byte   $BB
        .byte   $DB
        brk
        brk
        brk
L9BD6:  brk
        brk
        .byte   $17
        and     $E0
        brk
        brk
        eor     $AC
        beq     L9BD6
        .byte   $FA
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        sty     L9325
        brk
        brk
        and     $49
        .byte   $92
        ldx     $B7,y
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L9C65
        lda     ($DA),y
        cpy     L8C25
        cmp     $09,x
        pla
        adc     $4825
        .byte   $DA
        beq     L9C0A
L9C0A:  adc     LB16D
        .byte   $DA
        adc     $6D25
        cmp     $6D,x
        adc     $6D6D
        pha
        adc     a:$6D
        adc     LB16D
        .byte   $DA
        adc     $6D25
        cmp     $6D,x
        adc     $6D6D
        pha
        adc     a:$6D
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
        adc     $4800
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
        adc     $4800
        brk
        brk
        brk
        .byte   $4B
        cpx     #$B6
        .byte   $DA
        eor     #$A0
        ora     $DB
        .byte   $44
        pla
        adc     $2825
        cpx     #$AD
        brk
        sty     L8C8C
        sty     $258C
        sty     $488C
        pha
        pha
L9C65:  pha
        pha
        pha
        pha
        brk
        sty     L8C8C
        sty     $258C
        sty     $488C
        pha
        pha
        pha
        pha
        pha
        pha
        pha
        .byte   $FF
        brk
        brk
        eor     ($A0,x)
        cpx     #$E9
        .byte   $F7
        .byte   $DB
        brk
L9C84:  cpx     L8060
        cpy     #$00
        brk
        .byte   $FF
        brk
        brk
        ora     #$0C
        .byte   $54
        sta     $DBBE,y
        brk
        brk
        brk
        brk
        brk
        .byte   $1C
        adc     a:$25
        brk
        ora     ($06,x)
        .byte   $0B
        .byte   $53
        .byte   $B7
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        pha
        .byte   $FF
        .byte   $03
        cpx     #$6D
        bcc     L9C84
        cmp     $DBFE,y
        brk
        brk
        brk
        brk
        brk
        .byte   $FC
        brk
        cpx     #$00
        brk
        .byte   $42
        .byte   $82
        .byte   $C3
        .byte   $EB
        .byte   $D3
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        .byte   $E3
        brk
        .byte   $4B
        brk
        brk
        asl     a
        .byte   $12
        asl     $5B,x
        .byte   $BB
        .byte   $DB
        brk
        brk
        brk
L9CD6:  brk
        brk
        .byte   $17
        pha
        cpx     #$00
        brk
        eor     $AC
        beq     L9CD6
        .byte   $FA
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        sty     $4B48
        brk
        brk
        and     $49
        .byte   $92
        ldx     $B7,y
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L9D66
        dec     $DB,x
        cpy     $6944
        .byte   $92
        eor     ($44,x)
        sta     $498E
        .byte   $D7
        beq     L9D0A
L9D0A:  sta     $D68D
        .byte   $DB
        sta     L8D44
        .byte   $92
        sta     L8D8D
        sta     L8D49
        sta     L8D00
        sta     $DBD6
        sta     L8D44
        .byte   $92
        sta     L8D8D
        sta     L8D49
        sta     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        sta     $4900
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
        sta     $4900
        brk
        brk
        brk
        iny
        cpx     #$B6
        .byte   $DB
        eor     #$A0
        sty     $DB
        .byte   $44
        .byte   $44
        sta     $2544
        cpx     #$AD
        brk
        adc     #$69
        adc     #$69
        adc     #$44
        adc     #$69
        eor     #$49
        eor     #$49
L9D66:  eor     #$49
        eor     #$00
        adc     #$69
        adc     #$69
        adc     #$44
        adc     #$69
        eor     #$49
        eor     #$49
        eor     #$49
        eor     #$49
        .byte   $FF
        brk
        brk
        eor     ($A0,x)
        cpx     #$E9
        .byte   $F7
        .byte   $DB
        brk
L9D84:  cpx     L8060
        cpy     #$00
        brk
        .byte   $FF
        brk
        brk
        ora     #$0C
        .byte   $54
        sta     $DBBE,y
        brk
        brk
        brk
        brk
        brk
        .byte   $1C
        sta     a:$93
        brk
        ora     ($06,x)
        .byte   $0B
        .byte   $53
        .byte   $B7
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        eor     #$FF
        .byte   $03
        cpx     #$6D
        bcc     L9D84
        cmp     $DBFE,y
        brk
        brk
        brk
        brk
        brk
        .byte   $FC
        brk
        cpx     #$00
        brk
        .byte   $42
        .byte   $82
        .byte   $C3
        .byte   $EB
        .byte   $D3
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        .byte   $E3
        brk
        .byte   $93
        brk
        brk
        asl     a
        .byte   $12
        asl     $5B,x
        .byte   $BB
        .byte   $DB
        brk
        brk
        brk
L9DD6:  brk
        brk
        .byte   $17
        eor     #$E0
        brk
        brk
        eor     $AC
        beq     L9DD6
        .byte   $FA
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        sty     L9349
        brk
        brk
        and     $49
        .byte   $92
        ldx     $B7,y
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L9DFA:  beq     L9E66
        .byte   $DA
        .byte   $DB
        cpy     $4A02
        stx     $4A41
        .byte   $92
        stx     $D625
        beq     L9E0A
L9E0A:  adc     $D490
        cmp     $DBFE,y
        brk
        ora     #$0C
        .byte   $54
        sta     $DBBE,y
        brk
        brk
        brk
        .byte   $64
        tay
        cpx     $F5F0
        .byte   $DB
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
        .byte   $42
        .byte   $82
        .byte   $C3
        .byte   $EB
        .byte   $D3
        .byte   $DB
        brk
        asl     a
        .byte   $12
        asl     $5B,x
        .byte   $BB
        .byte   $DB
        brk
        brk
        brk
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        .byte   $02
        lsr     a
        lsr     a
        and     $25
        and     $25
        and     $25
        and     L0000
        lda     ($E0),y
        ldx     $DB,y
        lda     ($8D),y
        pla
        pla
        .byte   $44
        rol     $92
        and     $25
        cpy     a:$F0
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        .byte   $02
        lsr     a
        lsr     a
        and     $25
        and     $25
L9E66:  and     $25
        and     L0000
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        .byte   $02
        lsr     a
        lsr     a
        and     $25
        and     $25
        and     $25
        and     $25
        .byte   $FF
        brk
        brk
        eor     ($A0,x)
        cpx     #$E9
        .byte   $F7
        .byte   $DB
        brk
L9E84:  brk
        brk
        brk
        brk
        cpx     #$00
        cpx     #$00
L9E8C:  brk
        ora     #$0C
L9E8F:  .byte   $54
        sta     $DBBE,y
        brk
        brk
        brk
        brk
        brk
        .byte   $1C
        brk
        .byte   $4B
        brk
        brk
        ora     ($06,x)
        .byte   $0B
        .byte   $53
        .byte   $B7
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        brk
        .byte   $FF
        .byte   $03
        cpx     #$6D
        bcc     L9E84
        cmp     $DBFE,y
        brk
        brk
        brk
        brk
        brk
        .byte   $FC
        brk
        cpy     #$00
        brk
        .byte   $42
        .byte   $82
        .byte   $C3
L9EC0:  .byte   $EB
        .byte   $D3
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        .byte   $E3
        brk
        .byte   $4B
        brk
        brk
        asl     a
        .byte   $12
        asl     $5B,x
        .byte   $BB
        .byte   $DB
        brk
        brk
        brk
L9ED6:  brk
        brk
        .byte   $17
        .byte   $92
        .byte   $FF
        brk
        brk
        eor     $AC
        beq     L9ED6
        .byte   $FA
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
L9EE8:  sty     $02D6
        brk
        brk
        and     $49
        .byte   $92
        ldx     $B7,y
        .byte   $DB
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
L9F2A:  brk
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
L9F4C:  brk
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
        bpl     L9F4C
        .byte   $92
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        .byte   $F3
        eor     #$25
        ora     ($10,x)
        bpl     L9F8D
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
L9F84:  .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        brk
        cpx     #$00
        brk
L9F8D:  ora     #$0C
        .byte   $54
        sta     $DBBE,y
        brk
        brk
        brk
        brk
        brk
        .byte   $1C
        brk
        .byte   $4B
        brk
        brk
        ora     ($06,x)
        .byte   $0B
        .byte   $53
        .byte   $B7
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        brk
        .byte   $FF
        .byte   $03
        cpx     #$6D
        bcc     L9F84
        cmp     $DBFE,y
        brk
        brk
        brk
        brk
        brk
        .byte   $FC
        brk
        cpy     #$00
        brk
        .byte   $42
        .byte   $82
        .byte   $C3
        .byte   $EB
        .byte   $D3
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        .byte   $E3
        brk
        .byte   $4B
        brk
        brk
        asl     a
        .byte   $12
        asl     $5B,x
        .byte   $BB
        .byte   $DB
        brk
        brk
        brk
L9FD6:  brk
        brk
        .byte   $17
        brk
        ldy     #$00
        brk
        eor     $AC
        beq     L9FD6
        .byte   $FA
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        sty     $0200
        brk
        brk
        and     $49
        .byte   $92
        ldx     $B7,y
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $13
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
        cpx     #$A0
        rts

        .byte   $F4
        cpy     $1888
        .byte   $0C
        .byte   $04
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
LA02E:  brk
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
        and     $FF
        brk
        brk
        eor     ($A0,x)
        cpx     #$E9
        .byte   $F7
        .byte   $DB
        brk
LA084:  cpx     L8060
        cpy     #$00
        brk
        .byte   $FF
        brk
        brk
        ora     #$0C
        .byte   $54
        sta     $DBBE,y
        brk
        brk
        brk
        brk
        brk
        .byte   $1C
        .byte   $92
        .byte   $02
        brk
        brk
        ora     ($06,x)
        .byte   $0B
        .byte   $53
        .byte   $B7
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        and     $FF
        .byte   $03
        cpx     #$6D
        bcc     LA084
        cmp     $DBFE,y
        brk
        brk
        brk
        brk
        brk
        .byte   $FC
        brk
        cpx     #$00
        brk
        .byte   $42
        .byte   $82
        .byte   $C3
        .byte   $EB
        .byte   $D3
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        .byte   $E3
        brk
        .byte   $93
        brk
        brk
        asl     a
        .byte   $12
        asl     $5B,x
        .byte   $BB
        .byte   $DB
        brk
        brk
        brk
LA0D6:  brk
        brk
        .byte   $17
        and     $E0
        brk
        brk
        eor     $AC
        beq     LA0D6
        .byte   $FA
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        sty     L9325
        brk
        brk
        and     $49
        .byte   $92
        ldx     $B7,y
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        brk
        lda     $08
        cmp     #$FB
        bne     LA102
        jsr     LC391
LA102:  lda     $08
        cmp     #$EF
        bne     LA10B
        jsr     LC391
LA10B:  rts

        lda     $0641
        clc
        adc     #$01
        and     #$07
        sta     $0641
        tax
        lda     $E135,x
        sta     $20FB
        lda     $11
        bne     LA134
        lda     $0642
        clc
        adc     #$01
        and     #$07
        sta     $0642
        tax
        lda     $E13D,x
        sta     $20F6
LA134:  rts

        brk
        .byte   $E3
        .byte   $03
        .byte   $FF
        .byte   $1C
        cpx     #$1F
        .byte   $FC
        .byte   $92
        .byte   $B2
        .byte   $D2
        .byte   $F2
        .byte   $F2
        .byte   $D2
        .byte   $B2
        .byte   $92
        ldx     $45
        lda     $E1FD,x
        sta     $0653
        lda     $E200,x
        sta     $0654
        lda     $0670
        beq     LA1A9
        ldx     #$00
LA15A:  txa
        asl     a
        tay
        lda     $E203,y
        sta     $5A
        lda     $E204,y
        sta     $5B
        cpx     $0670
        bne     LA17E
        lda     $0671
        and     #$03
        bne     LA178
        lda     #$FF
        clv
        bvc     LA17B
LA178:  lda     $0653
LA17B:  clv
        bvc     LA181
LA17E:  lda     $0654
LA181:  ldy     #$00
        sta     ($5A),y
        inx
        cpx     #$06
        bne     LA15A
        dec     $0671
        lda     $0671
        bne     LA1A6
        lda     $0670
        cmp     #$01
        bne     LA1A1
        lda     #$64
        sta     $0671
        clv
        bvc     LA1A6
LA1A1:  lda     #$00
        sta     $0670
LA1A6:  clv
        bvc     LA1FC
LA1A9:  lda     $0672
        beq     LA1FC
        ldx     #$00
LA1B0:  txa
        asl     a
        tay
        lda     $E20F,y
        sta     $5A
        lda     $E210,y
        sta     $5B
        cpx     $0672
        bne     LA1D4
        lda     $0673
        and     #$03
        bne     LA1CE
        lda     #$FF
        clv
        bvc     LA1D1
LA1CE:  lda     $0653
LA1D1:  clv
        bvc     LA1D7
LA1D4:  lda     $0654
LA1D7:  ldy     #$00
        sta     ($5A),y
        inx
        cpx     #$06
        bne     LA1B0
        dec     $0673
        lda     $0673
        bne     LA1FC
        lda     $0672
        cmp     #$01
        bne     LA1F7
        lda     #$64
        sta     $0673
        clv
        bvc     LA1FC
LA1F7:  lda     #$00
        sta     $0672
LA1FC:  rts

        .byte   $02
        and     $44
        .byte   $92
        adc     $108D
        jsr     L2011
        .byte   $12
        jsr     L2015
        .byte   $17
        jsr     L2019
        jsr     L2120
        jsr     L2022
        and     L0020
        .byte   $27
        jsr     L2029
        lda     $06C6
        beq     LA228
        jsr     LE36C
        lda     #$00
        sta     $06C6
LA228:  lda     $08
        beq     LA22D
        rts

LA22D:  lda     $2D
        beq     LA232
        rts

LA232:  lda     $43
        beq     LA237
        rts

LA237:  lda     $0B
        cmp     #$01
        beq     LA23E
        rts

LA23E:  clc
        lda     $069B
        adc     $069C
        beq     LA248
        rts

LA248:  lda     $0F
        and     #$0F
        beq     LA24F
        rts

LA24F:  lda     #$00
        sta     $069A
        lda     $35
        beq     LA25B
        jmp     LE29B

LA25B:  lda     $36
        beq     LA262
        jmp     LE29B

LA262:  lda     $30
        cmp     $32
        bcs     LA26D
        lda     #$01
        sta     $069A
LA26D:  lda     $32
        cmp     $30
        bcs     LA278
        lda     #$02
        sta     $069A
LA278:  lda     $069A
        bne     LA293
        lda     $31
        cmp     $33
        bcs     LA288
        lda     #$01
        sta     $069A
LA288:  lda     $33
        cmp     $31
        bcs     LA293
        lda     #$02
        sta     $069A
LA293:  ldx     $45
        lda     $E200,x
        sta     $0654
        lda     $069A
        cmp     #$00
        bne     LA2C0
        ldx     #$00
LA2A4:  txa
        asl     a
        tax
        lda     $E2FD,x
        sta     $47
        lda     $E2FE,x
        sta     $48
        lda     $0654
        ldy     #$00
        sta     ($47),y
        txa
        lsr     a
        tax
        inx
        cpx     #$0A
        bcc     LA2A4
LA2C0:  lda     $069A
        cmp     #$01
        bne     LA2DE
        lda     #$80
        sta     $0654
        ldx     #$00
LA2CE:  txa
        asl     a
        tax
        lda     $E2FD,x
        sta     $47
        lda     $E2FE,x
        jsr     LE31D
        bcc     LA2CE
LA2DE:  lda     $069A
        cmp     #$02
        bne     LA2FC
        lda     #$02
        sta     $0654
        ldx     #$00
LA2EC:  txa
        asl     a
        tax
        lda     $E30D,x
        sta     $47
        lda     $E30E,x
        jsr     LE31D
        bcc     LA2EC
LA2FC:  rts

        .byte   $1A
        jsr     L202A
        .byte   $1C
        jsr     L201E
        .byte   $1F
        jsr     L202C
        rol     $2F20
        jsr     L201A
        rol     a
        jsr     L202C
        rol     $2F20
        jsr     L201C
        asl     $1F20,x
        jsr     L4885
        txa
        lsr     a
        tax
        cpx     #$02
        bcs     LA330
        lda     $0654
        ldy     #$00
        sta     ($47),y
        clv
        bvc     LA368
LA330:  cpx     #$05
        bcc     LA340
        ldy     $45
        lda     $E200,y
        ldy     #$00
        sta     ($47),y
        clv
        bvc     LA368
LA340:  lda     $0F
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        and     #$03
        clc
        adc     #$02
        sta     $0653
        cpx     $0653
        bne     LA35B
        lda     $0654
        sta     $49
        clv
        bvc     LA362
LA35B:  ldy     $45
        lda     $E200,y
        sta     $49
LA362:  lda     $49
        ldy     #$00
        sta     ($47),y
LA368:  inx
        cpx     #$08
        rts

        txa
        pha
        ldx     $45
        lda     $E200,x
        sta     $06C2
        ldx     #$00
LA378:  txa
        asl     a
        tax
        lda     $E2FD,x
        sta     $47
        lda     $E2FE,x
        sta     $48
        lda     $06C2
        ldy     #$00
        sta     ($47),y
        txa
        lsr     a
        tax
        inx
        cpx     #$0A
        bcc     LA378
        pla
        tax
        lda     $0F
        and     #$01
        bne     LA3D1
        lda     $77
        beq     LA3CE
        lda     $E40E
        sta     $5A
        lda     $E40F
        sta     $5B
        lda     $0615
        cmp     #$01
        bcc     LA3CE
        ldx     #$00
LA3B3:  stx     $47
        lda     $0615
        sec
        sbc     #$01
        tay
        lda     $E404,x
        cpy     $47
        bcs     LA3C5
        lda     #$00
LA3C5:  ldy     $47
        sta     ($5A),y
        inx
        cpx     #$09
        bcc     LA3B3
LA3CE:  clv
        bvc     LA403
LA3D1:  lda     $78
        beq     LA403
        lda     $0617
        cmp     #$01
        bcc     LA403
        lda     $E410
        sta     $5A
        lda     $E411
        sta     $5B
        ldx     #$00
LA3E8:  stx     $47
        lda     $0617
        sec
        sbc     #$01
        tay
        lda     $E404,x
LA3F4:  cpy     $47
        bcs     LA3FA
        lda     #$00
LA3FA:  ldy     $47
        sta     ($5A),y
        inx
        cpx     #$09
        bcc     LA3E8
LA403:  rts

        .byte   $03
        .byte   $1F
        .byte   $1C
        .byte   $5C
        .byte   $FC
        sed
        beq     LA3F4
        cpx     #$E0
        and     (L0020),y
        eor     (L0020,x)
        lda     #$00
        sta     $064C
        ldx     #$00
        jsr     LE428
        rts

        lda     #$18
        sta     $064C
        ldx     #$01
        jsr     LE428
        rts

        lda     $0F
        lsr     a
        lsr     a
        and     #$07
        tay
        lda     $E4E0,y
        sta     $49
        ldy     $45
        lda     $E4E8,y
        .byte   $85
LA43A:  jmp     L45A4

        lda     $E4EB,y
        sta     $4D
        lda     $77,x
        beq     LA48B
        lda     $35,x
        cmp     #$02
        bne     LA48B
        inc     $0674
        lda     $0674
        cmp     #$0C
        bcc     LA45B
        lda     #$00
        sta     $0674
LA45B:  tay
        lda     $E4D4,y
        sta     $47
        ldx     #$00
LA463:  txa
        asl     a
        clc
        adc     $064C
        tay
        lda     $E48C,y
        sta     $5A
        lda     $E48D,y
        sta     $5B
        lda     $4C
        cpx     #$06
        bcc     LA47C
        lda     $4D
LA47C:  cpx     $47
        bne     LA482
        lda     $49
LA482:  ldy     #$00
        sta     ($5A),y
        inx
        cpx     #$0C
        bcc     LA463
LA48B:  rts

        adc     (L0020,x)
        .byte   $62
        jsr     L2063
        .byte   $64
        jsr     L2065
        pla
        jsr     L2069
        ror     a
        jsr     L206B
        jmp     (L6E20)

        jsr     L206F
        adc     (L0020),y
        .byte   $72
        jsr     L2073
        .byte   $74
        jsr     L2075
        sei
        jsr     L2079
        .byte   $7A
        jsr     L207B
        .byte   $7C
        jsr     L207E
        .byte   $7F
        jsr     L2041
        .byte   $42
        jsr     L2043
        .byte   $44
        jsr     L2045
        pha
        jsr     L2049
        lsr     a
        jsr     L204B
        jmp     L4E20

        jsr     L204F
        ora     $04
        .byte   $03
        .byte   $02
        ora     (L0000,x)
        asl     $07
        php
        ora     #$0A
        .byte   $0B
LA4E0:  .byte   $1C
        .byte   $1F
        .byte   $03
        .byte   $E3
        cpx     #$F0
        .byte   $FC
        .byte   $FF
        lsr     a
        sty     $2569
        pha
        eor     #$A5
        php
        cmp     #$FE
        bne     LA569
        lda     $0F
        lsr     a
        lsr     a
        and     #$07
        tay
        lda     $E4E0,y
        sta     $49
        inc     $0674
        lda     $0674
        cmp     #$0C
        bcc     LA50F
        lda     #$00
        sta     $0674
LA50F:  tay
        lda     $E4D4,y
        sta     $47
        ldx     #$00
LA517:  txa
        asl     a
        tay
        lda     $E48C,y
        sta     $5A
        lda     $E48D,y
        sta     $5B
        lda     $068C
        cmp     #$01
        bne     LA538
        lda     $E4A4,y
        sta     $5A
        lda     $E4A5,y
        sta     $5B
        clv
        bvc     LA549
LA538:  lda     $068C
        cmp     #$02
        bne     LA549
        lda     $E4BC,y
        sta     $5A
        lda     $E4BD,y
        sta     $5B
LA549:  lda     $E4E8
        cpx     #$06
        bcc     LA553
        lda     $E4EB
LA553:  ldy     $46
        cpy     $068C
        bne     LA560
        cpx     $47
        bne     LA560
        lda     $49
LA560:  ldy     #$00
        sta     ($5A),y
        inx
        cpx     #$0C
        bcc     LA517
LA569:  lda     $46
        sta     $068C
        rts

        lda     #$00
        sta     $064C
        ldx     #$00
        jsr     LE585
        rts

        lda     #$18
        sta     $064C
        ldx     #$01
        jsr     LE585
        rts

        lda     $0F
        lsr     a
        lsr     a
        and     #$07
        tay
        lda     $E4E0,y
        sta     $49
        ldy     $45
        lda     $E4E8,y
        sta     $4C
        ldy     $45
        lda     $E4EB,y
        sta     $4D
        lda     $77
        beq     LA61C
        lda     #$00
        sta     $4A
        sta     $4B
        lda     $43
        beq     LA5B3
LA5AD:  lda     #$01
        sta     $4A
        sta     $4B
LA5B3:  lda     $067B,x
        beq     LA5BB
        dec     $067B,x
LA5BB:  lda     $067B,x
        beq     LA5C4
        lda     #$01
        sta     $4B
LA5C4:  lda     $067B,x
        cmp     #$01
        bne     LA5CF
        lda     #$01
        sta     $4A
LA5CF:  lda     $35,x
        cmp     #$04
        bcc     LA5DB
        lda     #$01
        sta     $4A
        sta     $4B
LA5DB:  lda     $35,x
        cmp     #$03
        bne     LA5E3
        sta     $4B
LA5E3:  lda     $4B
        beq     LA61C
        inc     $0675,x
        lda     $0675,x
        cmp     #$06
        bcc     LA5F6
        lda     #$00
        sta     $0675,x
LA5F6:  asl     a
        tay
        lda     $E61D,y
        sta     $47
        lda     $E61E,y
        sta     $48
        ldx     #$00
LA604:  txa
        asl     a
        clc
        adc     $064C
        tay
        lda     $E48C,y
        sta     $5A
        lda     $E48D,y
        sta     $5B
        jsr     LE629
        cpx     #$0C
        bcc     LA604
LA61C:  rts

        ora     $0B
        .byte   $04
        asl     a
        .byte   $03
        ora     #$02
        php
        ora     ($07,x)
        brk
        asl     $A5
        jmp     L06E0

        bcc     LA631
        lda     $4D
LA631:  ldy     $4A
        cpy     #$00
        bne     LA643
        cpx     $47
        bne     LA63D
        lda     $49
LA63D:  cpx     $48
        bne     LA643
        lda     $49
LA643:  ldy     #$00
        sta     ($5A),y
        inx
        rts

        pha
        jsr     LD5C2
        pla
        jmp     L402D

        pha
        jsr     LD5C2
        pla
        jmp     L4004

        pha
        jsr     LD5C2
        pla
        jmp     L4141

        sei
        cld
        ldx     #$FF
        txs
        inx
        lda     L6000
        lda     $754F
        lda     $6090
        lda     $7541
        lda     $7543
        lda     $7552
        lda     $6090
        ldy     #$18
        lda     #$30
LA680:  sta     $0600,y
        dey
        bpl     LA680
        lda     #$20
        sta     $065B
        sta     $065C
        sta     $065D
        sta     $065E
        sta     $065F
        sta     $0660
        sta     $0661
        sta     $0662
        inx
        stx     $17
        jsr     LEECE
        jsr     LE6AD
        cli
        jmp     L9A45

        ldy     #$00
LA6AF:  lda     $0979,y
        cmp     #$30
        bcc     LA6F9
        cmp     #$3A
        bcs     LA6F9
        iny
        cpy     #$24
        bcc     LA6AF
        ldy     #$00
LA6C1:  lda     $0979,y
        cmp     #$30
        bne     LA6D6
        lda     $097A,y
        cmp     #$30
        bne     LA6D6
        lda     $097B,y
        cmp     #$37
        bcc     LA6F9
LA6D6:  tya
        clc
        adc     #$06
        tay
        cpy     #$24
        bcc     LA6C1
        ldy     #$00
LA6E1:  lda     $09D9,y
        cmp     #$20
        beq     LA6F0
        cmp     #$41
        bcc     LA6F9
        cmp     #$5B
        bcs     LA6F9
LA6F0:  iny
        cpy     #$12
        bcc     LA6E1
        ldy     #$24
        bne     LA700
LA6F9:  lda     #$01
        jsr     LF1D4
        ldy     #$00
LA700:  sty     $1D
        ldx     $1D
        lda     #$03
        sta     $1B
LA708:  lda     $F2FA,y
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        ora     #$30
        sta     $0979,x
        inx
        lda     $F2FA,y
        and     #$0F
        ora     #$30
        sta     $0979,x
        inx
        iny
        dec     $1B
        bne     LA708
        lda     $1D
        lsr     a
        tax
        lda     $F2FA,y
        sta     $09D9,x
        iny
        inx
        lda     $F2FA,y
        sta     $09D9,x
        iny
        inx
        lda     $F2FA,y
        sta     $09D9,x
        iny
        inx
        cpy     #$60
        bcc     LA700
        lda     #$80
        sta     $0663
        sta     $0664
        rts

        .byte   $82
        ora     ($B6),y
        ora     ($88),y
        .byte   $12
        clv
        .byte   $12
        .byte   $02
        ora     $1102
        .byte   $14
        asl     a
        .byte   $14
        asl     a
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
        bpl     LA790
        rti

        clc
        bpl     LA798
        rti

        .byte   $1C
        stx     $1B
        txa
        asl     a
        asl     a
        tay
        lda     $065B,y
        ora     $065C,y
        ora     $065D,y
        beq     LA793
        .byte   $C9
LA790:  jsr     L30D0
LA793:  lda     $280A
        and     #$3C
LA798:  tax
        php
        sei
        lda     L6000
        lda     $754F
        lda     $60B0
        lda     $7540
        lda     $7542
        lda     $7554
        lda     $60A0
        plp
        lda     $765C,x
        sta     $065B,y
        lda     $765D,x
        sta     $065C,y
        lda     $765E,x
        sta     $065D,y
        ldx     $1B
        lda     #$01
        sta     $0665,x
        lda     #$00
        sta     $0667,x
        sta     $0669,x
        lda     #$50
        sta     $066B,x
        txa
        clc
        adc     #$52
        jsr     LD670
        lda     #$0D
        jsr     LE659
        rts

        stx     $1B
        lda     $066B,x
        beq     LA7F5
        ldy     $12
        bne     LA7F5
        dec     $066B,x
        jsr     LE90A
LA7F5:  lda     $0669,x
        cmp     #$03
        bcs     LA801
        lda     $066B,x
        bne     LA804
LA801:  jmp     LE973

LA804:  txa
        asl     a
        asl     a
        adc     $0669,x
        tay
        lda     $29,x
        and     #$01
        beq     LA82D
        lda     $065B,y
        cmp     #$3F
        beq     LA81D
        inc     $0669,x
        bne     LA82A
LA81D:  lda     $0669,x
        beq     LA82A
        lda     #$20
        sta     $065B,y
        dec     $0669,x
LA82A:  clv
        bvc     LA879
LA82D:  lda     $29,x
        and     #$0C
        beq     LA84A
        lda     #$00
        sta     $0667,x
        lda     $29,x
        and     #$04
        beq     LA844
        jmp     LE8AC

        clv
        bvc     LA847
LA844:  jmp     LE8CF

LA847:  clv
        bvc     LA879
LA84A:  lda     $27,x
        and     #$0E
        beq     LA874
        lda     $0667,x
        clc
        adc     #$01
        sta     $0667,x
        cmp     #$0C
        bcc     LA871
        lda     #$00
        sta     $0667,x
        lda     $27,x
LA864:  and     #$04
        beq     LA86E
        jmp     LE8AC

        clv
        bvc     LA871
LA86E:  jmp     LE8CF

LA871:  clv
        bvc     LA879
LA874:  lda     #$00
        sta     $0667,x
LA879:  lda     $0669,x
        sta     $1C
        txa
        asl     a
        tay
        lda     $E776,y
        sta     $02
        lda     $E777,y
        sta     $03
        tya
        asl     a
        tax
        .byte   $A0
LA88F:  brk
LA890:  lda     $065B,x
        sta     ($02),y
        inc     $02
        cpy     $1C
        bne     LA89F
        lda     #$80
        bne     LA8A1
LA89F:  lda     #$90
LA8A1:  sta     ($02),y
        inx
        iny
        cpy     #$03
        bcc     LA890
        ldx     $1B
        rts

        lda     $065B,y
        cmp     #$5A
        bcc     LA8B7
        lda     #$3F
        bne     LA8CA
LA8B7:  cmp     #$3F
        bne     LA8BF
        lda     #$20
        bne     LA8CA
LA8BF:  cmp     #$20
        bne     LA8C7
        lda     #$41
        bne     LA8CA
LA8C7:  clc
        adc     #$01
LA8CA:  sta     $065B,y
        bne     LA8F0
        lda     $065B,y
        cmp     #$41
        bne     LA8DA
        lda     #$20
        bne     LA8ED
LA8DA:  cmp     #$20
        bne     LA8E2
        lda     #$3F
        bne     LA8ED
LA8E2:  cmp     #$3F
        bne     LA8EA
        lda     #$5A
        .byte   $D0
LA8E9:  .byte   $03
LA8EA:  sec
        sbc     #$01
LA8ED:  sta     $065B,y
LA8F0:  ldx     $1B
        lda     $0665,x
        beq     LA905
        lda     #$00
        sta     $0665,x
        lda     $066B,x
        clc
        adc     #$A0
        sta     $066B,x
LA905:  lda     #$15
        jmp     LE659

        cpx     #$00
        bne     LA912
        lda     #$C0
        bne     LA914
LA912:  lda     #$D0
LA914:  sta     $05
        txa
        asl     a
        tay
        lda     $E77A,y
        sta     $02
        lda     $E77B,y
        sta     $03
        ldy     #$00
        lda     $066B,x
        lsr     a
        lsr     a
        lsr     a
        cmp     #$1E
        bcc     LA938
        lda     #$33
        sta     ($02),y
        lda     #$1E
        clv
        bvc     LA958
LA938:  cmp     #$14
        bcc     LA945
        lda     #$32
        sta     ($02),y
        lda     #$14
        clv
        bvc     LA958
LA945:  cmp     #$0A
        bcc     LA952
        lda     #$31
        sta     ($02),y
        lda     #$0A
        clv
        bvc     LA958
LA952:  lda     #$20
        sta     ($02),y
        lda     #$00
LA958:  sta     $1F
        iny
        lda     $05
        sta     ($02),y
        iny
        lda     $066B,x
        lsr     a
        lsr     a
        lsr     a
        sec
        sbc     $1F
        ora     #$30
        sta     ($02),y
        iny
        lda     $05
        sta     ($02),y
        rts

        jsr     LEAD0
        lda     $0663,x
        bpl     LA97C
        rts

LA97C:  tay
        txa
        asl     a
        asl     a
        tax
        lda     $065B,x
        cmp     #$3F
        bne     LA98D
        lda     #$20
        sta     $065B,x
LA98D:  sta     $09D9,y
        sta     $0803
        lda     $065C,x
        cmp     #$3F
        bne     LA99F
        lda     #$20
        sta     $065C,x
LA99F:  sta     $09DA,y
        sta     $0804
        lda     $065D,x
        cmp     #$3F
        bne     LA9B1
        lda     #$20
        sta     $065D,x
LA9B1:  sta     $09DB,y
        sta     $0805
        txa
        lsr     a
        lsr     a
        tay
        lda     $0663,y
        eor     #$FF
        sta     $0663,y
        eor     #$FF
        cmp     #$24
        bcs     LA9F1
        txa
        sta     $1B
        lsr     a
        adc     $1B
        tax
        ldy     #$00
LA9D2:  lda     $0600,x
        asl     a
        asl     a
        asl     a
        asl     a
        sta     $1C
        lda     $0601,x
        and     #$0F
        ora     $1C
        sta     $0800,y
        iny
        inx
        inx
        cpy     #$03
        bcc     LA9D2
        jsr     LEFA1
        ldx     $1B
LA9F1:  txa
        lsr     a
        lsr     a
        tax
        eor     #$01
        tay
        lda     $0663,y
        bpl     LAA14
        cmp     #$80
        beq     LAA14
        cmp     $0663,x
        beq     LAA08
        bcs     LAA14
LAA08:  sec
        sbc     #$03
        cmp     #$A5
        bcs     LAA11
        lda     #$80
LAA11:  sta     $0663,y
LAA14:  rts

        bit     $0B
        bpl     LAA24
        txa
        eor     #$01
        tax
        jsr     LEA24
        txa
        eor     #$01
        tax
LAA24:  stx     $1B
        txa
        asl     a
        adc     $1B
        asl     a
        tay
        lda     $0619
        cmp     #$03
        bcc     LAA3E
        tya
        beq     LAA3E
        ldx     $1B
        lda     #$80
        sta     $0663,x
        rts

LAA3E:  ldx     #$5A
LAA40:  lda     $0605,y
        cmp     $097E,x
        lda     $0604,y
        sbc     $097D,x
        lda     $0603,y
        sbc     $097C,x
        lda     $0602,y
        sbc     $097B,x
        lda     $0601,y
        sbc     $097A,x
        lda     $0600,y
        sbc     $0979,x
        bcc     LAA6C
        txa
        sbc     #$06
        tax
        bcs     LAA40
LAA6C:  txa
        clc
        adc     #$06
        cmp     #$60
        beq     LAAC8
        sta     $1C
        ldx     #$5A
        cpx     $1C
        beq     LAA9C
LAA7C:  dex
        lda     $0979,x
        sta     $097F,x
        cpx     $1C
        bne     LAA7C
        lda     $1C
        lsr     a
        sta     $1C
        ldx     #$2D
LAA8E:  dex
        lda     $09D9,x
        sta     $09DC,x
        cpx     $1C
        bne     LAA8E
        txa
        asl     a
        tax
LAA9C:  lda     $0605,y
        sta     $097E,x
        lda     $0604,y
        sta     $097D,x
        lda     $0603,y
        sta     $097C,x
        lda     $0602,y
        sta     $097B,x
        lda     $0601,y
        sta     $097A,x
        lda     $0600,y
        sta     $0979,x
        txa
        lsr     a
        ldx     $1B
        sta     $0663,x
        rts

LAAC8:  ldx     $1B
        lda     #$80
        sta     $0663,x
        rts

        stx     $1B
        txa
        asl     a
        adc     $1B
        asl     a
        tay
        ldx     #$5A
LAADA:  lda     $0605,y
        cmp     $097E,x
        lda     $0604,y
        sbc     $097D,x
        lda     $0603,y
        sbc     $097C,x
        lda     $0602,y
        sbc     $097B,x
        lda     $0601,y
        sbc     $097A,x
        lda     $0600,y
        sbc     $0979,x
        bcc     LAB06
        txa
        sbc     #$06
        tax
        bcs     LAADA
LAB06:  txa
        clc
        adc     #$06
        cmp     #$60
        beq     LAB15
        ldx     $1B
        lsr     a
        sta     $0663,x
        rts

LAB15:  ldx     $1B
        lda     #$80
        sta     $0663,x
        rts

        jsr     LEB28
        jsr     LEB8C
        clc
        rts

        brk
        .byte   $80
        ora     $C6
        rts

        bne     LAB5B
        lda     #$FA
        sta     $60
        lda     $08
        bne     LAB42
        ldx     #$00
LAB36:  lda     $77,x
        beq     LAB3D
        jsr     LEB5C
LAB3D:  inx
        cpx     #$02
        bne     LAB36
LAB42:  ldx     #$00
        lda     $08
        bne     LAB58
        lda     $77
        ora     $78
        beq     LAB58
        ldx     #$04
        lda     $77
        and     $78
        beq     LAB58
        ldx     #$08
LAB58:  jsr     LEB6F
LAB5B:  rts

        clc
        lda     $06C7,x
        adc     #$01
        cmp     #$3C
        bcc     LAB6B
        inc     $06C9,x
        lda     #$00
LAB6B:  sta     $06C7,x
        rts

        lda     $06CE,x
        clc
        adc     #$01
        cmp     #$3C
        bcc     LAB88
        inc     $06CD,x
        bne     LAB86
        inc     $06CC,x
        bne     LAB86
        inc     $06CB,x
LAB86:  lda     #$00
LAB88:  sta     $06CE,x
        rts

        lda     $0643
        beq     LAB96
        dec     $0643
        bne     LABBF
LAB96:  jsr     LEBC0
        bcs     LABBA
        ldx     $55
        cpx     $54
        beq     LABBA
        lda     $0820,x
        inx
        pha
        lda     $0820,x
        inx
        tay
        pla
        sta     $3400
        sta     $25E0,y
        cpx     #$28
        bcc     LABB8
        ldx     #$00
LABB8:  stx     $55
LABBA:  lda     #$04
        sta     $0643
LABBF:  rts

        ldy     $6E
        cpy     #$FF
        beq     LABFC
        lda     $08FB,y
        cmp     ($72),y
        beq     LABE7
        inc     $6F
        lda     $6F
        cmp     #$0A
        bcc     LABF2
        ldx     $70
        lda     $0884,x
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        sta     $74
        lda     #$FF
        sta     $0884,x
        bne     LAC1F
LABE7:  dey
        sty     $6E
        cpy     #$FF
        beq     LABFC
        lda     #$00
        sta     $6F
LABF2:  lda     $08FB,y
        sta     $3400
        sta     ($72),y
        sec
        rts

LABFC:  ldx     $6D
        cpx     $6C
        bne     LAC04
        clc
        rts

LAC04:  lda     $090B,x
        sta     $74
        jsr     LEC96
        lda     #$0F
        sta     $6E
        lda     #$00
        sta     $6F
        ldx     $6D
        inx
        cpx     #$09
        bcc     LAC1D
LAC1B:  ldx     #$00
LAC1D:  stx     $6D
LAC1F:  jsr     LEE3B
        cpx     #$FF
        beq     LAC45
        ldy     $74
        lda     $0884,x
        and     #$0F
        sta     $69
        lda     $08A2,y
        sec
        sbc     $69
        bcs     LAC3E
        lda     $08A2,y
        ora     #$10
        sbc     $69
LAC3E:  cmp     #$06
        bcc     LAC45
        jmp     LEC6E

LAC45:  ldy     $71
        lda     $0884,y
        cmp     #$FF
        beq     LAC67
        and     #$0F
        sta     $69
        lda     $0884,y
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        tax
        lda     $08A2,x
        cmp     $69
        bne     LAC67
        jsr     LEE0E
        jmp     LEC45

LAC67:  tya
        pha
        jsr     LEE0E
        pla
        tax
        ldy     $ED03
        lda     $08FB,y
        sta     $0884,x
        txa
        sta     $70
        jsr     LEE23
        ldy     $74
        lda     $08A2,y
        clc
        adc     #$01
        and     #$0F
        sta     $08A2,y
        ldy     $6E
        lda     $08FB,y
        sta     $3400
        sta     ($72),y
        sec
        rts

        stx     $67
        lda     #$00
        sta     $08FB
        sta     $08FC
        sta     $08FD
        sta     $08FF
        sta     $0903
        ldy     $74
        tya
        asl     a
        asl     a
        asl     a
        asl     a
        sta     $68
        lda     $08A2,y
        clc
        adc     #$01
        and     #$0F
        ora     $68
        ldx     $ED03
        sta     $08FB,x
        jsr     LED09
        lda     $67
        jsr     LEE1B
        tay
        ldx     #$00
LACCD:  lda     $ECF9,x
        stx     $67
        tax
        lda     $0914,y
        sta     $08FB,x
        jsr     LED09
        ldx     $67
        iny
        inx
        cpx     #$0A
        bne     LACCD
        lda     $08FB
        eor     $08FC
        eor     $08FD
        eor     $08FF
        eor     $0903
        eor     #$FF
        sta     $08FB
        rts

        .byte   $03
        ora     $06
        .byte   $07
        ora     #$0A
        .byte   $0B
        .byte   $0C
        ora     $0F0E
        brk
        ora     ($02,x)
        .byte   $04
        php
        pha
        stx     $68
        lsr     $68
        bcc     LAD18
        pla
        pha
        eor     $08FC
        sta     $08FC
LAD18:  lsr     $68
        bcc     LAD24
        pla
        pha
        eor     $08FD
        sta     $08FD
LAD24:  lsr     $68
        bcc     LAD30
        pla
        pha
        eor     $08FF
        sta     $08FF
LAD30:  lsr     $68
        bcc     LAD3C
        pla
        pha
        eor     $0903
        sta     $0903
LAD3C:  pla
        eor     $08FB
        sta     $08FB
        rts

        txa
        pha
        jsr     LEE23
        ldy     #$00
LAD4B:  lda     ($72),y
        sta     $08FB,y
        iny
        cpy     #$10
        bne     LAD4B
        lda     $08FB
        eor     #$FF
        eor     $08FC
        eor     $08FD
        .byte   $4D
        .byte   $FF
LAD62:  php
        eor     $0903
        sta     $08FB
        ldy     #$00
LAD6B:  lda     $ECF9,y
        tax
        lda     $08FB,x
        sta     $096E,y
        jsr     LED09
        iny
        cpy     #$0B
        bne     LAD6B
        lda     $08FB
        ora     $08FC
        ora     $08FD
        ora     $08FF
        ora     $0903
        beq     LADEA
        lda     $08FB
        beq     LADF7
        lda     #$01
        sta     $68
LAD97:  lda     #$00
        sta     $67
        lda     $0903
        and     $68
        beq     LADA8
        lda     #$08
        ora     $67
        sta     $67
LADA8:  lda     $08FF
        and     $68
        beq     LADB5
        lda     #$04
        ora     $67
        sta     $67
LADB5:  lda     $08FD
        and     $68
        beq     LADC2
        lda     #$02
        ora     $67
        sta     $67
LADC2:  lda     $08FC
        and     $68
        beq     LADCF
        lda     #$01
        ora     $67
        sta     $67
LADCF:  lda     $08FB
        and     $68
        beq     LADE6
        ldx     $67
        lda     $EDFE,x
        bmi     LADF3
        tax
        lda     $096E,x
        eor     $68
        sta     $096E,x
LADE6:  asl     $68
        bcc     LAD97
LADEA:  pla
        tax
        lda     $0978
        sta     $0884,x
        rts

LADF3:  lda     $67
        beq     LADE6
LADF7:  lda     #$FF
        sta     $0978
        bne     LADEA
        .byte   $FF
        inc     a:$FD,x
        .byte   $FC
        ora     ($02,x)
        .byte   $03
        .byte   $FB
        .byte   $04
        ora     $06
        .byte   $07
        php
        ora     #$0A
        inc     $71
        lda     $71
        cmp     #$1E
        bcc     LAE1A
        lda     #$00
        sta     $71
LAE1A:  rts

        asl     a
        sta     $6A
        asl     a
        asl     a
        adc     $6A
        rts

        ldx     #$00
        stx     $6A
        asl     a
        asl     a
        asl     a
        rol     $6A
        asl     a
        rol     $6A
        clc
        adc     #$00
        sta     $72
        lda     $6A
        adc     #$24
        sta     $73
        rts

        ldx     #$1D
        lda     #$FF
        sta     $69
LAE41:  lda     $0884,x
        cmp     #$FF
        beq     LAE76
        sta     $68
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        cmp     $74
        bne     LAE76
        ldy     $69
        cpy     #$FF
        beq     LAE74
        lda     $68
        and     #$0F
        sta     $68
        lda     $0884,y
        and     #$0F
        sec
        sbc     $68
        bcs     LAE70
        eor     #$FF
        cmp     #$08
        bcs     LAE74
        bcc     LAE76
LAE70:  cmp     #$08
        bcs     LAE76
LAE74:  stx     $69
LAE76:  dex
        bpl     LAE41
        ldx     $69
        rts

        sta     $66
        txa
        pha
        tya
        pha
        ldx     $6D
        cpx     $6C
        beq     LAE9E
LAE88:  lda     $090B,x
        cmp     $66
        bne     LAE93
        cpx     $6D
        bne     LAEAE
LAE93:  inx
        cpx     #$09
        bcc     LAE9A
        ldx     #$00
LAE9A:  cpx     $6C
        bne     LAE88
LAE9E:  lda     $66
        sta     $090B,x
        txa
        inx
        cpx     #$09
        bcc     LAEAB
        ldx     #$00
LAEAB:  stx     $6C
        tax
LAEAE:  lda     $66
        jsr     LEE1B
        tay
        txa
        jsr     LEE1B
        tax
        lda     #$09
        sta     $66
LAEBD:  lda     $08AA,y
        sta     $0914,x
        inx
        iny
        dec     $66
        bpl     LAEBD
        pla
        tay
        pla
        tax
        rts

        ldx     #$1F
LAED0:  lda     $25DF,x
        sta     $0847,x
        dex
        bne     LAED0
        jsr     LF044
        lda     #$FF
        sta     $6E
        ldx     #$08
LAEE2:  sta     $08A2,x
        dex
        bpl     LAEE2
        ldx     #$4F
        lda     #$00
LAEEC:  sta     $08AA,x
        dex
        bpl     LAEEC
        lda     $EB25
        sta     $08BC
        lda     $EB26
        sta     $08BA
        lda     $EB27
        sta     $08BB
        lda     #$00
        tax
        sta     $6C
        sta     $6D
        sta     $6F
        sta     $71
LAF0F:  jsr     LED44
        cmp     #$FF
        beq     LAF5A
        sta     $67
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        sta     $68
        tay
        lda     $67
        and     #$0F
        sta     $67
        lda     $08A2,y
        cmp     #$FF
        beq     LAF3D
        sec
        sbc     $67
        bcs     LAF39
        eor     #$FF
        cmp     #$08
        bcs     LAF5A
        bcc     LAF3D
LAF39:  cmp     #$08
        bcc     LAF5A
LAF3D:  lda     $67
        sta     $08A2,y
        stx     $67
        lda     $68
        jsr     LEE1B
        tax
        ldy     #$00
LAF4C:  lda     $096E,y
        sta     $08AA,x
        iny
        inx
        cpy     #$0A
        bne     LAF4C
        ldx     $67
LAF5A:  inx
        cpx     #$1E
        bne     LAF0F
        ldy     #$00
        ldx     #$14
LAF63:  lda     $08AA,x
        sta     $06CB,y
        inx
        iny
        lda     $08AA,x
        sta     $06CB,y
        inx
        iny
        lda     $08AA,x
        sta     $06CB,y
        inx
        iny
        lda     #$00
        sta     $06CB,y
        iny
        cpy     #$0C
        bcc     LAF63
        lda     #$00
        sta     $54
        sta     $55
        lda     $08BA
        bpl     LAFA0
        lda     $08B8
        ora     $08B9
        bne     LAFA0
        jsr     LF277
        lda     #$01
        jsr     LEE7C
LAFA0:  rts

        lda     $0803
        jsr     LF0ED
        sta     $0803
        lda     $0804
        jsr     LF0ED
        asl     a
        asl     a
        asl     a
        asl     a
        rol     $0803
        asl     a
        rol     $0803
        sta     $0804
        lda     $0805
        jsr     LF0ED
        ora     $0804
        sta     $0804
        lda     #$00
        sta     $61
        ldy     #$19
LAFD0:  sty     $62
        ldx     $61
        jsr     LF010
        bcs     LAFDD
        lda     $62
        sta     $61
LAFDD:  lda     $62
        sec
        sbc     #$05
        tay
        bpl     LAFD0
        ldx     $61
        jsr     LF02B
        bcc     LB00F
        lda     $08B9
        bne     LB000
        lda     #$C8
        .byte   $CD
LAFF4:  clv
        php
        bcc     LB000
        sta     $08B8
        lda     #$01
        jsr     LEE7C
LB000:  ldx     #$00
        ldy     $61
LB004:  lda     $0800,x
        jsr     LF1B8
        inx
        cpx     #$05
        bne     LB004
LB00F:  rts

        lda     $0848,y
        cmp     $0848,x
        bne     LB02A
        inx
        iny
        lda     $0848,y
        cmp     $0848,x
        bne     LB02A
        inx
        iny
        lda     $0848,y
        cmp     $0848,x
LB02A:  rts

        lda     $0800
        cmp     $0848,x
        bne     LB043
        inx
        lda     $0801
        cmp     $0848,x
        bne     LB043
        inx
        lda     $0802
        cmp     $0848,x
LB043:  rts

        ldy     #$1E
LB046:  lda     $0847,y
        sta     $0865,y
        dey
        bne     LB046
        lda     #$00
        sta     $0669
        lda     #$06
        sta     $63
        lda     #$00
        sta     $61
        clc
        adc     #$19
        tay
LB060:  ldx     $61
        sty     $62
        lda     $0866,x
        cmp     $0866,y
        bne     LB07E
        inx
        iny
        lda     $0866,x
        cmp     $0866,y
        bne     LB07E
        inx
        iny
        lda     $0866,x
        cmp     $0866,y
LB07E:  bcs     LB084
        lda     $62
        sta     $61
LB084:  lda     $62
        sec
        sbc     #$05
        tay
        bne     LB060
        lda     #$03
        sta     $64
        ldx     $61
        ldy     $0669
LB095:  lda     $0866,x
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        ora     #$30
        sta     $0979,y
        iny
        lda     $0866,x
        and     #$0F
        ora     #$30
        sta     $0979,y
        lda     #$00
        sta     $0866,x
        iny
        inx
        dec     $64
        bne     LB095
        lda     $0669
        sty     $0669
        lsr     a
        tay
        lda     $0867,x
        jsr     LF0F9
        sta     $09DB,y
        lda     $0867,x
        lsr     $0866,x
        ror     a
        lsr     $0866,x
        ror     a
        lsr     a
        lsr     a
        lsr     a
        jsr     LF0F9
        sta     $09DA,y
        lda     $0866,x
        jsr     LF0F9
        sta     $09D9,y
        dec     $63
        beq     LB0EC
        jmp     LF058

LB0EC:  rts

        cmp     #$5F
        bcs     LB0F6
        sec
        sbc     #$41
        bcs     LB0F8
LB0F6:  lda     #$1F
LB0F8:  rts

        and     #$1F
        clc
        adc     #$41
        cmp     #$5F
        bcc     LB104
        lda     #$20
LB104:  rts

        lda     $75,x
        asl     a
        adc     #$06
        tay
        jsr     LF14C
        jsr     LF17D
        lda     #$00
        jsr     LEE7C
        lda     #$01
        jsr     LEE7C
        ldy     #$00
        ldx     #$14
LB11F:  lda     $06CE,y
        cmp     #$1E
        lda     $06CD,y
        adc     #$00
        sta     $08AC,x
        lda     $06CC,y
        adc     #$00
        sta     $08AB,x
        lda     $06CB,y
        adc     #$00
        sta     $08AA,x
        inx
        inx
        inx
        iny
        iny
        iny
        iny
        cpy     #$0C
        bcc     LB11F
        lda     #$02
        jmp     LEE7C

        lda     $08AA,y
        clc
        adc     #$01
        sta     $08AA,y
        bcc     LB15F
        lda     $08AB,y
        adc     #$00
        sta     $08AB,y
LB15F:  rts

        txa
        pha
        sty     $65
        ldx     #$00
        lda     #$0A
LB168:  cmp     $65
        beq     LB16E
        .byte   $B0
LB16D:  php
LB16E:  clc
        adc     #$0A
        inx
        cpx     #$07
        bne     LB168
        txa
        jsr     LEE7C
        pla
        tax
        rts

        txa
        ldy     #$1E
        tax
        sty     $63
        lda     $06C9,x
        sta     $62
        lda     $06C7,x
        cmp     #$1E
        bcc     LB196
        rol     $62
        cmp     #$2D
        clv
        bvc     LB19A
LB196:  rol     $62
        cmp     #$0F
LB19A:  rol     $62
        asl     $62
        lda     $62
        cmp     #$2E
        bcc     LB1AE
        cmp     #$60
        bcc     LB1AC
        lda     #$30
        bne     LB1AE
LB1AC:  lda     #$2E
LB1AE:  clc
        adc     $63
        tay
        jsr     LF14C
        jmp     LF160

        stx     $66
        sta     $0848,y
        ldx     $54
        sta     $0820,x
        inx
        tya
        sta     $0820,x
        inx
        cpx     #$28
        bcc     LB1CE
        ldx     #$00
LB1CE:  stx     $54
        iny
        ldx     $66
        rts

        pha
        lsr     a
        bcc     LB1DB
        jsr     LF277
LB1DB:  pla
        pha
        and     #$02
        bne     LB1E4
        jmp     LF254

LB1E4:  ldx     #$00
        txa
LB1E7:  sta     $08AA,x
        sta     $0914,x
        inx
        cpx     #$0E
        bcc     LB1E7
LB1F2:  lda     $08AA,x
        sta     $0914,x
        inx
        cpx     #$14
        bcc     LB1F2
        lda     #$00
LB1FF:  sta     $08AA,x
        sta     $0914,x
        inx
        cpx     #$50
        bcc     LB1FF
        ldx     #$00
LB20C:  lda     #$FF
        sta     $08A2,x
        stx     $74
        jsr     LEC96
        lda     $74
        jsr     LEE23
        ldx     $74
        ldy     #$00
LB21F:  lda     $08FB,y
        sta     $3400
        sta     ($72),y
        jsr     LF2DD
        iny
        cpy     #$10
        bcc     LB21F
        inx
        cpx     #$08
        bcc     LB20C
LB234:  txa
        pha
        jsr     LEE23
        pla
        tax
        ldy     #$00
        lda     #$FF
        sta     $3400
        sta     ($72),y
        jsr     LF2DD
        iny
        .byte   $C0
LB249:  bpl     LB1DB
        sbc     ($E8),y
        cpx     #$1E
        bcc     LB234
        jsr     LEECE
        pla
        pha
        and     #$04
        beq     LB26C
        lda     $EB25
        sta     $08BC
        lda     $EB26
        sta     $08BA
        lda     $EB27
        sta     $08BB
LB26C:  pla
        and     #$05
        beq     LB276
        lda     #$01
        jsr     LEE7C
LB276:  rts

        lda     #$07
        sta     $08B9
        lda     #$D0
        sta     $08B8
        ldx     #$00
        ldy     #$00
LB285:  lda     $F2FA,x
        inx
        jsr     LF2CF
        lda     $F2FA,x
        inx
        jsr     LF2CF
        lda     $F2FA,x
        inx
        jsr     LF2CF
        lda     $F2FA,x
        inx
        jsr     LF0ED
        sta     $61
        lda     $F2FA,x
        inx
        jsr     LF0ED
        asl     a
        asl     a
        asl     a
        asl     a
        rol     $61
        asl     a
        rol     $61
        sta     $62
        lda     $F2FA,x
        inx
        jsr     LF0ED
        ora     $62
        sta     $62
        lda     $61
        jsr     LF2CF
        lda     $62
        jsr     LF2CF
        cpy     #$1E
        bne     LB285
        rts

        sta     $3400
        sta     $25E0,y
        sta     $0848,y
        iny
        jsr     LF2DD
        rts

        pha
        txa
        pha
        lda     #$0F
LB2E2:  pha
        sec
        lda     #$08
LB2E6:  ldx     #$BB
LB2E8:  dex
        bne     LB2E8
        sbc     #$01
        bne     LB2E6
        pla
        lsr     a
        bne     LB2E2
        pla
        tax
        pla
        sta     $3000
        rts

        ora     (L0000,x)
        brk
        .byte   $54
        eor     $54
        brk
        sta     L0000,x
        .byte   $52
        eor     #$53
        brk
        bcc     LB309
LB309:  .byte   $54
        eor     $54
        brk
        sta     L0000
        .byte   $52
        eor     #$53
        brk
        .byte   $80
        brk
        .byte   $54
        eor     $54
        brk
        adc     L0000,x
        .byte   $52
        eor     #$53
        brk
        bvs     LB321
LB321:  .byte   $4B
        lsr     $54
        brk
        adc     L0000
        lsr     $414C
        brk
        rts

        brk
        .byte   $4B
        eor     $4D
        brk
        eor     L0000,x
        .byte   $44
        eor     $53
        brk
        bvc     LB339
LB339:  .byte   $47
        lsr     $4D
        brk
        eor     L0000
        eor     $44
        jsr     L4000
        brk
        .byte   $42
        eor     ($46,x)
        brk
        and     L0000,x
        lsr     a
        eor     a:$52
        bmi     LB351
LB351:  .byte   $52
        .byte   $42
        .byte   $44
        brk
        and     L0000
        jmp     L5256

        .byte   $43
        .byte   $4F
        bvc     LB3B7
        .byte   $52
        eor     #$47
        pha
        .byte   $54
        jsr     L4328
        and     #$20
        and     ($39),y
        sec
        sec
        jsr     L5441
        eor     ($52,x)
        eor     #$20
        .byte   $47
        eor     ($4D,x)
        eor     $53
        bit     $4920
        lsr     $2E43
        ldy     #$00
        ldx     #$01
LB382:  lda     $0700
        cpx     #$01
        beq     LB38A
        lsr     a
LB38A:  lsr     a
        lda     $C5,x
        and     #$1F
        bcc     LB3A8
        beq     LB3A3
        cmp     #$1B
        bcs     LB3A1
        pha
        lda     $C9
        and     #$07
        cmp     #$07
        pla
        bcc     LB3A3
LB3A1:  sbc     #$01
LB3A3:  sta     $C5,x
        jmp     LF3E1

LB3A8:  cmp     #$1B
        bcs     LB3B5
        lda     $C5,x
        adc     #$20
        bcc     LB3A3
        beq     LB3B5
        clc
LB3B5:  lda     #$1F
LB3B7:  sta     $C5,x
        bcs     LB3E1
        iny
        txa
        beq     LB3CB
        lda     $C0
        and     #$0C
        lsr     a
        lsr     a
        beq     LB3D3
        adc     #$02
        bne     LB3D3
LB3CB:  lda     $C0
        and     #$10
        beq     LB3D3
        lda     #$01
LB3D3:  sec
        pha
        adc     $C2
        sta     $C2
        pla
        sec
        adc     $C4
        sta     $C4
        inc     $C7,x
LB3E1:  dex
        bpl     LB382
        tya
        beq     LB428
        lda     $C0
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        eor     #$07
        beq     LB424
        tay
        lda     $C2
LB3F5:  sec
LB3F6:  sbc     $F407,y
        bmi     LB40F
        sta     $C2
        inc     $C3
        cpy     #$04
        bne     LB3F5
        inc     $C3
        bcs     LB3F6
        .byte   $7F
        .byte   $7F
        .byte   $03
        ora     $04
        .byte   $04
        .byte   $02
        .byte   $7F
LB40F:  lda     $C0
        and     #$03
        eor     #$FF
        clc
        adc     $C4
        bcs     LB422
        adc     $C3
        bmi     LB428
        sta     $C3
        lda     #$00
LB422:  inc     $C1
LB424:  sta     $C4
        bne     LB40F
LB428:  inc     $C9
        lda     $C9
        lsr     a
        bcs     LB45C
        lda     $C7
        ora     $C8
        beq     LB45C
        cmp     #$10
        bcc     LB44C
        ldx     #$01
LB43B:  lda     $C7,x
        beq     LB447
        cmp     #$10
        bcc     LB447
        adc     #$EF
        sta     $C7,x
LB447:  dex
        bpl     LB43B
        bmi     LB45C
LB44C:  ldx     #$01
LB44E:  lda     $C7,x
        beq     LB459
        clc
        adc     #$EF
        sta     $C7,x
        bmi     LB45C
LB459:  dex
        bpl     LB44E
LB45C:  rts

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
        brk
        brk
        brk
LBA76:  brk
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
LBC16:  brk
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
LBCD3:  brk
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
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $B7
        brk
        brk
        .byte   $80
        brk
        .byte   $80
        .byte   $0E
        .byte   $D7
