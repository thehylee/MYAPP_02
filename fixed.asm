; da65 V2.19 - Git 2fa92f9
; Created:    2026-11-27 00:52:58
; Input file: fixed.bin
; Page:       1


        .setcpu "6502"

L0000           := $0000
L0008           := $0008
L0045           := $0045
L0100           := $0100
L0108           := $0108
L01C0           := $01C0
L01E0           := $01E0
L0208           := $0208
L0308           := $0308
L0408           := $0408
L0508           := $0508
L0608           := $0608
L0708           := $0708
L0808           := $0808
L0810           := $0810
L0908           := $0908
L0A08           := $0A08
L0B08           := $0B08
L0C08           := $0C08
L0D08           := $0D08
L0E08           := $0E08
L0F08           := $0F08
L1008           := $1008
L1108           := $1108
L1208           := $1208
L1308           := $1308
L1408           := $1408
L1508           := $1508
L1608           := $1608
L1708           := $1708
L1808           := $1808
L1908           := $1908
L1A08           := $1A08
L1A20           := $1A20
L1B08           := $1B08
L1C08           := $1C08
L1D08           := $1D08
L1D18           := $1D18
L1E08           := $1E08
L1EFF           := $1EFF
L1F08           := $1F08
L2001           := $2001
L2010           := $2010
L2011           := $2011
L2015           := $2015
L2019           := $2019
L201E           := $201E
L2020           := $2020
L2021           := $2021
L2025           := $2025
L2029           := $2029
L202A           := $202A
L202C           := $202C
L202F           := $202F
L2031           := $2031
L2032           := $2032
L2034           := $2034
L2035           := $2035
L2036           := $2036
L2041           := $2041
L2043           := $2043
L2045           := $2045
L2049           := $2049
L204B           := $204B
L204C           := $204C
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
L2226           := $2226
L2529           := $2529
L2F28           := $2F28
L3033           := $3033
L3034           := $3034
L30D0           := $30D0
L3100           := $3100
L3120           := $3120
L3533           := $3533
L3534           := $3534
L3B43           := $3B43
L3B47           := $3B47
L3B4F           := $3B4F
L4000           := $4000
L4004           := $4004
L4020           := $4020
L402D           := $402D
L4120           := $4120
L413B           := $413B
L4141           := $4141
L4142           := $4142
L4146           := $4146
L4150           := $4150
L4153           := $4153
L4200           := $4200
L4241           := $4241
L4292           := $4292
L4328           := $4328
L4345           := $4345
L4353           := $4353
L4441           := $4441
L453B           := $453B
L4548           := $4548
L454C           := $454C
L454D           := $454D
L454E           := $454E
L4550           := $4550
L4553           := $4553
L4554           := $4554
L4555           := $4555
L4645           := $4645
L4843           := $4843
L4857           := $4857
L493B           := $493B
L4947           := $4947
L4948           := $4948
L4954           := $4954
L4957           := $4957
L4B4F           := $4B4F
L4C50           := $4C50
L4E20           := $4E20
L4E41           := $4E41
L4E45           := $4E45
L4E4F           := $4E4F
L4F00           := $4F00
L4F43           := $4F43
L4F46           := $4F46
L4F47           := $4F47
L4F4D           := $4F4D
L4F54           := $4F54
L5015           := $5015
L5017           := $5017
L504F           := $504F
L5256           := $5256
L5341           := $5341
L5354           := $5354
L5420           := $5420
L5441           := $5441
L5445           := $5445
L5449           := $5449
L5453           := $5453
L554D           := $554D
L554E           := $554E
L5941           := $5941
L5A49           := $5A49
L6000           := $6000
L6040           := $6040
L656D           := $656D
L6C3D           := $6C3D
L6CCD           := $6CCD
L6D6C           := $6D6C
L6E20           := $6E20
L8000:  sei
        jmp     L8008

        asl     a:$D7
        .byte   $80
L8008:  cld
        ldx     #$FF
        txs
        lda     #$00
        .byte   $8D
        .byte   $0F
L8010:  plp
        sta     $281F
L8014:  clc
        adc     #$01
        cmp     #$07
        bne     L8014
        sta     $280F
        sta     $281F
        lda     #$00
        ldy     #$07
L8025:  sta     $2800,y
        sta     $2810,y
        dey
        bpl     L8025
        lda     #$00
        ldx     #$00
L8032:  sta     L0000,x
        sta     L0100,x
        sta     $0200,x
        sta     $0300,x
        sta     $0400,x
        sta     $0500,x
        sta     $0600,x
        sta     $0700,x
        sta     $0800,x
        sta     $0900,x
        sta     $0A00,x
        sta     $0B00,x
        sta     $0C00,x
        sta     $0D00,x
        sta     $0E00,x
        .byte   $9D
        brk
L8060:  .byte   $0F
        sta     $1000,x
        sta     $1100,x
        sta     $1200,x
        sta     $1300,x
        sta     $1400,x
        sta     $1500,x
        sta     $1600,x
        sta     $1700,x
        sta     $1800,x
        sta     $1900,x
        sta     $1A00,x
        sta     $1B00,x
        sta     $1C00,x
        sta     $1D00,x
        sta     $1E00,x
        sta     $1F00,x
        sta     $2000,x
        sta     $3000
        inx
        bne     L8032
        sta     $280B
        bit     $2808
        bmi     L80A8
        jsr     LE649
        jmp     LE661

L80A8:  ldx     #$00
L80AA:  lda     L0000,x
        beq     L80B1
        jsr     L8BE4
L80B1:  ldy     #$00
        sec
L80B4:  tya
        rol     a
        tay
        sta     L0000,x
        eor     L0000,x
        beq     L80C0
        jmp     L8BEC

L80C0:  bcc     L80B4
        ldy     #$FF
        clc
L80C5:  tya
        rol     a
        tay
        sta     L0000,x
        eor     L0000,x
        beq     L80D1
        jmp     L8BF4

L80D1:  bcs     L80C5
        sta     $3000
        inx
        bne     L80AA
L80D9:  inc     L0000,x
        beq     L80E2
        lda     L0000,x
        jmp     L8BFC

L80E2:  inx
        bne     L80D9
        sta     $3000
        ldx     #$FF
        txs
        lda     #$00
        sta     $AF
        .byte   $85
L80F0:  lda     $AE85
L80F3:  inc     $AE
        ldy     #$00
L80F7:  .byte   $B1
L80F8:  lda     $03F0
        jsr     L8BCE
L80FE:  ldx     #$00
        sec
L8101:  txa
        rol     a
        tax
        sta     ($AD),y
        eor     ($AD),y
        beq     L810E
        jsr     L8BCE
        sec
L810E:  bcc     L8101
        ldx     #$FF
        clc
L8113:  txa
        rol     a
        tax
        sta     ($AD),y
        eor     ($AD),y
        beq     L8120
        jsr     L8BCE
        clc
L8120:  bcs     L8113
        sta     $3000
        iny
        bne     L80F7
L8128:  lda     ($AD),y
        clc
        adc     #$01
        sta     ($AD),y
        beq     L8134
        jsr     L8BCE
L8134:  iny
        bne     L8128
        sta     $3000
        lda     $AE
        cmp     #$20
        bcc     L80F3
        jsr     L9290
        lda     #$00
        sta     $B0
        sta     $5E
        lda     $AF
        and     #$03
        beq     L817C
        and     #$02
        beq     L815C
        lda     #$2F
        sta     $5E
        lda     #$03
        clv
        bvc     L815E
L815C:  lda     #$02
L815E:  ldy     #$00
        jsr     L8CBC
        lda     $AF
        and     #$01
        beq     L8172
        lda     #$0F
        sta     $5E
        lda     #$01
        clv
        bvc     L8174
L8172:  lda     #$00
L8174:  ldy     #$00
        jsr     L8CBC
        clv
        bvc     L817E
L817C:  inc     $B0
L817E:  lda     #$17
        ldy     #$00
        jsr     L8CBC
        lda     #$24
        ldy     #$00
        jsr     L8CBC
        ldx     #$0F
        lda     #$FF
L8190:  sta     $2000,x
        dex
        bpl     L8190
        lda     #$00
        sta     $2000
        inc     $B0
        jmp     L822E

        lda     $5E
        beq     L81C5
        and     #$10
        bne     L81AD
        lda     #$A8
        clv
        bvc     L81AF
L81AD:  lda     #$00
L81AF:  dec     $5E
        bne     L81B5
        lda     #$00
L81B5:  sta     $2800
        sta     $2801
        lda     $5E
        cmp     #$1F
        bne     L81C5
        lda     #$13
        sta     $5E
L81C5:  lda     $B5
        and     #$08
        beq     L81D5
        lda     #$00
        sta     $2800
        sta     $2801
        dec     $B0
L81D5:  jmp     L822E

        lda     #$00
        sta     $2800
        sta     $2801
        lda     #$25
        ldy     #$00
        jsr     L8CBC
        jsr     LD5B8
        lda     #$00
        ldx     #$40
        ldy     #$40
        jsr     L8CA0
        clc
        adc     L6000
        pha
        jsr     LD5C2
        pla
        ldx     #$40
        ldy     #$C0
        jsr     L8CA0
        clc
        adc     L6000
        cmp     #$FF
        beq     L8223
        ldy     #$24
        sty     $02
        ldy     #$12
        sty     $03
        jsr     L9264
        lda     $AF
        ora     #$04
        sta     $AF
        lda     #$04
        ldy     #$00
        jsr     L8CBC
L8223:  jsr     LD5C2
        lda     $AF
        and     #$0C
        bne     L822E
        inc     $B0
L822E:  lda     $B2
        sta     $B6
        sta     $280B
        ldx     $2808
        stx     $B2
        eor     #$FF
        and     $B2
        sta     $B4
        lda     $B3
        sta     $B7
        sta     $281B
        ldx     $2818
        stx     $B3
        eor     #$FF
        and     $B3
        sta     $B5
        ldx     #$07
L8254:  lda     $B3
        and     L82F2,x
        bne     L8261
        lda     #$00
        sta     $B8,x
        beq     L827C
L8261:  inc     $B8,x
        lda     $B8,x
        cmp     L82FA,x
        bcc     L8271
        lda     $B5
        ora     L82F2,x
        sta     $B5
L8271:  lda     $B5
        and     L82F2,x
        beq     L827C
        lda     #$00
        sta     $B8,x
L827C:  dex
        bpl     L8254
L827F:  sta     $280B
        bit     $2808
        bvc     L827F
L8287:  lda     $AC
        bne     L8293
        sta     $280B
        bit     $2808
        bvs     L8287
L8293:  lda     #$00
        sta     $AC
        .byte   $A5
L8298:  .byte   $B2
        bmi     L829F
L829B:  sei
L829C:  jmp     L829C

L829F:  sta     $3000
        lda     $B5
        and     #$01
        beq     L82B5
        lda     $B0
        clc
        adc     #$01
        cmp     #$17
        bcc     L82B3
        lda     #$03
L82B3:  sta     $B0
L82B5:  lda     $B0
        asl     a
        tay
        lda     L82C3,y
        pha
        lda     L82C2,y
        pha
        rts

L82C2:  .byte   $07
L82C3:  .byte   $80
        .byte   $9F
        sta     ($D7,x)
        sta     ($01,x)
        .byte   $83
        and     ($83,x)
        .byte   $5C
        .byte   $83
        txa
        .byte   $83
        lda     ($83),y
        rol     $84
        and     $6084,x
        sty     $BE
        sty     $DC
        sty     $0F
        sta     $55
        sta     $67
        sta     $93
        sta     $A7
        sta     $36
        stx     $56
        stx     $E9
        stx     $56
        stx     $0E
        .byte   $8B
        .byte   $5B
        .byte   $8B
L82F2:  ora     ($02,x)
        .byte   $04
        php
        bpl     L8318
        rti

        .byte   $80
L82FA:  .byte   $3C
        asl     $1E1E,x
        .byte   $1E
L82FF:  asl     $1E1E,x
        sei
        jsr     L9290
        jsr     LE649
        lda     #$00
        sta     $5E
        sta     $5F
        jsr     L8618
        lda     #$16
        ldy     #$00
        .byte   $20
        .byte   $BC
L8318:  sty     $17A9
        ldy     #$00
        jsr     L8CBC
        inc     $B0
        lda     $B2
        ldx     #$06
L8326:  asl     a
        bcs     L832E
        ldy     #$00
        clv
        bvc     L8330
L832E:  ldy     #$10
L8330:  pha
        txa
        pha
        jsr     L8CBC
        pla
        tax
        pla
        inx
        cpx     #$0E
        bcc     L8326
        lda     $B3
        ldx     #$0E
L8342:  asl     a
        bcs     L834A
        ldy     #$00
        clv
        bvc     L834C
L834A:  ldy     #$10
L834C:  pha
        txa
        pha
        jsr     L8CBC
        pla
        tax
        pla
        inx
        cpx     #$16
        bcc     L8342
        jmp     L822E

        lda     #$00
        sta     $5E
        sta     $5F
        jsr     L8618
        jsr     LEECE
        lda     #$17
        ldy     #$00
        jsr     L8CBC
        lda     #$27
        ldy     #$00
        jsr     L8CBC
        lda     #$28
        ldy     #$00
        jsr     L8CBC
        jsr     LC68F
        lda     #$03
        sta     $20B1
        inc     $B0
        jmp     L822E

        lda     $B3
        and     #$84
        cmp     #$84
        bne     L83AF
        lda     $B5
        and     #$10
        beq     L83AF
        lda     #$29
        ldy     #$00
        jsr     L8CBC
        lda     #$02
        jsr     LF1D4
        lda     #$2A
        ldy     #$00
        jsr     L8CBC
        jsr     LC68F
L83AF:  jmp     L822E

        lda     #$00
        sta     $B1
        sta     $5E
        sta     $5F
        jsr     L8618
        lda     #$00
        sta     L2010
        lda     #$10
        sta     L2011
        lda     #$C0
        sta     L2020
        lda     #$DB
        sta     L2021
        lda     #$C0
        sta     $2030
        lda     #$18
        sta     L2031
        lda     #$36
        ldy     #$B0
        jsr     L8CBC
        lda     #$3A
        ldy     #$00
        jsr     L8CBC
        lda     #$3B
        ldy     #$00
        jsr     L8CBC
        lda     #$40
        ldy     #$00
        jsr     L8CBC
        lda     #$41
        ldy     #$00
        jsr     L8CBC
        lda     $08BC
        sta     $05C1
        sta     $06E5
        lda     LEB25
        sta     $06E7
        lda     #$00
        sta     $06E4
        sta     $06E6
        lda     #$9A
        sta     $06E8
        lda     #$97
        sta     $06E9
        jsr     L94FD
        inc     $B0
        jmp     L822E

        lda     $08BC
        sta     $06E5
        lda     #$00
        sta     $06E4
        jsr     L952B
        lda     $06E5
        sta     $08BC
        jmp     L822E

        lda     $08BC
        cmp     $05C1
        beq     L845C
        lda     #$01
        jsr     LEE7C
        cli
L844C:  sta     $3000
        lda     $6C
        cmp     $6D
        bne     L8459
        lda     $6E
        cmp     #$FF
L8459:  bne     L844C
        sei
L845C:  inc     $B0
        jmp     L822E

        lda     #$00
        sta     $B1
        sta     $5E
        sta     $5F
        jsr     L8618
        lda     #$37
        ldy     #$B0
        jsr     L8CBC
        lda     #$3A
        ldy     #$00
        jsr     L8CBC
        lda     #$3B
        ldy     #$00
        jsr     L8CBC
        lda     #$40
        ldy     #$00
        jsr     L8CBC
        lda     #$41
        ldy     #$00
        jsr     L8CBC
        lda     $08BA
        sta     $05C0
        sta     $06E4
        lda     $08BB
        sta     $05C1
        sta     $06E5
        lda     LEB26
        sta     $06E6
        lda     LEB27
        sta     $06E7
        lda     #$5A
        sta     $06E8
        lda     #$99
        sta     $06E9
        jsr     L94FD
        inc     $B0
        jmp     L822E

        lda     $08BA
        sta     $06E4
        lda     $08BB
        sta     $06E5
        jsr     L952B
        lda     $06E5
        sta     $08BB
        lda     $06E4
        sta     $08BA
        jmp     L822E

        lda     $08BA
        cmp     $05C0
        bne     L84ED
        lda     $08BB
        cmp     $05C1
        beq     L8503
L84ED:  lda     #$01
        jsr     LEE7C
        cli
L84F3:  sta     $3000
        lda     $6C
        cmp     $6D
        bne     L8500
        lda     $6E
        .byte   $C9
L84FF:  .byte   $FF
L8500:  bne     L84F3
        sei
L8503:  inc     $B0
        jmp     L822E

        .byte   $80
        rti

        jsr     L0810
        .byte   $04
        .byte   $02
        ora     ($A9,x)
        brk
        sta     $B1
        sta     $5E
        sta     $5F
        jsr     L8618
        lda     #$38
        ldy     #$B0
        jsr     L8CBC
        lda     #$42
        ldy     #$00
        jsr     L8CBC
        lda     #$43
        ldy     #$00
        jsr     L8CBC
        lda     #$00
        sta     $05C1
        sta     $08FA
        sta     $06E4
        sta     $06E5
        sta     $06E6
        sta     $06E7
        lda     #$BA
        sta     $06E8
        lda     #$99
        sta     $06E9
        jsr     L94FD
        inc     $B0
        jmp     L822E

        lda     $08FA
        sta     $06E5
        jsr     L952B
        lda     $06E5
        sta     $08FA
        jmp     L822E

        lda     $08FA
        and     #$07
        beq     L858F
        lda     #$39
        ldy     #$B0
        jsr     L8CBC
        lda     $08FA
        and     #$07
        jsr     LF1D4
        cli
L857F:  sta     $3000
        lda     $6C
        cmp     $6D
        bne     L858C
        lda     $6E
        cmp     #$FF
L858C:  bne     L857F
        sei
L858F:  inc     $B0
        jmp     L822E

        lda     #$FF
        sta     $0689
        jsr     L939C
        lda     $B5
        ora     #$04
        sta     $B5
        lda     #$FF
        sta     $9B
        inc     $B0
        lda     $B5
        and     #$08
        beq     L85B6
        dec     $9B
        bpl     L85B6
        lda     #$08
        sta     $9B
L85B6:  lda     $B5
        and     #$04
        beq     L85C8
        inc     $9B
        lda     $9B
        cmp     #$09
        bcc     L85C8
        lda     #$00
        sta     $9B
L85C8:  lda     $B5
        and     #$10
        beq     L85D1
        jsr     L939C
L85D1:  lda     $B5
        and     #$0C
        beq     L860C
        ldy     $9B
        lda     L860F,y
        sta     $5E
        lda     #$00
        sta     $5F
        jsr     L8618
        lda     #$17
        ldy     #$00
        jsr     L8CBC
        lda     #$18
        ldy     #$00
        jsr     L8CBC
        lda     #$19
        ldy     #$00
        jsr     L8CBC
        lda     #$1A
        ldy     #$00
        jsr     L8CBC
        lda     $0689
        clc
        adc     #$1C
        ldy     #$60
        jsr     L8CBC
L860C:  jmp     L822E

L860F:  bpl     L8690
        adc     $797E,x
        .byte   $7A
        .byte   $7B
        .byte   $7C
        .byte   $0F
L8618:  lda     #$00
        sta     $AA
        lda     #$10
        sta     $AB
L8620:  ldy     #$00
L8622:  lda     $5E
        sta     ($AA),y
        iny
        lda     $5F
        sta     ($AA),y
        iny
        bne     L8622
        inc     $AB
        lda     $AB
        cmp     #$20
        bcc     L8620
        rts

        jsr     L9290
        lda     #$00
        sta     $5E
        sta     $5F
        jsr     L8618
        lda     #$5A
        sta     $AD
        lda     #$86
        sta     $AE
        jsr     L870A
        lda     #$1B
        ldy     #$00
        jsr     L8CBC
        inc     $B0
        jmp     L822E

        .byte   $2F
        .byte   $FF
        bpl     L869D
        .byte   $FF
        bpl     L8690
        .byte   $FF
        bpl     L86A3
        .byte   $FF
        bpl     L8696
        .byte   $FF
        bpl     L86A9
        .byte   $FF
        bpl     L869C
        .byte   $FF
        bpl     L86AF
        .byte   $FF
        bpl     L86A2
        .byte   $FF
        bpl     L86B5
        .byte   $FF
        bpl     L86A8
        .byte   $FF
        bpl     L86BB
        .byte   $FF
        bpl     L86AE
        .byte   $FF
        bpl     L86C1
        .byte   $FF
        bpl     L86B4
        .byte   $FF
        bpl     L86C7
        .byte   $FF
        bpl     L86BA
        .byte   $FF
        .byte   $10
L868D:  .byte   $4F
        .byte   $FF
        .byte   $10
L8690:  .byte   $2F
        .byte   $FF
        bpl     L86E3
        .byte   $FF
        .byte   $10
L8696:  .byte   $2F
        .byte   $FF
        bpl     L86E9
        .byte   $FF
        .byte   $10
L869C:  .byte   $2F
L869D:  .byte   $FF
        bpl     L86EF
        .byte   $FF
        .byte   $10
L86A2:  .byte   $2F
L86A3:  .byte   $FF
        bpl     L86F5
        .byte   $FF
        .byte   $10
L86A8:  .byte   $2F
L86A9:  .byte   $FF
        bpl     L86FB
        .byte   $FF
        .byte   $10
L86AE:  .byte   $2F
L86AF:  .byte   $FF
        bpl     L8701
        .byte   $FF
        .byte   $10
L86B4:  .byte   $2F
L86B5:  .byte   $FF
        bpl     L8707
        .byte   $FF
        .byte   $10
L86BA:  .byte   $2F
L86BB:  .byte   $FF
        bpl     L871D
        .byte   $FF
        bpl     L86F0
L86C1:  .byte   $FF
        bpl     L8723
        .byte   $FF
        bpl     L86F6
L86C7:  .byte   $FF
        bpl     L8729
        .byte   $FF
        bpl     L86FC
        .byte   $FF
        bpl     L872F
        .byte   $FF
        bpl     L8702
        .byte   $FF
        bpl     L8735
        .byte   $FF
        bpl     L8708
        .byte   $FF
        bpl     L873B
        .byte   $FF
L86DD:  bpl     L870E
        .byte   $FF
        bpl     L8741
        .byte   $FF
L86E3:  bpl     L8714
        .byte   $FF
        bpl     L8747
        .byte   $FF
L86E9:  bpl     L868D
        brk
L86EC:  txa
        .byte   $9D
        brk
L86EF:  .byte   $20
L86F0:  inx
        bne     L86EC
        lda     #$97
L86F5:  .byte   $85
L86F6:  lda     L87A9
        sta     $AE
L86FB:  .byte   $20
L86FC:  asl     a
        .byte   $87
        .byte   $A9
L86FF:  .byte   $22
        .byte   $A0
