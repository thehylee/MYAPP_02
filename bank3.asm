; da65 V2.19 - Git 2fa92f9
; Created:    2026-11-27 01:24:34
; Input file: bank3.bin
; Page:       1


        .setcpu "6502"

L0000           := $0000
L0100           := $0100
L2010           := $2010
L2011           := $2011
L2015           := $2015
L2019           := $2019
L201E           := $201E
L2021           := $2021
L2025           := $2025
L2029           := $2029
L202A           := $202A
L202C           := $202C
L202F           := $202F
L2041           := $2041
L2043           := $2043
L2045           := $2045
L2049           := $2049
L204B           := $204B
L204F           := $204F
L2062           := $2062
L2064           := $2064
L2069           := $2069
L206B           := $206B
L206F           := $206F
L2073           := $2073
L2075           := $2075
L2079           := $2079
L207B           := $207B
L207E           := $207E
L2080           := $2080
L30D0           := $30D0
L4000           := $4000
L4004           := $4004
L402D           := $402D
L4141           := $4141
L4328           := $4328
L4E20           := $4E20
L5256           := $5256
L5441           := $5441
L6000           := $6000
L6040           := $6040
L6D6C           := $6D6C
L6E20           := $6E20
L829B           := $829B
L8818           := $8818
L9A45           := $9A45
L9DFA           := $9DFA
L9E8F           := $9E8F
L9EC0           := $9EC0
L9EE8           := $9EE8
L9F2A           := $9F2A
LA02E           := $A02E
LA3B3           := $A3B3
LA43A           := $A43A
LA4E0           := $A4E0
LA5AD           := $A5AD
LA864           := $A864
LA88F           := $A88F
LA8E9           := $A8E9
LA945           := $A945
LAC1B           := $AC1B
LAD62           := $AD62
LAFF4           := $AFF4
LBC16           := $BC16
LBCD3           := $BCD3
        .byte   $64
        bcs     LC008
        lda     #$64
        sta     $06B9,x
LC008:  clv
        bvc     LC017
        lda     $06B9,x
        cmp     #$8C
        bcs     LC017
        lda     #$8C
        sta     $06B9,x
LC017:  lda     $35,x
        beq     LC027
        lda     $06B9,x
        cmp     #$46
        bcs     LC027
        lda     #$46
        sta     $06B9,x
LC027:  rts

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
        ror     $8F79
        txs
        bcs     LC040
LC040:  .byte   $1A
        .byte   $44
        eor     $5E,x
        .byte   $6F
        .byte   $77
        dey
        brk
        .byte   $12
        bmi     LC087
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
        .byte   $13
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
        bpl     LC094
        asl     $2420,x
        rol     $2A
        brk
        bpl     LC09C
        asl     $2420,x
        rol     $2A
LC087:  brk
        .byte   $0F
        asl     $19,x
        .byte   $1B
        asl     $221F,x
        brk
        .byte   $0F
        asl     $19,x
        .byte   $1B
LC094:  asl     $221F,x
        brk
        .byte   $0F
        asl     $19,x
        .byte   $1B
LC09C:  asl     $221F,x
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
        bpl     LC105
        bpl     LC107
        bpl     LC109
        bpl     LC10B
        bpl     LC10D
        bpl     LC10D
        .byte   $0B
        .byte   $14
        ora     $05,x
        .byte   $04
        .byte   $03
        .byte   $02
        ora     (L0000,x)
LC105:  brk
        brk
LC107:  brk
        brk
LC109:  brk
        brk
LC10B:  brk
        .byte   $29
LC10D:  and     #$47
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
        beq     LC1C9
        cmp     #$FC
        beq     LC1D5
        cmp     #$FB
        beq     LC17A
        cmp     #$EF
        beq     LC17A
        cmp     #$EE
        beq     LC17A
        cmp     #$F0
        bne     LC179
        jmp     LC3E5

LC179:  rts

LC17A:  jsr     LD552
        lda     $067D
        beq     LC196
        lda     $0F
        and     #$3F
        bne     LC193
        dec     $067D
        lda     $067D
        bne     LC193
        jmp     LC1BA

LC193:  clv
        bvc     LC1AB
LC196:  lda     $14
        cmp     #$04
        bne     LC1AB
        lda     $13
        cmp     #$20
        beq     LC1A8
        jmp     LC1AB

        clv
        bvc     LC1AB
LC1A8:  jmp     LC1BA

LC1AB:  jsr     LC228
        cmp     #$00
        beq     LC1B9
        lda     #$00
        sta     $067D
        beq     LC1BA
LC1B9:  rts

LC1BA:  lda     $08
        cmp     #$FB
        bne     LC1C6
        jmp     LA88F

        clv
        bvc     LC1C9
LC1C6:  jmp     LA864

LC1C9:  lda     $0619
        cmp     #$03
        bcc     LC227
        inx
        lda     $77,x
        beq     LC227
LC1D5:  jsr     LD552
        jsr     LC228
        cmp     #$00
        bne     LC1E8
        lda     $0F
        bne     LC1FD
        dec     $0681
        bne     LC1FD
LC1E8:  lda     #$00
        sta     $77
        sta     $78
        sta     $0677
        sta     $0678
        sta     $0679
        sta     $067A
        jmp     LCA8C

LC1FD:  ldy     #$00
        lda     $0F
        and     #$07
        bne     LC213
        lda     $0630
        sec
        sbc     $89,x
        beq     LC213
        ldy     #$04
        bcs     LC213
        ldy     #$08
LC213:  lda     $0F
        and     #$07
        bne     LC225
        lda     $0631
        sec
        sbc     $8F,x
        beq     LC225
        tya
        ora     #$01
        tay
LC225:  sty     $29,x
LC227:  rts

LC228:  lda     $066F
        beq     LC235
        dec     $066F
        lda     #$00
        clv
        bvc     LC246
LC235:  lda     $27
        and     #$08
        beq     LC246
        lda     $28
        and     #$04
        beq     LC246
        lda     #$28
        sta     $066F
LC246:  rts

        ldx     #$00
        lda     $08
        cmp     #$00
        bne     LC251
        ldx     #$01
LC251:  lda     $08
        cmp     #$F7
        bne     LC259
        ldx     #$01
LC259:  cpx     #$01
        beq     LC260
        jmp     LC2EA

LC260:  lda     $0F
        and     #$7F
        bne     LC2A5
        ldx     #$00
LC268:  lda     $77,x
        bne     LC2A0
        lda     $4E,x
        bne     LC2A0
        stx     $1B
        lda     #$01
        sec
        sbc     $064B
        sta     $064B
        bne     LC298
        lda     a:$C1
        bne     LC28D
        clc
        lda     #$40
        adc     $1B
        jsr     LD670
        clv
        bvc     LC295
LC28D:  clc
        lda     #$44
        adc     $1B
        jsr     LD670
LC295:  clv
        bvc     LC2A0
LC298:  clc
        lda     #$42
        adc     $1B
        jsr     LD670
LC2A0:  inx
        cpx     #$02
        bcc     LC268
LC2A5:  ldx     #$00
LC2A7:  lda     $0663,x
        bmi     LC2D9
        jsr     LE7E4
        lda     $0663,x
        bpl     LC2D9
        jsr     LAFF4
        lda     $77
        ora     $78
        bne     LC2D9
        lda     $4E
        ora     $4F
        bne     LC2D9
        ldy     $BA76,x
        lda     $0663,y
        bpl     LC2D9
        lda     #$00
        sta     $066D
        sta     a:$C2
        sta     a:$C3
        jmp     LA5AD

LC2D9:  inx
        cpx     #$02
        bcc     LC2A7
        jsr     LC2EB
        lda     $4E
        ora     $4F
        beq     LC2EA
        jsr     LA4E0
LC2EA:  rts

LC2EB:  ldx     #$00
LC2ED:  lda     $77,x
        bne     LC30A
        lda     $0663,x
        bpl     LC30A
        lda     $4E,x
        cmp     #$0A
        bcs     LC30A
        lda     a:$C1
        beq     LC30A
        lda     $29,x
        and     #$01
        beq     LC30A
        jsr     LC310
LC30A:  inx
        cpx     #$02
        bcc     LC2ED
        rts

LC310:  lda     #$16
        jsr     LE659
        lda     $0618
        sec
        sbc     LCB3E
        cmp     #$30
        bcs     LC325
        lda     #$14
        jmp     LE659

LC325:  sta     $0618
        sei
        lda     a:$C1
        sec
        sbc     LCB3E
        sta     a:$C1
        cli
        jsr     LBC16
        lda     #$00
        sta     $0B
        sta     $0619
        lda     $77
        beq     LC34D
        lda     $78
        beq     LC34D
        lda     #$01
        sta     $0B
        sta     $0619
LC34D:  stx     $1C
        lda     #$48
        clc
        adc     $1C
        jsr     LD670
        jsr     LBCD3
        lda     $4E,x
        bne     LC382
        txa
        eor     #$01
        tay
        lda     $2F,y
        cmp     #$06
        bcc     LC36D
        lda     #$02
        bne     LC377
LC36D:  cmp     #$03
        bcc     LC375
        lda     #$01
        bne     LC377
LC375:  lda     #$00
LC377:  sta     $75,x
        jsr     LAC1B
        jsr     LAFF4
        clv
        bvc     LC390
LC382:  lda     #$03
        sta     $75,x
        lda     #$00
        sta     $4E,x
        jsr     LAD62
        jsr     LAFF4
LC390:  rts

LC391:  lda     $14
        cmp     #$01
        bcc     LC3E4
        lda     $0645
        cmp     #$14
        bne     LC3A4
        jsr     LCC7C
        jsr     LCD50
LC3A4:  inc     $0644
        lda     $0644
        cmp     #$08
        bcc     LC3E4
        lda     #$00
        sta     $0644
        lda     $0645
        cmp     #$14
        beq     LC3E4
        lda     $0645
        asl     a
        tay
        lda     LCF9E,y
        sta     $47
        lda     LCF9F,y
        sta     $48
        ldy     #$00
LC3CB:  lda     ($47),y
        sta     $2000,y
        iny
        cpy     #$8F
        bcc     LC3CB
        inc     $0645
        lda     $0645
        cmp     #$0A
        bne     LC3E4
        lda     #$14
        sta     $0645
LC3E4:  rts

LC3E5:  jsr     LD552
        lda     $08
        cmp     #$F0
        beq     LC3EF
        rts

LC3EF:  jsr     LC228
        cmp     #$00
        beq     LC3FB
        lda     #$3B
        sta     $067F
LC3FB:  dec     $067E
        lda     $067E
        cmp     #$00
        beq     LC408
        jmp     LC453

LC408:  ldx     #$00
        lda     #$1D
        sta     $067E
        inc     $067F
        ldy     $067F
        cpy     #$27
        bcc     LC41C
        jmp     LC436

LC41C:  ldy     $067F
        lda     LC471,y
        bne     LC427
        jmp     LC453

LC427:  jsr     L9DFA
        jsr     L9EC0
        ldy     $067F
        lda     LC471,y
        jsr     LC4E9
LC436:  ldy     $067F
        lda     LC471,y
        bne     LC441
        jmp     LC453

LC441:  ldy     $067F
        lda     LC471,y
        jsr     LC528
        ldy     $067F
        lda     LC471,y
        jsr     LC543
LC453:  ldy     $067F
        lda     LC4AD,y
        cmp     #$00
        beq     LC460
        jsr     LD670
LC460:  lda     $067F
        cmp     #$3B
        bcc     LC470
        lda     #$00
        sta     $77
        sta     $78
        jsr     LA5AD