L8701:  brk
L8702:  jsr     L8CBC
        inc     $B0
L8707:  .byte   $4C
L8708:  .byte   $2E
        .byte   $82
L870A:  lda     #$00
        sta     $5E
L870E:  sta     $5F
        jsr     L8618
        .byte   $A9
L8714:  dey
        sta     $AA
        lda     #$11
        sta     $AB
        ldx     #$00
L871D:  lda     #$01
        sta     $068B
L8722:  .byte   $A0
L8723:  brk
L8724:  dec     $068B
        bne     L874F
L8729:  lda     ($AD,x)
        sta     $5E
        .byte   $20
        .byte   $8B
L872F:  .byte   $87
        lda     ($AD,x)
        sta     $068A
L8735:  jsr     L878B
        lda     ($AD,x)
        .byte   $8D
L873B:  .byte   $8B
        asl     $20
        .byte   $8B
        .byte   $87
        .byte   $A5
L8741:  lsr     LF029,x
        sta     $5F
        .byte   $A5
L8747:  lsr     $0F29,x
        sta     $5E
        clv
        bvc     L8764
L874F:  lda     $5E
        clc
        adc     $068A
        sta     $5E
        and     #$F0
        clc
        adc     $5F
        sta     $5F
        lda     $5E
        and     #$0F
        sta     $5E
L8764:  lda     $5E
        sta     ($AA),y
        iny
        lda     $5F
        sta     ($AA),y
        iny
        cpy     #$40
        bcc     L8724
        lda     $AA
        clc
        adc     #$80
        sta     $AA
        lda     $AB
        adc     #$00
        sta     $AB
        cmp     #$1E
        bcc     L8722
        lda     #$17
        ldy     #$00
        jsr     L8CBC
        rts

L878B:  lda     $AD
        clc
        adc     #$01
        sta     $AD
        bcc     L8796
        inc     $AE
L8796:  rts

        brk
        brk
        rti

        brk
        ora     ($20,x)
        jsr     L2001
        rti

        ora     ($20,x)
        rts

        ora     ($20,x)
        .byte   $80
        ora     ($20,x)
L87A9:  ldy     #$01
        jsr     L01C0
        jsr     L01E0
        jsr     L0000
        .byte   $80
        brk
        jsr     L0108
        jsr     L0208
        jsr     L0308
        jsr     L0408
        jsr     L0508
        jsr     L0608
        jsr     L0708
        jsr     L0808
        jsr     L0908
        jsr     L0A08
        jsr     L0B08
        jsr     L0C08
        jsr     L0D08
        jsr     L0E08
        jsr     L0F08
        jsr     L1008
        jsr     L1108
        jsr     L1208
        jsr     L1308
        jsr     L1408
        jsr     L1508
        jsr     L1608
        jsr     L1708
        jsr     L1808
        jsr     L1908
        jsr     L1A08
        jsr     L1B08
        jsr     L1C08
        jsr     L1D08
        jsr     L1E08
        jsr     L1F08
        jsr     L0008
        brk
        rti

L8818:  sta     $06A1
        lda     #$01
        sta     $06A2
        lda     #$00
        sta     $06A3
L8825:  lda     $06A3
        beq     L8825
        lda     $06A1
        jsr     L883B
        lda     #$03
        sta     $06A2
L8835:  lda     $06A3
        bne     L8835
        rts

L883B:  sta     $0651
        tay
        cmp     #$08
        bne     L8849
        jsr     LD5C2
        clv
        bvc     L884C
L8849:  jsr     LD5B8
L884C:  lda     L889C,y
        sta     $5C
        lda     L889D,y
        sta     $5D
        lda     #$02
        sta     $0682
        lda     #$00
        sta     $0683
        sta     $0684
        sta     $AA
        lda     #$10
        sta     $AB
L8869:  ldy     #$00
L886B:  jsr     L88AA
        lda     $0685
        sta     ($AA),y
        iny
        lda     $0686
        sta     ($AA),y
        iny
        cpy     #$54
        bcc     L886B
        lda     $AA
        clc
        adc     #$80
        sta     $AA
        lda     $AB
        adc     #$00
        sta     $AB
        cmp     #$1F
        bcc     L8869
        lda     $0651
        cmp     #$05
        bcs     L889B
        lda     #$36
        jsr     LD670
L889B:  rts

L889C:  .byte   $7C
L889D:  eor     ($7C),y
        eor     ($7C),y
        eor     ($22),y
        .byte   $57
        .byte   $1C
        .byte   $7A
        cmp     ($5C,x)
        ror     $62
L88AA:  ldx     #$00
        lda     $0682
        bne     L88BC
        dec     $0684
        bne     L88BB
        lda     #$02
        sta     $0682
L88BB:  rts

L88BC:  cmp     #$01
        bne     L88DA
L88C0:  clc
        lda     $0685
        adc     #$01
        sta     $0685
        bcc     L88CE
        inc     $0686
L88CE:  dec     $0683
        bne     L88D8
        lda     #$02
        sta     $0682
L88D8:  bne     L8945
L88DA:  lda     ($5C,x)
        sta     $0687
        bpl     L88E5
        lda     #$FF
        bne     L88E7
L88E5:  lda     #$00
L88E7:  sta     $0688
        jsr     L8946
        lda     $0687
        cmp     #$80
        bne     L8907
        lda     ($5C,x)
        sta     $0685
        jsr     L8946
        lda     ($5C,x)
        sta     $0686
        jsr     L8946
        clv
        bvc     L8945
L8907:  cmp     #$81
        bne     L891E
        lda     #$01
        sta     $0682
        lda     ($5C,x)
        sta     $0683
        jsr     L8946
        jmp     L88C0

        clv
        bvc     L8945
L891E:  cmp     #$7F
        bne     L8935
        lda     #$00
        sta     $0682
        lda     ($5C,x)
        sec
        sbc     #$01
        sta     $0684
        jsr     L8946
        clv
        bvc     L8945
L8935:  clc
        adc     $0685
        sta     $0685
        lda     $0688
        adc     $0686
        sta     $0686
L8945:  rts

L8946:  lda     $5C
        clc
        adc     #$01
        sta     $5C
        bcc     L8951
        inc     $5D
L8951:  rts

L8952:  lda     #$02
        sta     $0682
        lda     #$00
        sta     $0683
        sta     $0684
        sta     $068B
        lda     #$20
        sta     $AA
        lda     #$16
        sta     $AB
        tya
        asl     a
        tay
        jsr     LD5B8
        lda     L89AB,y
        sta     $5C
        lda     L89AC,y
        sta     $5D
L897A:  ldy     #$00
L897C:  jsr     L88AA
        lda     $0685
        sta     ($AA),y
        iny
        lda     $0686
        and     #$0F
        ora     #$80
        sta     ($AA),y
        iny
        cpy     #$14
        bcc     L897C
        lda     $AA
        clc
        adc     #$80
        sta     $AA
        lda     $AB
        adc     #$00
        sta     $AB
        inc     $068B
        lda     $068B
        cmp     #$08
        bcc     L897A
        rts

L89AB:  .byte   $04
L89AC:  lsr     $3B,x
        lsr     $83,x
        lsr     $BF,x
        lsr     $F7,x
        lsr     $11,x
        .byte   $57
L89B7:  lda     #$00
        sta     $068B
        lda     $06A4
        bne     L89CC
        lda     #$22
        sta     $AA
        lda     #$13
        sta     $AB
        clv
        bvc     L89D4
L89CC:  lda     #$2A
        sta     $AA
        lda     #$13
        sta     $AB
L89D4:  jsr     LD5B8
        tya
        asl     a
        tay
        lda     L8A1D,y
        sta     $5A
        lda     L8A1E,y
        sta     $5B
L89E4:  ldy     #$00
L89E6:  lda     ($5A),y
        sta     ($AA),y
        iny
        lda     ($5A),y
        and     #$0F
        ora     #$50
        sta     ($AA),y
        iny
        cpy     #$08
        bcc     L89E6
        lda     $AA
        clc
        adc     #$80
        sta     $AA
        lda     $AB
        adc     #$00
        sta     $AB
        .byte   $A5
L8A06:  .byte   $5A
        clc
        adc     #$08
        sta     $5A
        lda     $5B
        adc     #$00
        sta     $5B
        inc     $068B
        .byte   $AD
        .byte   $8B
L8A17:  asl     $C9
        asl     $90
        iny
        rts

L8A1D:  .byte   $6D
L8A1E:  ror     $9D
        ror     $CD
        ror     $FD
        ror     $2D
        .byte   $67
        eor     L8D67,x
        .byte   $67
        lda     LED67,x
        .byte   $67
        ora     $4D68,x
        pla
        adc     LAD68,x
        pla
        cmp     $0D68,x
        adc     #$3D
        adc     #$6D
        adc     #$9D
        adc     #$CD
        adc     #$FD
        adc     #$2D
        ror     a
        .byte   $5D
        ror     a
L8A49:  sta     $BD6A
        ror     a
        sbc     $1D6A
        .byte   $6B
        eor     $7D6B
        .byte   $6B
        lda     $DD6B
        .byte   $6B
        ora     $3D6C
        jmp     ($6C6D)

        sta     $CD6C,x
        jmp     ($6CFD)

        and     $5D6D
        adc     $6D8D
        lda     $ED6D,x
        adc     $6E1D
        eor     $7D6E
        ror     $6EAD
        cmp     $0D6E,x
        .byte   $6F
L8A7B:  and     $6D6F,x
        .byte   $6F
        sta     LCD6F,x
        .byte   $6F
        sbc     $2D6F,x
        bvs     L8AE5
        bvs     L8A17
        bvs     L8A49
        bvs     L8A7B
        bvs     L8AAD
        adc     ($4D),y
        adc     ($7D),y
        adc     ($AD),y
        adc     ($DD),y
        adc     ($0D),y
        .byte   $72
        and     $6D72,x
        .byte   $72
        sta     LCD72,x
        .byte   $72
        sbc     $2D72,x
        .byte   $73
        eor     L8D73,x
        .byte   $73
        .byte   $BD
        .byte   $73
L8AAD:  sbc     $1D73
        .byte   $74
        eor     $7D74
        .byte   $74
        lda     LDD74
        .byte   $74
        ora     $3D75
        adc     $6D,x
        adc     $9D,x
        adc     $CD,x
        adc     $FD,x
        adc     $2D,x
        ror     $5D,x
        ror     $8D,x
        ror     $BD,x
        ror     $ED,x
        ror     $1D,x
        .byte   $77
        eor     $7D77
        .byte   $77
        lda     LDD77
        .byte   $77
        ora     $3D78
        sei
        adc     L9D78
        sei
        cmp     LFD78
        sei
L8AE5:  and     $5D79
        adc     $798D,y
        lda     LED79,x
        adc     $7A1D,y
        eor     $7D7A
        .byte   $7A
        lda     LDD7A
        .byte   $7A
        ora     $3D7B
        .byte   $7B
        adc     L9D7B
        .byte   $7B
        cmp     LFD7B
        .byte   $7B
        and     $5D7C
        .byte   $7C
        sta     LBD7C
        .byte   $7C
        sbc     $207C
        eor     #$E6
        cli
        jsr     L9290
        lda     #$00
        sta     $5E
        sta     $5F
        jsr     L8618
        lda     #$2B
        ldy     #$00
        jsr     L8CBC
        lda     #$2C
        ldy     #$00
        jsr     L8CBC
        lda     #$32
        ldy     #$00
        jsr     L8CBC
        lda     #$33
        ldy     #$00
        jsr     L8CBC
        lda     #$34
        ldy     #$00
        jsr     L8CBC
        lda     #$35
        ldy     #$00
        jsr     L8CBC
        lda     #$17
        ldy     #$00
        jsr     L8CBC
        lda     #$02
        sta     $9B
        lda     $B5
        ora     #$40
        sta     $B5
        inc     $B0
        lda     #$00
        sta     $05
        lda     #$13
        sta     $1C
        lda     #$24
        sta     $1B
        lda     $B5
        and     #$80
        beq     L8B85
        lda     $9B
        sec
        sbc     #$01
        bne     L8B77
        lda     #$1C
L8B77:  sta     $9B
        sta     $1F
        ldy     #$01
        jsr     LC858
        lda     #$03
        jsr     LC8A1
L8B85:  lda     $B5
        and     #$40
        beq     L8BA4
        lda     $9B
        clc
        adc     #$01
        cmp     #$1D
        bcc     L8B96
        lda     #$01
L8B96:  sta     $9B
        sta     $1F
        ldy     #$01
        jsr     LC858
        lda     #$03
        jsr     LC8A1
L8BA4:  lda     $B5
        and     #$10
        beq     L8BAF
        lda     $9B
        jsr     LE659
L8BAF:  lda     $B5
        and     #$22
        beq     L8BBA
        lda     #$00
        jsr     LE659
L8BBA:  lda     $9B
        cmp     #$05
        bcs     L8BC4
        adc     #$2C
        bne     L8BC6
L8BC4:  lda     #$31
L8BC6:  ldy     #$00
        jsr     L8CBC
        jmp     L822E

L8BCE:  lda     $AE
        cmp     #$01
        beq     L8C52
        cmp     #$20
        bcs     L8BDD
        lda     #$01
        clv
        bvc     L8BDF
L8BDD:  lda     #$02
L8BDF:  ora     $AF
        sta     $AF
        rts

L8BE4:  sta     $3000
        tay
        lda     #$5A
        bne     L8C02
L8BEC:  sta     $3000
        tay
        lda     #$31
        bne     L8C02
L8BF4:  sta     $3000
        tay
        lda     #$30
        bne     L8C02
L8BFC:  sta     $3000
        tay
        lda     #$49
L8C02:  sta     $11AC
        txa
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        ora     #$30
        cmp     #$3A
L8C0E:  bcc     L8C12
        adc     #$07
L8C12:  sta     $11A0
        txa
        and     #$0F
        ora     #$30
        cmp     #$3A
        bcc     L8C20
        adc     #$07
L8C20:  sta     $11A2
        tya
        lsr     a
L8C25:  lsr     a
        lsr     a
        lsr     a
        ora     #$30
        cmp     #$3A
        bcc     L8C30
        adc     #$07
L8C30:  sta     $11A6
        tya
        and     #$0F
        ora     #$30
        cmp     #$3A
        bcc     L8C3E
        adc     #$07
L8C3E:  sta     $11A8
        lda     #$00
        sta     $11A1
        sta     $11A3
        sta     $11A7
        sta     $11A9
        sta     $11AD
L8C52:  ldx     #$00
L8C54:  lda     L8C8C,x
        sta     $118A,x
        inx
        cpx     #$14
        bcc     L8C54
        ldx     #$0F
        lda     #$FF
L8C63:  sta     $2000,x
        dex
        bpl     L8C63
        lda     #$00
        tax
        tay
        sta     $2000
        lda     #$A8
        sta     $2800
        sta     $2801
L8C78:  sta     $3000
L8C7B:  iny
        bne     L8C7B
        inx
        bne     L8C78
        lda     #$00
        sta     $2800
        sta     $2801
L8C89:  jmp     L8C89

L8C8C:  bmi     L8C8E
L8C8E:  jsr     L4F00
        brk
        .byte   $52
        brk
        jsr     L3100
        brk
        jsr     L4200
        brk
        eor     (L0000,x)
        .byte   $44
        brk
L8CA0:  sty     $67
L8CA2:  ldy     #$00
        sty     $AD
        stx     $AE
        cpx     #$60
        bne     L8CAD
        iny
L8CAD:  clc
        adc     ($AD),y
        iny
        bne     L8CAD
        sta     $3000
        inx
        dec     $67
        bne     L8CA2
        rts

L8CBC:  sty     $21
        asl     a
        tay
        lda     L8CEC,y
        sta     $A8
        lda     L8CED,y
        sta     $A9
        .byte   $A0
L8CCB:  brk
        ldx     #$00
        lda     ($A8),y
        sta     $AA
        iny
        lda     ($A8),y
        sta     $AB
        iny
        lda     ($A8),y
L8CDA:  sta     ($AA,x)
        inc     $AA
        lda     $21
        sta     ($AA,x)
        inc     $AA
        iny
        lda     ($A8),y
        cmp     #$FF
        bne     L8CDA
L8CEB:  rts

L8CEC:  .byte   $74
L8CED:  sta     L8D84
        sta     $8D,x
        .byte   $AB
        sta     L8DC2
        .byte   $D4
L8CF7:  sta     L8DE6
        sbc     ($8D),y
        .byte   $FA
        .byte   $8D
        .byte   $03
L8CFF:  .byte   $8E
L8D00:  .byte   $0C
        .byte   $8E
        .byte   $1A
L8D03:  stx     $8E23
        .byte   $2F
        stx     $8E3C
        jmp     $5D8E

        .byte   $8E
        .byte   $6D
L8D0F:  stx     L8E85
        sta     $8E,x
        ldx     $8E
        ldx     $8E,y
        dec     LDD8E
L8D1B:  stx     L8F02
        ora     $418F,y
        .byte   $8F
        .byte   $62
        .byte   $8F
        .byte   $6F
        .byte   $8F
        sei
L8D27:  .byte   $8F
        sta     ($8F,x)
        txa
        .byte   $8F
        .byte   $93
        .byte   $8F
        .byte   $9C
        .byte   $8F
        lda     $8F
        .byte   $B7
        .byte   $8F
        cld
        .byte   $8F
        ora     ($90,x)
        rol     a
        bcc     L8D65
        bcc     L8D8D
        bcc     L8DB3
        bcc     L8DBF
        bcc     L8CCB
        .byte   $90
L8D44:  sta     $90,x
L8D46:  ldy     $90
        .byte   $AE
L8D49:  bcc     L8D03
        bcc     L8D0F
        bcc     L8D1B
        bcc     L8D27
        bcc     L8D46
        bcc     L8D61
        sta     ($2E),y
        sta     ($51),y
        sta     ($61),y
        sta     ($71),y
        sta     ($87),y
        sta     ($95),y
L8D61:  sta     ($AF),y
        sta     ($CA),y
L8D65:  sta     ($D1),y
L8D67:  sta     ($D8),y
        .byte   $91
L8D6A:  .byte   $DF
        sta     ($E6),y
        sta     ($05),y
        .byte   $92
        jsr     L4292
L8D73:  .byte   $92
        .byte   $04
        ora     ($3B),y
        eor     ($4D,x)
        jsr     L5441
        jsr     L3034
        .byte   $42
        jsr     L4B4F
        .byte   $FF
L8D84:  .byte   $04
        ora     ($3B),y
        eor     ($4D,x)
        jsr     L5441
        .byte   $20
L8D8D:  .byte   $34
        bmi     L8DD2
        jsr     L4142
        .byte   $44
        .byte   $FF
        bit     $4311
        .byte   $4F
        jmp     L3B4F

        jsr     L413B
        eor     L4120
        .byte   $54
        jsr     L3033
        lsr     $20
        .byte   $4F
        .byte   $4B
        .byte   $FF
        bit     $4311
        .byte   $4F
        jmp     L3B4F

        .byte   $20
L8DB3:  .byte   $3B
        eor     ($4D,x)
        jsr     L5441
        jsr     L3033
        lsr     $20
        .byte   $42
L8DBF:  eor     ($44,x)
        .byte   $FF
L8DC2:  .byte   $04
        .byte   $12
        .byte   $3B
        .byte   $4F
        eor     L4120
        .byte   $54
        jsr     L3534
        lsr     $20
        .byte   $42
        eor     ($44,x)
L8DD2:  jsr     L84FF
        .byte   $12
        .byte   $3B
        .byte   $4F
        eor     L4120
        .byte   $54
        jsr     L3533
        lsr     $20
        .byte   $42
        eor     ($44,x)
        .byte   $20
        .byte   $FF
L8DE6:  sty     $14
        .byte   $53
        eor     $4C
        lsr     $54
        eor     $53
        .byte   $54
        .byte   $FF
        .byte   $04
        ora     $56,x
        .byte   $42
        jmp     L4E41

        .byte   $4B
        .byte   $FF
        sty     $15
        .byte   $53
        bvc     L8E40
        .byte   $3B
        eor     $31
        .byte   $FF
L8E03:  .byte   $04
        asl     $53,x
        bvc     L8E49
        .byte   $3B
        eor     $32
        .byte   $FF
        sty     $16
        lsr     $3B
        eor     L0045
        .byte   $5A
        eor     $20
        .byte   $53
        .byte   $54
        eor     $50
        .byte   $FF
L8E1A:  .byte   $04
        .byte   $17
        lsr     $3B
        eor     L0045
        .byte   $5A
        eor     $FF
        .byte   $84
L8E24:  .byte   $17
        jmp     L4645

        .byte   $54
        jsr     L4F43
        eor     #$4E
        .byte   $FF
L8E2F:  .byte   $04
        clc
        .byte   $3B
        eor     #$47
        pha
        .byte   $54
        jsr     L4F43
        eor     #$4E
        .byte   $FF
        ldy     #$14
        bvc     L8E8C
L8E40:  eor     ($59,x)
        eor     $3B
        jsr     L2032
        .byte   $4C
        .byte   $45
L8E49:  lsr     $54
        .byte   $FF
L8E4C:  jsr     L5015
        jmp     L5941

        eor     $3B
        jsr     L2032
        .byte   $3B
        eor     #$47
        pha
        .byte   $54
        .byte   $FF
        ldy     #$15
        bvc     L8EAD
        eor     ($59,x)
        eor     $3B
        jsr     L2032
        .byte   $44
        .byte   $4F
        .byte   $57
        lsr     $20FF
        asl     $50,x
        jmp     L5941

        eor     $3B
        jsr     L2032
        .byte   $3B
        .byte   $4F
        .byte   $54
        eor     ($54,x)
        eor     $2D
        .byte   $53
        .byte   $54
        eor     ($3B,x)
        .byte   $54
        .byte   $FF
L8E85:  ldy     #$16
        bvc     L8ED5
        eor     ($59,x)
        .byte   $45
L8E8C:  .byte   $3B
        jsr     L2031
        jmp     L4645

        .byte   $54
        .byte   $FF
        jsr     L5017
        jmp     L5941

        eor     $3B
        jsr     L2031
        .byte   $3B
        eor     #$47
        pha
        .byte   $54
        .byte   $FF
        ldy     #$17
        bvc     L8EF6
        eor     ($59,x)
        .byte   $45
L8EAD:  .byte   $3B
        jsr     L2031
        .byte   $44
        .byte   $4F
        .byte   $57
        lsr     $20FF
        clc
        bvc     L8F06
        eor     ($59,x)
        eor     $3B
        jsr     L2031
        .byte   $3B
        .byte   $4F
        .byte   $54
        eor     ($54,x)
        eor     $2D
        .byte   $53
        .byte   $54
        eor     ($3B,x)
        .byte   $54
        .byte   $FF
        txs
        .byte   $13
        .byte   $53
        .byte   $57
        eor     #$54
        .byte   $43
L8ED5:  pha
        jsr     L5420
        eor     $53
        .byte   $54
        .byte   $FF
        stx     $1D
        bvc     L8F1C
        eor     $53
        .byte   $53
        jsr     L4C50
        eor     ($59,x)
        eor     $3B
        jsr     L2031
        .byte   $53
        .byte   $54
        eor     ($3B,x)
        .byte   $54
        jsr     L4F46
L8EF6:  .byte   $3B
        jsr     L454E
        cli
        .byte   $54
        jsr     L4554
        .byte   $53
        .byte   $54
        .byte   $FF
L8F02:  .byte   $14
        .byte   $13
        .byte   $53
        .byte   $43
L8F06:  .byte   $3B
        eor     L0045
        lsr     $5020
        eor     ($54,x)
        .byte   $54
        eor     $3B
        lsr     L5420
        eor     $53
        .byte   $54
        .byte   $53
        .byte   $FF
        .byte   $02
        .byte   $1E
        .byte   $50
L8F1C:  jmp     L5941

        eor     $3B
        jsr     L2031
        jmp     L4645

        .byte   $54
        and     L493B
        .byte   $47
        pha
        .byte   $54
        jsr     L4F54
        jsr     L4553
        jmp     L4345

        .byte   $54
        jsr     L4150
        .byte   $54
        .byte   $54
        eor     $3B
        lsr     L82FF
        asl     L4C50,x
        eor     ($59,x)
        eor     $3B
        jsr     L2032
        .byte   $53
        .byte   $54
        eor     ($3B,x)
        .byte   $54
        jsr     L4F54
        jsr     L4843
        eor     ($4E,x)
        .byte   $47
        eor     $20
        .byte   $43
        .byte   $4F
        jmp     L3B4F

        .byte   $FF
        asl     $4311,x
        .byte   $4F
        jmp     L3B4F

        jsr     L4554
        .byte   $53
        .byte   $54
        .byte   $FF
        cpy     #$1E
        jsr     L4857
        eor     #$54
        eor     $FF
        .byte   $C0
L8F79:  asl     $4720,x
        .byte   $3B
        eor     $59
        jsr     LC0FF
        asl     L2020,x
        .byte   $3B
        eor     $44
        jsr     LC0FF
        asl     $4720,x
        .byte   $3B
        eor     L0045
        lsr     LC0FF
        asl     $4220,x
        jmp     L4555

        jsr     LC0FF
        asl     $4956,x
        .byte   $4F
        jmp     L5445

        .byte   $FF
        .byte   $14
        ora     ($32),y
        and     $36,x
        and     L4F43
        jmp     L3B4F

        jsr     L4554
        .byte   $53
        .byte   $54
        .byte   $53
        .byte   $FF
        asl     a
        bpl     L8FF5
        eor     $4E,x
        jsr     L454C
        lsr     $5447
        pha
        jsr     L4E45
        .byte   $43
        .byte   $4F
        .byte   $44
        eor     $44
        jsr     L4353
        .byte   $3B
        eor     L0045
        lsr     $4420
        .byte   $3B
        eor     ($57,x)
        .byte   $FF
        .byte   $02
        asl     $5550,x
        .byte   $53
        pha
        jsr     L4C50
        eor     ($59,x)
        eor     $3B
        jsr     L2031
        .byte   $53
        .byte   $54
        eor     #$43
        .byte   $4B
        jsr     L454C
        lsr     $54
        jsr     L4F54
L8FF5:  jsr     L453B
        .byte   $54
        eor     $53
        .byte   $54
        jsr     L413B
        eor     $02FF
        asl     L2020,x
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        .byte   $FF
        asl     $1E
        bvc     L9083
        .byte   $53
        pha
        jsr     L5453
        eor     #$43
        .byte   $4B
        jsr     L2031
        .byte   $3B
        eor     #$47
        pha
        .byte   $54
        jsr     L4E41
        .byte   $44
        jsr     L5453
        eor     #$43
        .byte   $4B
        jsr     L2032
        jmp     L4645

        .byte   $54
        .byte   $FF
        sty     $411E
        lsr     $2044
        bvc     L9093
        eor     $53
        .byte   $53
        jsr     L4C50
        eor     ($59,x)
        eor     $3B
        jsr     L2032
        .byte   $53
        .byte   $54
        eor     ($3B,x)
        .byte   $54
        jsr     L4F54
        jsr     L453B
        .byte   $53
        eor     $54
        .byte   $FF
        asl     $1A
        .byte   $57
        .byte   $4F
        .byte   $3B
        .byte   $4B
        eor     #$4E
        .byte   $47
        .byte   $FF
        asl     $1A
        jsr     L2020
L9083:  jsr     L2020
        jsr     L1EFF
        ora     ($41),y
        eor     $44,x
        eor     #$4F
        jsr     L4554
        .byte   $53
L9093:  .byte   $54
        .byte   $FF
        asl     a
        .byte   $13
        .byte   $53
        .byte   $4F
        eor     $4E,x
        .byte   $44
        jsr     L554E
        eor     $4542
        .byte   $3B
        .byte   $FF
        rol     a
        .byte   $13
        eor     ($55),y
        eor     #$45
        .byte   $54
        jsr     LFF20
        rol     a
        .byte   $13
        lsr     $494F
        .byte   $53
        eor     L2020,y
        .byte   $FF
        rol     a
        .byte   $13
        bvc     L910B
        .byte   $4B
        eor     $59
        jsr     LFF31
        rol     a
        .byte   $13
        bvc     L9115
        .byte   $4B
        eor     $59
        jsr     LFF32
        rol     a
        .byte   $13
        jsr     L2020
        jsr     L2020
        jsr     L8CFF
        .byte   $17
        bvc     L912F
        .byte   $53
        pha
        jsr     L5453
        eor     #$43
        .byte   $4B
        jsr     L2032
        jmp     L4645

        .byte   $54
        jsr     L3B4F
        jsr     L493B
        .byte   $47
        pha
        .byte   $54
        .byte   $FF
        bpl     L910D
        .byte   $54
        .byte   $4F
        jsr     L4843
        eor     ($4E,x)
        .byte   $47
        eor     $20
        .byte   $53
        .byte   $4F
        eor     $4E,x
        .byte   $44
        jsr     L554E
        eor     $4542
        .byte   $3B
L910B:  .byte   $FF
        php
L910D:  ora     $3B50,y
        eor     $53
        .byte   $53
        .byte   $20
        .byte   $50
L9115:  jmp     L5941

        eor     $3B
        jsr     L2032
        .byte   $53
        .byte   $54
        eor     ($3B,x)
        .byte   $54
        jsr     L4F54
        jsr     L4548
        eor     ($3B,x)
        jsr     L5449
        .byte   $FF
        php
L912F:  .byte   $1A
        bvc     L9187
        jmp     L204C

        .byte   $53
        .byte   $54
        eor     #$43
        .byte   $4B
        jsr     L2032
        .byte   $44
        .byte   $4F
        .byte   $57
        lsr     L5420
        .byte   $4F
        jsr     L5453
        .byte   $4F
        bvc     L916A
        .byte   $53
        .byte   $4F
        eor     $4E,x
        .byte   $44
        .byte   $53
        .byte   $FF
        asl     $4311,x
        .byte   $4F
        eor     #$4E
        jsr     L504F
        .byte   $54
        eor     #$4F
        lsr     $2953
        .byte   $FF
        asl     $4711,x
        eor     ($4D,x)
        eor     $20
        .byte   $4F
        .byte   $50
L916A:  .byte   $54
        eor     #$4F
        lsr     $2953
        .byte   $FF
        clc
        ora     (L0045),y
        eor     $3B
        .byte   $4F
        eor     $3B20
        eor     $53
        eor     $54
        jsr     L504F
        .byte   $54
        eor     #$4F
        lsr     LFF53
L9187:  .byte   $9E
        .byte   $17
        bvc     L91D7
        eor     $41
        .byte   $53
        eor     $20
        .byte   $57
        eor     ($49,x)
        .byte   $54
        .byte   $FF
        php
        .byte   $1C
        bvc     L91D4
        eor     $53
        .byte   $53
        jsr     L4C50
        eor     ($59,x)
        eor     $3B
        jsr     L2032
        .byte   $53
        .byte   $54
        eor     ($3B,x)
        .byte   $54
        jsr     L4F54
        .byte   $FF
        sty     $3B1C
        eor     $53
        .byte   $54
        .byte   $4F
        .byte   $3B
        eor     $20
        .byte   $4F
        .byte   $3B
        eor     #$47
        eor     #$4E
        eor     ($4C,x)
        jsr     L4553
        .byte   $54
        .byte   $54
        eor     #$4E
        .byte   $47
        .byte   $FF
        .byte   $0C
        ora     ($4D),y
        .byte   $4F
        .byte   $3B
        eor     $FF
        .byte   $0C
        ora     ($20),y
L91D4:  jsr     L2020
L91D7:  .byte   $FF
        sty     $4D1B
        .byte   $4F
        .byte   $3B
        eor     $FF
        sty     $201B
        jsr     L2020
        .byte   $FF
        asl     $1D
        bvc     L9225
        eor     $53
        .byte   $53
        jsr     L4C50
        eor     ($59,x)
        eor     $3B
        jsr     L2031
        .byte   $53
        .byte   $54
        eor     ($3B,x)
        .byte   $54
        jsr     L4F54
        jsr     L4153
        lsr     L0045,x
        .byte   $FF
        stx     $1D
        jsr     L4120
        lsr     $2044
        .byte   $47
        .byte   $4F
        jsr     L4E4F
        jsr     L4F54
        jsr     L454E
        cli
        .byte   $54
        jsr     L4554
        .byte   $53
        .byte   $54
        .byte   $FF
        asl     $1D
        bvc     L925F
        .byte   $45
L9225:  .byte   $53
        .byte   $53
        jsr     L4C50
        eor     ($59,x)
        eor     $3B
        jsr     L2031
        .byte   $53
        .byte   $54
        eor     ($3B,x)
        .byte   $54
        jsr     L4F54
        jsr     L4550
        .byte   $3B
        lsr     $4F
        .byte   $3B
        eor     L86FF
        ora     L2020,x
        .byte   $3B
        eor     $53
L9249:  eor     $54
        .byte   $53
        jsr     L4E41
        .byte   $44
        jsr     L4F47
        jsr     L4E4F
        jsr     L4F54
        jsr     L454E
        cli
        .byte   $54
        .byte   $20
L925F:  .byte   $54
        eor     $53
        .byte   $54
        .byte   $FF
L9264:  pha
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        cmp     #$0A
        bcc     L9270
        clc
        adc     #$07
L9270:  adc     #$30
        ldy     #$00
        sta     ($02),y
        iny
        lda     #$00
        sta     ($02),y
        iny
        pla
        and     #$0F
        cmp     #$0A
        bcc     L9286
        clc
        adc     #$07
L9286:  adc     #$30
        sta     ($02),y
        iny
        lda     #$00
        sta     ($02),y
        rts

L9290:  ldy     #$00
L9292:  lda     L929C,y
        sta     $2000,y
        iny
        bne     L9292
        rts

L929C:  brk
        adc     a:$FF
        .byte   $04
        php
        .byte   $0C
        bpl     L92B9
        clc
        .byte   $1C
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        ldx     $49,y
        brk
        brk
        .byte   $80
        ldy     #$C0
        cpx     #$00
        .byte   $04
        php
        .byte   $0C
        .byte   $10
L92B9:  .byte   $14
        clc
        .byte   $1C
        brk
        brk
        brk
        brk
        eor     #$49
        eor     #$49
        .byte   $92
        .byte   $92
        .byte   $92
        .byte   $92
        .byte   $DB
        .byte   $DB
        .byte   $DB
        .byte   $DB
        brk
        brk
        jsr     L4020
        rti

        rts

        rts

        .byte   $80
        .byte   $80
        ldy     #$A0
        cpy     #$C0
        cpx     #$E0
        brk
        brk
        .byte   $04
        .byte   $04
        php
        php
        .byte   $0C
        .byte   $0C
        bpl     L92F6
        .byte   $14
        .byte   $14
        clc
        clc
        .byte   $1C
        .byte   $1C
        brk
        brk
        brk
        brk
        ora     ($01,x)
        ora     ($01,x)
        .byte   $02
        .byte   $02
L92F6:  .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        brk
        rts

        ldy     #$E0
        cpx     $0604
        lsr     a
        stx     LB141
        dec     $49,x
        .byte   $92
        brk
        brk
        brk
        jsr     L6040
        .byte   $80
        ldy     #$C0
        cpx     #$00
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L9325:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L9341:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L9349:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        cpy     #$00
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $4B
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        dec     $A0,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        dec     $02,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L939C:  ldy     $0689
        iny
        cpy     #$06
        bcc     L93A6
        ldy     #$00
L93A6:  sty     $0689
        lda     L93C2,y
        sta     $200F
        sta     $2061
        sta     L2062
        sta     $2063
        tya
        clc
        adc     #$1C
        ldy     #$60
        jsr     L8CBC
        rts

L93C2:  .byte   $DB
        eor     #$E0
        .byte   $1C
        .byte   $03
        .byte   $C3
L93C8:  pha
        lda     $AD
        clc
        adc     #$01
        sta     $AD
        lda     $AE
        adc     #$00
        sta     $AE
        pla
        rts

L93D8:  lda     $06E8
        sta     $AD
        lda     $06E9
        sta     $AE
        lda     #$00
        sta     $06EE
        tay
L93E8:  lda     ($AD),y
        jsr     L93C8
        and     #$07
        beq     L940A
        tay
        lda     L9443,y
        sta     $1E
        ldy     #$00
L93F9:  lda     ($AD),y
        jsr     L93C8
        bne     L93F9
        dec     $1E
        bpl     L93F9
        inc     $06EE
        jmp     L93E8

L940A:  dec     $06EE
        rts

L940E:  sta     $1D
        lda     $06E8
        sta     $AD
        lda     $06E9
        sta     $AE
        lda     $1D
        beq     L9440
        ldy     #$00
L9420:  lda     ($AD),y
        jsr     L93C8
        and     #$07
        beq     L9442
        tay
        lda     L9443,y
        sta     $1E
        ldy     #$00
L9431:  lda     ($AD),y
        jsr     L93C8
        bne     L9431
        dec     $1E
        bpl     L9431
        dec     $1D
        bne     L9420
L9440:  lda     #$01
L9442:  rts

L9443:  ora     ($02,x)
        .byte   $04
        php
        bpl     L9469
        rti

        .byte   $80
L944B:  ldy     #$00
        lda     ($AD),y
        sta     $1F
        lsr     a
        lsr     a
        lsr     a
        sta     $21
        lda     $1F
        and     #$07
        beq     L94D6
        tay
        lda     L9443,y
        sec
        sbc     #$01
        sta     $22
        lda     $06E4
        .byte   $85
L9469:  .byte   $1B
        lda     $06E5
        sta     $1C
        lda     $06E6
        sta     $1D
        lda     $06E7
        sta     $1E
        ldy     #$00
L947B:  dec     $21
        bmi     L948A
        lsr     $1B
        ror     $1C
        lsr     $1D
        ror     $1E
        jmp     L947B

L948A:  lda     $22
        and     $1C
        sta     $1C
        lda     $22
        and     $1E
        sta     $1E
        jsr     L93C8
        jsr     L9732
        lda     $1C
        sta     $20
        ldy     #$00
L94A2:  lda     ($AD),y
        jsr     L93C8
        bne     L94A2
        dec     $20
        bpl     L94A2
        lda     $1C
        cmp     $1E
        bne     L94B9
        lda     $05
        ora     #$10
        sta     $05
L94B9:  jsr     L9742
        lda     $05
        and     #$EF
        sta     $05
        lda     $22
        sec
        sbc     $1C
        sta     $20
        ldy     #$00
L94CB:  lda     ($AD),y
        jsr     L93C8
        bne     L94CB
        dec     $20
        bpl     L94CB
L94D6:  ldy     #$00
        lda     ($AD),y
        rts

L94DB:  jsr     L940E
        beq     L94F7
        lda     #$03
        sta     $068B
L94E5:  jsr     L944B
        beq     L94F7
        lda     $068B
        clc
        adc     #$03
        sta     $068B
        cmp     #$18
        bcc     L94E5
L94F7:  lda     #$03
        sta     $068B
        rts

L94FD:  jsr     L93D8
        lda     #$00
        sta     $06EF
        sta     $B1
        sta     $05
        jsr     L94DB
        lda     $B1
        jsr     L940E
        beq     L952A
        lda     #$20
        sta     $05
        jsr     L944B
        lda     #$00
        sta     $05
        lda     $06E8
        sta     $06EA
        lda     $06E9
        sta     $06EB
L952A:  rts

L952B:  lda     $06E4
        sta     $06E2
        lda     $06E5
        sta     $06E3
        lda     $B5
        and     #$08
        beq     L9548
        dec     $B1
        bpl     L9545
        lda     #$00
        sta     $B1
L9545:  clv
        bvc     L9557
L9548:  lda     $B5
        and     #$06
        beq     L9557
        lda     $B1
        cmp     $06EE
        bcs     L9557
        inc     $B1
L9557:  lda     $B5
        and     #$1E
        beq     L95A6
        lda     #$01
        sta     $05
        lda     $06EF
        jsr     L94DB
        lda     #$00
        sta     $05
        lda     $B5
        and     #$10
        beq     L9581
        lda     $05C0
        sta     $06E4
        lda     $05C1
        sta     $06E5
        lda     #$00
        sta     $B1
L9581:  lda     $B1
        cmp     $06EF
        bcs     L958E
        sta     $06EF
        clv
        bvc     L95A0
L958E:  lda     $06EF
        clc
        adc     #$06
        cmp     $B1
        bcs     L95A0
        lda     $B1
        sec
        sbc     #$06
        sta     $06EF
L95A0:  lda     $06EF
        jsr     L94DB
L95A6:  lda     $06EF
        bne     L95AF
        lda     #$3D
        bne     L95B1
L95AF:  lda     #$3C
L95B1:  ldy     #$00
        jsr     L8CBC
        lda     $06EE
        sec
        sbc     $06EF
        cmp     #$07
        bcc     L95C5
        lda     #$3E
        bne     L95C7
L95C5:  lda     #$3F
L95C7:  ldy     #$00
        jsr     L8CBC
        lda     $B1
        jsr     L940E
        lda     $AD
        sta     $06EA
        lda     $AE
        sta     $06EB
        ldy     #$00
        lda     ($AD),y
        sta     $1F
        lsr     a
        lsr     a
        lsr     a
        sta     $21
        lda     $1F
        and     #$07
        bne     L95EF
        jmp     L96B7

L95EF:  tay
        lda     L9443,y
        sta     $1F
        sec
        sbc     #$01
        sta     $06ED
        lda     #$00
        sta     $06EC
        ldy     $21
L9602:  dey
        bmi     L960E
        asl     $06ED
        rol     $06EC
        jmp     L9602

L960E:  lda     $21
        and     #$0F
        asl     a
        tay
        lda     L977A,y
        sta     $1E
        lda     L977B,y
        sta     $1D
        lda     $B5
        and     #$C0
        beq     L9654
        jsr     L96B8
        lda     $06EC
        and     $06E4
        sta     $1D
        lda     $06ED
        and     $06E5
        sta     $1E
        ldy     $21
L9639:  dey
        bmi     L9643
        lsr     $1D
        ror     $1E
        jmp     L9639

L9643:  ldy     #$00
L9645:  lda     ($AD),y
        jsr     L93C8
        bne     L9645
        dec     $1E
        bpl     L9645
        lda     ($AD),y
        beq     L960E
L9654:  lda     $B5
        and     #$DE
        beq     L96B7
        lda     $B1
        sec
        sbc     $06EF
        clc
        adc     #$01
        sta     $068B
        asl     a
        adc     $068B
        sta     $068B
        lda     $06E4
        sta     $05C2
        lda     $06E5
        sta     $05C3
        lda     $06E2
        sta     $06E4
        lda     $06E3
        sta     $06E5
        lda     $06EA
        sta     $AD
        lda     $06EB
        sta     $AE
        lda     #$01
        sta     $05
        jsr     L944B
        lda     $05C2
        sta     $06E4
        lda     $05C3
        sta     $06E5
        lda     $06EA
        sta     $AD
        lda     $06EB
        sta     $AE
        lda     #$20
        sta     $05
        jsr     L944B
        lda     #$00
        sta     $05
L96B7:  rts

L96B8:  and     #$80
        beq     L96F5
        lda     $06EC
        and     $06E4
        bne     L96E1
        lda     $06ED
        and     $06E5
        bne     L96E1
        lda     $06E4
        ora     $06EC
        sta     $06E4
        lda     $06E5
        ora     $06ED
        sta     $06E5
        clv
        bvc     L96F2
L96E1:  lda     $06E5
        sec
        sbc     $1E
        sta     $06E5
        lda     $06E4
        sbc     $1D
        sta     $06E4
L96F2:  clv
        bvc     L9731
L96F5:  lda     $06E4
        and     $06EC
        cmp     $06EC
        bne     L9720
        lda     $06E5
        and     $06ED
        cmp     $06ED
        bne     L9720
        lda     $06E5
        eor     $06ED
        sta     $06E5
        lda     $06E4
        eor     $06EC
        sta     $06E4
        clv
        bvc     L9731
L9720:  lda     $06E5
        clc
        adc     $1E
        sta     $06E5
        lda     $06E4
        adc     $1D
        sta     $06E4
L9731:  rts

L9732:  lda     $068B
        lsr     a
        ora     #$10
        sta     $AB
        lda     #$08
        ror     a
        sta     $AA
        jmp     L9752

L9742:  lda     $068B
        clc
        adc     #$01
        lsr     a
        ora     #$10
        sta     $AB
        lda     #$0C
        ror     a
        sta     $AA
L9752:  ldy     #$00
        ldx     #$00
L9756:  lda     ($AD),y
        beq     L9779
        lda     $05
        and     #$01
        beq     L9769
        lda     #$00
        sta     ($AA,x)
        inc     $AA
        clv
        bvc     L9771
L9769:  lda     ($AD),y
        sta     ($AA,x)
        inc     $AA
        lda     $05
L9771:  sta     ($AA,x)
        inc     $AA
        iny
        jmp     L9756

L9779:  rts

L977A:  .byte   $01
L977B:  brk
        .byte   $02
        brk
        .byte   $04
        brk
        php
        brk
        bpl     L9784
L9784:  jsr     L4000
        brk
        .byte   $80
        brk
        brk
        ora     (L0000,x)
        .byte   $02
        brk
        .byte   $04
        brk
        php
        brk
        bpl     L9795