LC470:  rts

LC471:  brk
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
        bpl     LC49F
LC49F:  brk
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
LC4AD:  bit     $2C2C
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
LC4E9:  cmp     #$08
        bne     LC4EF
        dec     $89
LC4EF:  cmp     #$04
        bne     LC4FC
        inc     $89
        jsr     L9F2A
        bcs     LC4FC
        dec     $89
LC4FC:  cmp     #$02
        bne     LC509
        inc     $87
        jsr     L9F2A
        bcs     LC509
        dec     $87
LC509:  cmp     #$01
        bne     LC521
        lda     $8F
        sta     $1B
        clc
        adc     #$01
        and     #$03
        sta     $8F
        jsr     L9F2A
        bcs     LC521
        lda     $1B
        sta     $8F
LC521:  jsr     L9EE8
        jsr     L9E8F
        rts

LC528:  cmp     #$10
        bne     LC542
        lda     #$90
        sta     $1F
        lda     #$03
        sta     $20
        ldy     #$03
        lda     #$08
LC538:  sta     ($1F),y
        iny
        cpy     #$0D
        bcc     LC538
        jsr     LA3B3
LC542:  rts

LC543:  cmp     #$20
        bne     LC560
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
LC560:  jsr     LC66B
        rts

        lda     $08
        cmp     #$EC
        beq     LC56B
        rts

LC56B:  lda     $0F
        and     #$1F
        bne     LC586
        lda     #$01
        sec
        sbc     $0650
        sta     $0650
        bne     LC581
        lda     #$0B
        clv
        bvc     LC583
LC581:  lda     #$37
LC583:  jsr     LD670
LC586:  lda     $29
        ora     $2A
        and     #$01
        beq     LC5AF
        lda     $0655
        bne     LC5AC
        inc     $0656
        lda     $0656
        cmp     #$03
        bcc     LC5A7
        lda     #$01
        sta     $067E
        lda     #$24
        sta     $067F
LC5A7:  lda     #$01
        sta     $0655
LC5AC:  clv
        bvc     LC5B4
LC5AF:  lda     #$00
        sta     $0655
LC5B4:  dec     $067E
        lda     $067E
        cmp     #$00
        beq     LC5C1
        jmp     LC60E

LC5C1:  ldx     #$00
        lda     #$1D
        sta     $067E
        inc     $067F
        ldy     $067F
        cpy     #$15
        bcc     LC5D5
        jmp     LC5EF

LC5D5:  ldy     $067F
        lda     LC61E,y
        bne     LC5E0
        jmp     LC60E

LC5E0:  jsr     L9DFA
        jsr     L9EC0
        ldy     $067F
        lda     LC61E,y
        jsr     LC4E9
LC5EF:  ldy     $067F
        lda     LC61E,y
        jsr     LC528
        ldy     $067F
        lda     LC61E,y
        jsr     LC543
        ldy     $067F
        lda     LC645,y
        cmp     #$00
        beq     LC60E
        jsr     LD670
LC60E:  lda     $067F
        cmp     #$25
        bcc     LC61D
        lda     $064F
        sta     $0B
        jsr     LA945
LC61D:  rts

LC61E:  brk
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
        bpl     LC639
LC639:  brk
        brk
        brk
        brk
        jsr     L0000
        brk
        brk
        brk
        brk
        brk
LC645:  lsr     $4E4E
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
LC66B:  lda     #$00
        sta     $1B
        lda     #$02
        sta     $1C
        ldy     #$60
        ldx     #$00
LC677:  lda     #$F1
        sta     ($1B),y
        tya
        clc
        adc     #$10
        tay
        bcc     LC684
        inc     $1C
LC684:  inx
        cpx     #$14
        bcc     LC677
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
LC6A2:  lda     $08AA,x
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
        bcc     LC6A2
        lda     #$90
        sta     $1B
        lda     #$14
        sta     $1C
        ldx     #$14
LC6D3:  lda     $08AA,x
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
        bcc     LC6D3
        lda     #$10
        sta     $1B
        lda     #$16
        sta     $1C
        lda     #$00
        sta     $06E0
        sta     $06E1
        ldx     #$06
LC712:  lda     $06E0
        clc
        adc     $08AA,x
        sta     $06E0
        lda     $06E1
        adc     $08AB,x
        sta     $06E1
        bcc     LC731
        lda     #$FF
        sta     $06E1
        sta     $06E0
        bne     LC737
LC731:  inx
        inx
        cpx     #$0E
        bcc     LC712
LC737:  lda     $06E0
        ora     $06E1
        bne     LC744
        lda     #$01
        sta     $06E0
LC744:  jsr     LC779
        lda     #$2A
        sta     $1B
        lda     #$11
        sta     $1C
        ldx     #$1E
LC751:  lda     $08AA,x
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
        bcc     LC751
        rts

LC779:  lda     $08C6
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
        sta     $20
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
        rol     $20
        rol     $21
        asl     $1F
        rol     $20
        rol     $21
        lda     $06DC
        sec
        sbc     $1F
        sta     $06DC
        lda     $06DD
        sbc     $20
        sta     $06DD
        lda     $06DE
        sbc     $21
        sta     $06DE
        lda     $06DF
        sbc     #$00
        sta     $06DF
        jsr     LC8D0
        lda     $06DC
        cmp     #$3C
        bcc     LC836
        lda     #$3B
LC836:  sta     $1F
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

LC858:  txa
        pha
        lda     #$00
        sta     $06D7
        sta     $06D8
        sta     $06D9
        sta     $06DA
        ldx     LC89D,y
        sed
LC86C:  asl     $1D
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
        bpl     LC86C
        cld
        pla
        tax
        rts

LC89D:  brk
        .byte   $07
        .byte   $0F
        .byte   $17
LC8A1:  tay
        txa
        pha
        tya
        tax
        ldy     #$00
LC8A8:  lda     $06D7,x
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
        bcc     LC8A8
        pla
        tax
        rts

LC8D0:  ldy     #$10
LC8D2:  asl     $06DC
        rol     $06DD
        rol     $06DE
        rol     $06DF
        bcc     LC8F5
        lda     $06DE
        sbc     $06E0
        sta     $06DE
        lda     $06DF
        sbc     $06E1
        sta     $06DF
        jmp     LC90F

LC8F5:  lda     $06DE
        cmp     $06E0
        lda     $06DF
        sbc     $06E1
        bcc     LC912
        sta     $06DF
        lda     $06DE
        sbc     $06E0
        sta     $06DE
LC90F:  inc     $06DC
LC912:  dey
        bne     LC8D2
        rts

        jsr     LCA1A
        lda     #$00
        sta     $21
        sta     $22
        ldx     #$02
LC921:  ldy     $1B
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
        bcc     LC921
        ldx     $1F
        ldy     $1D
        lda     $21
        clc
        adc     #$0C
        cmp     $22
        bcs     LC957
        ldx     $20
        ldy     $1E
LC957:  stx     $0631
        lda     $1B
        cmp     #$10
        bne     LC969
        cpx     #$01
        beq     LC968
        cpx     #$03
        bne     LC969
LC968:  dey
LC969:  sty     $0630
        rts

LC96D:  lda     LCBFD,y
        cmp     #$80
        beq     LC97D
        clc
        adc     $05C0,x
        cmp     $05C1,x
        bne     LC9B4
LC97D:  lda     LCBFE,y
        cmp     #$80
        beq     LC98D
        clc
        adc     $05C0,x
        cmp     $05C2,x
        bne     LC9B4
LC98D:  lda     LCBFF,y
        cmp     #$80
        beq     LC99D
        clc
        adc     $05C0,x
        cmp     $05C3,x
        bne     LC9B4
LC99D:  lda     $05C0,x
        clc
        adc     LCBFC,y
        cmp     $21
        bcc     LC9B3
        sta     $21
        stx     $1D
        tya
        lsr     a
        lsr     a
        and     #$03
        sta     $1F
LC9B3:  rts

LC9B4:  lda     $05C0,x
        sta     $1C
        lda     LCBFD,y
        cmp     #$80
        beq     LC9D2
        cpx     #$0C
        bcs     LCA19
        adc     $1C
        sec
        sbc     $05C1,x
        bcc     LC9D2
        eor     #$FF
        adc     $1C
        sta     $1C
LC9D2:  lda     LCBFE,y
        cmp     #$80
        beq     LC9EB
        cpx     #$0C
        bcs     LCA19
        adc     $1C
        sec
        sbc     $05C2,x
        bcc     LC9EB
        eor     #$FF
        adc     $1C
        sta     $1C
LC9EB:  lda     LCBFF,y
        cmp     #$80
        beq     LCA04
        cpx     #$0C
        bcs     LCA19
        adc     $1C
        sec
        sbc     $05C3,x
        bcc     LCA04
        eor     #$FF
        adc     $1C
        sta     $1C
LCA04:  lda     $1C
        clc
        adc     LCBFC,y
        cmp     $22
        bcc     LCA19
        sta     $22
        stx     $1E
        tya
        lsr     a
        lsr     a
        and     #$03
        sta     $20
LCA19:  rts

LCA1A:  lda     $8B,x
        asl     a
        asl     a
        asl     a
        asl     a
        sta     $1B
        lda     #$50
        sta     $1F
        bit     $0B
        bpl     LCA2C
        ldx     #$02
LCA2C:  lda     $9E8C,x
        sta     $20
        ldx     #$00
        ldy     #$00
        sty     $05D0
LCA38:  lda     $20
        sta     $1E
        lda     $1F
        sta     $1D
LCA40:  lda     $1D
        clc
        adc     #$10
        sta     $1D
        bcc     LCA4B
        inc     $1E
LCA4B:  lda     ($1D),y
        beq     LCA40
        lda     $1E
        lsr     a
        lda     $1D
        ror     a
        and     #$F8
        sta     $05C0,x
        inc     $1F
        inx
        cpx     #$10
        bcc     LCA38
        rts

        lda     $06A8
        and     #$01
        bne     LCA75
        lda     #$EF
        sta     $08
        lda     #$FB
        jmp     LCAA9

        clv
        bvc     LCA8C
LCA75:  lda     #$EE
        sta     $08
        lda     #$0F
        sta     $067D
        lda     #$08
        sta     $07
        lda     #$0C
        jsr     L8818
        lda     #$54
        jmp     LD670

LCA8C:  jsr     LE649
        inc     $06A8
        lda     $08BB
        and     #$04
        beq     LCAA5
        lda     $06A8
        and     #$03
        bne     LCAA5
        lda     #$0A
        jsr     LE659
LCAA5:  lda     #$FB
        sta     $08
LCAA9:  lda     #$02
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

LCAF3:  lda     $0618
        cmp     #$31
        bne     LCAFF
        lda     #$29
        clv
        bvc     LCB01
LCAFF:  lda     #$2A
LCB01:  jsr     LD670
        rts

LCB05:  lda     #$FE
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
        lda     LCB3A,y
        sta     $0B
        sta     $91
        lda     #$02
        jsr     LE659
        lda     #$3F
        jsr     LD670
        rts

LCB3A:  brk
        ora     ($FF,x)
        .byte   $FF
LCB3E:  ora     ($02,x)
        .byte   $02
        ora     ($A5,x)
        php
        cmp     #$FE
        beq     LCB49
        rts

LCB49:  lda     $0F
        and     #$3F
        bne     LCB5A
        dec     $06B4
        bne     LCB5A
        lda     #$01
        sta     $29
        sta     $2A
LCB5A:  lda     $29
        ldy     $0619
        cpy     #$01
        bne     LCB65
        lda     $2A