L9795:  jsr     L4000
        brk
        .byte   $80
        .byte   $02
        .byte   $43
        .byte   $4F
        eor     #$4E
        jsr     L4F4D
        .byte   $44
        eor     L0000
        and     ($20),y
        .byte   $43
        .byte   $4F
        eor     #$4E
        jsr     L3120
        jsr     L3B43
        eor     $44
        eor     #$54
        brk
        .byte   $32
        jsr     L4F43
        eor     #$4E
        .byte   $53
        jsr     L2031
        .byte   $43
        .byte   $3B
        eor     $44
        eor     #$54
        brk
        .byte   $33
        jsr     L4F43
        eor     #$4E
        .byte   $53
        jsr     L2031
        .byte   $43
        .byte   $3B
        eor     $44
        eor     #$54
        brk
        .byte   $34
        jsr     L4F43
        eor     #$4E
        .byte   $53
        jsr     L2031
        .byte   $43
        .byte   $3B
        eor     $44
        eor     #$54
        brk
        .byte   $12
        .byte   $3B
        eor     #$47
        pha
        .byte   $54
        jsr     L454D
        .byte   $43
        pha
        jsr     L554D
        jmp     L4954

        bvc     L9848
        eor     #$45
        .byte   $3B
        brk
        and     ($20),y
        .byte   $43
        .byte   $4F
        eor     #$4E
        jsr     L4F43
        eor     $4E,x
        .byte   $54
        .byte   $53
        jsr     L5341
        jsr     L2031
        .byte   $43
        .byte   $4F
        eor     #$4E
        brk
        and     ($20),y
        .byte   $43
        .byte   $4F
        eor     #$4E
        jsr     L4F43
        eor     $4E,x
        .byte   $54
        .byte   $53
        jsr     L5341
        jsr     L2034
        .byte   $43
        .byte   $4F
        eor     #$4E
        .byte   $53
        brk
        and     ($20),y
        .byte   $43
        .byte   $4F
        eor     #$4E
        jsr     L4F43
        eor     $4E,x
        .byte   $54
        .byte   $53
        jsr     L5341
        jsr     L2035
        .byte   $43
        .byte   $4F
        eor     #$4E
L9848:  .byte   $53
        brk
        and     ($20),y
        .byte   $43
        .byte   $4F
        eor     #$4E
        jsr     L4F43
        eor     $4E,x
        .byte   $54
        .byte   $53
        jsr     L5341
        jsr     L2036
        .byte   $43
        .byte   $4F
        eor     #$4E
        .byte   $53
        brk
        and     ($4C,x)
        eor     $46
        .byte   $54
        jsr     L454D
        .byte   $43
        pha
        jsr     L554D
        jmp     L4954

        bvc     L98C1
        eor     #$45
        .byte   $3B
        brk
        and     ($20),y
        .byte   $43
        .byte   $4F
        eor     #$4E
        jsr     L4F43
        eor     $4E,x
        .byte   $54
        .byte   $53
        jsr     L5341
        jsr     L2031
        .byte   $43
        .byte   $4F
        eor     #$4E
        brk
        and     ($20),y
        .byte   $43
        .byte   $4F
        eor     #$4E
        jsr     L4F43
        eor     $4E,x
        .byte   $54
        .byte   $53
        jsr     L5341
        jsr     L2032
        .byte   $43
        .byte   $4F
        eor     #$4E
        .byte   $53
        brk
        .byte   $2B
        .byte   $42
        .byte   $4F
        lsr     $5355
        jsr     L4441
        .byte   $44
        eor     $3B
        brk
        lsr     L204F
        .byte   $42
        .byte   $4F
        lsr     $5355
        .byte   $20
        .byte   $41
L98C1:  .byte   $44
        .byte   $44
        eor     $3B
        brk
        .byte   $32
        jsr     L4F43
        eor     #$4E
        .byte   $53
        jsr     L4947
        lsr     L0045,x
        .byte   $53
        jsr     L2031
        eor     $58
        .byte   $54
        .byte   $3B
        eor     ($20,x)
        .byte   $43
        .byte   $4F
        eor     #$4E
        brk
        .byte   $34
        jsr     L4F43
        eor     #$4E
        .byte   $53
        jsr     L4947
        lsr     L0045,x
        .byte   $53
        jsr     L2031
        eor     $58
        .byte   $54
        .byte   $3B
        eor     ($20,x)
        .byte   $43
        .byte   $4F
        eor     #$4E
        brk
        .byte   $34
        jsr     L4F43
        eor     #$4E
        .byte   $53
        jsr     L4947
        lsr     L0045,x
        .byte   $53
        jsr     L2032
        eor     $58
        .byte   $54
        .byte   $3B
        eor     ($20,x)
        .byte   $43
        .byte   $4F
        eor     #$4E
        .byte   $53
        brk
        and     $20,x
        .byte   $43
        .byte   $4F
        eor     #$4E
        .byte   $53
        jsr     L4947
        lsr     L0045,x
        .byte   $53
        jsr     L2031
        eor     $58
        .byte   $54
        .byte   $3B
        eor     ($20,x)
        .byte   $43
        .byte   $4F
        eor     #$4E
        brk
        .byte   $33
        jsr     L4F43
        eor     #$4E
        .byte   $53
        jsr     L4947
        lsr     L0045,x
        .byte   $53
        jsr     L2031
        eor     $58
        .byte   $54
        .byte   $3B
        eor     ($20,x)
        .byte   $43
        .byte   $4F
        eor     #$4E
        brk
        brk
        lsr     $3B
        eor     L0045
        jsr     L4C50
        eor     ($59,x)
        brk
        brk
        .byte   $02
        .byte   $44
        eor     #$46
        lsr     $49
        .byte   $43
        eor     $4C,x
        .byte   $54
        eor     $4500,y
        eor     ($53,x)
        eor     $4D00,y
        eor     $44
        eor     #$55
        eor     $4800
        eor     ($3B,x)
        .byte   $44
        brk
        pha
        eor     ($3B,x)
        .byte   $44
        eor     $53
        .byte   $54
        brk
        ora     ($41),y
        .byte   $54
        .byte   $54
        .byte   $3B
        eor     ($43,x)
        .byte   $54
        jsr     L554D
        .byte   $53
        eor     #$43
        brk
        lsr     a:$4F
        eor     $5345,y
        brk
        adc     $5541,y
        .byte   $54
        .byte   $4F
        jsr     L4948
        .byte   $47
        pha
        and     L4353
        .byte   $4F
        .byte   $3B
        eor     $2D
        .byte   $54
        eor     ($42,x)
        jmp     L2045

        .byte   $3B
        eor     $53
        eor     $54
        brk
        lsr     a:$4F
        eor     $5345,y
        brk
        brk
        ora     ($3B,x)
        eor     $53
        eor     $54
        jsr     L4948
        .byte   $47
        pha
        and     L4353
        .byte   $4F
        .byte   $3B
        eor     $20
        .byte   $54
        eor     ($42,x)
        jmp     L0045

        lsr     a:$4F
        eor     $5345,y
        brk
        ora     ($53),y
        eor     $54
        jsr     L504F
        .byte   $54
        eor     #$4F
        lsr     $2053
        .byte   $54
        .byte   $4F
        jsr     L4146
        .byte   $43
        .byte   $54
        .byte   $4F
        .byte   $3B
        eor     $4420,y
        eor     $46
        eor     ($55,x)
        jmp     L5354

        brk
        lsr     a:$4F
        eor     $5345,y
        brk
        ora     #$49
        lsr     L5449
        eor     #$41
        jmp     L5A49

        eor     $20
        eor     L0045
        .byte   $3B
        .byte   $4F
        eor     L2020
        and     $202D
        .byte   $42
        eor     $57
        eor     ($3B,x)
        eor     L0000
        lsr     a:$4F
        eor     $5345,y
        bit     $20
        .byte   $54
        pha
        eor     #$53
        jsr     L4957
        jmp     L204C

        eor     $3B
        eor     ($53,x)
        eor     $20
        .byte   $53
        .byte   $54
        eor     ($54,x)
        eor     #$53
        .byte   $54
        eor     #$43
        .byte   $53
        brk
        brk
        jmp     L8000

L9A45:  jsr     LCA8C
L9A48:  ldx     #$17
        jsr     LB4B2
        lda     $09
        beq     L9A48
        lda     #$00
        sta     $09
        lda     $08BC
        and     #$E0
        cmp     #$E0
        bne     L9A63
        lda     #$02
        sta     a:$C1
L9A63:  lda     L0008
        beq     L9A80
        lda     $55
        cmp     $54
        bne     L9A80
        lda     $6E
        cmp     #$FF
        bne     L9A80
        lda     $6D
        cmp     $6C
        bne     L9A80
        lda     $58
        bpl     L9A80
        jmp     L829B

L9A80:  lda     $58
        and     #$0C
        cmp     #$0C
        beq     L9A90
        lda     #$01
        sta     $15
        lda     #$10
        sta     $16
L9A90:  lda     $58
        and     #$04
        beq     L9AAA
        dec     $15
        bpl     L9A48
        lda     $16
        sta     $15
        cmp     #$03
        bcc     L9AA6
        sbc     #$02
        bne     L9AA8
L9AA6:  lda     #$01
L9AA8:  sta     $16
L9AAA:  jsr     LD6DB
        jsr     LC247
        lda     $06A2
        bne     L9B2A
        lda     $43
        bne     L9B24
        lda     $06A5
        bne     L9B1E
        jsr     LCB42
        jsr     LA49B
        jsr     LC15C
        jsr     LC564
        lda     L0008
        cmp     #$FE
        beq     L9B1B
        ldx     #$00
        jsr     LBF41
        ldx     #$01
        jsr     LBF41
        ldx     #$00
        jsr     LBF88
        ldx     #$01
        jsr     LBF88
        jsr     LB6CE
        ldx     #$00
        jsr     LBC9E
        jsr     LB8BC
        ldx     #$01
        jsr     LBC9E
        jsr     LB8BC
        lda     $35
        bne     L9B00
        ldx     #$00
        jsr     LA02E
L9B00:  lda     $36
        bne     L9B09
        ldx     #$01
        jsr     LA02E
L9B09:  lda     $35
        bne     L9B12
        ldx     #$00
        jsr     L9BD0
L9B12:  lda     $36
        bne     L9B1B
        ldx     #$01
        jsr     L9BD0
L9B1B:  clv
        bvc     L9B21
L9B1E:  jsr     LBD38
L9B21:  clv
        bvc     L9B27
L9B24:  jsr     LBBF2
L9B27:  jsr     LB605
L9B2A:  jmp     L9A48

L9B2D:  lda     $29,x
        and     #$FD
        cpx     #$00
        beq     L9B3C
        ldy     $0619
        cpy     #$03
        bcs     L9B40
L9B3C:  ldy     L0008
        beq     L9B41
L9B40:  rts

L9B41:  tay
        lda     $27,x
        sta     $1B
        and     #$08
        beq     L9B5B
        lda     $0622,x
        clc
        adc     #$01
        sta     $0622,x
        cmp     #$0B
        bcc     L9B60
        tya
        ora     #$08
        tay
L9B5B:  lda     #$00
        sta     $0622,x
L9B60:  lda     $1B
        and     #$04
        beq     L9B77
        lda     $0624,x
        clc
        adc     #$01
        sta     $0624,x
        cmp     #$0B
        bcc     L9B7C
        tya
        ora     #$04
        tay
L9B77:  lda     #$00
        sta     $0624,x
L9B7C:  lda     $1B
        and     #$01
        beq     L9B93
        lda     $0626,x
        clc
        adc     #$01
        sta     $0626,x
        cmp     #$1D
        bcc     L9B98
        tya
        ora     #$01
        tay
L9B93:  lda     #$00
        sta     $0626,x
L9B98:  lda     $1B
        and     #$0E
        cmp     #$02
        bne     L9BC9
        lda     $062A,x
        clc
        adc     #$01
        sta     $062A,x
        cmp     $062C,x
        bcc     L9BC7
        tya
        ora     #$02
        sta     $1B
        lda     $062C,x
        cmp     #$02
        bcc     L9BBD
        dec     $062C,x
L9BBD:  jsr     LB5A4
        ldy     $1B
L9BC2:  lda     #$00
        sta     $062A,x
L9BC7:  tya
        rts

L9BC9:  lda     #$06
        sta     $062C,x
        bne     L9BC2
L9BD0:  ldy     L0008
        beq     L9BD9
        cpy     #$FC
        beq     L9BD9
L9BD8:  rts

L9BD9:  lda     $95,x
        bne     L9BD8
        lda     $77,x
        beq     L9BE8
        lda     $8B,x
        bne     L9BE9
        jmp     LB2D2

L9BE8:  rts

L9BE9:  jsr     L9B2D
        sta     $20
        dec     $91,x
        bne     L9BF9
        ora     #$02
        sta     $20
        jsr     LB5A4
L9BF9:  lda     $20
        and     #$0F
        beq     L9BD8
        jsr     L9DFA
        jsr     L9EC0
        lda     $20
        and     #$08
        beq     L9C19
        dec     $89,x
        jsr     L9F2A
        bcs     L9C19
        lda     #$09
        sta     $0622,x
        inc     $89,x
L9C19:  lda     $20
        and     #$04
        beq     L9C2D
        inc     $89,x
        jsr     L9F2A
        bcs     L9C2D
        lda     #$09
        sta     $0624,x
        dec     $89,x
L9C2D:  lda     $20
        and     #$01
        beq     L9C50
        lda     $8F,x
        sta     $1F
        clc
        adc     #$01
        and     #$03
        sta     $8F,x
        jsr     L9F2A
        bcs     L9C50
        dec     $89,x
        jsr     L9F2A
        bcs     L9C50
        inc     $89,x
        lda     $1F
        sta     $8F,x
L9C50:  lda     $20
        and     #$02
        beq     L9C8C
        inc     $87,x
        jsr     L9F2A
        bcs     L9C8C
        dec     $87,x
        jsr     L9EE8
        jsr     LB4F1
        lda     #$00
        sta     $8B,x
        lda     $87,x
        cmp     #$06
        bcs     L9C78
        stx     $064D
        jsr     L9CF3
        jmp     L9C8F

L9C78:  lda     #$12
        jsr     LE659
        lda     $99
        clc
        adc     #$01
        sta     $93,x
        jmp     L9C8F

        lda     #$07
        sta     $062C,x
L9C8C:  jsr     L9EE8
L9C8F:  jsr     L9E8F
L9C92:  ldy     #$00
        sty     $05
        lda     #$07
        sta     $1B
L9C9A:  ldx     #$08
L9C9C:  lda     $0110,y
        cmp     $0148,y
        bne     L9CB8
        iny
        dex
        bne     L9C9C
L9CA8:  lda     $9D
        clc
        adc     #$80
        sta     $9D
        bcc     L9CB3
        inc     $9E
L9CB3:  dec     $1B
        bne     L9C9A
        rts

L9CB8:  sty     $1D
        stx     $1C
L9CBC:  sty     $1E
L9CBE:  iny
        dex
        beq     L9CCC
        lda     $0110,y
        cmp     $0148,y
        beq     L9CBE
        bne     L9CBC
L9CCC:  lda     #$48
        clc
        adc     $1D
        sta     L0000
        lda     #$01
        sta     $01
        lda     $1D
        and     #$07
        asl     a
        adc     $9D
        sta     $02
        lda     $9E
        adc     #$00
        sta     $03
        lda     $1E
        sec
        sbc     $1D
        adc     #$00
        jsr     LD5E4
        jmp     L9CA8

L9CF3:  stx     $064D
        lda     $069B,x
        beq     L9D0A
        lda     #$18
        sta     $069F,x
        lda     #$00
        sta     $069B,x
        lda     #$04
        sta     $35,x
        rts

L9D0A:  lda     #$00
        bit     $0B
        bpl     L9D1A
        sta     $77
        sta     $78
        lda     #$0C
        sta     $4E
        sta     $4F
L9D1A:  lda     #$00
        sta     $77,x
        lda     #$0C
        sta     $4E,x
        cpx     #$01
        bne     L9D36
        lda     #$00
        sta     $A1
        sta     $A2
        sta     $A3
        sta     $A4
        sta     $A5
        sta     $A6
        sta     $A7
L9D36:  lda     #$07
        cpx     #$00
        bne     L9D42
        sta     $0670
        clv
        bvc     L9D45
L9D42:  sta     $0672
L9D45:  lda     $0618
        sta     $50
        lda     L0008
        bne     L9D51
        jsr     LF105
L9D51:  lda     $77
        ora     $78
        bne     L9D5F
        lda     #$09
        jsr     LE659
        clv
        bvc     L9D66
L9D5F:  lda     #$00
        sta     $0619
        sta     $0B
L9D66:  lda     #$01
        sta     $06C6
        .byte   $AE
L9D6C:  eor     L8A06
        asl     a
        tay
        lda     #$00
        sta     $30,y
        .byte   $99
        .byte   $31
L9D78:  brk
        .byte   $AE
        .byte   $4D
L9D7B:  asl     $20
        .byte   $D3
        ldy     $46A9,x
        clc
        adc     $064D
        jsr     LD670
        lda     #$0B
        jsr     LE659
        rts

L9D8E:  ldx     #$00
        iny
        iny
        lda     #$0C
        sta     $1B
L9D96:  php
        sei
        lda     L6000
        lda     $7546
        lda     $6090
        lda     $7542
        lda     $7543
        lda     $7554
        lda     $60B0
        plp
        lda     ($1F),y
        cmp     #$80
        bcs     L9DF1
        sta     $1C
        and     #$F0
        bne     L9DD8
        lda     $1C
        bne     L9DC4
        sta     L0100,x
        clv
        bvc     L9DD5
L9DC4:  cmp     #$08
        bne     L9DCD
        lda     $6523
        bne     L9DD0
L9DCD:  lda     $6521
L9DD0:  sta     L0100,x
        lda     #$F0
L9DD5:  clv
        bvc     L9DEC
L9DD8:  lda     $1C
        and     #$0F
        clc
        adc     $6505
        sta     L0100,x
        lda     $1C
        beq     L9DEC
        and     #$70
        clc
        adc     #$70
L9DEC:  inx
        sta     L0100,x
        inx
L9DF1:  iny
        dec     $1B
        bne     L9D96
        txa
        lsr     a
        tax
        rts

L9DFA:  stx     $1E
        bit     $0B
        bpl     L9E02
        ldx     #$02
L9E02:  lda     L9E8C,x
        sta     $1C
        lda     L9E83,x
        sta     $9E
        ldx     $1E
        lda     $87,x
        sec
        sbc     #$01
        sta     $99
        asl     a
        asl     a
        asl     a
        asl     a
        sta     $1B
        bcc     L9E1F
        inc     $1C
L9E1F:  lda     $89,x
        sec
        sbc     #$02
        bpl     L9E28
        lda     #$00
L9E28:  sta     $9A
        asl     a
        sta     $1F
        lsr     a
        ora     $1B
        sta     $1B
        sta     $9B
        lda     $1C
        sta     $9C
        lda     $99
        lsr     a
        clc
        adc     $9E
        sta     $9E
        lda     $99
        lsr     a
        lda     #$00
        ror     a
        adc     L9E80,x
        bcc     L9E4D
        inc     $9E
L9E4D:  clc
        adc     $1F
        sta     $9D
        bcc     L9E56
        inc     $9E
L9E56:  ldx     #$00
        ldy     #$00
L9E5A:  lda     ($1B),y
        sta     $0110,x
        sta     $0148,x
        inc     $1B
        bne     L9E68
        inc     $1C
L9E68:  inx
        txa
        and     #$07
        bne     L9E79
        lda     $1B
        clc
        adc     #$08
        sta     $1B
        bcc     L9E79
        inc     $1C
L9E79:  cpx     #$38
        bcc     L9E5A
        ldx     $1E
        rts

L9E80:  .byte   $82
        .byte   $B2
        .byte   $10
L9E83:  .byte   $0F
        .byte   $0F
        .byte   $11
L9E86:  dey
        clv
        .byte   $14
L9E89:  .byte   $12
        .byte   $12
        .byte   $14
L9E8C:  .byte   $02
        .byte   $04
        .byte   $02
L9E8F:  lda     $9B
        sta     $1B
        lda     $9C
        sta     $1C
        stx     $1E
        ldx     #$00
        ldy     #$00
L9E9D:  lda     $0148,x
        sta     ($1B),y
        inc     $1B
        bne     L9EA8
        inc     $1C
L9EA8:  inx
        txa
        and     #$07
        bne     L9EB9
        lda     $1B
        clc
        adc     #$08
        sta     $1B
        bcc     L9EB9
        inc     $1C
L9EB9:  cpx     #$38
        bcc     L9E9D
        ldx     $1E
        rts

L9EC0:  jsr     L9F6C
L9EC3:  asl     $1B
        bcc     L9ECC
        lda     #$00
        sta     $0148,x
L9ECC:  inx
        dey
        beq     L9EE5
        tya
        and     #$03
        bne     L9EC3
        txa
        clc
        adc     #$04
        tax
        cpy     #$08
        bne     L9EE2
        lda     $1C
        sta     $1B
L9EE2:  jmp     L9EC3

L9EE5:  ldx     $1D
        rts

L9EE8:  jsr     L9F6C
        lda     $1E
        stx     $1E
        ldx     $1D
        asl     a
        asl     a
        ora     $8F,x
        asl     a
        asl     a
        ldx     $1E
        sta     $1E
L9EFB:  asl     $1B
        bcc     L9F0E
        sty     $59
        ldy     $1E
        lda     L9FAE,y
        sta     $0148,x
        iny
        sty     $1E
        ldy     $59
L9F0E:  inx
        dey
        beq     L9F27
        tya
        and     #$03
        bne     L9EFB
        txa
        clc
        adc     #$04
        tax
        cpy     #$08
        bne     L9F24
        lda     $1C
        sta     $1B
L9F24:  jmp     L9EFB

L9F27:  ldx     $1D
        rts

L9F2A:  jsr     L9F6C
        lda     #$FF
        sta     $0A
L9F31:  asl     $1B
        bcc     L9F3C
        lda     $0148,x
        beq     L9F3C
        stx     $0A
L9F3C:  inx
        dey
        beq     L9F55
        tya
        and     #$03
        bne     L9F31
        txa
        clc
        adc     #$04
        tax
        cpy     #$08
        bne     L9F52
        lda     $1C
        sta     $1B
L9F52:  jmp     L9F31

L9F55:  ldx     $1D
        lda     $0A
        bpl     L9F5E
        sec
        bcs     L9F6B
L9F5E:  lsr     a
        lsr     a
        lsr     a
        clc
        adc     $99
        sbc     #$1A
        eor     #$FF
        sta     $0A
        clc
L9F6B:  rts

L9F6C:  lda     $8B,x
        sta     $1E
        asl     a
        asl     a
        ora     $8F,x
        asl     a
        tay
        php
        sei
        lda     L6000
        lda     $7549
        lda     $60A0
        lda     $7543
        lda     $7543
        lda     $7542
        lda     $7554
        lda     $60B0
        plp
        lda     L4000,y
        sta     $1B
        lda     $4001,y
        sta     $1C
        lda     $87,x
        sec
        sbc     $99
        asl     a
        asl     a
        asl     a
        adc     $89,x
        sec
        sbc     $9A
        stx     $1D
        tax
        ldy     #$10
        rts

L9FAE:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        bpl     L9FD1
        ora     ($12),y
        .byte   $13
        .byte   $14
        .byte   $14
        ora     $10,x
        ora     ($11),y
        .byte   $12
        .byte   $13
        .byte   $14
        .byte   $14
        ora     $20,x
        plp
        .byte   $22
L9FD1:  and     $23
        .byte   $27
        .byte   $22
        and     $23
        jsr     L2226
        .byte   $23
        jsr     L2529
        .byte   $3A
        and     $3B3C,x
        .byte   $3A
        and     $3B3C,x
        .byte   $3A
        and     $3B3C,x
        .byte   $3A
        and     $3B3C,x
        rti

        eor     ($4D,x)
        eor     $4A
        .byte   $42
        .byte   $44
        eor     $43
        jmp     L4241

        .byte   $43
        .byte   $44
        rti

        .byte   $4B
        .byte   $5A
        eor     ($52),y
        eor     $53,x
        .byte   $54
        .byte   $5C
        .byte   $52
        .byte   $53
        bvc     LA05A
        .byte   $5B
        bvc     LA069
        .byte   $54
        eor     $6A,x
        .byte   $62
        rts

        .byte   $6B
        .byte   $63
        jmp     (L656D)

        ror     a
        .byte   $62
        rts

        .byte   $6B
        .byte   $63
        jmp     (L656D)

        bvs     LA09D
        .byte   $7C
        .byte   $72
        .byte   $73
        .byte   $7A
        .byte   $7B
        adc     $70,x
        adc     $727C,x
        .byte   $73
        .byte   $7A
        .byte   $7B
        .byte   $75
LA02E:  lda     $0677,x
        beq     LA03D
        dec     $0677,x
        bne     LA03D
        lda     #$00
        jsr     LA26F
LA03D:  lda     $0679,x
        beq     LA04C
        dec     $0679,x
        bne     LA04C
        lda     #$00
        jsr     LA26F
LA04C:  lda     $93,x
        bne     LA051
        rts

LA051:  lda     $95,x
        beq     LA05F
        sec
        sbc     #$01
        sta     $95,x
LA05A:  cmp     #$01
        beq     LA05F
        rts

LA05F:  stx     $20
        bit     $0B
        bpl     LA07B
        txa
        eor     #$01
        tax
LA069:  lda     $8B,x
        beq     LA079
        jsr     L9DFA
        jsr     L9EC0
        jsr     L9E8F
        jsr     L9C92
LA079:  ldx     $20
LA07B:  lda     $93,x
        asl     a
        asl     a
        asl     a
        asl     a
        sta     $1F
        bit     $0B
        bpl     LA089
        ldx     #$00
LA089:  lda     L9E8C,x
        adc     #$00
        ldx     $20
        sta     $20
        lda     #$00
        sta     $21
        lda     #$1A
        sec
        sbc     $93,x
        cmp     #$08
LA09D:  bcc     LA0A1
        lda     #$08
LA0A1:  sta     $22
LA0A3:  ldy     #$0C
LA0A5:  lda     ($1F),y
        beq     LA0F7
        dey
        bne     LA0A5
        tya
        and     #$F0
        tay
        lda     #$F1
        sta     ($1F),y
        iny
        iny
        lda     $95,x
        bne     LA0DE
        lda     #$0C
        sta     $95,x
        jsr     LA37D
        jsr     LA3B3
        lda     $0677,x
        bne     LA0D6
        lda     #$00
        sta     $0679,x
        lda     #$2D
        sta     $0677,x
        jsr     LA213
LA0D6:  stx     $21
        jsr     LA43A
        ldx     $21
        rts

LA0DE:  jsr     LA347
        lda     L0008
        bne     LA0EC
        sty     $21
        jsr     LA6D0
        ldy     $21
LA0EC:  lda     $20
        lsr     a
        lda     $1F
        ror     a
        sta     $21
        jmp     LA131

LA0F7:  lda     $1F
        clc
        adc     #$10
        sta     $1F
        bcc     LA102
        inc     $20
LA102:  dec     $22
        bne     LA0A3
        txa
        asl     a
        tay
        lda     $31,y
        ora     $30,y
        cmp     #$30
        bne     LA11F
        txa
        bne     LA11C
        jsr     LB83F
        clv
        bvc     LA11F
LA11C:  jsr     LB86F
LA11F:  lda     #$00
        sta     $93,x
        sta     $97,x
        lda     L0008
        cmp     #$FC
        bne     LA12E
        jsr     LC916
LA12E:  jmp     LA162

LA131:  lda     #$00
        sta     $95,x
        lda     $21
        beq     LA162
        asl     a
        and     #$F0
        sta     $21
        sta     $1F
        lda     $20
        and     #$FE
        adc     #$00
        sta     $20
        sta     $22
LA14A:  jsr     LA17B
        lda     $20
        lsr     a
        lda     $1F
        ror     a
        cmp     #$38
        bcs     LA14A
        stx     $21
        jsr     LA43A
        ldx     $21
        lda     #$01
        sta     $97,x
LA162:  bit     $0B
        bpl     LA17A
        txa
        eor     #$01
        tax
        lda     $8B,x
        beq     LA17A
        jsr     L9DFA
        jsr     L9EE8
        jsr     L9E8F
        jsr     L9C92
LA17A:  rts

LA17B:  lda     $1F
        sec
        sbc     #$10
        sta     $1F
        bcs     LA186
        dec     $20
LA186:  ldy     #$02
        lda     ($1F),y
        iny
        ora     ($1F),y
        iny
        ora     ($1F),y
        iny
        ora     ($1F),y
        iny
        ora     ($1F),y
        iny
        ora     ($1F),y
        iny
        ora     ($1F),y
        iny
        ora     ($1F),y
        iny
        ora     ($1F),y
        iny
        ora     ($1F),y
        iny
        ora     ($1F),y
        iny
        ora     ($1F),y
        beq     LA212
        cmp     #$F0
        beq     LA212
        ldy     #$00
        lda     #$F1
        sta     ($1F),y
        iny
        lda     ($1F),y
        sta     ($21),y
        iny
        lda     ($1F),y
        sta     ($21),y
        iny
        lda     ($1F),y
        sta     ($21),y
        iny
        lda     ($1F),y
        sta     ($21),y
        iny
        lda     ($1F),y
        sta     ($21),y
        iny
        lda     ($1F),y
        sta     ($21),y
        iny
        lda     ($1F),y
        sta     ($21),y
        iny
        lda     ($1F),y
        sta     ($21),y
        iny
        lda     ($1F),y
        sta     ($21),y
        iny
        lda     ($1F),y
        sta     ($21),y
        iny
        lda     ($1F),y
        sta     ($21),y
        iny
        lda     ($1F),y
        sta     ($21),y
        iny
        lda     ($1F),y
        sta     ($21),y
        iny
        lda     ($1F),y
        sta     ($21),y
        iny
        lda     ($1F),y
        sta     ($21),y
        ldy     #$02
        jsr     LA347
        lda     $21
        sec
        sbc     #$10
        sta     $21
        bcs     LA212
        dec     $22
LA212:  rts

LA213:  lda     #$01
        sta     $1E
LA217:  dec     $22
        beq     LA234
        lda     $1F
        clc
        adc     #$10
        sta     $1F
        bcc     LA226
        inc     $20
LA226:  ldy     #$0C
LA228:  lda     ($1F),y
        beq     LA217
        dey
        bne     LA228
        inc     $1E
        jmp     LA217

LA234:  ldy     $1E
        lda     LA26B,y
        sta     $0677,x
        lda     $1E
        jsr     LA26F
        lda     $1E
        cmp     #$04
        bne     LA24C
        lda     #$0F
        sta     $067B,x
LA24C:  lda     L0008
        bne     LA26A
        lda     $1E
        sec
        sbc     #$01
        and     #$03
        asl     a
        tay
        lda     LA2C0,y
        sta     $1B
        lda     LA2C1,y
        sta     $1C
        lda     #$00
        sta     $1D
        jmp     LB53F

LA26A:  rts

LA26B:  and     $4B3C
        .byte   $90
LA26F:  stx     $1D
        sta     $1E
        asl     a
        asl     a
        adc     $1E
        asl     a
        asl     a
        asl     a
        tax
        php
        sei
        lda     L6000
        lda     $754E
        lda     $60B0
        lda     $7542
        lda     $7543
        lda     $7556
        lda     $60B0
        plp
        lda     $1D
        asl     a
        tay
        lda     LA2C8,y
        sta     $02
        lda     LA2C9,y
        sta     $03
        ldy     #$00
LA2A3:  lda     $657D,x
        sta     ($02),y
        inx
        iny
        cpy     #$14
        bne     LA2B9
        lda     $02
        clc
        adc     #$6C
        sta     $02
        bcc     LA2B9
        inc     $03
LA2B9:  cpy     #$28
        bcc     LA2A3
        ldx     $1D
        rts

LA2C0:  brk
LA2C1:  ora     $01
        ora     $04
        brk
        ora     #$00
LA2C8:  dey
LA2C9:  .byte   $1C
        clv
        .byte   $1C
LA2CC:  .byte   $94
LA2CD:  .byte   $1C
        cpy     $1C
LA2D0:  stx     $1D
        lda     $1D
        asl     a
        tay
        lda     LA2CC,y
        sta     $02
        lda     LA2CD,y
        sta     $03
        php
        sei
        lda     L6000
        lda     $7542
        lda     $6080
        lda     $7540
        lda     $7556
        lda     $60B0
        plp
        lda     #$00
        sta     $1E
        lda     #$03
        sta     $1F
LA2FD:  lda     $068D,x
        and     #$0F
        sta     $20
        beq     LA30A
        lda     #$01
        sta     $1E
LA30A:  lda     $1E
        beq     LA337
        lda     $20
        asl     a
        asl     a
        sta     $20
        tay
        lda     $653D,y
        ldy     #$00
        sta     ($02),y
        ldy     $20
        lda     $653E,y
        ldy     #$01
        sta     ($02),y
        ldy     $20
        lda     $653F,y
        ldy     #$80
        sta     ($02),y
        ldy     $20
        lda     $6540,y
        ldy     #$81
        sta     ($02),y
LA337:  lda     $02
        clc
        adc     #$02
        sta     $02
        inx
        inx
        dec     $1F
        bpl     LA2FD
        ldx     $1D
        rts

LA347:  lda     #$F0
        bit     $0B
        bpl     LA34F
        lda     #$00
LA34F:  sta     ($1F),y
        iny
        lda     #$00
        sta     ($1F),y
        iny
        sta     ($1F),y
        iny
        sta     ($1F),y
        iny
        sta     ($1F),y
        iny
        sta     ($1F),y
        iny
        sta     ($1F),y
        iny
        sta     ($1F),y
        iny
        sta     ($1F),y
        iny
        sta     ($1F),y
        iny
        sta     ($1F),y
        lda     #$F0
        bit     $0B
        bpl     LA379
        lda     #$00
LA379:  iny
        sta     ($1F),y
        rts

LA37D:  lda     #$F0
        bit     $0B
        bpl     LA385
        lda     #$08
LA385:  sta     ($1F),y
        iny
        lda     #$08
        sta     ($1F),y
        iny
        sta     ($1F),y
        iny
        sta     ($1F),y
        iny
        sta     ($1F),y
        iny
        sta     ($1F),y
        iny
        sta     ($1F),y
        iny
        sta     ($1F),y
        iny
        sta     ($1F),y
        iny
        sta     ($1F),y
        iny
        sta     ($1F),y
        lda     #$F0
        bit     $0B
        bpl     LA3AF
        lda     #$08
LA3AF:  iny
        sta     ($1F),y
        rts

LA3B3:  txa
        pha
        lda     $1F
        clc
        adc     #$10
        sta     $1D
        lda     $20
        adc     #$00
        sta     $1E
        ldy     #$00
        lda     #$F1
        sta     ($1D),y
        iny
LA3C9:  lda     ($1D),y
        tax
        and     #$F0
        sta     $1B
        beq     LA3E1
        txa
        cmp     #$80
        bcs     LA3E1
        and     #$0F
        tax
        lda     LA41A,x
        ora     $1B
        sta     ($1D),y
LA3E1:  iny
        cpy     #$10
        bcc     LA3C9
        lda     $1F
        sec
        sbc     #$10
        sta     $1D
        lda     $20
        sbc     #$00
        sta     $1E
        ldy     #$00
        lda     #$F1
        sta     ($1D),y
        iny
LA3FA:  lda     ($1D),y
        tax
        and     #$F0
        sta     $1B
        beq     LA412
        txa
        cmp     #$80
        bcs     LA412
        and     #$0F
        tax
        lda     LA42A,x
        ora     $1B
        sta     ($1D),y
LA412:  iny
        cpy     #$10
        bcc     LA3FA
        pla
        tax
        rts

LA41A:  brk
        ora     ($02,x)
        .byte   $03
        .byte   $03
        asl     $0A01
        php
        ora     $020A
        brk
        ora     $0E0E
LA42A:  brk
        ora     ($02,x)
        asl     $0505
        asl     $0C
        ora     ($0B,x)
        brk
        .byte   $0B
        .byte   $0C
        .byte   $02
        .byte   $0E
        .byte   $0E
LA43A:  lda     #$00
        sta     $1F
        lda     $20
        and     #$FE
        sta     $20
        bit     $0B
        bpl     LA44A
        ldx     #$02
LA44A:  lda     L9E86,x
        sta     $9D
        lda     L9E89,x
        sta     $9E
        ldy     #$60
LA456:  lda     ($1F),y
        cmp     #$F1
        bne     LA47B
        lda     #$F0
        sta     ($1F),y
        sty     $1E
        jsr     L9D8E
        ldy     $1E
        lda     #$00
        sta     L0000
        lda     #$01
        sta     $01
        lda     $9D
        sta     $02
        lda     $9E
        sta     $03
        txa
        jsr     LD633
LA47B:  lda     $9D
        clc
        adc     #$80
        sta     $9D
        lda     $9E
        adc     #$00
        sta     $9E
        tya
        clc
        adc     #$10
        tay
        bcc     LA491
        inc     $20
LA491:  lda     $20
        lsr     a
        tya
        ror     a
        cmp     #$D0
        bcc     LA456
        rts

LA49B:  ldy     L0008
        cpy     #$F8
        bne     LA4BF
        jsr     LD552
        jsr     LC228
        cmp     #$00
        beq     LA4AE
        jmp     LA4C0

LA4AE:  lda     $0F
        and     #$01
        bne     LA4BF
        dec     $066E
        lda     $066E
        bne     LA4BF
        jmp     LA4C0

LA4BF:  rts

LA4C0:  jmp     LCA62

LA4C3:  jsr     LBCD3
        txa
        clc
        adc     #$4A
        jsr     LD670
        jsr     LAFF4
        lda     #$3B
        stx     $1B
        clc
        adc     $1B
        jsr     LD670
        lda     $0618
        sta     $50
        rts

LA4E0:  ldx     #$00
LA4E2:  stx     $0650
        lda     $0F
        and     #$3F
        bne     LA4EE
        jsr     LA52D
LA4EE:  ldx     $0650
        lda     $4E,x
        beq     LA527
        lda     $0618
        cmp     $50
        beq     LA515
        sta     $50
        lda     $4E,x
        cmp     #$09
        bcc     LA507
        jsr     LA4C3
LA507:  ldy     #$09
        lda     $4E
        beq     LA50F
        sty     $4E
LA50F:  lda     $4F
        .byte   $F0
LA512:  .byte   $02
        sty     $4F
LA515:  lda     a:$C1
        beq     LA527
        lda     $4E,x
        cmp     #$0A
        bcs     LA527
        txa
        clc
        adc     #$3D
        jsr     LD670
LA527:  inx
        cpx     #$02
        bcc     LA4E2
        rts

LA52D:  ldy     $4E,x
        cpy     #$01
        bcc     LA5AC
        dey
        sty     $4E,x
        stx     $064D
        cpy     #$09
        bne     LA540
        jsr     LA4C3
LA540:  ldx     $064D
        lda     $4E,x
        cmp     #$0A
        bcs     LA5AC
        cpx     #$00
        bne     LA551
        lda     #$92
        bne     LA553
LA551:  lda     #$C2
LA553:  sta     $02
        lda     #$1B
        sta     $03
        ldy     #$00
        clc
        lda     $4E,x
        adc     #$30
        sta     ($02),y
        iny
        lda     #$90
        sta     ($02),y
        txa
        clc
        adc     #$3B
        jsr     LD670
        lda     $4E,x
        bne     LA5AC
        clc
        txa
        adc     #$4A
        jsr     LD670
        jsr     LBCD3
        jsr     LAFF4
        jsr     LEA15
        lda     $0663,x
        bmi     LA58A
        jsr     LE77E
LA58A:  lda     $77
        ora     $78
        bne     LA5AC
        lda     $4E
        ora     $4F
        bne     LA5AC
        lda     $0663
        and     $0664
        bpl     LA5AC
        lda     #$00
        sta     $066D
        sta     a:$C2
        sta     a:$C3
        jmp     LA5AD

LA5AC:  rts

LA5AD:  lda     $066D
        bne     LA5B8
        jsr     LF11B
        clv
        bvc     LA5DA
LA5B8:  lda     #$20
        sta     $065B
        sta     $065C
        sta     $065D
        sta     $065E
        sta     $065F
        sta     $0660
        sta     $0661
        sta     $0662
        lda     #$80
        sta     $0663
        sta     $0664
LA5DA:  lda     $066D
        clc
        adc     #$01
        and     #$03
        sta     $066D
        lda     #$07
        sta     $07
        lda     #$0A
        jsr     L8818
        lda     #$F8
        sta     L0008
        lda     #$9C
        sta     $02
        lda     #$15
        sta     $03
        lda     #$96
        sta     $066E
        lda     #$31
        sta     $1F
        lda     #$30
        sta     $20
        ldx     #$00
LA609:  lda     #$B0
        sta     $05
        txa
        lsr     a
        sta     $1D
        lda     $0663
        bpl     LA624
        cmp     #$80
        beq     LA624
        eor     #$FF
        cmp     $1D
        bne     LA624
        lda     #$E0
        sta     $05
LA624:  lda     $0664
        bpl     LA637
        cmp     #$80
        beq     LA637
        eor     #$FF
        cmp     $1D
        bne     LA637
        lda     #$F0
        sta     $05
LA637:  jsr     LA6A7
        lda     #$00
        sta     $1D
        lda     #$05
        sta     $1E
LA642:  lda     $0979,x
        cmp     #$30
        beq     LA64D
        dec     $1D
        bmi     LA657
LA64D:  bit     $1D
        bmi     LA657
        cpy     #$12
        bcs     LA657
        lda     #$00
LA657:  sta     ($02),y
        iny
        lda     $05
        sta     ($02),y
        iny
        inx
        dec     $1E
        bpl     LA642
        iny
        iny
        txa
        lsr     a
        sec
        sbc     #$03
        tax
        lda     #$02
        sta     $1E
LA670:  lda     $09D9,x
        sta     ($02),y
        iny
        lda     $05
        sta     ($02),y
        iny
        inx
        dec     $1E
        bpl     LA670
        txa
        asl     a
        tax
        lda     $02
        clc
        adc     #$80
        sta     $02
        lda     $03
        adc     #$00
        sta     $03
        lda     $1F
        clc
        adc     #$01
        cmp     #$3A
        bcc     LA69D
        inc     $20
        lda     #$30
LA69D:  sta     $1F
        cpx     #$60
        bcs     LA6A6
        jmp     LA609

LA6A6:  rts

LA6A7:  ldy     #$00
        lda     $20
        cmp     #$30
        bne     LA6B1
        lda     #$00
LA6B1:  sta     ($02),y
        iny
        lda     $05
        sta     ($02),y
        iny
        lda     $1F
        sta     ($02),y
        iny
        lda     $05
        sta     ($02),y
        iny
        lda     #$2E
        sta     ($02),y
        iny
        lda     $05
        sta     ($02),y
        iny
        iny
        iny
        rts

LA6D0:  jsr     LA7C9
        lda     #$30
        sta     $1B
        lda     #$01
        sta     $7B,x
        txa
        asl     a
        asl     a
        tay
        lda     $060F,y
        clc
        adc     #$01
        cmp     #$3A
        bcc     LA6EC
        sbc     #$0A
        sec
LA6EC:  sta     $060F,y
        lda     $060E,y
        adc     #$00
        cmp     #$3A
        bcc     LA6FB
        sbc     #$0A
        sec
LA6FB:  sta     $060E,y
        lda     $060D,y
        adc     #$00
        cmp     #$3A
        bcc     LA70A
        sbc     #$0A
        sec
LA70A:  sta     $060D,y
        lda     $060C,y
        adc     #$00
        cmp     #$3A
        bcc     LA718
        lda     #$39
LA718:  sta     $060C,y
        tya
        lsr     a
        tay
        sty     $1B
        lda     #$0F
        jsr     LA7AD
        lda     $0649,x
        cmp     $06AF
        bcc     LA732
        lda     #$0F
        sta     $0615,y
LA732:  lda     $0615,y
        sta     $06B0
        cmp     #$0F
        bcs     LA768
        lda     $0649,x
        clc
        adc     #$01
        cmp     #$78
        bcc     LA748
        lda     #$78
LA748:  sta     $0649,x
        ldy     #$00
LA74D:  tya
        jsr     LA7AD
        lda     $0649,x
        cmp     $06AF
        bne     LA763
        sty     $1E
        tya
        ldy     $1B
        sta     $0615,y
        ldy     $1E
LA763:  iny
        cpy     #$10
        bcc     LA74D
LA768:  lda     #$16
        jmp     LE659

LA76D:  ora     ($04,x)
        ora     #$0E
        .byte   $12
        .byte   $1B
        bit     $2C
        and     $3E,x
        .byte   $47
        bvc     LA7D3
        .byte   $62
        .byte   $6B
        .byte   $73
        ora     ($04,x)
        php
        .byte   $0C
        ora     ($15),y
        ora     $2C22,y
        .byte   $34
        .byte   $43
        eor     $6056
        adc     #$6E
        ora     ($04,x)
        .byte   $07
        .byte   $0B
        .byte   $0F
        .byte   $13
        .byte   $17
        jsr     L2F28
        .byte   $3A
        .byte   $44
        lsr     $6158
        adc     #$01
        .byte   $03
        asl     $09
        .byte   $0C
        .byte   $0F
        .byte   $12
        .byte   $1A
        bit     $2A
        .byte   $32
        .byte   $3C
        lsr     $50
        .byte   $5A
        .byte   $64
LA7AD:  sta     $064D
        tya
        pha
        lda     $08BB
        and     #$03
        asl     a
        asl     a
        asl     a
        asl     a
        clc
        adc     $064D
        tay
        lda     LA76D,y
        sta     $06AF
        pla
        tay
        rts

LA7C9:  lda     $069B,x
        beq     LA7CF
        rts

LA7CF:  txa
        lsr     a
        bcs     LA7D7
LA7D3:  lda     #$C0
        bne     LA7D9