LCB65:  and     #$0E
        beq     LCB71
        jsr     LCB98
        lda     #$15
        jsr     LE659
LCB71:  lda     $29
        ldy     $0619
        cpy     #$01
        bne     LCB7C
        lda     $2A
LCB7C:  and     #$01
        bne     LCB81
        rts

LCB81:  lda     $46
        sta     $75
        ldy     $0B
        beq     LCB90
        sta     $76
        ldy     #$04
        jsr     LF14C
LCB90:  lda     #$16
        jsr     LE659
        jmp     LA8E9

LCB98:  pha
        lda     #$00
        jsr     LCBC0
        pla
        and     #$04
        beq     LCBB3
        lda     $46
        clc
        adc     #$01
        cmp     #$03
        bne     LCBAE
        lda     #$02
LCBAE:  sta     $46
        jmp     LCBBE

LCBB3:  lda     $46
        cmp     #$00
        beq     LCBBE
        sec
        sbc     #$01
        sta     $46
LCBBE:  lda     #$01
LCBC0:  sta     $1D
        pha
        lda     $46
        asl     a
        tay
        lda     LCBF6,y
        sta     $02
        lda     LCBF7,y
        sta     $03
        lda     #$B0
        sta     $05
        pla
        beq     LCBDA
        lda     #$3E
LCBDA:  jsr     LD64A
        lda     LCBFC,y
        sta     $02
        lda     LCBFD,y
        sta     $03
        lda     $1D
        beq     LCBED
        lda     #$3F
LCBED:  jsr     LD64A
        rts

        rol     $3F3E,x
        .byte   $3E
        .byte   $3F
LCBF6:  php
LCBF7:  .byte   $12
        .byte   $22
        .byte   $12
        rti

        .byte   $12
LCBFC:  .byte   $12
LCBFD:  .byte   $12
LCBFE:  .byte   $30
LCBFF:  .byte   $12
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
        .byte   $80
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
        brk
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
        inc     $80F0,x
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
        asl     $8010
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
        inc     $80F8,x
        .byte   $80
LCC7C:  inc     $06A9
        lda     $06A9
        cmp     #$07
        beq     LCC87
        rts

LCC87:  lda     #$00
        sta     $06A9
        lda     #$00
        sta     $19
        lda     $0647
        and     #$01
        beq     LCC9B
        lda     #$01
        sta     $19
LCC9B:  lda     $06AD
        bne     LCCEF
        lda     $0647
        asl     a
        tay
        lda     LCE4E,y
        sta     $47
        lda     LCE4F,y
        sta     $48
        lda     $0646
        asl     a
        asl     a
        asl     a
        asl     a
        tax
        ldy     #$00
LCCB9:  lda     $19
        bne     LCCC3
        lda     LCEFE,x
        clv
        bvc     LCCD4
LCCC3:  stx     $064D
        lda     LCE62,x
        clc
        adc     $0659
        tax
        lda     LCEE2,x
        ldx     $064D
LCCD4:  sta     ($47),y
        inx
        iny
        cpy     #$0F
        bne     LCCB9
        lda     $19
        beq     LCCEF
        lda     $0659
        clc
        adc     #$07
        cmp     #$1C
        bcc     LCCEC
        lda     #$00
LCCEC:  sta     $0659
LCCEF:  inc     $0646
        lda     $19
        bne     LCD24
        lda     $0646
        cmp     #$0A
        bne     LCD21
        lda     #$00
        sta     $0646
        sta     $06AD
        inc     $0647
        lda     $0647
        cmp     #$04
        bne     LCD14
        lda     #$00
        sta     $0647
LCD14:  lda     $0647
        cmp     $06AC
        bne     LCD21
        lda     #$01
        sta     $06AD
LCD21:  clv
        bvc     LCD4F
LCD24:  lda     $0646
        cmp     #$08
        bne     LCD4F
        lda     #$00
        sta     $0646
        sta     $06AD
        inc     $0647
        lda     $0647
        cmp     #$04
        bne     LCD42
        lda     #$00
        sta     $0647
LCD42:  lda     $0647
        cmp     $06AC
        bne     LCD4F
        lda     #$01
        sta     $06AD
LCD4F:  rts

LCD50:  inc     $06AA
        lda     $06AA
        cmp     #$05
        beq     LCD5B
        rts

LCD5B:  lda     #$00
        sta     $06AA
        lda     #$00
        sta     $19
        lda     $06AC
        and     #$01
        beq     LCD6F
        lda     #$01
        sta     $19
LCD6F:  lda     $06AE
        bne     LCDC3
        lda     $06AC
        asl     a
        tay
        lda     LCE56,y
        sta     $47
        lda     LCE57,y
        sta     $48
        lda     $06AB
        asl     a
        asl     a
        asl     a
        asl     a
        tax
        ldy     #$00
LCD8D:  lda     $19
        bne     LCD97
        lda     LCEFE,x
        clv
        bvc     LCDA8
LCD97:  stx     $064D
        lda     LCE62,x
        clc
        adc     $0659
        tax
        lda     LCEE2,x
        ldx     $064D
LCDA8:  sta     ($47),y
        inx
        iny
        cpy     #$0F
        bne     LCD8D
        lda     $19
        beq     LCDC3
        lda     $0659
        clc
        adc     #$07
        cmp     #$1C
        bcc     LCDC0
        lda     #$00
LCDC0:  sta     $0659
LCDC3:  inc     $06AB
        lda     $19
        bne     LCE0D
        lda     $06AB
        cmp     #$0A
        bne     LCE0A
        lda     #$00
        sta     $06AB
        sta     $06AE
        inc     $06AC
        lda     $08
        cmp     #$F8
        beq     LCDF1
        lda     $06AC
        cmp     #$04
        bne     LCDEE
        lda     #$00
        sta     $06AC
LCDEE:  clv
        bvc     LCDFD
LCDF1:  lda     $06AC
        cmp     #$06
        bne     LCDFD
        lda     #$00
        sta     $06AC
LCDFD:  lda     $06AC
        cmp     $0647
        bne     LCE0A
        lda     #$01
        sta     $06AE
LCE0A:  clv
        bvc     LCE4D
LCE0D:  lda     $06AB
        cmp     #$08
        bne     LCE4D
        lda     #$00
        sta     $06AB
        sta     $06AE
        inc     $06AC
        lda     $08
        cmp     #$F8
        beq     LCE34
        lda     $06AC
        cmp     #$04
        bne     LCE31
        lda     #$00
        sta     $06AC
LCE31:  clv
        bvc     LCE40
LCE34:  lda     $06AC
        cmp     #$06
        bne     LCE40
        lda     #$00
        sta     $06AC
LCE40:  lda     $06AC
        cmp     $0647
        bne     LCE4D
        lda     #$01
        sta     $06AE
LCE4D:  rts

LCE4E:  brk
LCE4F:  jsr     L2010
        rti

        jsr     L2080
LCE56:  brk
LCE57:  jsr     L2010
        rti

        jsr     L2080
        bvc     LCE80
        .byte   $20
        .byte   $20
LCE62:  brk
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
LCE80:  brk
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
LCEE2:  brk
        cpx     #$EC
        .byte   $F4
        .byte   $FF
        .byte   $D7
LCEE8:  .byte   $62
        brk
        bpl     LCF08
        .byte   $F4
        .byte   $DB
        .byte   $D7
        .byte   $62
        brk
        .byte   $03
        bpl     LCEE8
        sbc     $62B3,x
        brk
        .byte   $C3
        .byte   $D3
        .byte   $F2
        inc     $62B3,x
LCEFE:  brk
        brk
        .byte   $12
        .byte   $F4
        .byte   $FF
        .byte   $D7
        brk
        brk
        brk
        brk
LCF08:  brk
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
LCF75:  brk
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
        brk
        brk
        brk
        brk
        brk
        brk
LCF9E:  .byte   $B2
LCF9F:  .byte   $CF
        .byte   $42
        bne     LCF75
        bne     LD007
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
        stx     $9341
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
LD005:  ora     ($02,x)
LD007:  .byte   $03
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
        stx     LFA41
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     LD023
LD023:  bpl     LD005
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
        bpl     LD042
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
LD042:  .byte   $0B
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
LD095:  brk
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
        stx     LFA41
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     LD0B3
LD0B3:  bpl     LD095
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
        bpl     LD0CE
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
LD0CE:  .byte   $0B
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
LD125:  brk
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
        stx     LFA20
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     LD143
LD143:  bpl     LD125
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
        bpl     LD15A
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $07
LD15A:  .byte   $07
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
LD1B5:  brk
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
        stx     LFA20
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     LD1D3
LD1D3:  bpl     LD1B5
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
        bpl     LD1E6
        .byte   $03
        .byte   $03
        .byte   $03
LD1E6:  .byte   $03
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
LD245:  brk
        ora     ($02,x)
        .byte   $02
        .byte   $02
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
        stx     LFA20
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     LD263
LD263:  bpl     LD245
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
        bpl     LD275
        .byte   $02
        .byte   $02
LD275:  .byte   $02
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
        ora     ($01,x)
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
LD2D5:  brk
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
        stx     LFA20
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     LD2F3
LD2F3:  bpl     LD2D5
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
        bpl     LD304
        .byte   $01
LD304:  ora     ($01,x)
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
        ora     ($23,x)
        ora     ($A0,x)
        cpx     #$EC
        .byte   $04
        .byte   $02
        lsr     a
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
LD365:  brk
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
        stx     LFA20
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     LD383
LD383:  bpl     LD365
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
        bpl     LD394
        .byte   $01
LD394:  ora     ($01,x)
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
        stx     a:$20
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
LD3F5:  brk
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
        stx     LFA20
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     LD413
LD413:  bpl     LD3F5
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
        bpl     LD423
LD423:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        stx     a:$20
        .byte   $80
        rts

        brk
        .byte   $D2
        brk
        and     (L0000,x)
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     a:$20
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
LD485:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        and     ($D2,x)
LD490:  cpx     a:$4A
        brk
        ldy     #$E0
        cpx     $0204
        lsr     a
        stx     LFA20
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     LD4A3
LD4A3:  bpl     LD485
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
        bpl     LD4B3
LD4B3:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        stx     a:$20
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
        stx     a:$20
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
LD515:  brk
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
        stx     LFA20
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     LD533
LD533:  bpl     LD515
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
        bpl     LD543
LD543:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD552:  lda     a:$C1
        beq     LD55A
        jsr     LD55B
LD55A:  rts

LD55B:  jsr     LCAF3
        lda     $29
        ora     $2A
        and     #$01
        bne     LD567
        rts

LD567:  lda     #$16
        jsr     LE659
        lda     $29
        and     #$01
        beq     LD57A
        lda     #$00
        sta     $0619
        clv
        bvc     LD57F
LD57A:  lda     #$01
        sta     $0619
LD57F:  lda     #$00
        sta     $77
        sta     $78
        ldy     $0619
        lda     $0618
        sec
        sbc     LCB3E,y
        cmp     #$30
        bcs     LD598
        lda     #$14
        jmp     LE659

LD598:  sta     $0618
        sei
        lda     a:$C1
        sec
        sbc     LCB3E,y
        sta     a:$C1
        cli
        lda     LCB3A,y
        sta     $0B
        lda     $4E
        ora     $4F
        bne     LD5B5
        jmp     LCB05

LD5B5:  jmp     LA945

        php
        sei
        lda     L6000
        lda     $6080
        plp
        rts

LD5C2:  php
        sei
        lda     L6000
        lda     $6090
        plp
        rts

        sta     $04
        sty     $06
        ldy     #$00