LA7D7:  lda     #$D0
LA7D9:  sta     $05
        txa
        asl     a
        tay
        lda     $31,y
        cmp     #$30
        bne     LA7FA
        lda     $30,y
        cmp     #$30
        beq     LA7F7
        sec
        sbc     #$01
        sta     $30,y
        lda     #$39
        sta     $31,y
LA7F7:  clv
        bvc     LA800
LA7FA:  sec
        sbc     #$01
        sta     $31,y
LA800:  lda     $77,x
        bne     LA805
        rts

LA805:  cpx     #$00
        bne     LA80E
        lda     #$E0
        clv
        bvc     LA810
LA80E:  lda     #$F0
LA810:  sta     $05
        txa
        asl     a
        tay
        sta     $34
        asl     a
        adc     $34
        sta     $34
        asl     $34
        clc
        lda     #$22
        adc     $34
        sta     $02
        lda     #$17
        sta     $03
        lda     $30,y
        jsr     LD64A
        lda     #$24
        adc     $34
        sta     $02
        lda     $31,y
        jsr     LD64A
        lda     $30,y
        cmp     #$30
        bne     LA863
        lda     $31,y
        cmp     #$36
        bcs     LA863
        sec
        sbc     #$30
        cpx     #$00
        bne     LA85B
        sta     $0670
        lda     #$1E
        sta     $0671
        clv
        bvc     LA863
LA85B:  sta     $0672
        lda     #$1E
        sta     $0673
LA863:  rts

LA864:  lda     #$FC
        sta     L0008
        lda     #$00
        sta     $0B
        sta     L0045
        lda     #$0F
        sta     $2F
        lda     #$30
        sta     $0657
        lda     #$31
        sta     $0658
        lda     #$01
        jsr     LE659
        jsr     LAA4B
        lda     #$09
        sta     $0615
        lda     #$0A
        sta     $0681
        rts

LA88F:  lda     #$F0
        sta     L0008
        lda     #$00
        sta     $0B
        lda     #$01
        jsr     LE659
        lda     #$03
        sta     $07
        lda     L0045
        asl     a
        jsr     L8818
        lda     #$00
        tax
        lda     #$01
        sta     $77
        lda     #$1E
        sta     $2F
        jsr     LADAD
        lda     #$03
        sta     $8F
        lda     #$00
        sta     $77
        sta     $067F
        lda     #$08
        sta     $87
        lda     #$07
        sta     $89
        lda     #$02
        sta     $8B
        sta     $067E
        lda     #$37
        jsr     LD670
        lda     #$09
        jsr     LD670
        lda     #$01
        sta     $79
        sta     $7B
        sta     $80
        sta     $78
        jsr     LB605
        jsr     LBC16
        rts

LA8E9:  ldy     $46
        beq     LA8F0
        jmp     LA945

LA8F0:  lda     $0B
        sta     $064F
        lda     #$EC
        sta     L0008
        lda     #$00
        sta     $0650
        sta     $0655
        sta     $0656
        sta     $0B
        lda     #$03
        sta     $07
        lda     L0045
        asl     a
        jsr     L8818
        lda     #$00
        tax
        lda     #$01
        sta     $77
        lda     #$1E
        sta     $2F
        jsr     LADAD
        lda     #$00
        sta     $77
        lda     #$02
        sta     $8F
        sta     $067F
        lda     #$11
        sta     $87
        lda     #$08
        sta     $89
        lda     #$02
        sta     $8B
        sta     $067E
        lda     #$37
        jsr     LD670
        lda     #$01
        sta     $78
        jsr     LBC16
        rts

LA945:  lda     #$00
        sta     L0008
        sta     $44
        sta     $064B
        ldy     $46
        sty     $06A7
        lda     LAB31,y
        sta     $2F
        clc
        adc     #$31
        sta     $0658
        lda     #$30
        sta     $0657
        lda     $46
        sta     L0045
        ldx     #$05
        lda     #$30
LA96B:  sta     $0600,x
        sta     $0606,x
        sta     $060C,x
        sta     $0612,x
        dex
        bpl     LA96B
        lda     #$00
        sta     $0614
        sta     $0616
        sta     $0615
        sta     $0617
        sta     $0649
        sta     $064A
        jsr     LAA4B
        jsr     LB69C
        lda     $77
        beq     LA99D
        ldx     #$00
        jsr     LA9AB
LA99D:  lda     $78
        beq     LA9A6
        ldx     #$01
        jsr     LA9AB
LA9A6:  lda     #$F7
        sta     L0008
        rts

LA9AB:  lda     $2F
        cmp     #$03
        bcc     LA9D1
        ldy     #$32
        lda     #$0A
        sta     $0649,x
        sta     $79,x
        cpx     #$00
        bne     LA9C9
        sty     $0601
        lda     #$02
        sta     $0615
        clv
        bvc     LA9D1
LA9C9:  sty     $0607
        lda     #$02
        sta     $0617
LA9D1:  lda     $2F
        cmp     #$06
        bcc     LA9F7
        ldy     #$34
        lda     #$14
        sta     $0649,x
        sta     $79,x
        cpx     #$00
        bne     LA9EF
        sty     $0601
        lda     #$04
        sta     $0615
        clv
        bvc     LA9F7
LA9EF:  sty     $0607
        lda     #$04
        sta     $0617
LA9F7:  stx     $064E
        jsr     LB605
        ldx     $064E
        rts

LAA01:  cpx     #$00
        bne     LAA29
        lda     $0615
        cmp     #$03
LAA0A:  bcc     LAA18
LAA0C:  sec
        sbc     #$02
        cmp     #$08
        bcc     LAA15
        lda     #$08
LAA15:  clv
        bvc     LAA1A
LAA18:  lda     #$00
LAA1A:  sta     $0615
        jsr     LA7AD
        lda     $06AF
        sta     $0649
        clv
        bvc     LAA4A
LAA29:  lda     $0617
        cmp     #$03
        bcc     LAA3C
        sec
        sbc     #$02
        cmp     #$08
        bcc     LAA39
        lda     #$08
LAA39:  clv
        bvc     LAA3E
LAA3C:  lda     #$00
LAA3E:  sta     $0617
        jsr     LA7AD
        lda     $06AF
        sta     $064A
LAA4A:  rts

LAA4B:  lda     L0045
        clc
        adc     #$03
        sta     $07
        jsr     LABC0
        sei
        lda     #$00
        sta     $06C7
        sta     $06C8
        sta     $06C9
        sta     $06CA
        cli
        ldx     #$78
LAA67:  sta     L0000,x
        inx
        cpx     #$AC
        bne     LAA67
        lda     #$01
        sta     $77
        sta     $79
        sta     $7B
        ldx     $0B
        beq     LAA80
        sta     $78
        sta     $7A
        sta     $7C
LAA80:  lda     #$01
        sta     $7F
        lda     $0619
        cmp     #$02
        bcc     LAA8B
LAA8B:  jsr     LB605
LAA8E:  lda     $17
        sta     $83
        sta     $85
        sta     $81
        lda     $18
        sta     $84
        sta     $86
        sta     $82
        jsr     LADC6
        lda     #$00
        sta     $35
        sta     $95
        sta     $96
        .byte   $85
LAAAA:  .byte   $93
        sta     $94
        sta     $063C
        sta     $063D
        sta     $063F
        sta     $0640
        lda     L0008
        bne     LAACA
        lda     $0B
        cmp     #$01
        bne     LAACA
        jsr     LAE06
        lda     #$00
        sta     $36
LAACA:  ldx     #$00
        stx     $29
        stx     $2A
        lda     L0008
        bne     LAAD8
        lda     #$F7
        sta     L0008
LAAD8:  ldx     #$00
        jsr     LADAD
        ldx     #$01
        jsr     LADAD
        lda     $0B
        beq     LAB00
        lda     $77
        bne     LAAF3
        lda     $4E
        bne     LAAF3
        ldx     #$00
        jsr     LAFF4
LAAF3:  lda     $78
        bne     LAB00
        lda     $4F
        bne     LAB00
        ldx     #$01
        jsr     LAFF4
LAB00:  lda     #$2C
        sta     $02
        lda     #$1D
        sta     $03
        ldy     #$00
        lda     $0657
        cmp     #$30
        beq     LAB19
        sta     ($02),y
        iny
        lda     #$A0
        sta     ($02),y
        iny
LAB19:  lda     $0658
        sta     ($02),y
        iny
        lda     #$A0
        sta     ($02),y
        lda     $78
        bne     LAB30
        lda     $4F
        bne     LAB30
        lda     #$28
        jsr     LD670
LAB30:  rts

LAB31:  brk
        .byte   $03
        .byte   $06
LAB34:  lda     $2F
        clc
        adc     #$01
        cmp     #$1B
        bcc     LAB3F
        lda     #$0F
LAB3F:  sta     $2F
        lda     #$07
        sta     $0670
        sta     $0672
        inc     $0658
        lda     $0658
        cmp     #$3A
        bne     LAB6A
        lda     #$30
        sta     $0658
        inc     $0657
        lda     $0657
        cmp     #$3A
        bne     LAB6A
        lda     #$39
        sta     $0657
        sta     $0658
LAB6A:  inc     $44
        lda     $44
        cmp     #$03
        bcc     LAB91
        lda     #$00
        sta     $44
        inc     L0045
        lda     L0045
        cmp     #$03
        bcc     LAB82
        lda     #$00
        sta     L0045
LAB82:  lda     #$0E
        jsr     LE659
        lda     L0045
        clc
        adc     #$03
        sta     $07
        jsr     LABC0
LAB91:  ldx     #$00
        lda     $4E,x
        bne     LAB9A
        jsr     LBCD3
LAB9A:  ldx     #$01
        lda     $4E,x
        bne     LABA3
        jsr     LBCD3
LABA3:  lda     $77
        beq     LABAC
        lda     #$09
        jsr     LD670
LABAC:  lda     $78
        beq     LABB5
        lda     #$0A
        clv
        bvc     LABB7
LABB5:  lda     #$28
LABB7:  jsr     LD670
        jsr     LAA8E
        jmp     LB69C

LABC0:  lda     L0045
        asl     a
        jsr     L8818
        ldy     #$00
        jsr     L8952
        lda     #$01
        sta     $80
        lda     $77
        beq     LABDE
        lda     #$09
        sta     $79
        sta     $7B
        sta     $7F
        jsr     LD670
LABDE:  lda     $78
        beq     LABEB
        lda     #$0A
        sta     $7A
        sta     $7C
        clv
        bvc     LABED
LABEB:  lda     #$28
LABED:  jsr     LD670
        lda     #$00
        sta     $A1
        sta     $A2
        sta     $A3
        sta     $A4
        sta     $A5
        sta     $A6
        sta     $A7
        lda     $0663
        bmi     LAC0A
        lda     #$52
        jsr     LD670
LAC0A:  lda     $0664
        bmi     LAC14
        lda     #$53
        jsr     LD670
LAC14:  jsr     LB605
        jsr     LBC16
        rts

LAC1B:  stx     $1B
        jsr     LAC8A
        lda     #$07
        cpx     #$00
        bne     LAC2C
        sta     $0670
        clv
        bvc     LAC2F
LAC2C:  sta     $0672
LAC2F:  ldy     #$05
LAC31:  cpx     #$00
        bne     LAC4C
        lda     #$30
        sta     $0600,y
        cpy     #$04
        bcs     LAC41
        sta     $060C,y
LAC41:  lda     #$00
        sta     $0614
        sta     $0615
        clv
        bvc     LAC60
LAC4C:  lda     #$30
        sta     $0606,y
        cpy     #$04
        bcs     LAC58
        sta     $0610,y
LAC58:  lda     #$00
        sta     $0616
        sta     $0617
LAC60:  dey
        bpl     LAC31
        lda     #$00
        sta     $0649,x
        cpx     #$00
        bne     LAC71
        lda     $78
        clv
        bvc     LAC73
LAC71:  lda     $77
LAC73:  beq     LAC7A
        lda     #$01
        clv
        bvc     LAC7C
LAC7A:  lda     #$00
LAC7C:  sta     $0B
        sta     $0619
        jsr     LA9AB
        jsr     LADAD
        rts

LAC88:  ora     #$0A
LAC8A:  lda     #$30
        sta     $77,x
        sta     $79,x
        sta     $7B,x
        sei
        lda     #$00
        sta     $06C7,x
        sta     $06C9,x
        cli
        lda     #$00
        sta     $064D
        lda     $069B,x
        bne     LACE6
        lda     LBA76,x
        tay
        lda     $77,y
        bne     LACB5
        jsr     LB81C
        clv
        bvc     LACE6
LACB5:  tya
        asl     a
        tay
        lda     $30,y
        cmp     #$30
        bne     LACD2
        lda     $31,y
        cmp     #$35
        bcs     LACD2
        lda     #$04
        sta     $35,x
        lda     #$4C
        sta     $069F,x
        sta     $064D
LACD2:  tya
        lsr     a
        tay
        lda     $35,y
        beq     LACE6
        lda     #$04
        sta     $35,x
        lda     #$4C
        sta     $069F,x
        sta     $064D
LACE6:  lda     $064D
        bne     LAD47
        lda     #$00
        sta     $35,x
        txa
        asl     a
        tax
        ldy     $2F
        lda     LB7AA,y
        sta     $30,x
        lda     LB7C5,y
        sta     $31,x
        lda     LB7E0,y
        cpx     #$00
        bne     LAD1C
        sta     $06BB
        lda     $0615
        asl     a
        asl     a
        asl     a
        clc
        adc     $06BB
        tay
        lda     LC028,y
        sta     $06BB
        clv
        bvc     LAD30
LAD1C:  sta     $06BC
        lda     $0617
        asl     a
        asl     a
        asl     a
        clc
        adc     $06BC
        tay
        lda     LC028,y
        sta     $06BC
LAD30:  ldx     $1B
        lda     $069B,x
        bne     LAD47
        txa
        tay
        ldx     LBA76,y
        jsr     LA800
        txa
        tay
        ldx     LBA76,y
        jsr     LA7C9
LAD47:  lda     LAC88,x
        jsr     LD670
        rts

LAD4E:  stx     $1B
        lda     #$01
        sta     $069B,x
        clc
        txa
        adc     #$4A
        jsr     LD670
        jsr     LAC8A
        jmp     LADAD

LAD62:  stx     $1B
        clc
        txa
        adc     #$4A
LAD68:  jsr     LD670
LAD6B:  lda     #$00
        sta     $06B5,x
        sta     $06B7,x
        stx     $06A4
        ldy     #$00
        jsr     L89B7
        jsr     LAC8A
        jsr     LAA01
        lda     #$00
        sta     $064E
        txa
        tay
        ldx     LBA76,y
        lda     $77,x
        beq     LAD94
        lda     #$01
        sta     $064E
LAD94:  lda     $064E
        sta     $0619
        sta     $0B
        ldx     $1B
        lda     #$07
        cpx     #$00
        bne     LADAA
        sta     $0670
        clv
        bvc     LADAD
LADAA:  sta     $0672
LADAD:  jsr     LAFE8
        lda     #$00
        sta     $8D,x
        sta     $8B,x
        sta     $29,x
        lda     $77,x
        beq     LADC2
        lda     LAC88,x
        jsr     LD670
LADC2:  cpx     #$00
        bne     LAE06
LADC6:  lda     #$00
        sta     $1F
        lda     #$02
        sta     $20
        lda     #$1C
        sta     $1D
LADD2:  lda     $1D
        cmp     #$03
        bcs     LADDC
        ldx     #$20
        bne     LADE6
LADDC:  ldx     $0B
        bmi     LADE4
        ldx     #$00
        beq     LADE6
LADE4:  ldx     #$10
LADE6:  ldy     #$00
LADE8:  lda     LAEC3,x
        sta     ($1F),y
        inx
        iny
        cpy     #$10
        bcc     LADE8
        lda     $1F
        clc
        adc     #$10
        sta     $1F
        bcc     LADFE
        inc     $20
LADFE:  dec     $1D
        bne     LADD2
        ldx     #$00
        beq     LAE44
LAE06:  lda     #$00
        sta     $1F
        lda     #$04
        sta     $20
        lda     #$1C
        sta     $1D
LAE12:  lda     $1D
        cmp     #$03
        bcs     LAE1C
        ldx     #$20
        bne     LAE26
LAE1C:  ldx     $0B
        bmi     LAE24
        ldx     #$00
        beq     LAE26
LAE24:  ldx     #$10
LAE26:  ldy     #$00
LAE28:  lda     LAEC3,x
        sta     ($1F),y
        inx
        iny
        cpy     #$10
        bcc     LAE28
        lda     $1F
        clc
        adc     #$10
        sta     $1F
        bcc     LAE3E
        inc     $20
LAE3E:  dec     $1D
        bne     LAE12
        ldx     #$01
LAE44:  lda     $77,x
        bne     LAE49
        rts

LAE49:  lda     $069B,x
        beq     LAE4F
        rts

LAE4F:  ldy     $2F
        lda     LB0DB,y
        sta     $063B
        beq     LAE5B
        lda     #$01
LAE5B:  sta     $063C,x
        lda     LB100,y
        sta     $063E
        beq     LAE68
        lda     #$01
LAE68:  sta     $063F,x
        lda     LB0BC,y
        sta     $061C
        bne     LAE74
        rts

LAE74:  cmp     #$08
        bcc     LAE7B
        jmp     LAEF3

LAE7B:  sec
        sbc     #$01
        lsr     a
        sta     $22
        lda     #$00
        ror     a
        adc     #$9C
        sta     $21
        lda     $22
        adc     #$76
        sta     $22
LAE8E:  php
        sei
        lda     L6000
        lda     $754C
        lda     $6090
        lda     $7541
        lda     $7551
        lda     $6090
        plp
        inc     $79,x
        lda     #$12
        sta     $93,x
        lda     #$20
        sta     $1F
        lda     L9E8C,x
        clc
        adc     #$01
        sta     $20
LAEB5:  ldy     #$00
LAEB7:  lda     ($21),y
        sta     ($1F),y
        iny
        cpy     #$80
        bcc     LAEB7
        .byte   $4C
        .byte   $3A
LAEC2:  .byte   $A4
LAEC3:  .byte   $F0
LAEC4:  beq     *-14
        brk
LAEC7:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LAEC2
        .byte   $F0
LAED3:  beq     *-14
LAED5:  brk
LAED6:  brk
LAED7:  brk
        brk
LAED9:  brk
        brk
LAEDB:  brk
        brk
LAEDD:  brk
        brk
LAEDF:  brk
        brk
LAEE1:  beq     LAED3
LAEE3:  beq     LAED5
        beq     LAED7
        beq     LAED9
        beq     LAEDB
        beq     LAEDD
        beq     LAEDF
        beq     LAEE1
        beq     LAEE3
LAEF3:  sec
        sbc     #$08
        clc
        adc     #$D9
        sta     $1D
        lda     #$09
        sta     $1E
        lda     #$40
        sta     $1F
        lda     L9E8C,x
        clc
        adc     #$01
        sta     $20
        ldy     #$00
LAF0D:  lda     #$F1
        sta     ($1F),y
        lda     $1F
        adc     #$10
        sta     $1F
        cmp     #$A0
        bcc     LAF0D
        inc     $79,x
        lda     #$14
        sta     $93,x
        lda     #$43
        sta     $1F
        lda     L9E8C,x
        clc
        adc     #$01
        sta     $20
        txa
        pha
        ldx     #$00
        lda     #$1E
        sta     $5E
LAF35:  ldy     #$00
        lda     ($1D),y
        and     #$1F
        sta     $21
        asl     a
        adc     $21
        adc     #$97
        sta     $21
        lda     #$AF
        adc     #$00
        sta     $22
        lda     ($21),y
        pha
LAF4D:  pla
        asl     a
        pha
        bcc     LAF56
        lda     $5E
        sta     ($1F),y
LAF56:  iny
        tya
        and     #$03
        bne     LAF63
        lda     $1F
        clc
        adc     #$0C
        sta     $1F
LAF63:  tya
        and     #$07
        bne     LAF79
        lda     $21
        clc
        adc     #$01
        sta     $21
        lda     $22
        adc     #$00
        sta     $22
        pla
        lda     ($21,x)
        pha
LAF79:  cpy     #$18
        bcc     LAF4D
        pla
        inc     $1D
        lda     $5E
        clc
        adc     #$10
        sta     $5E
        lda     $1F
        sec
        sbc     #$45
        sta     $1F
        cmp     #$4A
        bcc     LAF35
        pla
        tax
        jmp     LA43A

        asl     a
        lsr     a
        lsr     a
        .byte   $04
        ldx     $0CAA
        ldx     $0EAC
        dey
        stx     LAA0C
        ldy     L8C0E
        stx     L8C0E
        dey
        asl     LAE8E
        asl     a
        ldx     $0EAA
        .byte   $44
        lsr     $2202
        ldy     $0A
        ldy     $08AA
        dey
        stx     LEA0A
        tax
        asl     LAAAA
        .byte   $04
        tax
        ldy     $0E
        ldx     $0488
        tax
        inc     $0E
        ldx     $06CA
        sty     $2C
        asl     $4444
        asl     a
        tax
        ldx     LAA0A
        ldy     $0A
        tax
        nop
        asl     a
        ldy     $AA
        asl     a
        ldy     $44
        asl     L8E24
LAFE8:  lda     #$00
        sta     $05
        lda     $77,x
        beq     LAFF3
        jsr     LAFF4
LAFF3:  rts

LAFF4:  lda     #$00
        sta     $05
        txa
        asl     a
        tay
LAFFB:  lda     LE756,y
        beq     LB039
        sta     $1D
        lda     LE757,y
        sta     $1E
        lda     LE74E,y
        sta     $1F
        lda     LE74F,y
        sta     $20
LB011:  lda     #$62
        sta     L0000
        lda     #$E7
        sta     $01
        lda     $1F
        sta     $02
        clc
        adc     #$80
        sta     $1F
        lda     $20
        sta     $03
        adc     #$00
        sta     $20
        lda     $1E
        jsr     LD5CC
        dec     $1D
        bne     LB011
        iny
        iny
        iny
        iny
        bne     LAFFB
LB039:  rts

        tay
        stx     $1D
        ldx     $1D
        inc     $79,x
        lda     LB0B5,y
        sta     $93,x
LB046:  stx     $1D
        asl     a
        asl     a
        asl     a
        asl     a
        sta     $1F
        lda     L9E8C,x
        adc     #$00
        sta     $20
        lda     $81
        sta     $17
        lda     $82
        sta     $18
LB05D:  lda     #$00
        tay
        sta     $1C
        lda     #$F1
        sta     ($1F),y
        iny
        iny
        ldx     #$17
LB06A:  lda     ($1F),y
        bne     LB07B
        lda     $281A
        and     #$70
        beq     LB079
        inc     $1C
        ora     #$0E
LB079:  sta     ($1F),y
LB07B:  iny
        tya
        and     #$0F
        bne     LB06A
        lda     $1C
        cmp     #$07
        bcc     LB094
        lda     $281A
        and     #$07
        clc
        adc     #$04
        tay
        lda     #$00
        sta     ($1F),y
LB094:  lda     $1F
        clc
        adc     #$10
        sta     $1F
        bcc     LB09F
        inc     $20
LB09F:  lda     $20
        lsr     a
        lda     $1F
        ror     a
        cmp     #$D0
        bcc     LB05D
        ldx     $1D
        jmp     LA43A

        bmi     LB0E0
        and     ($32),y
        .byte   $32
        and     $30,x
LB0B5:  bmi     LB0CF
        asl     $14,x
        .byte   $12
        beq     LB0CB
LB0BC:  brk
        brk
        brk
        ora     ($02,x)
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        brk
        ora     $06
        .byte   $07
LB0CB:  php
        .byte   $0B
        .byte   $0E
        .byte   $01
LB0CF:  .byte   $02
        .byte   $03
        ora     ($02,x)
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $04
LB0DB:  brk
        brk
        brk
        brk
        brk
LB0E0:  brk
        ora     #$07
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
        ora     #$07
        .byte   $04
        brk
        brk
        brk
        ora     #$07
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
LB100:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     #$07
        ora     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     #$07
        ora     $09
        .byte   $07
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
        lda     $281A
        and     #$07
        beq     LB12E
        inc     $1C
LB12E:  rts

LB12F:  txa
        tay
        bit     $0B
        bpl     LB137
        ldy     #$02
LB137:  lda     L9E8C,y
        sta     $03
        lda     L9E86,y
        sta     $9D
LB141:  lda     L9E89,y
        sta     $9E
        jsr     LCA1A
        lda     #$D0
        sta     $1B
        ldx     #$03
LB14F:  lda     $05C0,x
        cmp     $1B
        bcs     LB158
        sta     $1B
LB158:  inx
        cpx     #$0D
        bcc     LB14F
        lda     $1B
        cmp     #$80
        bcs     LB164
        rts

LB164:  lda     $280A
        and     #$0F
        clc
        adc     #$03
        .byte   $C9
LB16D:  ora     $0290
        sbc     #$08
LB172:  tax
        sta     $1B
        lda     $05C0,x
        sta     $1C
        ldy     #$03
LB17C:  cpy     $1B
        beq     LB187
        lda     $05C0,y
        cmp     $1C
        bcs     LB194
LB187:  iny
        cpy     #$0D
        bcc     LB17C
        cpx     #$0C
        bne     LB193
        dex
        bne     LB194
LB193:  inx
LB194:  lda     $05C0,x
        sec
        sbc     #$08
        sta     $1C
        asl     a
        sta     $02
        bcc     LB1A3
        inc     $03
LB1A3:  txa
        clc
        adc     $02
        sta     $02
        lda     #$09
        ldy     #$00
        sta     ($02),y
        php
        sei
        lda     L6000
        lda     $754B
        lda     $6090
        lda     $7542
        lda     $7543
        lda     $7554
        lda     $60A0
        plp
        lda     $6521
        sta     L0100
        lda     #$00
        sta     $1E
        lda     $1C
        sec
        sbc     #$30
        asl     a
        rol     $1E
        asl     a
        rol     $1E
        asl     a
        rol     $1E
        asl     a
        rol     $1E
        adc     $9D
        sta     $02
        lda     $1E
        adc     $9E
        sta     $03
        txa
        asl     a
        adc     $02
        sec
        sbc     #$06
        sta     $02
        lda     #$01
        sta     $01
        lda     #$00
        sta     L0000
        lda     #$F0
        sta     $0101
        lda     #$01
        jsr     LD633
        lda     #$17
        jsr     LE659
        rts

LB20D:  lda     L9E8C,x
        sta     $20
        lda     #$60
        sta     $1F
LB216:  lda     $1F
        clc
        adc     #$10
        sta     $1F
        bcc     LB221
        inc     $20
LB221:  ldy     #$03
        lda     ($1F),y
        iny
        ora     ($1F),y
        iny
        ora     ($1F),y
        iny
        ora     ($1F),y
        iny
        ora     ($1F),y
        iny
        ora     ($1F),y
        iny
        ora     ($1F),y
        iny
        ora     ($1F),y
        iny
        ora     ($1F),y
        iny
        ora     ($1F),y
        beq     LB216
        lda     $20
        lsr     a
        lda     $1F
        ror     a
        .byte   $C9
LB249:  .byte   $80
        bcc     LB294
        cmp     #$D0
        bcs     LB28A
LB250:  lda     $1F
        sec
        sbc     #$10
        sta     $21
        lda     $20
        sbc     #$00
        sta     $22
        ldy     #$00
        lda     #$F1
        sta     ($21),y
        iny
LB264:  lda     ($1F),y
        sta     ($21),y
        iny
        cpy     #$10
        bcc     LB264
        lda     $20
        lsr     a
        lda     $1F
        ror     a
        cmp     #$C8
        bcs     LB285
        lda     $1F
        adc     #$10
        sta     $1F
        lda     $20
        adc     #$00
        sta     $20
        bne     LB250
LB285:  ldy     #$02
        jsr     LA347
LB28A:  lda     #$18
        jsr     LE659
        lda     #$19
        jmp     LB046

LB294:  rts

LB295:  sta     $1C
        ldy     #$00
LB299:  lsr     $1C
        bcc     LB2A4
        tya
        clc
        adc     $1B
        bcs     LB2B2
        tay
LB2A4:  lda     $1C
        beq     LB2AE
        asl     $1B
        bcc     LB299
        bcs     LB2B2
LB2AE:  cpy     #$FA
        bcc     LB2B4
LB2B2:  ldy     #$FA
LB2B4:  lda     #$00
        sta     $1B
        sta     $1C
        tya
LB2BB:  cmp     #$64
        bcc     LB2C5
        sbc     #$64
        inc     $1B
        bne     LB2BB
LB2C5:  cmp     #$0A
        bcc     LB2CF
        sbc     #$0A
        inc     $1C
        bne     LB2C5
LB2CF:  sta     $1D
        rts

LB2D2:  lda     $97,x
        bne     LB30E
        lda     $063C,x
        beq     LB2F2
        clc
        adc     #$01
        sta     $063C,x
        cmp     $063B
        bcc     LB2F2
        lda     #$01
        sta     $063C,x
        txa
        pha
        jsr     LB12F
        pla
        tax
LB2F2:  lda     $063F,x
        beq     LB30E
        clc
        adc     #$01
        sta     $063F,x
        cmp     $063E
        bcc     LB30E
        lda     #$01
        sta     $063F,x
        txa
        pha
        jsr     LB20D
        pla
        tax
LB30E:  lda     #$14
        sta     $91,x
        sta     $062C,x
        lda     $0B
        bpl     LB320
        lda     LB458,x
        ldy     #$01
        bne     LB325
LB320:  lda     LB45A,x
        ldy     #$04
LB325:  sty     $87,x
        sta     $89,x
        lda     #$00
        sta     $8F,x
        lda     $8D,x
        pha
        sta     $8B,x
        jsr     L9DFA
        lda     $0B
        bpl     LB341
        lda     $9D
        clc
        adc     LB45C,x
        sta     $9D
LB341:  jsr     L9EC0
        stx     $1B
        txa
        asl     a
        adc     #$83
        tax
LB34B:  jsr     LB4AC
        and     #$07
        beq     LB34B
        ldx     $1B
        sta     $8B,x
        sta     $8D,x
        jsr     L9EE8
        jsr     L9E8F
        stx     $20
        jsr     L9C92
        ldx     $20
        lda     L9E8C,x
        sta     $03
        lda     LB45A,x
        clc
        adc     #$40
        sta     $02
        ldy     #$00
LB374:  lda     ($02),y
        bne     LB37C
        lda     #$F0
        sta     ($02),y
LB37C:  iny
        cpy     #$03
        bcc     LB374
        ldy     #$10
LB383:  lda     ($02),y
        bne     LB38B
        lda     #$F0
        sta     ($02),y
LB38B:  iny
        cpy     #$13
        bcc     LB383
        lda     #$04
        sta     $87,x
        ldy     $0B
        bpl     LB39D
        lda     LB458,x
        bne     LB39F
LB39D:  lda     #$07
LB39F:  sta     $89,x
        pla
        sta     $8B,x
        jsr     L9DFA
        jsr     L9EE8
        jsr     L9E8F
        stx     $20
        jsr     L9C92
        ldx     $20
        lda     $8B,x
        beq     LB3C9
        lda     L0008
        cmp     #$FC
        bne     LB3C4
        jsr     LC916
        jmp     LB3CA

LB3C4:  lda     $0619
        beq     LB3CA
LB3C9:  rts

LB3CA:  lda     $77
        beq     LB3C9
        lda     $4F
        bne     LB3C9
        lda     $0664
        bpl     LB3C9
        ldx     $8B
        lda     $A0,x
        cmp     #$7F
        bcs     LB3C9
        and     #$07
        tay
        lda     $6525,y
        sta     L0100
        lda     $8B
        asl     a
        asl     a
        asl     a
        asl     a
        adc     #$70
        sta     $0101
        lda     #$1C
        sta     $03
        ldy     $8B
        lda     $A0,y
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        eor     #$FF
        sec
        adc     $03
        sta     $03
        lda     $A0,y
        and     #$08
        beq     LB410
        lda     #$80
LB410:  sta     $1B
        lda     $8B
        asl     a
        adc     #$38
        sec
        sbc     $1B
        sta     $02
        lda     $03
        sbc     #$00
        sta     $03
        ldy     #$00
        lda     L0100
        sta     ($02),y
        iny
        lda     $0101
        sta     ($02),y
        ldx     $8B
        lda     $A0,x
        cmp     #$07
        bcc     LB453
        and     #$07
        bne     LB453
        lda     $02
        clc
        adc     #$80
        sta     $02
        bcc     LB446
        inc     $03
LB446:  ldy     #$00
        lda     $652D
        sta     ($02),y
        iny
        lda     $0101
        sta     ($02),y
LB453:  inc     $A0,x
        inc     $A0,x
        rts

LB458:  .byte   $03
        .byte   $09
LB45A:  brk
        .byte   $0D
LB45C:  .byte   $EE
        .byte   $12
LB45E:  lda     $0B
        bpl     LB469
        lda     LB458,x
        ldy     #$01
        bne     LB46E
LB469:  lda     LB45A,x
        ldy     #$04
LB46E:  sty     $87,x
        sta     $89,x
        lda     #$00
        sta     $8F,x
        stx     $1B
        txa
        asl     a
        adc     #$83
        tax
LB47D:  jsr     LB4AC
        and     #$07
        beq     LB47D
        ldx     $1B
        sta     $8B,x
        sta     $8D,x
        jsr     L9DFA
        lda     $0B
        bpl     LB499
        lda     $9D
        clc
        adc     LB45C,x
        sta     $9D
LB499:  jsr     L9EE8
        jsr     L9E8F
        stx     $20
        jsr     L9C92
        ldx     $20
        lda     #$00
        sta     $8B,x
        rts

        rts

LB4AC:  jsr     LB4B2
        jsr     LB4B2
LB4B2:  lda     L0000,x
        eor     $01,x
        bne     LB4BC
        cmp     $01,x
        beq     LB4BE
LB4BC:  asl     a
        asl     a
LB4BE:  rol     L0000,x
        rol     $01,x
        lda     L0000,x
        rts

LB4C5:  lda     $062C,x
        cmp     #$02
        bcs     LB4F0
        lda     $1D
        adc     $1D
        cmp     #$0A
        bcc     LB4D6
        sbc     #$0A
LB4D6:  sta     $1D
        lda     $1C
        adc     $1C
        cmp     #$0A
        bcc     LB4E2
        sbc     #$0A
LB4E2:  sta     $1C
        lda     $1B
        adc     $1B
        cmp     #$0A
        bcc     LB4EE
        sbc     #$0A
LB4EE:  sta     $1B
LB4F0:  rts

LB4F1:  txa
        asl     a
        tay
        lda     $0615,y
        clc
        adc     #$01
        bit     $0B
        bpl     LB501
        clc
        adc     #$03
LB501:  sta     $1B
        lda     $0614,y
        cmp     #$01
        bcc     LB510
        lda     $1B
        adc     #$09
        sta     $1B
LB510:  lda     $1B
        clc
        adc     $0A
        jsr     LB295
        jsr     LB4C5
        lda     #$00
        sta     $068D,x
        lda     $1B
        sta     $068F,x
        lda     $1C
        sta     $0691,x
        lda     $1D
        sta     $0693,x
        lda     L0008
        bne     LB536
        jsr     LB53F
LB536:  jsr     LA2D0
        lda     #$1E
        sta     $0679,x
        rts

LB53F:  txa
        sta     $1E
        asl     a
        adc     $1E
        asl     a
        tay
        lda     $1D
        clc
        adc     $0605,y
        cmp     #$3A
        bcc     LB554
        sbc     #$0A
        sec
LB554:  sta     $0605,y
        lda     $0604,y
        adc     $1C
        cmp     #$3A
        bcc     LB563
        sbc     #$0A
        sec
LB563:  sta     $0604,y
        lda     $0603,y
        adc     $1B
        cmp     #$3A
        bcc     LB572
        sbc     #$0A
        sec
LB572:  sta     $0603,y
        lda     $0602,y
        adc     #$00
        cmp     #$3A
        bcc     LB581
        sbc     #$0A
        sec
LB581:  sta     $0602,y
        lda     $0601,y
        adc     #$00
        cmp     #$3A
        bcc     LB590
        sbc     #$0A
        sec
LB590:  sta     $0601,y
        lda     $0600,y
        adc     #$00
        cmp     #$3A
        bcc     LB59E
        sbc     #$0A
LB59E:  sta     $0600,y
        inc     $79,x
        rts

LB5A4:  txa
        asl     a
        tay
        lda     $0615,y
        sta     $91,x
        tay
        lda     $08BB
        and     #$03
        asl     a
        asl     a
        asl     a
        asl     a
        sta     $064D
        tya
        clc
        adc     $064D
        tay
        lda     LB5C5,y
        sta     $91,x
        rts

LB5C5:  asl     $1419,x
        bpl     LB5D6
        .byte   $0B
        asl     a
        ora     #$08
        .byte   $07
        asl     $05
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $03
        .byte   $19
LB5D6:  .byte   $14
        bpl     LB5E5
        asl     a
        .byte   $0B
        ora     #$08
        .byte   $07
        asl     $05
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $03
        .byte   $03
LB5E5:  .byte   $14
        bpl     LB5F6
        .byte   $0C
        asl     a
        ora     #$08
        .byte   $07
        asl     $05
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $12
LB5F6:  bpl     LB605
        .byte   $0B
        ora     #$07
        asl     $05
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
LB605:  ldx     #$07
LB607:  lda     $79,x
        beq     LB666
        lda     #$00
        sta     $79,x
        stx     $1D
        txa
        asl     a
        tay
        lda     LB672,y
        sta     L0000
        sta     $1B
        lda     LB673,y
        sta     $01
        sta     $1C
        bit     $0B
        bpl     LB634
        lda     L0008
        bmi     LB634
        cpy     #$08
        bcc     LB634
        cpy     #$0C
        bcs     LB634
        ldy     #$10
LB634:  lda     LB682,y
        sta     $02
        lda     LB683,y
        sta     $03
        sty     $1F
        ldy     $1D
        lda     LB66A,y
        sta     $1E
        ldy     #$00
LB649:  lda     ($1B),y
        cmp     #$30
        bne     LB65A
        inc     L0000
        dec     $1E
        iny
        lda     $1E
        cmp     #$02
        bcs     LB649
LB65A:  lda     LB694,x
        sta     $05
        lda     $1E
        jsr     LD5CC
        ldx     $1D
LB666:  dex
        bpl     LB607
        rts

LB66A:  asl     $06
        .byte   $04
        .byte   $04
        .byte   $02
        .byte   $02
        asl     $06
LB672:  brk
LB673:  asl     $06
        asl     $0C
        asl     $10
        asl     $14
        asl     $16
        asl     $79
        ora     #$79
        .byte   $09
LB682:  .byte   $92
LB683:  ora     $1DC2,x
        .byte   $12
        asl     $1E42,x
        bit     $2C1E
        asl     $1C24,x
        bit     $1C
        php
        .byte   $16
LB694:  cpx     #$F0
        cpx     #$F0
        cpx     #$F0
        ldy     #$A0
LB69C:  lda     #$03
        sta     $2B
        lda     #$00
        sta     $2E
        lda     #$16
        sta     $2D
        ldx     $2F
        lda     LB6B0,x
        sta     $2C
        rts

LB6B0:  .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $17
        .byte   $0F
        bpl     LB6D2
        .byte   $0C
        .byte   $0C
        .byte   $1C
        .byte   $0C
        .byte   $0C
        .byte   $17
        .byte   $0C
        .byte   $0C
        ora     $1F1E,x
        .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $0C
LB6CE:  lda     $2B
        cmp     #$03
LB6D2:  bne     LB729
        ldy     $2E
        jsr     L8952
        lda     $11
        bne     LB729
        lda     $2E
        bne     LB6F3
        lda     $77
        beq     LB6EA
        ldx     #$00
        jsr     LB45E
LB6EA:  lda     $78
        beq     LB6F3
        ldx     #$01
        jsr     LB45E
LB6F3:  inc     $2E
        lda     $2E
        cmp     #$06
        bne     LB729
        lda     #$05
        sta     $2E
        lda     #$01
        sta     $2B
        lda     $2C
        jsr     LD670
        lda     $2C
        cmp     #$0C
        bne     LB729
        ldx     $2F
        lda     LB7AA,x
        sta     $17A2
        lda     #$B0
        sta     $17A3
        lda     LB7C5,x
        sec
        sbc     #$01
        sta     $17A4
        lda     #$B0
        sta     $17A5
LB729:  lda     $2B
        cmp     #$01
        beq     LB730
        rts

LB730:  lda     $29
        ora     $2A
        and     #$01
        beq     LB73C
        lda     #$01
        sta     $2D
LB73C:  lda     $12
        bne     LB7A9
        dec     $2D
        lda     $2D
        bne     LB7A9
        lda     #$0B
        jsr     LD670
        lda     #$0E
        jsr     LD670
        lda     #$00
        sta     L0008
        sta     $2B
        ldx     $2F
        lda     LB7AA,x
        sta     $30
        sta     $32
        lda     LB7C5,x
        sta     $31
        sta     $33
        lda     LB7E0,x
        sta     $06BB
        sta     $06BC
        lda     $0615
        asl     a
        asl     a
        asl     a
        clc
        adc     $06BB
        tay
        lda     LC028,y
        sta     $06BB
        lda     $0617
        asl     a
        asl     a
        asl     a
        clc
        adc     $06BC
        tay
        lda     LC028,y
        sta     $06BC
        jsr     LB7FB
        ldx     #$00
        lda     $77,x
        beq     LB79D
        jsr     LA7C9
LB79D:  ldx     #$01
        lda     $77,x
        beq     LB7A6
        jsr     LA7C9
LB7A6:  jsr     LB81C
LB7A9:  rts

LB7AA:  bmi     LB7DD
        and     ($31),y
        and     ($31),y
        and     ($31),y
        and     ($31),y
        and     ($31),y
        and     ($31),y
        and     ($31),y
        and     ($31),y
        and     ($31),y
        and     ($31),y
        and     ($31),y
        and     ($31),y
        .byte   $31
LB7C5:  rol     $31,x
        .byte   $33
        and     ($34),y
        .byte   $37
        .byte   $33
        rol     $39,x
        .byte   $33
        rol     $39,x
        .byte   $33
        rol     $39,x
        .byte   $33
        rol     $39,x
        .byte   $33
        rol     $39,x
        .byte   $33
        rol     $39,x
LB7DD:  .byte   $33
        rol     $39,x
LB7E0:  brk
        ora     ($02,x)
        ora     ($03,x)
        ora     $02
        .byte   $04
        asl     $02
        .byte   $04
        asl     $02
        .byte   $04
        asl     $02
        .byte   $04
        asl     $02
        .byte   $04
        asl     $02
        .byte   $04
        asl     $02
        .byte   $04
        .byte   $06
LB7FB:  lda     #$00
        sta     $06B5
        sta     $06B6
        sta     $06B7
        sta     $06B8
        ldy     #$00
        sty     $06A4
        jsr     L89B7
        ldy     #$01
        sty     $06A4
        ldy     #$00
        jsr     L89B7
        rts

LB81C:  lda     $2F
        and     #$03
        bne     LB827
        lda     #$05
        clv
        bvc     LB83B
LB827:  cmp     #$01
        bne     LB830
        lda     #$06
        clv
        bvc     LB83B
LB830:  cmp     #$02
        bne     LB839
        lda     #$07
        clv
        bvc     LB83B
LB839:  lda     #$08
LB83B:  jsr     LE659
        rts

LB83F:  lda     #$02
        sta     $3A
        lda     #$63
        sta     $39
        lda     #$88
        sta     $3D
        lda     #$12
        sta     $3E
        ldy     $2F
        lda     LB7AA,y
        sta     $30
        lda     LB7C5,y
        sta     $31
        lda     #$1A
        jsr     LE659
        lda     #$01
        sta     $35
        sta     $37
        lda     #$78
        sta     $41
        sta     $0670
        bne     LB89D
LB86F:  lda     #$04
        sta     $3C
        lda     #$63
        sta     $3B
        lda     #$B8
        sta     $3F
        lda     #$12
        sta     $40
        ldy     $2F
        lda     LB7AA,y
        sta     $32
        lda     LB7C5,y
        sta     $33
        lda     #$1A
        jsr     LE659
        lda     #$01
        sta     $36
        sta     $37
        lda     #$78
        sta     $0672
        sta     $42
LB89D:  ldy     LBA76,x
        lda     $77,y
        bne     LB8AD
        lda     #$09
        jsr     LE659
        clv
        bvc     LB8B7
LB8AD:  lda     $35,y
        beq     LB8B7
        lda     #$09
        jsr     LE659
LB8B7:  lda     #$0C
        jmp     LE659

LB8BC:  lda     $35,x
        bne     LB8C1
        rts

LB8C1:  lda     $35,x
        cmp     #$01
        bne     LB93C
        lda     $41,x
        cmp     #$78
        bne     LB8ED
        ldy     LBA76,x
        lda     $77,y
        bne     LB8E4
        lda     #$09
        jsr     LE659
        lda     #$0B
        jsr     LD670
        lda     #$21
        clv
        bvc     LB8EA
LB8E4:  jsr     LBCD3
        lda     LBA78,x
LB8EA:  jsr     LD670
LB8ED:  dec     $41,x
        bne     LB93C
        ldy     LBA76,x
        lda     $77,y
        bne     LB902
        lda     #$03
        sta     $35,x
        lda     #$1E
        clv
        bvc     LB921
LB902:  lda     $35,x
        cmp     $35,y
        bcc     LB91B
        jsr     LBCD3
        lda     LBA7A,x
        jsr     LD670
        lda     #$02
        sta     $35,x
        lda     #$C8
        clv
        bvc     LB921