LD5D2:  lda     (L0000),y
        sta     ($02),y
        inc     $02
        lda     $05
        sta     ($02),y
        iny
        cpy     $04
        bcc     LD5D2
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
LD602:  lda     (L0000),y
        beq     LD614
        cmp     #$F0
        bcc     LD60E
        lda     #$00
        beq     LD614
LD60E:  and     #$0F
        clc
        adc     $6505
LD614:  sta     ($02),y
        inc     $02
        lda     (L0000),y
        beq     LD629
        cmp     #$F0
        bcc     LD624
        lda     #$00
        beq     LD629
LD624:  .byte   $29
LD625:  bvs     *+26
        adc     #$70
LD629:  sta     ($02),y
        iny
        cpy     $04
        bcc     LD602
        ldy     $06
        rts

        sta     $04
        sty     $06
        ldy     #$00
LD639:  lda     (L0000),y
        sta     ($02),y
        iny
        lda     (L0000),y
        sta     ($02),y
        iny
        dec     $04
        bne     LD639
        ldy     $06
        rts

LD64A:  sta     $04
        sty     $06
        ldy     #$00
        lda     $04
        sta     ($02),y
        iny
        lda     $05
        sta     ($02),y
        ldy     $06
        rts

LD65C:  ldy     #$00
        lda     (L0000),y
LD660:  sta     ($02),y
        inc     $02
        lda     $05
        sta     ($02),y
        iny
        lda     (L0000),y
        cmp     #$FF
        bne     LD660
        rts

LD670:  asl     a
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
LD68D:  sta     L0000
        lda     $4041,y
        sta     $01
        ldy     #$00
LD696:  lda     (L0000),y
        beq     LD6B9
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

LD6B9:  rts

        bpl     LD6C1
        eor     #$FF
        clc
        adc     #$01
LD6C1:  rts

        lda     #$10
        sta     $1C
        lda     #$00
        sta     $1B
        lda     #$00
        tax
        tay
LD6CE:  sta     ($1B),y
        iny
        bne     LD6CE
        inc     $1C
        inx
        cpx     #$10
        bne     LD6CE
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
        bpl     LD745
        and     #$40
        bne     LD742
        inc     $AC
        inc     $09
        inc     $13
        bne     LD732
        inc     $14
LD732:  inc     $0F
        bne     LD738
        inc     $10
LD738:  lda     $0F
        and     #$07
        sta     $12
        and     #$03
        sta     $11
LD742:  jmp     LD7D4

LD745:  and     #$40
        bne     LD76C
        lda     $09
        bpl     LD750
        jmp     L829B

LD750:  sta     $3000
        inc     $09
        jsr     LD810
        inc     $13
        inc     $0F
        bne     LD762
        inc     $14
        inc     $10
LD762:  lda     $0F
        and     #$07
        sta     $12
        and     #$03
        sta     $11
LD76C:  lda     $08BC
        sta     a:$C0
        jsr     LF37E
        lda     a:$C1
        cmp     #$0A
        bcc     LD788
        lda     #$09
        sta     a:$C1
        sta     $51
        lda     #$39
        clv
        bvc     LD78A
LD788:  ora     #$30
LD78A:  sta     $0618
        lda     a:$C1
        cmp     $51
        beq     LD7A0
        sta     $51
        bcc     LD7A0
        jsr     LBC16
        lda     #$13
        jsr     LE659
LD7A0:  lda     $52
        eor     #$80
        and     a:$C7
        bpl     LD7B1
        ldy     #$00
        jsr     LF14C
        jsr     LBC16
LD7B1:  lda     $53
        eor     #$80
        and     a:$C8
        bpl     LD7C2
        ldy     #$02
        jsr     LF14C
        jsr     LBC16
LD7C2:  lda     a:$C7
        sta     $52
        asl     a
        lda     a:$C8
        sta     $53
        ror     a
        lsr     a
        lsr     a
        and     #$30
        sta     $0E
LD7D4:  jsr     LE651
        jsr     LEB1D
        lda     $0D
        bne     LD7F6
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
LD7F6:  lda     $0E
        sta     $3C00
LD7FB:  sta     $280B
        lda     $2808
        sta     $58
        and     #$40
        beq     LD7FB
        sta     $3800
        pla
        tay
        pla
        tax
        pla
        rti

LD810:  lda     L6000
        lda     $06A2
        bne     LD81E
        jsr     LD85D
        clv
        bvc     LD85C
LD81E:  cmp     #$03
        bne     LD841
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
LD841:  lda     $06A2
        cmp     #$01
        bne     LD85C
        ldy     #$00
LD84A:  lda     #$00
        sta     $2000,y
        iny
        bne     LD84A
        lda     #$01
        sta     $06A3
        lda     #$02
        sta     $06A2
LD85C:  rts

LD85D:  lda     $754F
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
        beq     LD8BD
        cmp     #$EF
        beq     LD8BD
        jsr     LE145
        jsr     LE396
        jsr     LE21B
        lda     $0F
        and     #$03
        bne     LD8A0
        jsr     LE412
        clv
        bvc     LD8B7
LD8A0:  cmp     #$01
        bne     LD8AA
        jsr     LE41D
        clv
        bvc     LD8B7
LD8AA:  cmp     #$02
        bne     LD8B4
        jsr     LE56F
        clv
        bvc     LD8B7
LD8B4:  jsr     LE57A
LD8B7:  jsr     LE4EE
        jsr     LE10C
LD8BD:  lda     $08
        cmp     #$F8
        bne     LD8C9
        jsr     LCC7C
        jsr     LCD50
LD8C9:  rts

LD8CA:  lda     $07
        beq     LD8E8
        asl     a
        tay
        lda     LD8E7,y
        sta     $5A
        lda     LD8E8,y
        sta     $5B
        ldy     #$00
LD8DC:  lda     ($5A),y
        sta     $2000,y
        iny
        bne     LD8DC
        lda     #$00
        .byte   $85
LD8E7:  .byte   $07
LD8E8:  rts

        sbc     LF9D8,y
        cmp     LDAF9,y
        sbc     LF9DB,y
        .byte   $DC
        sbc     LF9DD,y
        dec     LDFF9,x
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
LD938:  brk
        brk
        cpx     $C3
        .byte   $03
        .byte   $17
        bpl     LD938
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
        sta     $9249
        .byte   $DB
        brk
        brk
        brk
        ldy     #$E0
        cpx     $0604
        lsr     a
        stx     $B249
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
LD984:  brk
        brk
        brk
        brk
        cpx     #$00
        cpx     #$00
        brk
        ora     #$0C
        .byte   $54
        sta     LDBBE,y
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
        bcc     LD984
        cmp     LDBFE,y
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
LD9D6:  brk
        brk
        .byte   $17
        dec     $A0,x
        brk
        brk
        eor     $AC
        beq     LD9D6
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
        stx     LDB41
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
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        brk
        .byte   $04
        .byte   $41
LDA4C:  ora     ($02,x)
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
        stx     LFA41
        .byte   $80
        rts

        rti

        .byte   $D2
        beq     LDA6A
LDA6A:  bpl     LDA4C
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
        bpl     LDA8D
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
LDA84:  .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        brk
        cpx     #$00
        brk
LDA8D:  ora     #$0C
        .byte   $54
        sta     LDBBE,y
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
        bcc     LDA84
        cmp     LDBFE,y
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
LDAD6:  brk
        brk
        .byte   $17
        brk
        ldy     #$00
        brk
        eor     $AC
        beq     LDAD6
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
LDAF9:  brk
        beq     LDB66
        .byte   $DA
        .byte   $DB
        cpy     $4A02
        stx     $4A41
        .byte   $92
        stx     LD625
        beq     LDB0A
LDB0A:  .byte   $92
        .byte   $92
        ldx     $DB,y
        .byte   $92
        .byte   $02
        .byte   $92
        stx     $9292
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
        stx     $9292
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
LDB41:  brk
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
LDB66:  and     $25
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
LDB84:  cpx     $8060
        cpy     #$00
        brk
        .byte   $FF
        brk
        brk
        ora     #$0C
        .byte   $54
        sta     LDBBE,y
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
        bcc     LDB84
        cmp     LDBFE,y
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
LDBBE:  .byte   $82
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
LDBD6:  brk
        brk
        .byte   $17
        and     $E0
        brk
        brk
        eor     $AC
        beq     LDBD6
        .byte   $FA
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        sty     $9325
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
        beq     LDC65
        lda     ($DA),y
LDBFE:  cpy     $8C25
        cmp     $09,x
        pla
        adc     $4825
        .byte   $DA
        beq     LDC0A
LDC0A:  adc     $B16D
        .byte   $DA
        adc     $6D25
        cmp     $6D,x
        adc     $6D6D
        pha
        adc     a:$6D
        adc     $B16D
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
        sty     $8C8C
        sty     $258C
        sty     $488C
        pha
        pha
LDC65:  pha
        pha
        pha
        pha
        brk
        sty     $8C8C
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
LDC84:  cpx     $8060
        cpy     #$00
        brk
        .byte   $FF
        brk
        brk
        ora     #$0C
        .byte   $54
        sta     LDBBE,y
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
        bcc     LDC84
        cmp     LDBFE,y
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
LDCD6:  brk
        brk
        .byte   $17
        pha
        cpx     #$00
        brk
        eor     $AC
        beq     LDCD6
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
        beq     LDD66
        dec     $DB,x
        cpy     $6944
        .byte   $92
        eor     ($44,x)
        sta     $498E
        .byte   $D7
        beq     LDD0A
LDD0A:  sta     LD68D
        .byte   $DB
        sta     $8D44
        .byte   $92
        sta     $8D8D
        sta     $8D49
        sta     $8D00
        sta     LDBD6
        sta     $8D44
        .byte   $92
        sta     $8D8D
        sta     $8D49
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
LDD66:  eor     #$49
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
LDD84:  cpx     $8060
        cpy     #$00
        brk
        .byte   $FF
        brk
        brk
        ora     #$0C
        .byte   $54
        sta     LDBBE,y
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
        bcc     LDD84
        cmp     LDBFE,y
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
LDDD6:  brk
        brk
        .byte   $17
        eor     #$E0
        brk
        brk
        eor     $AC
        beq     LDDD6
        .byte   $FA
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        sty     $9349
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
        beq     LDE66
        .byte   $DA
        .byte   $DB
        cpy     $4A02
        stx     $4A41
        .byte   $92
        stx     LD625
        beq     LDE0A
LDE0A:  adc     LD490
        cmp     LDBFE,y
        brk
        ora     #$0C
        .byte   $54
        sta     LDBBE,y
        brk
        brk
        brk
        .byte   $64
        tay
        cpx     LF5F0
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
LDE66:  and     $25
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
LDE84:  brk
        brk
        brk
        brk
        cpx     #$00
        cpx     #$00
        brk
        ora     #$0C
        .byte   $54
        sta     LDBBE,y
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
        bcc     LDE84
        cmp     LDBFE,y
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
LDED6:  brk
        brk
        .byte   $17
        .byte   $92
        .byte   $FF
        brk
        brk
        eor     $AC
        beq     LDED6
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LDF4C:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        bpl     LDF4C
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
        bpl     LDF8D
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
LDF84:  .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        .byte   $13
        brk
        cpx     #$00
        brk
LDF8D:  ora     #$0C
        .byte   $54
        sta     LDBBE,y
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
        bcc     LDF84
        cmp     LDBFE,y
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
LDFD6:  brk
        brk
        .byte   $17
        brk
        ldy     #$00
        brk
        eor     $AC
        beq     LDFD6
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
LDFF9:  brk
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LE084:  cpx     $8060
        cpy     #$00
        brk
        .byte   $FF
        brk
        brk
        ora     #$0C
        .byte   $54
        sta     LDBBE,y
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
        bcc     LE084
        cmp     LDBFE,y
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
LE0D6:  brk
        brk
        .byte   $17
        and     $E0
        brk
        brk
        eor     $AC
        beq     LE0D6
        .byte   $FA
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        sty     $9325
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
LE0F9:  lda     $08
        cmp     #$FB
        bne     LE102
        jsr     LC391
LE102:  lda     $08
        cmp     #$EF
        bne     LE10B
        jsr     LC391
LE10B:  rts

LE10C:  lda     $0641
        clc
        adc     #$01
        and     #$07
        sta     $0641
        tax
        lda     LE135,x
        sta     $20FB
        lda     $11
        bne     LE134
        lda     $0642
        clc
        adc     #$01
        and     #$07
        sta     $0642
        tax
        lda     LE13D,x
        sta     $20F6
LE134:  rts

LE135:  brk
        .byte   $E3
        .byte   $03
        .byte   $FF
        .byte   $1C
        cpx     #$1F
        .byte   $FC
LE13D:  .byte   $92
        .byte   $B2
        .byte   $D2
        .byte   $F2
        .byte   $F2
        .byte   $D2
        .byte   $B2
        .byte   $92
LE145:  ldx     $45
        lda     LE1FD,x
        sta     $0653
        lda     LE200,x
        sta     $0654
        lda     $0670
        beq     LE1A9
        ldx     #$00
LE15A:  txa
        asl     a
        tay
        lda     LE203,y
        sta     $5A
        lda     LE204,y
        sta     $5B
        cpx     $0670
        bne     LE17E
        lda     $0671
        and     #$03
        bne     LE178
        lda     #$FF
        clv
        bvc     LE17B
LE178:  lda     $0653
LE17B:  clv
        bvc     LE181
LE17E:  lda     $0654
LE181:  ldy     #$00
        sta     ($5A),y
        inx
        cpx     #$06
        bne     LE15A
        dec     $0671
        lda     $0671
        bne     LE1A6
        lda     $0670
        cmp     #$01
        bne     LE1A1
        lda     #$64
        sta     $0671
        clv
        bvc     LE1A6
LE1A1:  lda     #$00
        sta     $0670
LE1A6:  clv
        bvc     LE1FC
LE1A9:  lda     $0672
        beq     LE1FC
        ldx     #$00
LE1B0:  txa
        asl     a
        tay
        lda     LE20F,y
        sta     $5A
        lda     LE210,y
        sta     $5B
        cpx     $0672
        bne     LE1D4
        lda     $0673
        and     #$03
        bne     LE1CE
        lda     #$FF
        clv
        bvc     LE1D1
LE1CE:  lda     $0653
LE1D1:  clv
        bvc     LE1D7
LE1D4:  lda     $0654
LE1D7:  ldy     #$00
        sta     ($5A),y
        inx
        cpx     #$06
        bne     LE1B0
        dec     $0673
        lda     $0673
        bne     LE1FC
        lda     $0672
        cmp     #$01
        bne     LE1F7
        lda     #$64
        sta     $0673
        clv
        bvc     LE1FC
LE1F7:  lda     #$00
        sta     $0672
LE1FC:  rts

LE1FD:  .byte   $02
        and     $44
LE200:  .byte   $92
        .byte   $6D
        .byte   $8D
LE203:  .byte   $10
LE204:  jsr     L2011
        .byte   $12
        jsr     L2015
        .byte   $17
        jsr     L2019
LE20F:  .byte   $20
LE210:  jsr     L2021
        .byte   $22
        jsr     L2025
        .byte   $27
        jsr     L2029
LE21B:  lda     $06C6
        beq     LE228
        jsr     LE36C
        lda     #$00
        sta     $06C6
LE228:  lda     $08
        beq     LE22D
        rts

LE22D:  lda     $2D
        beq     LE232
        rts

LE232:  lda     $43
        beq     LE237
        rts

LE237:  lda     $0B
        cmp     #$01
        beq     LE23E
        rts

LE23E:  clc
        lda     $069B
        adc     $069C
        beq     LE248
        rts

LE248:  lda     $0F
        and     #$0F
        beq     LE24F
        rts

LE24F:  lda     #$00
        sta     $069A
        lda     $35
        beq     LE25B
        jmp     LE29B

LE25B:  lda     $36
        beq     LE262
        jmp     LE29B

LE262:  lda     $30
        cmp     $32
        bcs     LE26D
        lda     #$01
        sta     $069A
LE26D:  lda     $32
        cmp     $30
        bcs     LE278
        lda     #$02
        sta     $069A
LE278:  lda     $069A
        bne     LE293
        lda     $31
        cmp     $33
        bcs     LE288
        lda     #$01
        sta     $069A
LE288:  lda     $33
        cmp     $31
        bcs     LE293
        lda     #$02
        sta     $069A
LE293:  ldx     $45
        lda     LE200,x
        sta     $0654
LE29B:  lda     $069A
        cmp     #$00
        bne     LE2C0
        ldx     #$00
LE2A4:  txa
        asl     a
        tax
        lda     LE2FD,x
        sta     $47
        lda     LE2FE,x
        sta     $48
        lda     $0654
        ldy     #$00
        sta     ($47),y
        txa
        lsr     a
        tax
        inx
        cpx     #$0A
        bcc     LE2A4
LE2C0:  lda     $069A
        cmp     #$01
        bne     LE2DE
        lda     #$80
        sta     $0654
        ldx     #$00
LE2CE:  txa
        asl     a
        tax
        lda     LE2FD,x
        sta     $47
        lda     LE2FE,x
        jsr     LE31D
        bcc     LE2CE
LE2DE:  lda     $069A
        cmp     #$02
        bne     LE2FC
        lda     #$02
        sta     $0654
        ldx     #$00
LE2EC:  txa
        asl     a
        tax
        lda     LE30D,x
        sta     $47
        lda     LE30E,x
        jsr     LE31D
        bcc     LE2EC
LE2FC:  rts

LE2FD:  .byte   $1A
LE2FE:  jsr     L202A
        .byte   $1C
        jsr     L201E
        .byte   $1F
        jsr     L202C
        rol     $2F20
        .byte   $20
LE30D:  .byte   $1A
LE30E:  jsr     L202A
        bit     $2E20
        jsr     L202F
        .byte   $1C
        jsr     L201E
        .byte   $1F
        .byte   $20
LE31D:  sta     $48
        txa
        lsr     a
        tax
        cpx     #$02
        bcs     LE330
        lda     $0654
        ldy     #$00
        sta     ($47),y
        clv
        bvc     LE368
LE330:  cpx     #$05
        bcc     LE340
        ldy     $45
        lda     LE200,y
        ldy     #$00
        sta     ($47),y
        clv
        bvc     LE368
LE340:  lda     $0F
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        and     #$03
        clc
        adc     #$02
        sta     $0653
        cpx     $0653
        bne     LE35B
        lda     $0654
        sta     $49
        clv
        bvc     LE362
LE35B:  ldy     $45
        lda     LE200,y
        sta     $49
LE362:  lda     $49
        ldy     #$00
        sta     ($47),y
LE368:  inx
        cpx     #$08
        rts

LE36C:  txa
        pha
        ldx     $45
        lda     LE200,x
        sta     $06C2
        ldx     #$00
LE378:  txa
        asl     a
        tax
        lda     LE2FD,x
        sta     $47
        lda     LE2FE,x
        sta     $48
        lda     $06C2
        ldy     #$00
        sta     ($47),y
        txa
        lsr     a
        tax
        inx
        cpx     #$0A
        bcc     LE378
        pla
        tax
LE396:  lda     $0F
        and     #$01
        bne     LE3D1
        lda     $77
        beq     LE3CE
        lda     LE40E
        sta     $5A
        lda     LE40F
        sta     $5B
        lda     $0615
        cmp     #$01
        bcc     LE3CE
        ldx     #$00
LE3B3:  stx     $47
        lda     $0615
        sec
        sbc     #$01
        tay
        lda     LE404,x
        cpy     $47
        bcs     LE3C5
        lda     #$00
LE3C5:  ldy     $47
        sta     ($5A),y
        inx
        cpx     #$09
        bcc     LE3B3
LE3CE:  clv
        bvc     LE403
LE3D1:  lda     $78
        beq     LE403
        lda     $0617
        cmp     #$01
        bcc     LE403
        lda     LE410
        sta     $5A
        lda     LE411
        sta     $5B
        ldx     #$00
LE3E8:  stx     $47
        lda     $0617
        sec
        sbc     #$01
        tay
        lda     LE404,x
LE3F4:  cpy     $47
        bcs     LE3FA
        lda     #$00
LE3FA:  ldy     $47
        sta     ($5A),y
        inx
        cpx     #$09
        bcc     LE3E8
LE403:  rts

LE404:  .byte   $03
        .byte   $1F
        .byte   $1C
        .byte   $5C
        .byte   $FC
        sed
        beq     LE3F4
        cpx     #$E0
LE40E:  .byte   $31
LE40F:  .byte   $20
LE410:  .byte   $41
LE411:  .byte   $20
LE412:  lda     #$00
        sta     $064C
        ldx     #$00
        jsr     LE428
        rts

LE41D:  lda     #$18
        sta     $064C
        ldx     #$01
        jsr     LE428
        rts

LE428:  lda     $0F
        lsr     a
        lsr     a
        and     #$07
        tay
        lda     LE4E0,y
        sta     $49
        ldy     $45
        lda     LE4E8,y
        sta     $4C
        ldy     $45
        lda     LE4EB,y
        sta     $4D
        lda     $77,x
        beq     LE48B
        lda     $35,x
        cmp     #$02
        bne     LE48B
        inc     $0674
        lda     $0674
        cmp     #$0C
        bcc     LE45B
        lda     #$00
        sta     $0674
LE45B:  tay
        lda     LE4D4,y
        sta     $47
        ldx     #$00
LE463:  txa
        asl     a
        clc
        adc     $064C
        tay
        lda     LE48C,y
        sta     $5A
        lda     LE48D,y
        sta     $5B
        lda     $4C
        cpx     #$06
        bcc     LE47C
        lda     $4D
LE47C:  cpx     $47
        bne     LE482
        lda     $49
LE482:  ldy     #$00
        sta     ($5A),y
        inx
        cpx     #$0C
        bcc     LE463
LE48B:  rts

LE48C:  .byte   $61
LE48D:  jsr     L2062
        .byte   $63
        jsr     L2064
        adc     $20
        pla
        jsr     L2069
        ror     a
        jsr     L206B
        jmp     (L6E20)

        jsr     L206F
LE4A4:  .byte   $71
LE4A5:  jsr     $2072
        .byte   $73
        jsr     $2074
        adc     $20,x
        sei
        jsr     L2079
        .byte   $7A
        jsr     L207B
        .byte   $7C
        jsr     L207E
        .byte   $7F
        .byte   $20
LE4BC:  .byte   $41
LE4BD:  jsr     $2042
        .byte   $43
        jsr     $2044
        eor     $20
        pha
        jsr     L2049
        lsr     a
        jsr     L204B
        jmp     L4E20

        jsr     L204F
LE4D4:  ora     $04
        .byte   $03
        .byte   $02
        ora     (L0000,x)
        asl     $07
        php
        ora     #$0A
        .byte   $0B