LB91B:  lda     #$03
        sta     $35,x
        lda     #$1E
LB921:  sta     $41,x
        lda     #$00
        sta     $068D,x
        sta     $068F,x
        sta     $0691,x
        sta     $0693,x
        sta     $0695,x
        sta     $0697,x
        lda     #$05
        jsr     LA26F
LB93C:  lda     $35,x
        cmp     #$02
        bne     LB9A3
        lda     #$00
        sta     $1B
        sta     $1D
        lda     #$01
        sta     $1C
        jsr     LB53F
        lda     $0691,x
        clc
        adc     #$01
        cmp     #$0A
        bcc     LB95B
        lda     #$00
LB95B:  sta     $0691,x
        lda     $068F,x
        adc     #$00
        cmp     #$0A
        bcc     LB969
        lda     #$00
LB969:  sta     $068F,x
        lda     $068D,x
        adc     #$00
        cmp     #$0A
        bcc     LB977
        lda     #$00
LB977:  sta     $068D,x
        jsr     LA2D0
        dec     $41,x
        bne     LB9A3
        lda     LBA7E,x
        jsr     LD670
        lda     #$03
        sta     $35,x
        lda     #$1E
        sta     $41,x
        lda     #$00
        sta     $068D,x
        sta     $068F,x
        sta     $0691,x
        sta     $0693,x
        sta     $0695,x
        sta     $0697,x
LB9A3:  lda     $35,x
        cmp     #$03
        bne     LB9E7
        lda     $41,x
        cmp     #$1E
        bne     LB9CD
        ldy     LBA76,x
        lda     $77,y
        bne     LB9C1
        lda     #$0B
        jsr     LD670
        lda     #$0D
        clv
        bvc     LB9C7
LB9C1:  jsr     LBCD3
        lda     LBA7C,x
LB9C7:  jsr     LD670
        clv
        bvc     LB9DA
LB9CD:  lda     $41,x
        bne     LB9DA
        lda     $0F
        and     #$03
        bne     LB9DA
        jsr     LBAA9
LB9DA:  lda     $41,x
        beq     LB9E7
        dec     $41,x
        bne     LB9E7
        lda     #$05
        jsr     LA26F
LB9E7:  lda     $35,x
        cmp     #$04
        bne     LBA40
        ldy     LBA76,x
        lda     $77,y
        bne     LBA13
        lda     $44
        cmp     #$02
        bne     LBA01
        jsr     LBA80
        clv
        bvc     LBA10
LBA01:  lda     #$1E
        sta     $43
        lda     #$09
        jsr     LE659
        lda     #$00
        sta     $35
        sta     $36
LBA10:  clv
        bvc     LBA40
LBA13:  lda     $35,y
        cmp     #$04
        bne     LBA38
        lda     $44
        cmp     #$02
        bne     LBA26
        jsr     LBA80
        clv
        bvc     LBA35
LBA26:  lda     #$1E
        sta     $43
        lda     #$09
        jsr     LE659
        lda     #$00
        sta     $35
        sta     $36
LBA35:  clv
        bvc     LBA40
LBA38:  txa
        clc
        adc     $069F,x
        jsr     LD670
LBA40:  lda     $35,x
        cmp     #$05
        bne     LBA75
        dec     $069D,x
        lda     $069D,x
        lsr     a
        lsr     a
        lsr     a
        and     #$01
        bne     LBA5D
        txa
        clc
        adc     #$11
        jsr     LD670
        clv
        bvc     LBA64
LBA5D:  txa
        clc
        adc     #$14
        jsr     LD670
LBA64:  lda     $069D,x
        bne     LBA75
        lda     #$00
        sta     $35,x
        lda     #$01
        sta     $069B,x
        jmp     LAD4E

LBA75:  rts

LBA76:  ora     (L0000,x)
LBA78:  .byte   $22
        .byte   $23
LBA7A:  bit     $25
LBA7C:  rol     $27
LBA7E:  eor     $56,x
LBA80:  lda     #$01
        sta     $06A5
        lda     #$00
        sta     $06B1
        sta     $06B2
        sta     $06B3
        lda     $06A7
        bne     LBA9A
        lda     #$10
        clv
        bvc     LBAA5
LBA9A:  cmp     #$01
        bne     LBAA3
        lda     #$11
        clv
        bvc     LBAA5
LBAA3:  lda     #$0F
LBAA5:  jsr     LE659
        rts

LBAA9:  txa
        asl     a
        tay
        lda     $39,y
        sta     $1D
        lda     $3A,y
        sta     $1E
        ldy     #$00
        tya
LBAB9:  ora     ($1D),y
        iny
        cpy     #$0A
        bcc     LBAB9
        cmp     #$00
        bne     LBB3A
        php
        sei
        lda     L6000
        lda     $7547
        lda     $60B0
        lda     $7541
        lda     $7543
        lda     $7555
        lda     $6090
        plp
        lda     $6505
        sta     L0100
        lda     #$F0
        sta     $0101
        sta     $0113
        lda     $6509
        sta     $0112
        ldy     #$00
LBAF2:  lda     $6507
        sta     $0102,y
        iny
        lda     #$F0
        sta     $0102,y
        iny
        cpy     #$10
        bcc     LBAF2
        txa
        asl     a
        tax
        lda     #$00
        sta     L0000
        lda     #$01
        sta     $01
        lda     $3D,x
        sta     $02
        lda     $3E,x
        sta     $03
        lda     #$0A
        jsr     LD633
        lda     $39,x
        clc
        adc     #$10
        sta     $39,x
        bcc     LBB26
        inc     $3A,x
LBB26:  lda     $3D,x
        clc
        adc     #$80
        sta     $3D,x
        bcc     LBB31
        inc     $3E,x
LBB31:  txa
        lsr     a
        tax
        jsr     LBB90
        clv
        bvc     LBB8A
LBB3A:  lda     #$04
        sta     $35,x
        lda     #$2D
        sta     $0677,x
        lda     #$00
        sta     $0679,x
        lda     LBA76,x
        tay
        lda     $77,y
        beq     LBB7F
        lda     $35,y
        bne     LBB7F
        tya
        asl     a
        tay
        lda     $30,y
        cmp     #$30
        bne     LBB73
        lda     $31,y
        cmp     #$35
        bcs     LBB73
        lda     #$04
        sta     $35,x
        lda     #$4C
        sta     $069F,x
        jmp     LBB8A

LBB73:  jsr     LBCD3
        lda     #$05
        sta     $35,x
        lda     #$7D
        sta     $069D,x
LBB7F:  lda     $35,x
        cmp     #$04
        bne     LBB8A
        lda     #$4C
        sta     $069F,x
LBB8A:  lda     #$1B
        jsr     LE659
        rts

LBB90:  lda     $0697,x
        clc
        adc     #$01
        cmp     #$0A
        bcc     LBB9C
        lda     #$00
LBB9C:  sta     $0697,x
        sta     $1C
        lda     $0695,x
        adc     #$00
        cmp     #$0A
        bcc     LBBAC
        lda     #$00
LBBAC:  sta     $0695,x
        sta     $1B
        lda     #$00
        sta     $1D
        jsr     LB53F
        lda     #$19
        jsr     LE659
        sed
        lda     $0691,x
        clc
        adc     $0697,x
        cmp     #$0A
        bcc     LBBCC
        and     #$0F
        sec
LBBCC:  sta     $0691,x
        lda     $068F,x
        adc     $0695,x
        cmp     #$0A
        bcc     LBBDC
        and     #$0F
        sec
LBBDC:  sta     $068F,x
        lda     $068D,x
        adc     #$00
        cmp     #$0A
        bcc     LBBEB
        and     #$0F
        sec
LBBEB:  sta     $068D,x
        cld
        jmp     LA2D0

LBBF2:  lda     $43
        cmp     #$0A
        bcc     LBBFD
        dec     $43
        clv
        bvc     LBC15
LBBFD:  ldy     $2E
        jsr     L8952
        lda     $11
        bne     LBC15
        dec     $2E
        lda     $2E
        cmp     #$00
        bne     LBC15
        lda     #$00
        sta     $43
        jsr     LAB34
LBC15:  rts

LBC16:  lda     #$20
        sta     $AD
        lda     #$1E
        sta     $AE
        ldy     #$00
        lda     $08BC
        and     #$E0
        cmp     #$E0
        bne     LBC36
LBC29:  lda     LBC7A,y
        sta     ($AD),y
        iny
        cpy     #$14
        bcc     LBC29
        clv
        bvc     LBC6B
LBC36:  lda     LBC6C,y
        sta     ($AD),y
        iny
        cpy     #$0E
        bcc     LBC36
        iny
        iny
        lda     $0618
        sta     ($AD),y
        iny
        lda     #$A0
        sta     ($AD),y
        iny
        txa
        pha
        lda     a:$C0
        and     #$03
        beq     LBC69
        asl     a
        asl     a
        adc     a:$C3
        adc     a:$C4
        tax
        lda     LBC8E,x
        sta     ($AD),y
        iny
        lda     #$A0
        sta     ($AD),y
LBC69:  pla
        tax
LBC6B:  rts

LBC6C:  .byte   $43
        ldy     #$52
        ldy     #$45
        ldy     #$44
        ldy     #$49
        ldy     #$54
        ldy     #$53
        .byte   $A0
LBC7A:  lsr     $A0
        .byte   $52
        ldy     #$45
        ldy     #$45
        ldy     #$20
        ldy     #$20
        ldy     #$50
        ldy     #$4C
        ldy     #$41
        ldy     #$59
        .byte   $A0
LBC8E:  jsr     L2020
        jsr     L1A20
        jsr     L2020
        ora     $201B,y
        jsr     L1D18
        .byte   $1C
LBC9E:  lda     $069B,x
        bne     LBCA4
        rts

LBCA4:  lda     LBA76,x
LBCA7:  tay
        lda     $35,y
        beq     LBCB0
        jmp     LBCC0

LBCB0:  lda     $77,y
        bne     LBCBF
        txa
        clc
        adc     #$18
        jsr     LD670
        jmp     LBCC0

LBCBF:  rts

LBCC0:  lda     #$00
        sta     $069B,x
        sta     $95,x
        sta     $93,x
        lda     #$04
        sta     $35,x
        lda     #$18
        sta     $069F,x
        rts

LBCD3:  stx     $05C0
        txa
        asl     a
        asl     a
        asl     a
        adc     $05C0
        adc     $05C0
        tax
        ldy     #$00
LBCE3:  lda     LBD24,x
        sta     $02
        inx
        lda     LBD24,x
        sta     $03
        inx
        lda     #$0A
        sta     L0000
        lda     #$BD
        sta     $01
        lda     #$50
        sta     $05
        lda     #$0F
        jsr     LD5CC
        iny
        tya
        cmp     #$05
        bne     LBCE3
        ldx     $05C0
        rts

        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LBD24:  brk
        bpl     LBCA7
        bpl     LBD29
LBD29:  ora     ($80),y
        ora     (L0000),y
        .byte   $12
        rol     $10,x
        ldx     $10,y
        rol     $11,x
        ldx     $11,y
        rol     $12,x
LBD38:  lda     $06B1
        bne     LBD6D
        lda     $29
        ora     $2A
        and     #$01
        beq     LBD6D
        inc     $06B3
        lda     $06B3
        cmp     #$02
        bcc     LBD6D
        lda     #$01
        sta     $06B1
        sta     $06B2
        lda     #$00
        sta     $06C0
        sta     $06C1
        lda     $0F
        and     #$03
        bne     LBD6D
        lda     #$01
        sta     $06C0
        sta     $06C1
LBD6D:  inc     $06A6
        lda     $06A6
        cmp     #$05
        bcs     LBD78
        rts

LBD78:  lda     #$00
        .byte   $8D
        .byte   $A6
LBD7C:  asl     $AD
        lda     $06
        bne     LBD83
        rts

LBD83:  lda     #$00
        sta     $06BF
        lda     #$00
        sta     $06A4
        lda     $77
        bne     LBD94
        jmp     LBE3B

LBD94:  php
        sei
        lda     L6000
        lda     $7545
        lda     $60B0
        lda     $7543
        lda     $7543
        lda     $7543
        lda     $7541
        lda     $7540
        lda     $7552
        lda     $60B0
        plp
        ldy     $06A5
        lda     $06A7
        bne     LBDC3
        lda     $7DE0,y
        clv
        bvc     LBDD0
LBDC3:  cmp     #$01
        bne     LBDCD
        lda     $7E5C,y
        clv
        bvc     LBDD0
LBDCD:  lda     $7D1D,y
LBDD0:  sta     $064D
        lda     $06B1
        cmp     #$01
        bne     LBDFE
        lda     $064D
        cmp     #$0B
        bne     LBDE9
        lda     #$02
        sta     $06B1
        clv
        bvc     LBDFE
LBDE9:  cmp     #$1D
        bne     LBDF5
        lda     #$02
        sta     $06B1
        clv
        bvc     LBDFE
LBDF5:  cmp     #$29
        bne     LBDFE
        lda     #$02
        sta     $06B1
LBDFE:  lda     $06B1
        cmp     #$02
        bcc     LBE34
        lda     $06C0
        bne     LBE1F
        ldy     $06B1
        cpy     #$0E
        bne     LBE16
        lda     #$01
        sta     $06BF
LBE16:  lda     $7F6C,y
        inc     $06B1
        clv
        bvc     LBE31
LBE1F:  ldy     $06B1
        cpy     #$17
        bne     LBE2B
        lda     #$01
        sta     $06BF
LBE2B:  lda     $7F54,y
        inc     $06B1
LBE31:  clv
        bvc     LBE37
LBE34:  lda     $064D
LBE37:  tay
        jsr     L89B7
LBE3B:  lda     #$01
        sta     $06A4
        lda     $78
        bne     LBE47
        jmp     LBEEB

LBE47:  php
        sei
        lda     L6000
        lda     $7549
        lda     $6080
        lda     $7540
        lda     $755E
        lda     $6090
        plp
        ldy     $06A5
        lda     $06A7
        bne     LBE6A
        lda     $7DE0,y
        clv
        bvc     LBE80
LBE6A:  cmp     #$01
        bne     LBE74
        lda     $7ED8,y
        clv
        bvc     LBE80
LBE74:  tya
        cmp     #$AC
        bcc     LBE7C
        clc
        adc     #$0C
LBE7C:  tay
        lda     $7D1D,y
LBE80:  sta     $064D
        lda     $06B2
        cmp     #$01
        bne     LBEAE
        lda     $064D
        cmp     #$0B
        bne     LBE96
        lda     #$02
        sta     $06B2
LBE96:  lda     $064D
        cmp     #$1D
        bne     LBEA2
        lda     #$02
        sta     $06B2
LBEA2:  lda     $064D
        cmp     #$29
        bne     LBEAE
        lda     #$02
        sta     $06B2
LBEAE:  lda     $06B2
        cmp     #$02
        bcc     LBEE4
        lda     $06C1
        bne     LBECF
        ldy     $06B2
        cpy     #$0E
        bne     LBEC6
        lda     #$01
        sta     $06BF
LBEC6:  lda     $7F7C,y
        inc     $06B2
        clv
        bvc     LBEE1
LBECF:  ldy     $06B2
        cpy     #$17
        bne     LBEDB
        lda     #$01
        sta     $06BF
LBEDB:  lda     $7F8C,y
        inc     $06B2
LBEE1:  clv
        bvc     LBEE7
LBEE4:  lda     $064D
LBEE7:  tay
        jsr     L89B7
LBEEB:  lda     $06BF
        bne     LBF18
        inc     $06A5
        lda     $06A7
        bne     LBF00
        lda     $06A5
        cmp     #$7C
        clv
        bvc     LBF11
LBF00:  cmp     #$01
        bne     LBF0C
        lda     $06A5
        cmp     #$7C
        clv
        bvc     LBF11
LBF0C:  lda     $06A5
        cmp     #$B6
LBF11:  bcc     LBF18
        lda     #$01
        sta     $06BF
LBF18:  lda     $06BF
        beq     LBF40
        lda     #$00
        sta     $06A5
        lda     #$1E
        sta     $43
        lda     #$00
        jsr     LE659
        lda     #$00
        sta     $35
        sta     $36
        inc     $06A7
        lda     $06A7
        cmp     #$03
        bcc     LBF40
        lda     #$00
        sta     $06A7
LBF40:  rts

LBF41:  lda     $069B,x
        beq     LBF47
        rts

LBF47:  lda     L0008
        bne     LBF87
        lda     $77,x
        beq     LBF87
        lda     $35,x
        bne     LBF87
        lda     $0F
        and     #$7F
        bne     LBF87
        lda     $06B5,x
        bne     LBF87
        inc     $06B7,x
        lda     $06B7,x
        cmp     $06BB,x
        bcc     LBF87
        txa
        asl     a
        tay
        lda     $30,y
        cmp     #$30
        bne     LBF87
        lda     $31,y
        cmp     #$32
        bcc     LBF87
        lda     #$01
        sta     $06B5,x
        lda     #$00
        sta     $06B9,x
        sta     $06BD,x
LBF87:  rts

LBF88:  lda     $06B5,x
        bne     LBF8E
        rts

LBF8E:  inc     $06BD,x
        lda     $06BD,x
        cmp     #$07
        bcs     LBF99
        rts

LBF99:  lda     #$00
        sta     $06BD,x
        lda     $06B9,x
        cmp     #$44
        beq     LBFF4
        cpx     #$00
        bne     LBFAE
        lda     #$00
        clv
        bvc     LBFB0
LBFAE:  lda     #$01
LBFB0:  sta     $06A4
        inc     $06B9,x
        lda     $06B9,x
        tay
        lda     LC0A8,y
        tay
        jsr     L89B7
        lda     $06B9,x
        cmp     #$63
        bne     LBFD2
        lda     #$00
        sta     $06B5,x
        lda     #$F0
        sta     $06BB,x
LBFD2:  lda     $06B9,x
        cmp     #$8B
        bne     LBFE3
        lda     #$00
        sta     $06B5,x
        lda     #$F0
        sta     $06BB,x
LBFE3:  lda     $06B9,x
        cmp     #$B3
        bne     LBFF4
        lda     #$00
        sta     $06B5,x
        lda     #$F0
        sta     $06BB,x
LBFF4:  lda     $77,x
        bne     LC017
        cpx     #$00
        bne     LC00B
        lda     $06B9,x
        cmp     #$64
        bcs     LC008
        lda     #$64
        sta     $06B9,x
LC008:  clv
        bvc     LC017
LC00B:  lda     $06B9,x
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

LC028:  .byte   $2F
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
LC0A8:  brk
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
        eor     L0045
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
        .byte   $15
LC0FF:  ora     $04
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
LC15C:  ldx     #$00
        lda     L0008
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

LC1BA:  lda     L0008
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

LC247:  ldx     #$00
        lda     L0008
        cmp     #$00
        bne     LC251
        ldx     #$01
LC251:  lda     L0008
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
        ldy     LBA76,x
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
        lda     L0008
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

LC564:  lda     L0008
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

LC68F:  lda     #$B0
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

LC916:  jsr     LCA1A
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
LCA2C:  lda     L9E8C,x
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

LCA62:  lda     $06A8
        and     #$01
        bne     LCA75
        lda     #$EF
        sta     L0008
        lda     #$FB
        jmp     LCAA9

        clv
        bvc     LCA8C
LCA75:  lda     #$EE
        sta     L0008
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
        sta     L0008
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
        sta     L0008
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
        .byte   $01
LCB42:  lda     L0008
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
        asl     L0008
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
LCD72:  bne     LCDC3
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
        lda     L0008
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
        lda     L0008
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

LD5B8:  php
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

LD5CC:  sta     $04
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

LD5E4:  sta     $04
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

LD633:  sta     $04
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

LD6DB:  lda     $25
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
        lda     L0008
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
LD8BD:  lda     L0008
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
LDB84:  cpx     L8060
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
        beq     LDC65
        lda     ($DA),y
LDBFE:  cpy     L8C25
        cmp     $09,x
        pla
        adc     $4825
        .byte   $DA
        beq     LDC0A
LDC0A:  adc     LB16D
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
LDC65:  pha
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
LDC84:  cpx     L8060
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
        sta     L8D44
        .byte   $92
        sta     L8D8D
        sta     L8D49
        sta     L8D00
        sta     LDBD6
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
LDD66:  eor     #$49
        eor     #$00
        adc     #$69
        adc     #$69
LDD6E:  adc     #$44
        adc     #$69
        eor     #$49
LDD74:  eor     #$49
        .byte   $49
LDD77:  eor     #$49
        .byte   $49
LDD7A:  .byte   $FF
        brk
        brk
        eor     ($A0,x)
        cpx     #$E9
        .byte   $F7
        .byte   $DB
        brk
LDD84:  cpx     L8060
        cpy     #$00
        brk
        .byte   $FF
        brk
        brk
        .byte   $09
LDD8E:  .byte   $0C
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
LE084:  cpx     L8060
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
LE0F9:  lda     L0008
        cmp     #$FB
        bne     LE102
        jsr     LC391
LE102:  lda     L0008
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
LE145:  ldx     L0045
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
LE228:  lda     L0008
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
LE293:  ldx     L0045
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
        ldy     L0045
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
LE35B:  ldy     L0045
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
        ldx     L0045
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
        ldy     L0045
        lda     LE4E8,y
        sta     $4C
        ldy     L0045
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
LE4EE:  lda     L0008
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
        ldy     L0045
        lda     LE4E8,y
        sta     $4C
        ldy     L0045
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

LE661:  sei
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

LE74E:  .byte   $82
LE74F:  ora     ($B6),y
        ora     ($88),y
        .byte   $12
        clv
        .byte   $12
LE756:  .byte   $02
LE757:  ora     $1102
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
LE77E:  stx     $1B
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
        .byte   $E9
LEA0A:  .byte   $03
        cmp     #$A5
        bcs     LEA11
        lda     #$80
LEA11:  sta     $0663,y
LEA14:  rts

LEA15:  bit     $0B
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
        lda     L0008
        bne     LEB42
        ldx     #$00
LEB36:  lda     $77,x
        beq     LEB3D
        jsr     LEB5C
LEB3D:  inx
        cpx     #$02
        bne     LEB36
LEB42:  ldx     #$00
        lda     L0008
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
        .byte   $8D
LED67:  .byte   $FB
        php
        .byte   $A0
LED6A:  brk
LED6B:  lda     LECF9,y
        tax
        lda     $08FB,x
        sta     $096E,y
        jsr     LED09
        iny
LED79:  cpy     #$0B
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
        .byte   $DD
        pha
LF029:  php
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

LF105:  lda     $75,x
        asl     a
        adc     #$06
        tay
        jsr     LF14C
        jsr     LF17D
        lda     #$00
        jsr     LEE7C
        lda     #$01
        jsr     LEE7C
LF11B:  ldy     #$00
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
LFD78:  brk
        brk
        brk
LFD7B:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFF20:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFF31:  brk
LFF32:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFF53:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