LE4E0:  .byte   $1C
        .byte   $1F
        .byte   $03
        .byte   $E3
        cpx     #$F0
        .byte   $FC
        .byte   $FF
LE4E8:  lsr     a
        .byte   $8C
        .byte   $69
LE4EB:  and     $48
        .byte   $49
LE4EE:  lda     $08
        cmp     #$FE
        bne     LE569
        lda     $0F
        lsr     a
        lsr     a
        and     #$07
        tay
        lda     LE4E0,y
        sta     $49
        inc     $0674
        lda     $0674
        cmp     #$0C
        bcc     LE50F
        lda     #$00
        sta     $0674
LE50F:  tay
        lda     LE4D4,y
        sta     $47
        ldx     #$00
LE517:  txa
        asl     a
        tay
        lda     LE48C,y
        sta     $5A
        lda     LE48D,y
        sta     $5B
        lda     $068C
        cmp     #$01
        bne     LE538
        lda     LE4A4,y
        sta     $5A
        lda     LE4A5,y
        sta     $5B
        clv
        bvc     LE549
LE538:  lda     $068C
        cmp     #$02
        bne     LE549
        lda     LE4BC,y
        sta     $5A
        lda     LE4BD,y
        sta     $5B
LE549:  lda     LE4E8
        cpx     #$06
        bcc     LE553
        lda     LE4EB
LE553:  ldy     $46
        cpy     $068C
        bne     LE560
        cpx     $47
        bne     LE560
        lda     $49
LE560:  ldy     #$00
        sta     ($5A),y
        inx
        cpx     #$0C
        bcc     LE517
LE569:  lda     $46
        sta     $068C
        rts

LE56F:  lda     #$00
        sta     $064C
        ldx     #$00
        jsr     LE585
        rts

LE57A:  lda     #$18
        sta     $064C
        ldx     #$01
        jsr     LE585
        rts

LE585:  lda     $0F
        lsr     a
        lsr     a
        and     #$07
        tay
        lda     LE4E0,y
        sta     $49
        ldy     $45
        lda     LE4E8,y
        sta     $4C
        ldy     $45
        lda     LE4EB,y
        sta     $4D
        lda     $77
        beq     LE61C
        lda     #$00
        sta     $4A
        sta     $4B
        lda     $43
        beq     LE5B3
        lda     #$01
        sta     $4A
        sta     $4B
LE5B3:  lda     $067B,x
        beq     LE5BB
        dec     $067B,x
LE5BB:  lda     $067B,x
        beq     LE5C4
        lda     #$01
        sta     $4B
LE5C4:  lda     $067B,x
        cmp     #$01
        bne     LE5CF
        lda     #$01
        sta     $4A
LE5CF:  lda     $35,x
        cmp     #$04
        bcc     LE5DB
        lda     #$01
        sta     $4A
        sta     $4B
LE5DB:  lda     $35,x
        cmp     #$03
        bne     LE5E3
        sta     $4B
LE5E3:  lda     $4B
        beq     LE61C
        inc     $0675,x
        lda     $0675,x
        cmp     #$06
        bcc     LE5F6
        lda     #$00
        sta     $0675,x
LE5F6:  asl     a
        tay
        lda     LE61D,y
        sta     $47
        lda     LE61E,y
        sta     $48
        ldx     #$00
LE604:  txa
        asl     a
        clc
        adc     $064C
        tay
        lda     LE48C,y
        sta     $5A
        lda     LE48D,y
        sta     $5B
        jsr     LE629
        cpx     #$0C
        bcc     LE604
LE61C:  rts

LE61D:  .byte   $05
LE61E:  .byte   $0B
        .byte   $04
        asl     a
        .byte   $03
        ora     #$02
        php
        ora     ($07,x)
        brk
        .byte   $06
LE629:  lda     $4C
        cpx     #$06
        bcc     LE631
        lda     $4D
LE631:  ldy     $4A
        cpy     #$00
        bne     LE643
        cpx     $47
        bne     LE63D
        lda     $49
LE63D:  cpx     $48
        bne     LE643
        lda     $49
LE643:  ldy     #$00
        sta     ($5A),y
        inx
        rts

LE649:  pha
        jsr     LD5C2
        pla
        jmp     L402D

LE651:  pha
        jsr     LD5C2
        pla
        jmp     L4004

LE659:  pha
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
LE680:  sta     $0600,y
        dey
        bpl     LE680
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

LE6AD:  ldy     #$00
LE6AF:  lda     $0979,y
        cmp     #$30
        bcc     LE6F9
        cmp     #$3A
        bcs     LE6F9
        iny
        cpy     #$24
        bcc     LE6AF
        ldy     #$00
LE6C1:  lda     $0979,y
        cmp     #$30
        bne     LE6D6
        lda     $097A,y
        cmp     #$30
        bne     LE6D6
        lda     $097B,y
        cmp     #$37
        bcc     LE6F9
LE6D6:  tya
        clc
        adc     #$06
        tay
        cpy     #$24
        bcc     LE6C1
        ldy     #$00
LE6E1:  lda     $09D9,y
        cmp     #$20
        beq     LE6F0
        cmp     #$41
        bcc     LE6F9
        cmp     #$5B
        bcs     LE6F9
LE6F0:  iny
        cpy     #$12
        bcc     LE6E1
        ldy     #$24
        bne     LE700
LE6F9:  lda     #$01
        jsr     LF1D4
        ldy     #$00
LE700:  sty     $1D
        ldx     $1D
        lda     #$03
        sta     $1B
LE708:  lda     LF2FA,y
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        ora     #$30
        sta     $0979,x
        inx
        lda     LF2FA,y
        and     #$0F
        ora     #$30
        sta     $0979,x
        inx
        iny
        dec     $1B
        bne     LE708
        lda     $1D
        lsr     a
        tax
        lda     LF2FA,y
        sta     $09D9,x
        iny
        inx
        lda     LF2FA,y
        sta     $09D9,x
        iny
        inx
        lda     LF2FA,y
        sta     $09D9,x
        iny
        inx
        cpy     #$60
        bcc     LE700
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
LE776:  .byte   $10
LE777:  clc
        rti

        clc
LE77A:  .byte   $10
LE77B:  .byte   $1C
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
        beq     LE793
        .byte   $C9
LE790:  jsr     L30D0
LE793:  lda     $280A
        and     #$3C
LE798:  tax
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

LE7E4:  stx     $1B
        lda     $066B,x
        beq     LE7F5
        ldy     $12
        bne     LE7F5
        dec     $066B,x
        jsr     LE90A
LE7F5:  lda     $0669,x
        cmp     #$03
        bcs     LE801
        lda     $066B,x
        bne     LE804
LE801:  jmp     LE973

LE804:  txa
        asl     a
        asl     a
        adc     $0669,x
        tay
        lda     $29,x
        and     #$01
        beq     LE82D
        lda     $065B,y
        cmp     #$3F
        beq     LE81D
        inc     $0669,x
        bne     LE82A
LE81D:  lda     $0669,x
        beq     LE82A
        lda     #$20
        sta     $065B,y
        dec     $0669,x
LE82A:  clv
        bvc     LE879
LE82D:  lda     $29,x
        and     #$0C
        beq     LE84A
        lda     #$00
        sta     $0667,x
        lda     $29,x
        and     #$04
        beq     LE844
        jmp     LE8AC

        clv
        bvc     LE847
LE844:  jmp     LE8CF

LE847:  clv
        bvc     LE879
LE84A:  lda     $27,x
        and     #$0E
        beq     LE874
        lda     $0667,x
        clc
        adc     #$01
        sta     $0667,x
        cmp     #$0C
        bcc     LE871
        lda     #$00
        sta     $0667,x
        lda     $27,x
        and     #$04
        beq     LE86E
        jmp     LE8AC

        clv
        bvc     LE871
LE86E:  jmp     LE8CF

LE871:  clv
        bvc     LE879
LE874:  lda     #$00
        sta     $0667,x
LE879:  lda     $0669,x
        sta     $1C
        txa
        asl     a
        tay
        lda     LE776,y
        sta     $02
        lda     LE777,y
        sta     $03
        tya
        asl     a
        tax
        ldy     #$00
LE890:  lda     $065B,x
        sta     ($02),y
        inc     $02
        cpy     $1C
        bne     LE89F
        lda     #$80
        bne     LE8A1
LE89F:  lda     #$90
LE8A1:  sta     ($02),y
        inx
        iny
        cpy     #$03
        bcc     LE890
        ldx     $1B
        rts

LE8AC:  lda     $065B,y
        cmp     #$5A
        bcc     LE8B7
        lda     #$3F
        bne     LE8CA
LE8B7:  cmp     #$3F
        bne     LE8BF
        lda     #$20
        bne     LE8CA
LE8BF:  cmp     #$20
        bne     LE8C7
        lda     #$41
        bne     LE8CA
LE8C7:  clc
        adc     #$01
LE8CA:  sta     $065B,y
        bne     LE8F0
LE8CF:  lda     $065B,y
        cmp     #$41
        bne     LE8DA
        lda     #$20
        bne     LE8ED
LE8DA:  cmp     #$20
        bne     LE8E2
        lda     #$3F
        bne     LE8ED
LE8E2:  cmp     #$3F
        bne     LE8EA
        lda     #$5A
        bne     LE8ED
LE8EA:  sec
        sbc     #$01
LE8ED:  sta     $065B,y
LE8F0:  ldx     $1B
        lda     $0665,x
        beq     LE905
        lda     #$00
        sta     $0665,x
        lda     $066B,x
        clc
        adc     #$A0
        sta     $066B,x
LE905:  lda     #$15
        jmp     LE659

LE90A:  cpx     #$00
        bne     LE912
        lda     #$C0
        bne     LE914
LE912:  lda     #$D0
LE914:  sta     $05
        txa
        asl     a
        tay
        lda     LE77A,y
        sta     $02
        lda     LE77B,y
        sta     $03
        ldy     #$00
        lda     $066B,x
        lsr     a
        lsr     a
        lsr     a
        cmp     #$1E
        bcc     LE938
        lda     #$33
        sta     ($02),y
        lda     #$1E
        clv
        bvc     LE958
LE938:  cmp     #$14
        bcc     LE945
        lda     #$32
        sta     ($02),y
        lda     #$14
        clv
        bvc     LE958
LE945:  cmp     #$0A
        bcc     LE952
        lda     #$31
        sta     ($02),y
        lda     #$0A
        clv
        bvc     LE958
LE952:  lda     #$20
        sta     ($02),y
        lda     #$00
LE958:  sta     $1F
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

LE973:  jsr     LEAD0
        lda     $0663,x
        bpl     LE97C
        rts

LE97C:  tay
        txa
        asl     a
        asl     a
        tax
        lda     $065B,x
        cmp     #$3F
        bne     LE98D
        lda     #$20
        sta     $065B,x
LE98D:  sta     $09D9,y
        sta     $0803
        lda     $065C,x
        cmp     #$3F
        bne     LE99F
        lda     #$20
        sta     $065C,x
LE99F:  sta     $09DA,y
        sta     $0804
        lda     $065D,x
        cmp     #$3F
        bne     LE9B1
        lda     #$20
        sta     $065D,x
LE9B1:  sta     $09DB,y
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
        bcs     LE9F1
        txa
        sta     $1B
        lsr     a
        adc     $1B
        tax
        ldy     #$00
LE9D2:  lda     $0600,x
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
        bcc     LE9D2
        jsr     LEFA1
        ldx     $1B
LE9F1:  txa
        lsr     a
        lsr     a
        tax
        eor     #$01
        tay
        lda     $0663,y
        bpl     LEA14
        cmp     #$80
        beq     LEA14
        cmp     $0663,x
        beq     LEA08
        bcs     LEA14
LEA08:  sec
        sbc     #$03
        cmp     #$A5
        bcs     LEA11
        lda     #$80
LEA11:  sta     $0663,y
LEA14:  rts

        bit     $0B
        bpl     LEA24
        txa
        eor     #$01
        tax
        jsr     LEA24
        txa
        eor     #$01
        tax
LEA24:  stx     $1B
        txa
        asl     a
        adc     $1B
        asl     a
        tay
        lda     $0619
        cmp     #$03
        bcc     LEA3E
        tya
        beq     LEA3E
        ldx     $1B
        lda     #$80
        sta     $0663,x
        rts

LEA3E:  ldx     #$5A
LEA40:  lda     $0605,y
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
        bcc     LEA6C
        txa
        sbc     #$06
        tax
        bcs     LEA40
LEA6C:  txa
        clc
        adc     #$06
        cmp     #$60
        beq     LEAC8
        sta     $1C
        ldx     #$5A
        cpx     $1C
        beq     LEA9C
LEA7C:  dex
        lda     $0979,x
        sta     $097F,x
        cpx     $1C
        bne     LEA7C
        lda     $1C
        lsr     a
        sta     $1C
        ldx     #$2D
LEA8E:  dex
        lda     $09D9,x
        sta     $09DC,x
        cpx     $1C
        bne     LEA8E
        txa
        asl     a
        tax
LEA9C:  lda     $0605,y
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

LEAC8:  ldx     $1B
        lda     #$80
        sta     $0663,x
        rts

LEAD0:  stx     $1B
        txa
        asl     a
        adc     $1B
        asl     a
        tay
        ldx     #$5A
LEADA:  lda     $0605,y
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
        bcc     LEB06
        txa
        sbc     #$06
        tax
        bcs     LEADA
LEB06:  txa
        clc
        adc     #$06
        cmp     #$60
        beq     LEB15
        ldx     $1B
        lsr     a
        sta     $0663,x
        rts

LEB15:  ldx     $1B
        lda     #$80
        sta     $0663,x
        rts

LEB1D:  jsr     LEB28
        jsr     LEB8C
        clc
        rts

LEB25:  brk
LEB26:  .byte   $80
LEB27:  .byte   $05
LEB28:  dec     $60
        bne     LEB5B
        lda     #$FA
        sta     $60
        lda     $08
        bne     LEB42
        ldx     #$00
LEB36:  lda     $77,x
        beq     LEB3D
        jsr     LEB5C
LEB3D:  inx
        cpx     #$02
        bne     LEB36
LEB42:  ldx     #$00
        lda     $08
        bne     LEB58
        lda     $77
        ora     $78
        beq     LEB58
        ldx     #$04
        lda     $77
        and     $78
        beq     LEB58
        ldx     #$08
LEB58:  jsr     LEB6F
LEB5B:  rts

LEB5C:  clc
        lda     $06C7,x
        adc     #$01
        cmp     #$3C
        bcc     LEB6B
        inc     $06C9,x
        lda     #$00
LEB6B:  sta     $06C7,x
        rts

LEB6F:  lda     $06CE,x
        clc
        adc     #$01
        cmp     #$3C
        bcc     LEB88
        inc     $06CD,x
        bne     LEB86
        inc     $06CC,x
        bne     LEB86
        inc     $06CB,x
LEB86:  lda     #$00
LEB88:  sta     $06CE,x
        rts

LEB8C:  lda     $0643
        beq     LEB96
        dec     $0643
        bne     LEBBF
LEB96:  jsr     LEBC0
        bcs     LEBBA
        ldx     $55
        cpx     $54
        beq     LEBBA
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
        bcc     LEBB8
        ldx     #$00
LEBB8:  stx     $55
LEBBA:  lda     #$04
        sta     $0643
LEBBF:  rts

LEBC0:  ldy     $6E
        cpy     #$FF
        beq     LEBFC
        lda     $08FB,y
        cmp     ($72),y
        beq     LEBE7
        inc     $6F
        lda     $6F
        cmp     #$0A
        bcc     LEBF2
        ldx     $70
        lda     $0884,x
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        sta     $74
        lda     #$FF
        sta     $0884,x
        bne     LEC1F
LEBE7:  dey
        sty     $6E
        cpy     #$FF
        beq     LEBFC
        lda     #$00
        sta     $6F
LEBF2:  lda     $08FB,y
        sta     $3400
        sta     ($72),y
        sec
        rts

LEBFC:  ldx     $6D
        cpx     $6C
        bne     LEC04
        clc
        rts

LEC04:  lda     $090B,x
        sta     $74
        jsr     LEC96
        lda     #$0F
        sta     $6E
        lda     #$00
        sta     $6F
        ldx     $6D
        inx
        cpx     #$09
        bcc     LEC1D
        ldx     #$00
LEC1D:  stx     $6D
LEC1F:  jsr     LEE3B
        cpx     #$FF
        beq     LEC45
        ldy     $74
        lda     $0884,x
        and     #$0F
        sta     $69
        lda     $08A2,y
        sec
        sbc     $69
        bcs     LEC3E
        lda     $08A2,y
        ora     #$10
        sbc     $69
LEC3E:  cmp     #$06
        bcc     LEC45
        jmp     LEC6E

LEC45:  ldy     $71
        lda     $0884,y
        cmp     #$FF
        beq     LEC67
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
        bne     LEC67
        jsr     LEE0E
        jmp     LEC45

LEC67:  tya
        pha
        jsr     LEE0E
        pla
        tax
LEC6E:  ldy     LED03
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

LEC96:  stx     $67
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
        ldx     LED03
        sta     $08FB,x
        jsr     LED09
        lda     $67
        jsr     LEE1B
        tay
        ldx     #$00
LECCD:  lda     LECF9,x
        stx     $67
        tax
        lda     $0914,y
        sta     $08FB,x
        jsr     LED09
        ldx     $67
        iny
        inx
        cpx     #$0A
        bne     LECCD
        lda     $08FB
        eor     $08FC
        eor     $08FD
        eor     $08FF
        eor     $0903
        eor     #$FF
        sta     $08FB
        rts

LECF9:  .byte   $03
        ora     $06
        .byte   $07
        ora     #$0A
        .byte   $0B
        .byte   $0C
        .byte   $0D
        .byte   $0E
LED03:  .byte   $0F
        brk
        ora     ($02,x)
        .byte   $04
        php
LED09:  pha
        stx     $68
        lsr     $68
        bcc     LED18
        pla
        pha
        eor     $08FC
        sta     $08FC
LED18:  lsr     $68
        bcc     LED24
        pla
        pha
        eor     $08FD
        sta     $08FD
LED24:  lsr     $68
        bcc     LED30
        pla
        pha
        eor     $08FF
        sta     $08FF
LED30:  lsr     $68
        bcc     LED3C
        pla
        pha
        eor     $0903
        sta     $0903
LED3C:  pla
        eor     $08FB
        sta     $08FB
        rts

LED44:  txa
        pha
        jsr     LEE23
        ldy     #$00
LED4B:  lda     ($72),y
        sta     $08FB,y
        iny
        cpy     #$10
        bne     LED4B
        lda     $08FB
        eor     #$FF
        eor     $08FC
        eor     $08FD
        eor     $08FF
        eor     $0903
        sta     $08FB
        ldy     #$00
LED6B:  lda     LECF9,y
        tax
        lda     $08FB,x
        sta     $096E,y
        jsr     LED09
        iny
        cpy     #$0B
        bne     LED6B
        lda     $08FB
        ora     $08FC
        ora     $08FD
        ora     $08FF
        ora     $0903
        beq     LEDEA
        lda     $08FB
        beq     LEDF7
        lda     #$01
        sta     $68
LED97:  lda     #$00
        sta     $67
        lda     $0903
        and     $68
        beq     LEDA8
        lda     #$08
        ora     $67
        sta     $67
LEDA8:  lda     $08FF
        and     $68
        beq     LEDB5
        lda     #$04
        ora     $67
        sta     $67
LEDB5:  lda     $08FD
        and     $68
        beq     LEDC2
        lda     #$02
        ora     $67
        sta     $67
LEDC2:  lda     $08FC
        and     $68
        beq     LEDCF
        lda     #$01
        ora     $67
        sta     $67
LEDCF:  lda     $08FB
        and     $68
        beq     LEDE6
        ldx     $67
        lda     LEDFE,x
        bmi     LEDF3
        tax
        lda     $096E,x
        eor     $68
        sta     $096E,x
LEDE6:  asl     $68
        bcc     LED97
LEDEA:  pla
        tax
        lda     $0978
        sta     $0884,x
        rts

LEDF3:  lda     $67
        beq     LEDE6
LEDF7:  lda     #$FF
        sta     $0978
        bne     LEDEA
LEDFE:  .byte   $FF
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
LEE0E:  inc     $71
        lda     $71
        cmp     #$1E
        bcc     LEE1A
        lda     #$00
        sta     $71
LEE1A:  rts

LEE1B:  asl     a
        sta     $6A
        asl     a
        asl     a
        adc     $6A
        rts

LEE23:  ldx     #$00
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

LEE3B:  ldx     #$1D
        lda     #$FF
        sta     $69
LEE41:  lda     $0884,x
        cmp     #$FF
        beq     LEE76
        sta     $68
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        cmp     $74
        bne     LEE76
        ldy     $69
        cpy     #$FF
        beq     LEE74
        lda     $68
        and     #$0F
        sta     $68
        lda     $0884,y
        and     #$0F
        sec
        sbc     $68
        bcs     LEE70
        eor     #$FF
        cmp     #$08
        bcs     LEE74
        bcc     LEE76
LEE70:  cmp     #$08
        bcs     LEE76
LEE74:  stx     $69
LEE76:  dex
        bpl     LEE41
        ldx     $69
        rts

LEE7C:  sta     $66
        txa
        pha
        tya
        pha
        ldx     $6D
        cpx     $6C
        beq     LEE9E
LEE88:  lda     $090B,x
        cmp     $66
        bne     LEE93
        cpx     $6D
        bne     LEEAE
LEE93:  inx
        cpx     #$09
        bcc     LEE9A
        ldx     #$00
LEE9A:  cpx     $6C
        bne     LEE88
LEE9E:  lda     $66
        sta     $090B,x
        txa
        inx
        cpx     #$09
        bcc     LEEAB
        ldx     #$00
LEEAB:  stx     $6C
        tax
LEEAE:  lda     $66
        jsr     LEE1B
        tay
        txa
        jsr     LEE1B
        tax
        lda     #$09
        sta     $66
LEEBD:  lda     $08AA,y
        sta     $0914,x
        inx
        iny
        dec     $66
        bpl     LEEBD
        pla
        tay
        pla
        tax
        rts

LEECE:  ldx     #$1F
LEED0:  lda     $25DF,x
        sta     $0847,x
        dex
        bne     LEED0
        jsr     LF044
        lda     #$FF
        sta     $6E
        ldx     #$08
LEEE2:  sta     $08A2,x
        dex
        bpl     LEEE2
        ldx     #$4F
        lda     #$00
LEEEC:  sta     $08AA,x
        dex
        bpl     LEEEC
        lda     LEB25
        sta     $08BC
        lda     LEB26
        sta     $08BA
        lda     LEB27
        sta     $08BB
        lda     #$00
        tax
        sta     $6C
        sta     $6D
        sta     $6F
        sta     $71
LEF0F:  jsr     LED44
        cmp     #$FF
        beq     LEF5A
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
        beq     LEF3D
        sec
        sbc     $67
        bcs     LEF39
        eor     #$FF
        cmp     #$08
        bcs     LEF5A
        bcc     LEF3D
LEF39:  cmp     #$08
        bcc     LEF5A
LEF3D:  lda     $67
        sta     $08A2,y
        stx     $67
        lda     $68
        jsr     LEE1B
        tax
        ldy     #$00
LEF4C:  lda     $096E,y
        sta     $08AA,x
        iny
        inx
        cpy     #$0A
        bne     LEF4C
        ldx     $67
LEF5A:  inx
        cpx     #$1E
        bne     LEF0F
        ldy     #$00
        ldx     #$14
LEF63:  lda     $08AA,x
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
        bcc     LEF63
        lda     #$00
        sta     $54
        sta     $55
        lda     $08BA
        bpl     LEFA0
        lda     $08B8
        ora     $08B9
        bne     LEFA0
        jsr     LF277
        lda     #$01
        jsr     LEE7C
LEFA0:  rts

LEFA1:  lda     $0803
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
LEFD0:  sty     $62
        ldx     $61
        jsr     LF010
        bcs     LEFDD
        lda     $62
        sta     $61
LEFDD:  lda     $62
        sec
        sbc     #$05
        tay
        bpl     LEFD0
        ldx     $61
        jsr     LF02B
        bcc     LF00F
        lda     $08B9
        bne     LF000
        lda     #$C8
        cmp     $08B8
        bcc     LF000
        sta     $08B8
        lda     #$01
        jsr     LEE7C
LF000:  ldx     #$00
        ldy     $61
LF004:  lda     $0800,x
        jsr     LF1B8
        inx
        cpx     #$05
        bne     LF004
LF00F:  rts

LF010:  lda     $0848,y
        cmp     $0848,x
        bne     LF02A
        inx
        iny
        lda     $0848,y
        cmp     $0848,x
        bne     LF02A
        inx
        iny
        lda     $0848,y
        cmp     $0848,x
LF02A:  rts

LF02B:  lda     $0800
        cmp     $0848,x
        bne     LF043
        inx
        lda     $0801
        cmp     $0848,x
        bne     LF043
        inx
        lda     $0802
        cmp     $0848,x
LF043:  rts

LF044:  ldy     #$1E
LF046:  lda     $0847,y
        sta     $0865,y
        dey
        bne     LF046
        lda     #$00
        sta     $0669
        lda     #$06
        sta     $63
LF058:  lda     #$00
        sta     $61
        clc
        adc     #$19
        tay
LF060:  ldx     $61
        sty     $62
        lda     $0866,x
        cmp     $0866,y
        bne     LF07E
        inx
        iny
        lda     $0866,x
        cmp     $0866,y
        bne     LF07E
        inx
        iny
        lda     $0866,x
        cmp     $0866,y
LF07E:  bcs     LF084
        lda     $62
        sta     $61
LF084:  lda     $62
        sec
        sbc     #$05
        tay
        bne     LF060
        lda     #$03
        sta     $64
        ldx     $61
        ldy     $0669
LF095:  lda     $0866,x
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
        bne     LF095
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
        beq     LF0EC
        jmp     LF058

LF0EC:  rts

LF0ED:  cmp     #$5F
        bcs     LF0F6
        sec
        sbc     #$41
        bcs     LF0F8
LF0F6:  lda     #$1F
LF0F8:  rts

LF0F9:  and     #$1F
        clc
        adc     #$41
        cmp     #$5F
        bcc     LF104
        lda     #$20
LF104:  rts

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
LF11F:  lda     $06CE,y
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
        bcc     LF11F
        lda     #$02
        jmp     LEE7C

LF14C:  lda     $08AA,y
        clc
        adc     #$01
        sta     $08AA,y
        bcc     LF15F
        lda     $08AB,y
        adc     #$00
        sta     $08AB,y
LF15F:  rts

LF160:  txa
        pha
        sty     $65
        ldx     #$00
        lda     #$0A
LF168:  cmp     $65
        beq     LF16E
        bcs     LF176
LF16E:  clc
        adc     #$0A
        inx
        cpx     #$07
        bne     LF168
LF176:  txa
        jsr     LEE7C
        pla
        tax
        rts

LF17D:  txa
        ldy     #$1E
        tax
        sty     $63
        lda     $06C9,x
        sta     $62
        lda     $06C7,x
        cmp     #$1E
        bcc     LF196
        rol     $62
        cmp     #$2D
        clv
        bvc     LF19A
LF196:  rol     $62
        cmp     #$0F
LF19A:  rol     $62
        asl     $62
        lda     $62
        cmp     #$2E
        bcc     LF1AE
        cmp     #$60
        bcc     LF1AC
        lda     #$30
        bne     LF1AE
LF1AC:  lda     #$2E
LF1AE:  clc
        adc     $63
        tay
        jsr     LF14C
        jmp     LF160

LF1B8:  stx     $66
        sta     $0848,y
        ldx     $54
        sta     $0820,x
        inx
        tya
        sta     $0820,x
        inx
        cpx     #$28
        bcc     LF1CE
        ldx     #$00
LF1CE:  stx     $54
        iny
        ldx     $66
        rts

LF1D4:  pha
        lsr     a
        bcc     LF1DB
        jsr     LF277
LF1DB:  pla
        pha
        and     #$02
        bne     LF1E4
        jmp     LF254

LF1E4:  ldx     #$00
        txa
LF1E7:  sta     $08AA,x
        sta     $0914,x
        inx
        cpx     #$0E
        bcc     LF1E7
LF1F2:  lda     $08AA,x
        sta     $0914,x
        inx
        cpx     #$14
        bcc     LF1F2
        lda     #$00
LF1FF:  sta     $08AA,x
        sta     $0914,x
        inx
        cpx     #$50
        bcc     LF1FF
        ldx     #$00
LF20C:  lda     #$FF
        sta     $08A2,x
        stx     $74
        jsr     LEC96
        lda     $74
        jsr     LEE23
        ldx     $74
        ldy     #$00
LF21F:  lda     $08FB,y
        sta     $3400
        sta     ($72),y
        jsr     LF2DD
        iny
        cpy     #$10
        bcc     LF21F
        inx
        cpx     #$08
        bcc     LF20C
LF234:  txa
        pha
        jsr     LEE23
        pla
        tax
        ldy     #$00
LF23D:  lda     #$FF
        sta     $3400
        sta     ($72),y
        jsr     LF2DD
        iny
        cpy     #$10
        bcc     LF23D
        inx
        cpx     #$1E
        bcc     LF234
        jsr     LEECE
LF254:  pla
        pha
        and     #$04
        beq     LF26C
        lda     LEB25
        sta     $08BC
        lda     LEB26
        sta     $08BA
        lda     LEB27
        sta     $08BB
LF26C:  pla
        and     #$05
        beq     LF276
        lda     #$01
        jsr     LEE7C
LF276:  rts

LF277:  lda     #$07
        sta     $08B9
        lda     #$D0
        sta     $08B8
        ldx     #$00
        ldy     #$00
LF285:  lda     LF2FA,x
        inx
        jsr     LF2CF
        lda     LF2FA,x
        inx
        jsr     LF2CF
        lda     LF2FA,x
        inx
        jsr     LF2CF
        lda     LF2FA,x
        inx
        jsr     LF0ED
        sta     $61
        lda     LF2FA,x
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
        lda     LF2FA,x
        inx
        jsr     LF0ED
        ora     $62
        sta     $62
        lda     $61
        jsr     LF2CF
        lda     $62
        jsr     LF2CF
        cpy     #$1E
        bne     LF285
        rts

LF2CF:  sta     $3400
        sta     $25E0,y
        sta     $0848,y
        iny
        jsr     LF2DD
        rts

LF2DD:  pha
        txa
        pha
        lda     #$0F
LF2E2:  pha
        sec
        lda     #$08
LF2E6:  ldx     #$BB
LF2E8:  dex
        bne     LF2E8
        sbc     #$01
        bne     LF2E6
        pla
        lsr     a
        bne     LF2E2
        pla
        tax
        pla
        sta     $3000
        rts

LF2FA:  ora     (L0000,x)
        brk
        .byte   $54
        eor     $54
        brk
        sta     L0000,x
        .byte   $52
        eor     #$53
        brk
        bcc     LF309
LF309:  .byte   $54
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
        bvs     LF321
LF321:  .byte   $4B
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
        bvc     LF339
LF339:  .byte   $47
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
        bmi     LF351
LF351:  .byte   $52
        .byte   $42
        .byte   $44
        brk
        and     L0000
        jmp     L5256

        .byte   $43
        .byte   $4F
        bvc     LF3B7
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
LF37E:  ldy     #$00
        ldx     #$01
LF382:  lda     $0700
        cpx     #$01
        beq     LF38A
        lsr     a
LF38A:  lsr     a
        lda     $C5,x
        and     #$1F
        bcc     LF3A8
        beq     LF3A3
        cmp     #$1B
        bcs     LF3A1
        pha
        lda     $C9
        and     #$07
        cmp     #$07
        pla
        bcc     LF3A3
LF3A1:  sbc     #$01
LF3A3:  sta     $C5,x
        jmp     LF3E1

LF3A8:  cmp     #$1B
        bcs     LF3B5
        lda     $C5,x
        adc     #$20
        bcc     LF3A3
        beq     LF3B5
        clc
LF3B5:  lda     #$1F
LF3B7:  sta     $C5,x
        bcs     LF3E1
        iny
        txa
        beq     LF3CB
        lda     $C0
        and     #$0C
        lsr     a
        lsr     a
        beq     LF3D3
        adc     #$02
        bne     LF3D3
LF3CB:  lda     $C0
        and     #$10
        beq     LF3D3
        lda     #$01
LF3D3:  sec
        pha
        adc     $C2
        sta     $C2
        pla
        sec
        adc     $C4
        sta     $C4
        inc     $C7,x
LF3E1:  dex
        bpl     LF382
        tya
        beq     LF428
        lda     $C0
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        eor     #$07
        beq     LF424
        tay
        lda     $C2
LF3F5:  sec
LF3F6:  sbc     LF407,y
        bmi     LF40F
        sta     $C2
        inc     $C3
        cpy     #$04
        bne     LF3F5
        inc     $C3
        bcs     LF3F6
LF407:  .byte   $7F
        .byte   $7F
        .byte   $03
        ora     $04
        .byte   $04
        .byte   $02
        .byte   $7F
LF40F:  lda     $C0
        and     #$03
        eor     #$FF
        clc
        adc     $C4
        bcs     LF422
        adc     $C3
        bmi     LF428
        sta     $C3
        lda     #$00
LF422:  inc     $C1
LF424:  sta     $C4
        bne     LF40F
LF428:  inc     $C9
        lda     $C9
        lsr     a
        bcs     LF45C
        lda     $C7
        ora     $C8
        beq     LF45C
        cmp     #$10
        bcc     LF44C
        ldx     #$01
LF43B:  lda     $C7,x
        beq     LF447
        cmp     #$10
        bcc     LF447
        adc     #$EF
        sta     $C7,x
LF447:  dex
        bpl     LF43B
        bmi     LF45C
LF44C:  ldx     #$01
LF44E:  lda     $C7,x
        beq     LF459
        clc
        adc     #$EF
        sta     $C7,x
        bmi     LF45C
LF459:  dex
        bpl     LF44E
LF45C:  rts

        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LF5F0:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LF9D8:  brk
        brk
        brk
LF9DB:  brk
        brk
LF9DD:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFA20:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFA41:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
