; da65 V2.19 - Git 2fa92f9
; Created:    2026-11-27 00:53:08
; Input file: bank0.bin
; Page:       1


        .setcpu "6502"

L0018           := $0018
L0055           := $0055
L0080           := $0080
L00FF           := $00FF
L0101           := $0101
L0103           := $0103
L0113           := $0113
L0123           := $0123
L02FF           := $02FF
L0381           := $0381
L0581           := $0581
L06FF           := $06FF
L0AFF           := $0AFF
L0CFF           := $0CFF
L0EFF           := $0EFF
L2014           := $2014
L2020           := $2020
L2031           := $2031
L2032           := $2032
L2045           := $2045
L204C           := $204C
L2052           := $2052
L2059           := $2059
L20FF           := $20FF
L2221           := $2221
L2920           := $2920
L3032           := $3032
L3120           := $3120
L3229           := $3229
L3420           := $3420
L3720           := $3720
L38FF           := $38FF
L3B44           := $3B44
L4120           := $4120
L4145           := $4145
L4147           := $4147
L4148           := $4148
L414C           := $414C
L4150           := $4150
L4220           := $4220
L4320           := $4320
L4341           := $4341
L4353           := $4353
L4445           := $4445
L4542           := $4542
L4544           := $4544
L4547           := $4547
L454B           := $454B
L454C           := $454C
L454D           := $454D
L4620           := $4620
L4645           := $4645
L464F           := $464F
L4820           := $4820
L4843           := $4843
L4854           := $4854
L4920           := $4920
L4944           := $4944
L4946           := $4946
L494C           := $494C
L494D           := $494D
L4A20           := $4A20
L4C1F           := $4C1F
L4C20           := $4C20
L4C50           := $4C50
L4C98           := $4C98
L4D00           := $4D00
L4D19           := $4D19
L4D20           := $4D20
L4E41           := $4E41
L4E45           := $4E45
L4E49           := $4E49
L4E4D           := $4E4D
L4E53           := $4E53
L4F42           := $4F42
L4F43           := $4F43
L4F44           := $4F44
L4F46           := $4F46
L4F47           := $4F47
L4F4A           := $4F4A
L4F4C           := $4F4C
L4F4D           := $4F4D
L4F4E           := $4F4E
L4F52           := $4F52
L4F54           := $4F54
L4F59           := $4F59
L5020           := $5020
L5220           := $5220
L5242           := $5242
L5247           := $5247
L524B           := $524B
L5254           := $5254
L5320           := $5320
L5355           := $5355
L5420           := $5420
L5441           := $5441
L5449           := $5449
L544C           := $544C
L5453           := $5453
L5546           := $5546
L554C           := $554C
L554E           := $554E
L554F           := $554F
L5554           := $5554
L564F           := $564F
L5720           := $5720
L574F           := $574F
L5845           := $5845
L5920           := $5920
L5941           := $5941
L5942           := $5942
L594C           := $594C
L6D00           := $6D00
LC680           := $C680
LC8FF           := $C8FF
LCC40           := $CC40
LCCFF           := $CCFF
LD480           := $D480
LE180           := $E180
LF854           := $F854
LFE80           := $FE80
LFF20           := $FF20
LFF29           := $FF29
LFF32           := $FF32
LFF33           := $FF33
LFF45           := $FF45
LFF4C           := $FF4C
LFF53           := $FF53
L8000:  brk
L8001:  brk
L8002:  brk
L8003:  brk
        brk
        brk
        brk
        brk
        beq     L800A
L800A:  .byte   $44
        .byte   $44
        beq     L800E
L800E:  .byte   $44
        .byte   $44
        cpx     $00
        .byte   $8C
        .byte   $80
L8014:  lsr     $4C00
        rti

        cpy     $CC00
        brk
        cpy     $CC00
        brk
        .byte   $E2
        brk
        iny
        .byte   $80
L8024:  stx     $4400
        cpy     #$E8
        brk
        dey
        cpy     #$2E
        brk
        cpy     $40
        jmp     (L8C00)

L8033:  rti

L8034:  jmp     (L8C00)

        rti

        dec     $00
        jmp     LC680

        brk
        jmp     LFE80

        rti

L8042:  .byte   $FE
L8043:  rti

        .byte   $FF
        rti

        .byte   $FF
        rti

        .byte   $FF
        rti

        .byte   $FF
        rti

        .byte   $FF
        rti

        brk
        eor     ($00,x)
        eor     ($06,x)
        eor     ($23,x)
        eor     ($40,x)
        eor     ($A3,x)
        eor     ($D6,x)
        eor     ($F6,x)
        eor     ($08,x)
        .byte   $42
        .byte   $32
        .byte   $42
L8062:  .byte   $55
L8063:  .byte   $42
        tax
        .byte   $42
        .byte   $FF
        .byte   $42
        brk
        .byte   $43
        eor     $43,x
        tax
        .byte   $43
        .byte   $AB
        .byte   $43
        .byte   $E6
L8071:  .byte   $43
L8072:  .byte   $2D
L8073:  .byte   $44
        .byte   $74
        .byte   $44
        adc     $44,x
        sta     $C344,x
        .byte   $44
        inc     $44
        ora     $3445
        eor     $35
        eor     $4C
        eor     $5D
        eor     $6F
        eor     $C5
        eor     $1B
        lsr     $3B
        lsr     $5B
        lsr     $65
        lsr     $B4
        lsr     $12
        .byte   $47
        .byte   $13
        .byte   $47
        lsr     LA947,x
        .byte   $47
        .byte   $DB
        .byte   $47
        rol     $48
        bit     $7448
        pha
        .byte   $B2
        pha
        inx
        pha
        and     $5949
        eor     #$71
        eor     #$9C
        eor     #$D0
        eor     #$EC
        eor     #$ED
        eor     #$12
        lsr     a
        .byte   $37
        lsr     a
        .byte   $4B
        lsr     a
        .byte   $5F
        lsr     a
        bcs     L810C
        cmp     ($4A),y
        .byte   $F2
        lsr     a
        .byte   $13
        .byte   $4B
        .byte   $34
        .byte   $4B
        eor     $4B,x
        .byte   $74
        .byte   $4B
        lda     $4B
        dec     $4B,x
        .byte   $F7
        .byte   $4B
        clc
        jmp     L4C1F

        rol     $4C
        .byte   $5F
        .byte   $4C
        tya
L80DD:  jmp     $4CCD

        .byte   $D7
        jmp     L4D19

        .byte   $5B
        eor     $4D89
        .byte   $B7
        eor     $4F53
        lda     #$4F
        .byte   $FF
        .byte   $4F
        .byte   $FF
        .byte   $4F
        .byte   $FF
        .byte   $4F
        .byte   $FF
        .byte   $4F
        brk
        bvc     L8109
        bvc     L811B
        .byte   $50
L80FC:  rol     a:$51,x
        brk
L8100:  sty     $14,x
L8102:  brk
L8103:  jsr     L00FF
        stx     $1D
        .byte   $E0
L8109:  .byte   $53
L810A:  .byte   $43
        .byte   $4F
L810C:  .byte   $52
        eor     $20
        .byte   $FF
        asl     $1E
        cpx     #$4C
L8114:  eor     #$4E
        eor     $53
        jsr     L82FF
L811B:  bpl     L80DD
        lsr     L5845
        .byte   $54
        .byte   $FF
        brk
        ldx     $1D,y
        beq     L817A
        .byte   $43
        .byte   $4F
        .byte   $52
        eor     $20
        .byte   $FF
        rol     $1E,x
        .byte   $F0
L8130:  jmp     L4E49

        eor     $53
        jsr     LCCFF
        bpl     L810A
        .byte   $4E
L813B:  eor     $58
        .byte   $54
        .byte   $FF
        brk
L8140:  ldy     #$16
        bcs     L8164
        jsr     L2020
        jsr     L2020
        jsr     L2020
        .byte   $FF
        jsr     LB017
        jsr     L2020
L8154:  jsr     L2020
        jsr     L2020
        jsr     LA0FF
        .byte   $17
        bcs     L8180
        jsr     L2020
        .byte   $20
L8164:  jsr     L2020
        jsr     LFF20
        jsr     LB018
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     LA0FF
        clc
L817A:  bcs     L819C
        .byte   $20
L817D:  jsr     L2020
L8180:  jsr     L2020
        jsr     LFF20
        jsr     LB019
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     LA0FF
        ora     $20B0,y
        jsr     L2020
        .byte   $20
L819C:  jsr     L2020
        jsr     LFF20
        brk
        ldx     #$16
        bcs     L81EA
        .byte   $4F
        eor     L4C50
        eor     $54
        eor     L00FF
        ldx     #$17
        bcs     L81E5
        bmi     L81D5
        jmp     L4E49

        eor     $53
        .byte   $FF
        ldx     #$18
        bcs     L8213
        .byte   $4F
        jsr     L4F47
        jsr     L4F54
        .byte   $FF
        ldy     #$19
        bcs     L8219
        eor     $58
        .byte   $54
        jsr     L4F52
        eor     $4E,x
        .byte   $44
        .byte   $FF
L81D5:  brk
        ldx     #$16
        bcs     L821C
        .byte   $4F
        lsr     L5355
        jsr     L4F46
        .byte   $52
        .byte   $FF
        bit     $17
L81E5:  bcs     L8207
        jmp     L574F

L81EA:  .byte   $FF
        ldy     $17
        bcs     L823F
        eor     $5A,x
        .byte   $5A
        jmp     LFF45

        brk
        rol     L0018
        bcs     L8246
        eor     #$4E
        eor     $53
        .byte   $FF
        rol     $19
        bcs     L824F
        eor     $46
        .byte   $54
        .byte   $FF
L8207:  brk
        ldy     #$16
        bcs     L8250
        eor     #$46
        lsr     $49
        .byte   $43
        eor     $4C,x
L8213:  .byte   $54
        eor     LA0FF,y
        .byte   $17
        .byte   $B0
L8219:  eor     #$4E
        .byte   $43
L821C:  .byte   $52
        eor     $41
        .byte   $53
        eor     #$4E
        .byte   $47
        .byte   $FF
        jsr     LB019
        .byte   $47
        .byte   $4F
        .byte   $4F
        .byte   $44
        jsr     L554C
        .byte   $43
        .byte   $4B
        .byte   $FF
        brk
        jsr     LB017
        jsr     L4F4E
        .byte   $57
        jsr     L5254
        eor     L20FF,y
L823F:  clc
        bcs     L8262
        jsr     L5420
        pha
L8246:  eor     #$53
        .byte   $FF
        jsr     LB019
        jsr     L5220
L824F:  .byte   $4F
L8250:  eor     $4E,x
        .byte   $44
        .byte   $FF
        brk
        dey
        .byte   $12
        bcs     L827E
        rol     $26
        rol     $26
        rol     $26
        rol     $26
        .byte   $27
L8262:  .byte   $FF
        php
        .byte   $13
        bcs     L828F
        bvc     L82BB
        eor     $50
        eor     ($52,x)
        eor     $20
        and     #$FF
        dey
        .byte   $13
        bcs     L829D
        jsr     L4620
        .byte   $4F
        .byte   $52
        jsr     L2020
        .byte   $29
L827E:  .byte   $FF
        php
        .byte   $14
        bcs     L82AB
        jsr     L4F42
        lsr     L5355
        jsr     L2920
        .byte   $FF
        dey
        .byte   $14
L828F:  bcs     L82B9
        jsr     L4F52
        eor     $4E,x
        .byte   $44
        jsr     L2920
        .byte   $FF
        php
        .byte   $15
L829D:  bcs     L82C9
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     a:L00FF
        clv
L82AB:  .byte   $12
        bcs     L82D3
        rol     $26
        rol     $26
        rol     $26
        rol     $26
        .byte   $27
        .byte   $FF
        sec
L82B9:  .byte   $13
        .byte   $B0
L82BB:  plp
        bvc     L8310
        eor     $50
        eor     ($52,x)
        eor     $20
        and     #$FF
        clv
        .byte   $13
        .byte   $B0
L82C9:  plp
        jsr     L4620
        .byte   $4F
        .byte   $52
        jsr     L2020
        .byte   $29
L82D3:  .byte   $FF
        sec
        .byte   $14
        bcs     L8300
        jsr     L4F42
        lsr     L5355
        jsr     L2920
        .byte   $FF
        clv
        .byte   $14
        bcs     L830E
        jsr     L4F52
        eor     $4E,x
        .byte   $44
        jsr     L2920
        .byte   $FF
        sec
        ora     $B0,x
        rol     a
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     a:L00FF
L82FF:  brk
L8300:  dey
        .byte   $12
        bcs     L8329
        rol     $26
        rol     $26
        rol     $26
        rol     $26
        .byte   $27
        .byte   $FF
L830E:  php
        .byte   $13
L8310:  bcs     L833A
        jsr     L2020
        jsr     L2020
        jsr     L2920
        .byte   $FF
        dey
        .byte   $13
        bcs     L8348
        jsr     L2020
        jsr     L2020
        jsr     L2920
L8329:  .byte   $FF
        php
        .byte   $14
        bcs     L8356
        jsr     L2020
        jsr     L2020
        jsr     L2920
        .byte   $FF
        dey
        .byte   $14
L833A:  bcs     L8364
        jsr     L2020
        jsr     L2020
        jsr     L2920
        .byte   $FF
        php
        .byte   $15
L8348:  bcs     L8374
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     a:L00FF
        clv
L8356:  .byte   $12
        bcs     L837E
        rol     $26
        rol     $26
        rol     $26
        rol     $26
        .byte   $27
        .byte   $FF
        sec
L8364:  .byte   $13
        bcs     L838F
        jsr     L2020
        jsr     L2020
        jsr     L2920
        .byte   $FF
        clv
        .byte   $13
        .byte   $B0
L8374:  plp
        jsr     L2020
        jsr     L2020
        jsr     L2920
L837E:  .byte   $FF
        sec
        .byte   $14
        bcs     L83AB
        jsr     L2020
        jsr     L2020
        jsr     L2920
        .byte   $FF
        clv
        .byte   $14
L838F:  bcs     L83B9
        jsr     L2020
        jsr     L2020
        jsr     L2920
        .byte   $FF
        sec
        ora     $B0,x
        rol     a
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     a:L00FF
        brk
L83AB:  jsr     LB017
        jsr     L5420
        .byte   $52
        eor     L5420,y
        .byte   $4F
        .byte   $FF
        ldy     #$17
L83B9:  bcs     L83DB
        jsr     L5720
        .byte   $4F
        .byte   $52
        .byte   $4B
        .byte   $FF
        jsr     LB018
        jsr     L4120
        .byte   $52
        .byte   $4F
        eor     $4E,x
        .byte   $44
        .byte   $FF
        ldy     #$18
        bcs     L83F2
        jsr     L4854
        eor     $53
        eor     L00FF
        .byte   $20
        .byte   $19
L83DB:  bcs     L83FD
        jsr     L5242
        eor     #$43
        .byte   $4B
        .byte   $53
        .byte   $FF
        brk
        dey
        .byte   $12
        bcs     L840F
        rol     $26
        rol     $26
        rol     $26
        rol     $26
L83F2:  .byte   $27
        .byte   $FF
        php
        .byte   $13
        bcs     L8420
        jsr     L4E45
        .byte   $44
        .byte   $20
L83FD:  .byte   $4F
        lsr     $20
        and     #$FF
        dey
        .byte   $13
        bcs     L842E
        jsr     L4F42
        lsr     L5355
        jsr     L2920
L840F:  .byte   $FF
        php
        .byte   $14
        bcs     L843C
        jsr     L4F52
        eor     $4E,x
        .byte   $44
        jsr     L2920
        .byte   $FF
        dey
        .byte   $14
L8420:  bcs     L844C
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     a:L00FF
        clv
L842E:  .byte   $12
        bcs     L8456
        rol     $26
        rol     $26
        rol     $26
        rol     $26
        .byte   $27
        .byte   $FF
        sec
L843C:  .byte   $13
        bcs     L8467
        jsr     L4E45
        .byte   $44
        jsr     L464F
        jsr     LFF29
        clv
        .byte   $13
        .byte   $B0
L844C:  plp
        jsr     L4F42
        lsr     L5355
        jsr     L2920
L8456:  .byte   $FF
        sec
        .byte   $14
        bcs     L8483
        jsr     L4F52
        eor     $4E,x
        .byte   $44
        jsr     L2920
        .byte   $FF
        clv
        .byte   $14
L8467:  bcs     L8493
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     a:L00FF
        brk
        ldy     #$16
        bcs     L84D0
        eor     ($54,x)
        .byte   $43
        pha
        jsr     L554F
        .byte   $54
        .byte   $FF
        .byte   $A6
L8483:  .byte   $17
        bcs     L84CC
        .byte   $4F
        .byte   $52
        .byte   $FF
        ldy     L0018
        bcs     L84CE
        .byte   $44
        .byte   $44
        eor     $44
        .byte   $FF
        .byte   $A4
L8493:  ora     $42B0,y
        .byte   $52
        eor     #$43
        .byte   $4B
        .byte   $53
        .byte   $FF
        brk
        jsr     LB017
        .byte   $42
        eor     $57
        eor     ($52,x)
        eor     $20
        .byte   $4F
        lsr     L00FF
        jsr     LB018
        eor     ($44,x)
        lsr     $41,x
        lsr     $4943
        lsr     $FF47
        jsr     LB019
        jsr     L4C20
        eor     #$4E
        eor     $53
        .byte   $FF
        brk
        jsr     LB017
        jsr     L4542
        .byte   $53
        .byte   $54
        .byte   $FF
L84CC:  .byte   $20
        clc
L84CE:  bcs     L84F0
L84D0:  bvc     L851E
        eor     ($59,x)
        eor     $52
        .byte   $53
        .byte   $FF
        jsr     LB019
        jsr     L4E49
        .byte   $49
L84DF:  .byte   $54
        eor     #$41
        jmp     LFF53

        brk
        jsr     LB017
        jsr     L554E
        eor     L4542
        .byte   $52
L84F0:  jsr     LFF32
        jsr     LB018
        jsr     L4C50
        eor     ($59,x)
        eor     $52
        .byte   $53
        .byte   $FF
        jsr     LB019
        jsr     L4E49
        eor     #$54
        eor     #$41
        jmp     LFF53

        brk
        jsr     LB017
        jsr     L554E
        eor     L4542
        .byte   $52
        jsr     LFF33
        jsr     LB018
        .byte   $20
L851E:  bvc     L856C
        eor     ($59,x)
L8522:  eor     $52
        .byte   $53
        .byte   $FF
        jsr     LB019
        jsr     L4E49
        eor     #$54
        eor     #$41
        jmp     LFF53

L8533:  brk
        brk
        ldy     #$17
        bcs     L8559
        jsr     L5920
        .byte   $4F
        eor     L00FF,x
        ldy     #$18
        bcs     L8563
        jsr     L4944
        .byte   $44
        jsr     L5449
        .byte   $FF
        brk
        .byte   $82
        bpl     L84DF
        jsr     L5920
        .byte   $4F
        eor     $20,x
        .byte   $44
        eor     #$44
        .byte   $20
L8559:  eor     #$54
        .byte   $FF
        brk
        ldx     $10,y
        bcc     L8581
        .byte   $20
        .byte   $20
L8563:  eor     L554F,y
        jsr     L4944
        .byte   $44
        .byte   $20
        .byte   $49
L856C:  .byte   $54
        .byte   $FF
        brk
        .byte   $02
        bpl     L8522
        and     $26
        rol     $26
        rol     $26
L8578:  rol     $26
        rol     $26
        rol     $26
        .byte   $27
        .byte   $FF
        .byte   $82
L8581:  bpl     L8533
        plp
        jsr     L4946
        .byte   $4E
        .byte   $49
L8589:  .byte   $53
        pha
        eor     #$4E
        .byte   $47
        jsr     LFF29
        .byte   $02
        ora     ($B0),y
        plp
        lsr     $49
        .byte   $52
        .byte   $53
        .byte   $54
        jsr     L4F42
        lsr     L5355
        and     #$FF
        .byte   $82
        ora     ($B0),y
        plp
        jsr     L4920
        .byte   $53
        jsr     L3032
        bmi     L85DF
        jsr     L2920
        .byte   $FF
        .byte   $02
        .byte   $12
        bcs     L85E1
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     a:L00FF
        sec
        bpl     L8578
        and     $26
        rol     $26
        rol     $26
L85CE:  rol     $26
        rol     $26
        rol     $26
        .byte   $27
        .byte   $FF
        clv
        bpl     L8589
        plp
        jsr     L4946
        .byte   $4E
        .byte   $49
L85DF:  .byte   $53
        pha
L85E1:  eor     #$4E
        .byte   $47
        jsr     LFF29
        sec
        ora     ($B0),y
        plp
        lsr     $49
        .byte   $52
        .byte   $53
        .byte   $54
        jsr     L4F42
        lsr     L5355
        and     #$FF
        clv
        ora     ($B0),y
        plp
        jsr     L4920
        .byte   $53
        jsr     L3032
        bmi     L8635
        jsr     L2920
        .byte   $FF
        sec
        .byte   $12
        bcs     L8637
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
L8618:  bit     a:L00FF
        sty     $10
        bcc     L8661
        .byte   $4F
        lsr     L5355
        jsr     L4F46
        .byte   $52
        .byte   $FF
        asl     $11
        bcc     L864C
        jmp     L574F

        .byte   $FF
        stx     $11
        bcc     L8684
        .byte   $55
L8635:  .byte   $5A
        .byte   $5A
L8637:  jmp     LFF45

        brk
        tsx
        bpl     L85CE
        .byte   $42
        .byte   $4F
        lsr     L5355
        jsr     L4F46
        .byte   $52
        .byte   $FF
        .byte   $3A
        ora     ($90),y
        .byte   $20
L864C:  jmp     L574F

        .byte   $FF
        tsx
        ora     ($90),y
        bvc     L86AA
        .byte   $5A
        .byte   $5A
        jmp     LFF45

        brk
        ldy     L9013,x
        .byte   $53
        .byte   $54
        .byte   $41
L8661:  .byte   $54
        .byte   $53
        .byte   $FF
        brk
        .byte   $14
        bpl     L8618
        and     $26
        rol     $26
        rol     $26
        rol     $26
        rol     $26
        rol     $26
        rol     $26
        rol     $26
        rol     $26
        rol     $26
        rol     $27
        .byte   $FF
        sty     $10,x
        bcs     L86AB
        .byte   $50
L8684:  .byte   $52
        eor     $53
        .byte   $53
        jsr     L2031
        bvc     L86D9
        eor     ($59,x)
        eor     $52
        jsr     L5453
        eor     ($52,x)
        .byte   $54
        and     #$FF
        .byte   $14
        ora     ($B0),y
        rol     a
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
L86AA:  .byte   $2B
L86AB:  .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     a:L00FF
        bpl     L86C6
        bcs     L86DD
        rol     $26
        rol     $26
        rol     $26
        rol     $26
        rol     $26
        rol     $26
        rol     $26
L86C6:  rol     $26
        rol     $26
        rol     $26
        rol     $26
        rol     $26
        rol     $27
        .byte   $FF
        bcc     L86E5
        bcs     L86FF
        bvc     L872B
L86D9:  eor     $53
        .byte   $53
        .byte   $20
L86DD:  and     ($20),y
        .byte   $4F
        .byte   $52
        jsr     L2032
        .byte   $50
L86E5:  jmp     L5941

        eor     $52
        jsr     L5453
        eor     ($52,x)
        .byte   $54
        and     #$FF
        bpl     L8705
        bcs     L8720
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
L86FF:  .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
L8704:  .byte   $2B
L8705:  .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     a:L00FF
        brk
        .byte   $12
        .byte   $13
        bcc     L8778
        rts

        .byte   $FF
        stx     $13,y
        bcc     L877C
        .byte   $FF
        asl     $14,x
L8720:  bcc     L8780
        .byte   $FF
        asl     L9015
        bvc     L8763
        eor     $53
        .byte   $53
L872B:  .byte   $FF
        .byte   $0C
        asl     $90,x
        .byte   $42
        eor     $54,x
        .byte   $54
        .byte   $4F
        lsr     $10FF
        .byte   $17
        bcc     L878E
        .byte   $4F
        .byte   $FF
        .byte   $0C
        clc
        bcc     L877B
        .byte   $4F
        .byte   $54
        eor     ($54,x)
        eor     L00FF
        .byte   $0C
        ora     $5090,y
        eor     #$45
        .byte   $43
        eor     L00FF
        php
        .byte   $1A
        bcc     L878C
        bmi     L8775
        .byte   $44
        eor     $47
        .byte   $3B
        eor     $45
        .byte   $53
        .byte   $FF
        brk
        .byte   $92
        .byte   $13
        bcc     L87C3
        rts

L8763:  .byte   $FF
        asl     $14,x
        bcc     L87C7
        .byte   $FF
        stx     $14,y
        bcc     L87CB
        .byte   $FF
        asl     L9016
        .byte   $3B
        .byte   $4F
        .byte   $54
        .byte   $41
L8775:  .byte   $54
        eor     L00FF
L8778:  asl     L9017
L877B:  .byte   $50
L877C:  eor     #$45
        .byte   $43
        .byte   $45
L8780:  .byte   $FF
        bpl     L879B
        bcc     L87D9
        .byte   $4F
        .byte   $FF
        asl     L9019
        lsr     $49
L878C:  .byte   $54
        .byte   $FF
L878E:  asl     L901A
        pha
        eor     $52
        eor     $5B
        .byte   $5B
        .byte   $5C
        .byte   $FF
        txs
        .byte   $1A
L879B:  bcc     L87FA
        .byte   $FF
        .byte   $1A
        .byte   $1B
        bcc     L87FF
        .byte   $FF
        txs
        .byte   $1B
        bcc     L8804
        .byte   $FF
        brk
        .byte   $12
        .byte   $14
        bcc     L880E
        rts

        .byte   $FF
        stx     $14,y
        bcc     L8812
        .byte   $FF
        asl     $15,x
        bcc     L8816
        .byte   $FF
        .byte   $0C
        .byte   $17
        bcc     L87F8
        .byte   $4F
        .byte   $54
        eor     ($54,x)
        eor     L00FF
L87C3:  asl     L9018
        .byte   $4F
L87C7:  lsr     LFF45
        .byte   $0E
L87CB:  ora     $4D90,y
        .byte   $4F
        .byte   $3B
        eor     L00FF
        asl     L901A
        .byte   $54
        eor     #$4D
        .byte   $45
L87D9:  .byte   $FF
        brk
        asl     a
        .byte   $13
        bcc     L882D
        .byte   $4F
        .byte   $57
        jsr     L5355
        eor     L00FF
        asl     a
        .byte   $14
        bcc     L8834
        .byte   $4F
        eor     L5453,y
        eor     #$43
        .byte   $4B
        .byte   $FF
        asl     a
        ora     $90,x
        .byte   $54
        .byte   $4F
        .byte   $FF
L87F8:  asl     a
        clc
L87FA:  bcc     L8849
        .byte   $4F
        lsr     $45,x
L87FF:  .byte   $FF
        asl     a
        ora     $5090,y
L8804:  eor     #$45
        .byte   $43
        eor     L00FF
        asl     a
        .byte   $1A
        bcc     L8855
        .byte   $45
L880E:  .byte   $3B
        eor     $5B
        .byte   $5B
L8812:  .byte   $5B
        .byte   $5B
        .byte   $5C
        .byte   $FF
L8816:  txs
        .byte   $1A
        bcc     L8877
        .byte   $FF
        .byte   $1A
        .byte   $1B
        bcc     L887C
        .byte   $FF
        txs
        .byte   $1B
        bcc     L8881
        .byte   $FF
        brk
        .byte   $0C
        .byte   $13
        bcs     L884A
        .byte   $FF
        brk
        .byte   $0E
L882D:  .byte   $13
        bcc     L8880
        eor     $4C,x
        .byte   $4C
        .byte   $FF
L8834:  .byte   $0C
        .byte   $14
        bcc     L887C
        .byte   $4F
        .byte   $57
        lsr     $4F20
        lsr     L0AFF
        ora     $90,x
        lsr     a
        .byte   $4F
        eor     L5453,y
        eor     #$43
L8849:  .byte   $4B
L884A:  .byte   $FF
        .byte   $0C
        asl     $90,x
        .byte   $54
        .byte   $4F
        jsr     L3B44
        .byte   $4F
        .byte   $50
L8855:  .byte   $FF
        .byte   $0C
        .byte   $17
        bcc     L88AA
        eor     #$45
        .byte   $43
        eor     L00FF
        .byte   $1A
        .byte   $1A
        bcc     L88C0
        .byte   $FF
        txs
        .byte   $1A
        bcc     L88C5
        .byte   $FF
        .byte   $1A
        .byte   $1B
        bcc     L88CA
        .byte   $FF
        txs
        .byte   $1B
        bcc     L88CF
        .byte   $FF
        brk
        asl     L9013
L8877:  bvc     L88CE
        jmp     LFF4C

L887C:  .byte   $0C
        .byte   $14
        bcc     L88C4
L8880:  .byte   $4F
L8881:  .byte   $57
        lsr     $4F20
        lsr     L0AFF
        ora     $90,x
        lsr     a
        .byte   $4F
        eor     L5453,y
        eor     #$43
        .byte   $4B
        .byte   $FF
        .byte   $0C
        asl     $90,x
        .byte   $54
        .byte   $4F
        jsr     L3B44
        .byte   $4F
        .byte   $50
L889D:  .byte   $FF
        .byte   $0C
        .byte   $17
        bcc     L88F2
        eor     #$45
        .byte   $43
        eor     L00FF
        .byte   $1A
        .byte   $1B
        .byte   $90
L88AA:  eor     L9AFF,x
        .byte   $1B
        bcc     L890D
        .byte   $FF
        brk
        .byte   $0C
        .byte   $13
        bcc     L88FD
        .byte   $3B
        eor     $41
        .byte   $54
        .byte   $62
        .byte   $FF
        .byte   $0C
        .byte   $14
        bcc     L88E0
L88C0:  .byte   $4F
        lsr     L2045
L88C4:  .byte   $20
L88C5:  jsr     L0AFF
        ora     $90,x
L88CA:  jsr     L4C20
        .byte   $49
L88CE:  .byte   $4E
L88CF:  eor     $20
        jsr     L0CFF
        asl     $90,x
        lsr     $49
        jmp     L454C

        .byte   $44
        jsr     L0CFF
        .byte   $17
L88E0:  bcc     L8902
        jsr     L2020
        jsr     L00FF
        .byte   $0C
        .byte   $13
        bcc     L8932
        eor     #$4C
        jmp     L4445

        .byte   $FF
L88F2:  asl     L9014
        jmp     L4E49

        eor     L00FF
        php
        ora     $90,x
L88FD:  .byte   $44
        .byte   $49
L88FF:  .byte   $53
        eor     ($50,x)
L8902:  bvc     L8949
        eor     ($3B,x)
        .byte   $53
        .byte   $FF
        .byte   $0C
        asl     $90,x
        .byte   $20
        .byte   $20
L890D:  eor     ($4E,x)
        .byte   $44
        jsr     L0EFF
        .byte   $17
        bcc     L8965
        .byte   $54
        pha
        eor     $3B
        .byte   $FF
        asl     L9018
        jmp     L4E49

        eor     $53
        .byte   $FF
        asl     L9019
        .byte   $44
        .byte   $3B
        .byte   $4F
        .byte   $50
L892B:  .byte   $FF
        brk
        asl     L9013
        .byte   $59
        .byte   $4F
L8932:  eor     $3B,x
        .byte   $FF
        asl     L9014
        .byte   $47
        .byte   $4F
        eor     ($4C,x)
        .byte   $FF
        .byte   $0C
        ora     $90,x
        eor     #$53
        jsr     L4F54
        .byte   $FF
        asl     L9016
L8949:  lsr     $49
        jmp     LFF4C

        .byte   $0C
        .byte   $17
        bcc     L899E
        eor     #$4E
        eor     $53
        .byte   $62
        .byte   $FF
        brk
        ldy     #$1B
        ldy     #$48
        eor     #$47
        pha
        jsr     L4353
        .byte   $4F
        .byte   $52
L8965:  eor     L00FF
        jsr     LA01D
        .byte   $52
        .byte   $4F
        eor     $4E,x
        .byte   $44
        .byte   $FF
        brk
        jsr     LB017
        jsr     L2020
        pha
        .byte   $4F
        .byte   $57
        jsr     L2020
        jsr     L20FF
        clc
        bcs     L89A3
        jsr     L5420
        .byte   $4F
        jsr     L2020
        jsr     LFF20
        jsr     LB019
        jsr     L2020
        bvc     L89E1
        eor     ($59,x)
        jsr     L2020
        .byte   $FF
        brk
        .byte   $0E
        .byte   $13
L899E:  bcc     L89F0
        eor     $4C,x
        .byte   $4C
L89A3:  .byte   $FF
        .byte   $0C
        .byte   $14
        .byte   $90
L89A7:  .byte   $44
        .byte   $4F
        .byte   $57
        lsr     $4F20
        lsr     L0AFF
        ora     $90,x
        lsr     a
        .byte   $4F
        eor     L5453,y
        eor     #$43
        .byte   $4B
        .byte   $FF
        .byte   $0C
        asl     $90,x
        .byte   $54
        .byte   $4F
        jsr     L3B44
        .byte   $4F
        .byte   $50
L89C5:  .byte   $FF
        .byte   $0C
        .byte   $17
        bcc     L8A1A
        eor     #$45
        .byte   $43
        eor     L00FF
        brk
        stx     $1D
        cpx     #$53
        .byte   $43
        .byte   $4F
        .byte   $52
        eor     $20
        .byte   $FF
        asl     $1E
        cpx     #$4C
        eor     #$4E
        .byte   $45
L89E1:  .byte   $53
        jsr     L82FF
        bpl     L89A7
        lsr     L5845
        .byte   $54
        .byte   $FF
L89EC:  brk
        sty     L9014
L89F0:  eor     #$4E
        .byte   $53
        eor     $52
        .byte   $54
        .byte   $FF
        stx     L9015
        .byte   $43
        .byte   $4F
        eor     #$4E
        .byte   $FF
        bcc     L8A17
        bcc     L8A57
        .byte   $4F
        .byte   $FF
        txa
        .byte   $17
        bcc     L8A4C
        .byte   $4F
        lsr     $4954
        lsr     $4555
        .byte   $FF
        brk
        ldy     L9014,x
        eor     #$4E
L8A17:  .byte   $53
        eor     $52
L8A1A:  .byte   $54
        .byte   $FF
        ldx     L9015,y
        .byte   $43
        .byte   $4F
        eor     #$4E
        .byte   $FF
        cpy     #$16
        bcc     L8A7C
        .byte   $4F
        .byte   $FF
        tsx
        .byte   $17
        bcc     L8A71
        .byte   $4F
        lsr     $4954
        lsr     $4555
        .byte   $FF
        brk
        sty     L9014
        bvc     L8A8E
        eor     $53
        .byte   $53
        jsr     L8CFF
        ora     $90,x
        .byte   $53
        .byte   $54
        eor     ($52,x)
        .byte   $54
        .byte   $FF
        brk
        .byte   $BC
L8A4C:  .byte   $14
        bcc     L8A9F
        .byte   $52
        eor     $53
        .byte   $53
        jsr     LBCFF
        .byte   $15
L8A57:  bcc     L8AAC
        .byte   $54
        eor     ($52,x)
        .byte   $54
        .byte   $FF
        brk
        stx     $1D
        cpx     #$52
        .byte   $4F
        eor     $4E,x
        .byte   $44
        jsr     L3120
        .byte   $FF
        asl     $1E
        cpx     #$4E
        .byte   $4F
        .byte   $20
L8A71:  .byte   $42
        .byte   $4F
        lsr     L5355
        .byte   $FF
        ldx     #$1D
        cpx     #$52
        .byte   $4F
L8A7C:  eor     $4E,x
        .byte   $44
        jsr     L3420
        .byte   $FF
        asl     $E01E,x
        .byte   $32
        bmi     L8AB9
        bmi     L8ABB
        jsr     L4220
L8A8E:  .byte   $4F
        lsr     L5355
        .byte   $FF
        ldx     $E01D,y
        .byte   $52
        .byte   $4F
        eor     $4E,x
        .byte   $44
        jsr     L3720
        .byte   $FF
L8A9F:  .byte   $3A
        asl     $34E0,x
        bmi     L8AD5
        bmi     L8AD7
        jsr     L4220
        .byte   $4F
        .byte   $4E
L8AAC:  eor     $53,x
        .byte   $FF
        brk
        stx     $1D
        cpx     #$20
        jsr     L4920
        .byte   $4E
        .byte   $53
L8AB9:  eor     $52
L8ABB:  .byte   $54
        jsr     L2020
        .byte   $FF
        asl     $1E
        cpx     #$20
        jsr     L2020
        .byte   $43
        .byte   $4F
        eor     #$4E
        jsr     L2020
        jsr     L00FF
        ldx     $1D,y
        beq     L8AF5
L8AD5:  .byte   $20
        .byte   $20
L8AD7:  eor     #$4E
        .byte   $53
        eor     $52
        .byte   $54
        jsr     L2020
        .byte   $FF
        rol     $1E,x
        beq     L8B05
        jsr     L2020
        .byte   $43
        .byte   $4F
        eor     #$4E
        jsr     L2020
        jsr     L00FF
        stx     $1D
        .byte   $E0
L8AF5:  jsr     L4A20
        .byte   $4F
        eor     #$4E
        jsr     L4E49
        jsr     L2020
        .byte   $FF
        asl     $1E
        .byte   $E0
L8B05:  jsr     L4120
        lsr     L2059
        .byte   $54
        eor     #$4D
        eor     $20
        jsr     L00FF
        ldx     $1D,y
        beq     L8B37
        jsr     L4F4A
        eor     #$4E
        jsr     L4E49
        jsr     L2020
        .byte   $FF
        rol     $1E,x
        beq     L8B47
L8B27:  jsr     L4E41
        eor     L5420,y
        eor     #$4D
        eor     $20
        .byte   $20
        .byte   $FF
L8B33:  brk
        stx     $1D
        .byte   $E0
L8B37:  jsr     L2020
        bvc     L8B8E
        eor     $53
        .byte   $53
        jsr     L2020
        jsr     L06FF
        .byte   $1E
        .byte   $E0
L8B47:  jsr     L2020
        .byte   $53
        .byte   $54
        eor     ($52,x)
        .byte   $54
        jsr     L2020
        jsr     L00FF
        ldx     $1D,y
        .byte   $F0
L8B58:  jsr     L2020
        bvc     *+84
        eor     $53
        .byte   $53
        jsr     L2020
        .byte   $FF
L8B64:  rol     $1E,x
        beq     L8B88
        jsr     L5320
        .byte   $54
        eor     ($52,x)
        .byte   $54
        jsr     L2020
        .byte   $FF
        brk
        php
        bpl     L8B27
        and     $26
L8B79:  rol     $26
        rol     $26
        rol     $27
        .byte   $FF
        dey
        bpl     L8B33
        plp
        jsr     L4147
        .byte   $4D
L8B88:  eor     $20
        and     #$FF
        php
        .byte   $11
L8B8E:  bcs     L8BB8
        jsr     L564F
        eor     $52
        jsr     LFF29
        dey
        ora     ($B0),y
        rol     a
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     a:L00FF
        sec
        bpl     L8B58
        and     $26
        rol     $26
        rol     $26
        rol     $27
        .byte   $FF
        clv
        bpl     L8B64
        plp
        jsr     L4147
L8BB8:  eor     L2045
        and     #$FF
        sec
        ora     ($B0),y
        plp
        jsr     L564F
        eor     $52
        jsr     LFF29
        clv
        ora     ($B0),y
        rol     a
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     a:L00FF
        stx     $1D
        cpx     #$20
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     LFF20
        asl     $1E
        cpx     #$20
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     LFF20
        brk
        ldx     $1D,y
        beq     L8C1B
        jsr     L2020
        .byte   $20
        .byte   $20
L8C00:  jsr     L2020
        jsr     L2020
        .byte   $FF
        rol     $1E,x
        beq     L8C2B
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     LFF20
        brk
        .byte   $22
        .byte   $17
        .byte   $B0
L8C1B:  jsr     LFF20
        brk
        rol     LB017
        jsr     LFF20
        brk
        dey
        .byte   $12
        bcs     L8C4F
        .byte   $26
L8C2B:  rol     $26
        rol     $26
        rol     $26
        rol     $27
        .byte   $FF
        php
        .byte   $13
        bcs     L8C60
        jsr     L4C50
        eor     $41
        .byte   $53
        eor     $20
        and     #$FF
        dey
        .byte   $13
        bcs     L8C6E
        jsr     L5720
        eor     ($49,x)
        .byte   $54
        jsr     L2920
L8C4F:  .byte   $FF
        php
        .byte   $14
        bcs     L8C7E
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     a:L00FF
        clv
L8C60:  .byte   $12
        bcs     L8C88
        rol     $26
        rol     $26
        rol     $26
        rol     $26
        .byte   $27
        .byte   $FF
        sec
L8C6E:  .byte   $13
        bcs     L8C99
        jsr     L4C50
        eor     $41
        .byte   $53
        eor     $20
        and     #$FF
        clv
        .byte   $13
        .byte   $B0
L8C7E:  plp
        jsr     L5720
        eor     ($49,x)
        .byte   $54
        jsr     L2920
L8C88:  .byte   $FF
        sec
        .byte   $14
        bcs     L8CB7
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     a:L00FF
        php
L8C99:  .byte   $13
        bcc     L8CEE
        .byte   $4F
        .byte   $54
        eor     ($54,x)
        eor     $20
        eor     ($4E,x)
        .byte   $44
        .byte   $FF
        php
        .byte   $14
        bcc     L8CCA
        jsr     L4C50
        eor     ($43,x)
        eor     L00FF
        php
        ora     $90,x
        bvc     L8CFF
        .byte   $45
L8CB7:  .byte   $43
        eor     $53
        jsr     L4F54
        .byte   $FF
        php
        asl     $90,x
        lsr     $49
        jmp     L204C

        jmp     L4E49

        .byte   $45
L8CCA:  .byte   $53
        .byte   $FF
        brk
        ldx     #$1D
        cpx     #$52
        .byte   $4F
        eor     $4E,x
        .byte   $44
        .byte   $FF
        brk
        dey
        .byte   $12
        bcc     L8CFB
        .byte   $52
        eor     $4D
        eor     $4D
        .byte   $42
        eor     $52
        .byte   $FF
        php
        .byte   $13
        bcc     L8D41
        .byte   $4F
        eor     $52,x
        jsr     L4F47
L8CEE:  eor     ($4C,x)
        .byte   $FF
        dey
        .byte   $13
        bcc     L8D3E
        .byte   $53
        jsr     L4F54
        .byte   $20
        .byte   $46
L8CFB:  eor     #$4C
        .byte   $4C
        .byte   $FF
L8CFF:  php
L8D00:  .byte   $14
        bcc     L8D4B
        .byte   $4F
        .byte   $52
        eor     #$5A
        .byte   $4F
        lsr     $4154
        jmp     L88FF

        .byte   $14
        bcc     L8D31
        jsr     L494C
        lsr     $5345
        .byte   $FF
        brk
        iny
        .byte   $12
        bcc     L8D3D
        .byte   $52
        eor     $4D
        eor     $4D
        .byte   $42
        eor     $52
        .byte   $FF
        sec
        .byte   $13
        bcc     L8D83
        .byte   $4F
        eor     $52,x
        jsr     L4F47
        .byte   $41
L8D31:  jmp     LC8FF

        .byte   $13
        bcc     L8D80
        .byte   $53
        jsr     L4F54
        .byte   $20
        .byte   $46
L8D3D:  .byte   $49
L8D3E:  jmp     LFF4C

L8D41:  sec
        .byte   $14
        bcc     L8D8D
        .byte   $4F
        .byte   $52
        eor     #$5A
        .byte   $4F
        .byte   $4E
L8D4B:  .byte   $54
        eor     ($4C,x)
        .byte   $FF
        iny
        .byte   $14
        bcc     L8D73
        jsr     L494C
        lsr     $5345
        .byte   $FF
        brk
        .byte   $0C
        .byte   $13
        bcc     L8DA6
        .byte   $52
        eor     $41
        .byte   $54
        .byte   $FF
        sty     L9013
        .byte   $53
        .byte   $43
        .byte   $4F
        .byte   $52
        eor     $62
        .byte   $FF
        dey
        .byte   $14
        bcc     L8DB7
        .byte   $4E
L8D73:  .byte   $54
        eor     $52
        jsr     L4F59
        eor     $52,x
        .byte   $FF
        asl     a
        ora     $90,x
        .byte   $49
L8D80:  lsr     L5449
L8D83:  eor     #$41
        jmp     LFF53

        brk
        .byte   $3C
        .byte   $13
        bcc     L8DD4
L8D8D:  .byte   $52
        eor     $41
        .byte   $54
        .byte   $FF
        ldy     L9013,x
        .byte   $53
        .byte   $43
        .byte   $4F
        .byte   $52
        eor     $62
        .byte   $FF
        clv
        .byte   $14
        bcc     L8DE5
        lsr     $4554
        .byte   $52
        .byte   $20
        .byte   $59
L8DA6:  .byte   $4F
        eor     $52,x
        .byte   $FF
        .byte   $3A
        ora     $90,x
        eor     #$4E
        eor     #$54
        eor     #$41
        jmp     LFF53

        brk
L8DB7:  php
        .byte   $13
        bcc     L8E0B
        .byte   $52
        .byte   $4F
        lsr     a
        eor     $43
        .byte   $54
        jsr     L454C
        eor     ($44,x)
        eor     $52
        .byte   $3A
        jsr     L454B
        jmp     L594C

        jsr     L5554
        .byte   $52
        .byte   $4E
L8DD4:  eor     $52
        .byte   $FF
        php
        .byte   $14
        bcc     L8E2B
        .byte   $52
        .byte   $4F
        .byte   $47
        .byte   $52
        eor     ($4D,x)
        eor     $5245
        .byte   $53
L8DE5:  .byte   $3A
        jsr     L4F4E
        .byte   $52
        eor     L4120
        lsr     $45,x
        jmp     L414C

        .byte   $52
        .byte   $FF
        sty     $14,x
        bcc     L8E43
        eor     $4C
        jmp     L2059

        .byte   $54
        eor     $52,x
        lsr     $5245
        bit     $20
        eor     $44
        jsr     L4F4C
        .byte   $47
L8E0B:  .byte   $47
        .byte   $FF
        dey
        ora     $90,x
        lsr     $49,x
        .byte   $44
        eor     $4F
        jsr     L5247
        eor     ($50,x)
        pha
        eor     #$43
        .byte   $53
        .byte   $3A
        jsr     L524B
        eor     #$53
        jsr     L4F4D
        .byte   $53
        eor     $52
        .byte   $FF
L8E2B:  dey
        asl     $90,x
        eor     $4E
        .byte   $47
        eor     #$4E
        eor     $45
        .byte   $52
        .byte   $3A
        jsr     L4F44
        eor     $47,x
        jsr     L4E53
        eor     L4544,y
        .byte   $52
L8E43:  .byte   $FF
        dey
        .byte   $17
        bcc     L8E9C
        eor     $43
        pha
        lsr     $4349
        eor     #$41
        lsr     $203A
        .byte   $47
        jmp     L4E45

        lsr     L4D20
        .byte   $43
        lsr     $4D41
        eor     ($52,x)
        eor     (L00FF,x)
        dey
        clc
        bcc     L8EA7
        eor     $44,x
        eor     #$4F
        .byte   $3A
        jsr     L5242
        eor     ($44,x)
        jsr     L5546
        jmp     L454C

        .byte   $52
        .byte   $FF
        dey
        ora     $5390,y
        bvc     L8EC3
        .byte   $43
        eor     #$41
        jmp     L5420

        pha
        eor     ($4E,x)
        .byte   $4B
        .byte   $53
        jsr     L4F54
        jsr     L4F4A
        pha
        lsr     L5220
        eor     ($59,x)
        bit     L00FF
        php
        .byte   $1A
        bcc     L8EE5
        .byte   $45
L8E9C:  .byte   $53
        .byte   $53
        jsr     L454D
        jmp     L4843

        .byte   $4F
        .byte   $52
        .byte   $24
L8EA7:  jsr     L2052
        .byte   $44
        eor     ($57,x)
        eor     $20
        eor     ($4E,x)
        .byte   $44
        jsr     L594C
        jmp     L2045

        .byte   $3B
        eor     ($49,x)
        lsr     LFF53
        php
        .byte   $1B
        bcc     L8F11
        .byte   $52
L8EC3:  eor     #$47
        eor     #$4E
        eor     ($4C,x)
        jsr     L4F43
        lsr     $4543
        bvc     L8F25
        jsr     L4E41
        .byte   $44
        jsr     L4544
        .byte   $53
        eor     #$47
        lsr     $FF3A
        dey
        .byte   $1B
        bcc     L8F23
        jmp     L5845

L8EE5:  eor     $59
        jsr     L4150
        .byte   $5A
        pha
        eor     #$54
        lsr     L564F
        bit     $20
        lsr     $41,x
        .byte   $44
        .byte   $49
L8EF7:  eor     $4720
        eor     $3B
        eor     ($53,x)
        eor     #$4D
L8F00:  .byte   $4F
        lsr     L00FF,x
        dey
        .byte   $1C
        .byte   $90
L8F06:  rti

        and     ($39),y
        sec
        .byte   $37
        jsr     L4341
        eor     ($44,x)
        .byte   $45
L8F11:  eor     $5359
        .byte   $4F
        lsr     $54
        and     $4C45
        .byte   $4F
        .byte   $3B
        .byte   $47
        .byte   $FF
        php
        ora     $4090,x
        .byte   $31
L8F23:  .byte   $39
        sec
L8F25:  sec
        jsr     L5441
        eor     ($3B,x)
        eor     #$20
        .byte   $47
        eor     ($4D,x)
        eor     $53
        .byte   $FF
        dey
        ora     $4C90,x
        eor     #$43
        eor     $4E
        .byte   $53
        eor     $44
        jsr     L5942
        jsr     L494D
        .byte   $3B
        .byte   $3B
        .byte   $4F
L8F47:  .byte   $3B
        .byte   $53
        .byte   $4F
        lsr     $54
        .byte   $20
L8F4D:  jmp     $4454

        rol     a:L00FF
        .byte   $02
        bpl     L8F06
        jsr     L2020
        jsr     L2020
L8F5C:  jsr     L2020
        jsr     L2020
        jsr     L82FF
        bpl     L8EF7
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L02FF
        ora     ($90),y
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L82FF
        ora     ($90),y
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L02FF
        .byte   $12
        bcs     L8FBB
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        .byte   $FF
        brk
        sec
        bpl     L8F5C
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     LB8FF
L8FBB:  bpl     L8F4D
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L38FF
        ora     ($90),y
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     LB8FF
        ora     ($90),y
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L38FF
        .byte   $12
        bcs     L9011
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        .byte   $FF
        brk
        brk
        dey
        .byte   $1B
        ldy     #$50
        jmp     L4145

        .byte   $53
        eor     $20
        .byte   $57
        eor     ($49,x)
        .byte   $54
        .byte   $FF
        brk
        dey
L9011:  .byte   $1B
        .byte   $A0
L9013:  .byte   $20
L9014:  .byte   $20
L9015:  .byte   $20
L9016:  .byte   $20
L9017:  .byte   $20
L9018:  .byte   $20
L9019:  .byte   $20
L901A:  jsr     L2020
        jsr     L00FF
        stx     $10
        bcs     L9065
        .byte   $43
        .byte   $43
        .byte   $4F
        eor     $4E,x
        .byte   $54
        eor     #$4E
        .byte   $47
        jsr     L2020
        jsr     L4820
        eor     #$53
        .byte   $54
        .byte   $4F
        .byte   $47
        .byte   $3B
        eor     ($4D,x)
        .byte   $FF
        .byte   $02
        ora     ($B0),y
        jmp     L4320

        .byte   $4F
        eor     #$4E
        .byte   $FF
        .byte   $82
        ora     ($B0),y
        .byte   $3B
        jsr     L4F43
        eor     #$4E
        .byte   $FF
        .byte   $02
        .byte   $12
        bcs     L9086
        and     L4C50
        eor     $FF3B,y
        .byte   $82
        .byte   $12
        bcs     L907E
        jsr     L4145
        .byte   $53
        eor     L02FF,y
L9065:  .byte   $13
        bcs     L9088
        jsr     L4D20
        eor     $44
        .byte   $FF
        .byte   $82
        .byte   $13
        bcs     L9092
        jsr     L4148
        .byte   $3B
        .byte   $44
        .byte   $FF
        .byte   $02
        .byte   $14
        bcs     L90BD
        .byte   $44
        .byte   $44
L907E:  and     $4E43
        .byte   $FF
        .byte   $82
        .byte   $14
        bcs     L90B6
L9086:  bvc     L90A8
L9088:  eor     L4E49
        .byte   $FF
        .byte   $02
        ora     $B0,x
        and     ($50),y
        .byte   $20
L9092:  eor     L4E49
        .byte   $FF
        .byte   $82
        ora     $B0,x
        .byte   $32
        bvc     L90BC
        eor     L4E49
        .byte   $FF
        .byte   $02
        asl     $B0,x
        jsr     L2020
        eor     ($56,x)
L90A8:  .byte   $47
        .byte   $FF
        bit     $11
        bcs     L90DE
        .byte   $FF
        ldy     $11
        bcs     L90E3
        clc
        .byte   $FF
        .byte   $24
L90B6:  .byte   $12
        bcs     L90E9
        .byte   $1A
        .byte   $FF
        .byte   $A4
L90BC:  .byte   $12
L90BD:  bcs     L90EF
        .byte   $1C
        .byte   $FF
        bit     $13
        bcs     L90F6
        .byte   $FF
        ldy     $13
        bcs     L90FB
        clc
        .byte   $FF
        bit     $14
        bcs     L9101
        .byte   $1A
        .byte   $FF
        ldy     $14
        bcs     L9107
        .byte   $1C
        .byte   $FF
        bit     $15
        bcs     L910E
        .byte   $FF
        .byte   $A4
L90DE:  ora     $B0,x
        .byte   $32
        clc
        .byte   $FF
L90E3:  bit     $16
        bcs     L9119
        .byte   $1A
        .byte   $FF
L90E9:  ldy     $16
        bcs     L911F
        .byte   $1C
        .byte   $FF
L90EF:  bit     $17
        bcs     L9126
        .byte   $FF
        ldy     $17
L90F6:  bcs     L912B
        clc
        .byte   $FF
        .byte   $24
L90FB:  clc
        bcs     L9131
        .byte   $1A
        .byte   $FF
        .byte   $A4
L9101:  clc
        bcs     L9137
        .byte   $1C
        .byte   $FF
        .byte   $24
L9107:  ora     $34B0,y
        .byte   $FF
        ldy     $19
        .byte   $B0
L910E:  .byte   $34
        clc
        .byte   $FF
        bit     $1A
        bcs     L9149
        .byte   $1A
        .byte   $FF
        ldy     $1A
L9119:  bcs     L914F
        .byte   $1C
        .byte   $FF
        bit     $1B
L911F:  bcs     L9156
        .byte   $FF
        ldy     $1B
        bcs     L915B
L9126:  clc
        .byte   $FF
        bit     $1C
        .byte   $B0
L912B:  and     $1A,x
        .byte   $FF
        ldy     #$1C
        .byte   $B0
L9131:  rol     $2D,x
        and     ($32),y
        .byte   $FF
        .byte   $22
L9137:  ora     $31B0,x
        .byte   $32
        rol     a:L00FF,x
        sty     LB018
        bvc     L9198
        .byte   $53
        pha
        .byte   $FF
        .byte   $04
        .byte   $19
        .byte   $B0
L9149:  .byte   $53
        .byte   $54
        eor     #$43
        .byte   $4B
        .byte   $20
L914F:  and     ($20),y
        jmp     L4645

        .byte   $54
        .byte   $FF
L9156:  stx     LB019
        eor     ($4E,x)
L915B:  .byte   $44
        .byte   $FF
        .byte   $04
        .byte   $1A
        bcs     L91B4
        .byte   $54
        eor     #$43
        .byte   $4B
        jsr     L2032
        .byte   $52
        eor     #$47
        pha
        .byte   $54
        .byte   $FF
        dey
        .byte   $1A
        bcs     L91C6
        .byte   $4F
        jsr     L4C20
        eor     $41
        lsr     $45,x
        .byte   $FF
        brk
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $12
        .byte   $80
        lda     $02
        sta     ($03,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $22
        .byte   $80
        lda     #$02
        sta     ($09,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        asl     LB380,x
        .byte   $02
L9198:  sta     ($03,x)
        .byte   $80
        .byte   $0B
        brk
        .byte   $80
        .byte   $B7
        .byte   $02
        ora     (L0080,x)
        .byte   $0B
        brk
        .byte   $80
        lda     L8102,y
        .byte   $03
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     LBD80,x
        .byte   $02
        ora     ($01,x)
        .byte   $80
L91B4:  .byte   $0B
        brk
        brk
        .byte   $80
        cpy     #$02
        ora     (L0080,x)
        .byte   $0B
        brk
        brk
        .byte   $80
        .byte   $C2
        .byte   $02
        ora     ($01,x)
        .byte   $80
        brk
L91C6:  brk
        .byte   $7F
        ora     $C580,x
        .byte   $02
        ora     (L0080,x)
        .byte   $C7
        .byte   $52
        sta     ($07,x)
        .byte   $80
        .byte   $CF
        .byte   $02
        ora     (L0080,x)
        brk
        brk
        .byte   $7F
        asl     a:$08
        .byte   $80
        cmp     ($02),y
        ora     (L0080,x)
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $D3
        .byte   $02
        ora     ($01,x)
        .byte   $80
        dec     $52,x
        sta     ($07,x)
        .byte   $80
        dec     $0102,x
        .byte   $F3
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $D3
        .byte   $02
        ora     $0880
        brk
        brk
        .byte   $80
        sbc     ($02,x)
        brk
        ora     ($01,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        cpx     $02
        ora     ($01,x)
        .byte   $80
        .byte   $E7
        .byte   $52
        sta     ($03,x)
        sbc     L0381,x
        .byte   $80
        .byte   $EB
        .byte   $02
        ora     ($01,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        inc     $0102
        .byte   $F2
        brk
        .byte   $80
        .byte   $0B
        brk
        brk
        brk
        .byte   $80
        beq     L9294
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     ($62),y
        .byte   $80
        .byte   $F2
        .byte   $02
        ora     (L0080,x)
        .byte   $F4
        .byte   $52
        sta     ($03,x)
        sbc     L0381,x
        .byte   $80
        sed
        .byte   $02
        ora     (L0080,x)
        beq     L92BF
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $FA
        .byte   $72
        .byte   $80
        .byte   $0B
        brk
        brk
        brk
        .byte   $80
L925B:  .byte   $FB
        .byte   $12
        ora     ($01,x)
        .byte   $80
        inc     L8062,x
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $FF
        .byte   $62
        .byte   $80
        .byte   $F2
        .byte   $02
        asl     $0180
        .byte   $53
        sta     ($03,x)
        sbc     L0381,x
        .byte   $80
        sed
        .byte   $02
        ora     (L0080,x)
        inc     L8072,x
        brk
        brk
        .byte   $7F
        ora     #$80
        ora     $73
        .byte   $80
        .byte   $FB
        .byte   $22
        ora     ($01,x)
        .byte   $80
        asl     $13
        ora     ($01,x)
        .byte   $80
        ora     #$63
        .byte   $80
        brk
L9294:  brk
        .byte   $7F
        ora     #$80
        asl     a
        .byte   $63
        .byte   $80
        .byte   $F2
        .byte   $02
        asl     $0B80
        .byte   $53
        ora     ($01,x)
        .byte   $F7
        .byte   $07
        ora     ($01,x)
        .byte   $F7
        .byte   $80
        sed
        .byte   $02
        ora     (L0080,x)
        ora     #$73
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        asl     L8073
        asl     $23
        ora     ($01,x)
        .byte   $80
        .byte   $0F
        .byte   $13
L92BF:  ora     ($01,x)
        .byte   $80
        beq     L9326
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     ($62),y
        .byte   $80
        .byte   $F2
        .byte   $02
        asl     $1280
        .byte   $53
        ora     ($01,x)
        beq     L92E5
        ora     ($01,x)
        beq     L925B
        sed
        .byte   $02
        ora     (L0080,x)
        beq     L9353
        .byte   $80
        brk
        brk
        .byte   $7F
L92E5:  ora     #$80
        .byte   $FA
        .byte   $72
        .byte   $80
        .byte   $0F
        .byte   $23
        ora     ($01,x)
        .byte   $80
        ora     $13,x
        ora     ($01,x)
        .byte   $80
        clc
        .byte   $63
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        ora     L8063,y
        .byte   $1A
        .byte   $03
        ora     (L0080,x)
        .byte   $1C
        .byte   $53
        sta     ($03,x)
        sbc     L0381,x
        .byte   $80
        jsr     L0103
        .byte   $80
        clc
        .byte   $73
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $22
        .byte   $73
        .byte   $80
        ora     $23,x
        ora     ($01,x)
        .byte   $80
        .byte   $23
        .byte   $13
        ora     ($01,x)
        .byte   $80
        rol     $63
L9326:  .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $27
        .byte   $63
        .byte   $80
        plp
        .byte   $03
        .byte   $80
        ora     $7F00
        ora     #$80
        and     #$03
        .byte   $80
        rol     $73
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        rol     a
        .byte   $73
        .byte   $80
        .byte   $23
        .byte   $23
        ora     ($01,x)
        .byte   $80
        .byte   $2B
        .byte   $13
        ora     ($01,x)
        .byte   $80
        beq     L93B3
        .byte   $80
        brk
L9353:  brk
        .byte   $7F
        ora     #$80
        sbc     ($62),y
        .byte   $80
        plp
        .byte   $03
        .byte   $80
        ora     $7F00
        ora     #$80
        and     #$03
        .byte   $80
        beq     L93D9
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $FA
        .byte   $72
        .byte   $80
        .byte   $2B
        .byte   $23
        ora     ($01,x)
        .byte   $80
        rol     L0113
        ora     (L0080,x)
        and     ($63),y
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $32
        .byte   $63
        .byte   $80
        plp
        .byte   $03
        .byte   $80
        ora     $7F00
        ora     #$80
        and     #$03
        .byte   $80
        and     ($73),y
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $33
        .byte   $73
        .byte   $80
        rol     L0123
        ora     (L0080,x)
        .byte   $34
        .byte   $13
        ora     ($01,x)
        .byte   $80
        .byte   $37
        .byte   $63
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sec
        .byte   $63
        .byte   $80
        plp
        .byte   $03
        .byte   $80
L93B3:  ora     $7F00
        ora     #$80
        and     #$03
        .byte   $80
        .byte   $37
        .byte   $73
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        and     L8073,y
        .byte   $34
        .byte   $23
        ora     ($01,x)
        .byte   $80
        .byte   $3A
        .byte   $13
        ora     ($01,x)
        .byte   $80
        beq     L9434
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $F1
L93D9:  .byte   $62
        .byte   $80
        plp
        .byte   $03
        .byte   $80
        ora     $7F00
        ora     #$80
        and     #$03
        .byte   $80
        beq     L945A
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $FA
        .byte   $72
        .byte   $80
        .byte   $3A
        .byte   $23
        ora     ($01,x)
        .byte   $80
        and     L0113,x
        ora     (L0080,x)
        rti

        .byte   $63
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        eor     ($63,x)
        .byte   $80
        plp
        .byte   $03
        .byte   $80
        ora     $7F00
        ora     #$80
        and     #$03
        .byte   $80
        rti

        .byte   $73
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $42
        .byte   $73
        .byte   $80
        and     L0123,x
        ora     (L0080,x)
        .byte   $43
        .byte   $13
        ora     ($01,x)
        .byte   $80
        lsr     $63
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $47
        .byte   $63
        .byte   $80
        plp
        .byte   $03
        .byte   $80
L9434:  ora     $7F00
        ora     #$80
        and     #$03
        .byte   $80
        lsr     $73
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        pha
        .byte   $73
        .byte   $80
        .byte   $43
        .byte   $23
        ora     ($01,x)
        .byte   $80
        eor     #$13
        ora     ($01,x)
        .byte   $80
        beq     L94B5
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $F1
L945A:  .byte   $62
        .byte   $80
        plp
        .byte   $03
        .byte   $80
        ora     $7F00
        ora     #$80
        and     #$03
        .byte   $80
        beq     L94DB
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $FA
        .byte   $72
        .byte   $80
        eor     #$23
        ora     ($01,x)
        .byte   $80
        jmp     L0113

        ora     (L0080,x)
        .byte   $4F
        .byte   $63
        .byte   $80
        brk
L9480:  brk
        .byte   $7F
        ora     #$80
        bvc     L94E9
        .byte   $80
        eor     ($03),y
        .byte   $80
        .byte   $52
        .byte   $13
        sta     ($04,x)
        .byte   $80
        .byte   $57
        .byte   $23
        sta     ($04,x)
        .byte   $80
        .byte   $5C
        .byte   $03
        .byte   $80
        .byte   $4F
        .byte   $73
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        eor     L8073,x
        jmp     L0123

        ora     (L0080,x)
        lsr     L0113,x
        ora     (L0080,x)
        adc     ($63,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $62
L94B5:  .byte   $63
        .byte   $80
        .byte   $F2
        .byte   $02
        .byte   $80
        .byte   $63
        .byte   $13
        sta     ($04,x)
        .byte   $80
        pla
        .byte   $23
        sta     ($04,x)
        .byte   $80
        sbc     L8002,y
        adc     ($73,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        adc     L8073
        lsr     L0123,x
        ora     (L0080,x)
        eor     #$13
        and     $01
L94DB:  .byte   $80
        beq     L9540
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     ($62),y
        .byte   $80
        bvs     L94FC
L94E9:  ora     ($7F,x)
        ora     #$01
        .byte   $80
        beq     L9562
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $FA
        .byte   $72
        .byte   $80
        eor     #$23
        .byte   $25
L94FC:  ora     (L0080,x)
        eor     #$13
        rol     a
        .byte   $FC
        .byte   $80
        .byte   $74
        .byte   $63
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        adc     $63,x
        .byte   $80
        ror     $13,x
        .byte   $80
        .byte   $0B
        bpl     L9593
        ora     #$80
        .byte   $77
        .byte   $13
        .byte   $80
        .byte   $74
        .byte   $73
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sei
        .byte   $73
        .byte   $80
        eor     #$23
        rol     a
        .byte   $FC
        .byte   $80
        adc     L0113,y
        ora     (L0080,x)
        .byte   $7C
        .byte   $63
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        adc     L8063,x
        ror     $13,x
        .byte   $80
        .byte   $0B
        bpl     L95BE
        .byte   $09
L9540:  .byte   $80
        .byte   $77
        .byte   $13
        .byte   $80
        .byte   $7C
        .byte   $73
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        ror     L8073,x
        adc     L0123,y
        ora     (L0080,x)
        .byte   $0B
        brk
        brk
        brk
        .byte   $80
        .byte   $7F
        .byte   $03
        ora     ($7F,x)
        ora     #$01
        .byte   $80
        ror     $13,x
L9562:  .byte   $80
        .byte   $0B
        bpl     L95E5
        ora     #$80
        .byte   $77
        .byte   $13
        .byte   $80
        .byte   $7F
        .byte   $03
        ora     ($7F,x)
        ora     #$02
        .byte   $80
        .byte   $0B
        brk
        brk
        brk
        .byte   $80
        .byte   $83
        .byte   $03
        .byte   $80
        sty     $33
        .byte   $80
        sta     $13
        .byte   $80
        stx     $03
        .byte   $80
        .byte   $87
        .byte   $13
        .byte   $7F
        ora     #$01
        ora     (L0080,x)
        .byte   $0B
        bpl     L960C
        ora     #$80
        txa
        .byte   $13
        .byte   $80
        .byte   $86
L9593:  .byte   $03
        .byte   $80
        .byte   $87
        .byte   $13
        .byte   $7F
        ora     #$04
        ora     (L0080,x)
        sty     $43
        .byte   $80
        sta     $EA03
        .byte   $80
        stx     L8033
        .byte   $8F
        .byte   $13
        .byte   $80
        ora     $7F10
        .byte   $0B
        .byte   $80
        bcc     L95C3
        .byte   $80
        .byte   $0B
        bpl     L9633
        ora     #$80
        .byte   $77
        .byte   $13
        .byte   $80
        ora     $7F10
        .byte   $0B
        .byte   $80
L95BE:  .byte   $8F
        .byte   $13
        .byte   $80
        .byte   $8E
        .byte   $43
L95C3:  .byte   $80
        sta     ($03),y
        inc     L0080
        .byte   $92
        .byte   $33
        .byte   $80
        .byte   $8F
        .byte   $13
        .byte   $80
        ora     $7F10
        .byte   $0B
        .byte   $80
        bcc     L95E8
        .byte   $80
        .byte   $0B
        bpl     L9658
        ora     #$80
        .byte   $77
        .byte   $13
        .byte   $80
        ora     $7F10
        .byte   $0B
        .byte   $80
        .byte   $8F
        .byte   $13
L95E5:  .byte   $80
        .byte   $92
        .byte   $43
L95E8:  .byte   $80
        sta     ($03),y
        .byte   $02
        dec     L9480,x
        .byte   $13
        ora     ($7F,x)
        .byte   $0B
        ora     (L0080,x)
        .byte   $0B
        bpl     L9677
        ora     #$80
        .byte   $97
        .byte   $13
        inc     $0B7F,x
        .byte   $03
        .byte   $80
        adc     ($03),y
        plp
        .byte   $80
        txs
        .byte   $03
        ora     ($01,x)
        .byte   $FF
        sta     ($03,x)
L960C:  .byte   $FF
        sta     ($04,x)
        .byte   $FF
        ora     (L00FF,x)
        .byte   $02
        ora     (L00FF,x)
        ora     (L00FF,x)
        .byte   $02
        .byte   $7F
        .byte   $04
        ora     ($7F,x)
        .byte   $04
        .byte   $FF
        .byte   $7F
        .byte   $04
        ora     ($7F,x)
        .byte   $04
        .byte   $FF
        .byte   $7F
        .byte   $04
        ora     ($7F,x)
        .byte   $04
        .byte   $FF
        .byte   $7F
        .byte   $04
        ora     ($7F,x)
        .byte   $04
        .byte   $FF
        .byte   $7F
        .byte   $04
        .byte   $01
L9633:  .byte   $7F
        .byte   $04
        .byte   $FF
        .byte   $7F
        .byte   $04
        ora     ($7F,x)
        .byte   $04
        .byte   $80
        txs
        .byte   $03
        ora     ($01,x)
        .byte   $FF
        sta     ($03,x)
        .byte   $FF
        sta     ($04,x)
        .byte   $FF
L9647:  ora     (L00FF,x)
        .byte   $02
        ora     (L00FF,x)
        ora     (L00FF,x)
        .byte   $02
        .byte   $7F
        .byte   $04
        ora     ($7F,x)
        .byte   $04
        .byte   $FF
        brk
        brk
        .byte   $02
L9658:  sta     ($03,x)
        .byte   $FC
        brk
        brk
        .byte   $FF
        asl     $81
        .byte   $07
        .byte   $F4
        .byte   $FF
        asl     $0781
        cpx     $16FF
        ora     ($01,x)
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        lda     L0103,x
        ora     ($E6,x)
        .byte   $FF
        .byte   $1C
L9677:  ora     ($01,x)
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        .byte   $C3
        .byte   $03
        ora     ($01,x)
        cpx     #$80
        txs
        .byte   $03
        ora     ($01,x)
        .byte   $FF
        sta     ($03,x)
        .byte   $FF
        sta     ($04,x)
        .byte   $FF
        ora     (L00FF,x)
        .byte   $02
        ora     (L00FF,x)
        ora     (L00FF,x)
        bit     $81
        .byte   $17
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        dec     L8103,x
        ora     L0080
        brk
        brk
        .byte   $7F
        ora     L0080
        cpx     $03
        ora     ($01,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        .byte   $E7
        .byte   $03
        ora     ($01,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     L0080
        nop
L96BD:  .byte   $03
        ora     (L0080,x)
        txs
        .byte   $03
        ora     ($01,x)
        bvc     L9647
        .byte   $03
        ldx     L0101
        .byte   $51
L96CB:  sta     ($0D,x)
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        inc     L8103,x
        asl     L0080
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        ora     $04
        sta     ($04,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     L0080
        asl     a
        .byte   $04
        ora     ($F2,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        inc     L8003,x
        brk
        brk
        .byte   $7F
        .byte   $13
        .byte   $80
        .byte   $0C
        .byte   $04
        cpx     #$01
        .byte   $FF
        sta     ($03,x)
        .byte   $FF
        ora     ($1E,x)
        .byte   $E7
        .byte   $1A
        inc     $01
        .byte   $FF
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L0080,x)
        brk
        brk
        .byte   $7F
        .byte   $3B
        .byte   $80
        .byte   $0F
        .byte   $04
        ora     (L00FF,x)
        .byte   $02
        inc     L0103,x
        .byte   $FF
        ora     (L00FF,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        eor     L0080
        brk
        brk
        .byte   $7F
        asl     a
        .byte   $80
        eor     ($54,x)
        sta     ($06,x)
        .byte   $FF
        sbc     $0105,x
        sbc     $FF00,y
        ora     #$FF
        .byte   $02
        sta     ($03,x)
        .byte   $FB
        .byte   $80
        brk
        bvc     L96BD
        brk
        brk
        .byte   $7F
        .byte   $13
        .byte   $80
        .byte   $4F
        .byte   $54
        sta     ($13,x)
        .byte   $F7
        .byte   $80
        brk
        bvc     L96CB
        brk
        brk
        .byte   $7F
        .byte   $13
        .byte   $80
        brk
        bvc     L97D2
        ora     L0080,x
        brk
        brk
        .byte   $7F
        ora     L0080,x
        .byte   $B3
        .byte   $02
        ora     (L0080,x)
        brk
        brk
        .byte   $7F
        .byte   $0B
        .byte   $80
        .byte   $B3
        .byte   $02
        ora     (L0080,x)
        brk
        brk
        .byte   $7F
        ora     (L0080),y
        .byte   $63
        .byte   $54
        sta     ($03,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        lda     L8002,x
        .byte   $67
        .byte   $04
        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        pla
        .byte   $54
        .byte   $FB
        asl     $01
        ora     ($FD,x)
        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        lda     L8002,x
        .byte   $67
        .byte   $04
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        jmp     (LF854)

        ora     #$FC
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $04
        .byte   $80
        cmp     ($02),y
        ora     (L0080,x)
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $D3
        .byte   $02
        .byte   $80
        ror     $0104
        .byte   $80
        .byte   $D2
        .byte   $02
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $D3
        .byte   $02
        .byte   $80
        ror     $0104
        .byte   $80
        .byte   $D2
        .byte   $02
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $D3
        .byte   $02
        ora     $0102
        .byte   $80
        brk
L97D2:  brk
        .byte   $7F
        ora     #$80
        inc     L8002
        bvs     L97DF
        ora     (L0080,x)
        .byte   $E3
        .byte   $02
L97DF:  .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        inc     L8002
        bvs     L97EE
        ora     (L0080,x)
        .byte   $E3
        .byte   $02
L97EE:  .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        inc     $0102
        .byte   $80
        .byte   $0B
        brk
        .byte   $80
        beq     L985F
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     ($62),y
        .byte   $80
        .byte   $72
        .byte   $04
        .byte   $80
        cpx     L8002
        beq     L9880
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     ($72),y
        .byte   $80
        .byte   $72
        .byte   $04
        .byte   $80
        .byte   $EC
        .byte   $02
L981C:  .byte   $80
        beq     L9861
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     ($42),y
        .byte   $80
        .byte   $0B
        brk
        brk
        .byte   $80
        inc     L8062,x
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $FF
        .byte   $62
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        inc     L8072,x
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $FF
        .byte   $72
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        inc     L8042,x
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $FF
        .byte   $42
        .byte   $80
        .byte   $0B
        brk
        brk
        .byte   $80
        ora     #$63
L985F:  .byte   $80
        brk
L9861:  brk
        .byte   $7F
        .byte   $04
        .byte   $80
        .byte   $74
        .byte   $14
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        asl     a
        .byte   $63
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
L9873:  sbc     L8002,y
        ora     #$73
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        adc     $34,x
L9880:  ora     ($01,x)
        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        asl     a
        .byte   $73
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        ora     #$43
        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        .byte   $07
        bmi     L981C
        sei
        .byte   $34
        ora     (L0080,x)
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        asl     a
        .byte   $43
        .byte   $80
        .byte   $0B
        brk
        brk
        .byte   $80
        beq     L9910
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        .byte   $7A
        .byte   $14
        ora     ($FE,x)
        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        sbc     ($62),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        beq     L993B
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        .byte   $7C
        .byte   $34
        .byte   $80
        .byte   $07
        bmi     L98D5
L98D5:  .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        sbc     ($72),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        beq     L9928
        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        .byte   $7A
        .byte   $34
        .byte   $03
        .byte   $80
        .byte   $07
        bmi     L9873
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        sbc     ($42),y
        .byte   $80
        .byte   $0B
        brk
        brk
        .byte   $80
        clc
        .byte   $63
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        ora     L8063,y
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
L9910:  clc
        .byte   $73
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        ora     L8073,y
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        clc
        .byte   $43
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $09
L9928:  .byte   $80
        ora     L8043,y
        .byte   $0B
        brk
        brk
        .byte   $80
        rol     $63
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $27
        .byte   $63
        .byte   $80
L993B:  .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        rol     $73
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $27
        .byte   $73
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        rol     $43
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $27
        .byte   $43
        .byte   $80
        .byte   $0B
        brk
        brk
        .byte   $80
        beq     L99C5
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     ($62),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        beq     L99E6
        .byte   $80
        brk
        brk
        .byte   $80
        ror     L8154,x
        ora     $FC
        ora     L0080
        brk
        brk
        .byte   $80
        sbc     ($72),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        beq     L99CF
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        sta     $54
        .byte   $FA
        ora     ($01,x)
        ora     $01
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        sbc     ($42),y
        .byte   $80
        .byte   $0B
        brk
        brk
        .byte   $80
        and     ($63),y
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $32
        .byte   $63
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        and     ($73),y
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $32
        .byte   $73
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        .byte   $F9
L99C5:  .byte   $02
        .byte   $80
        and     ($43),y
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
L99CF:  .byte   $32
        .byte   $43
        .byte   $80
        .byte   $0B
        brk
        brk
        .byte   $80
        .byte   $37
        .byte   $63
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sec
        .byte   $63
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        .byte   $F9
        .byte   $02
L99E6:  .byte   $80
        .byte   $37
        .byte   $73
        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        dey
        .byte   $54
        ora     ($F6,x)
        asl     $04
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        sec
        .byte   $73
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        .byte   $37
        .byte   $43
        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        txa
        .byte   $54
        ora     ($FB,x)
        sbc     $FC09,x
        .byte   $80
        brk
        brk
        .byte   $80
        sec
        .byte   $43
        .byte   $80
        .byte   $0B
        brk
        brk
        .byte   $80
        beq     L9A81
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     ($62),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        beq     L9AA2
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     ($72),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        beq     L9A83
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     ($42),y
        .byte   $80
        .byte   $0B
        brk
        brk
        .byte   $80
        rti

        .byte   $63
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        eor     ($63,x)
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        rti

        .byte   $73
        .byte   $80
        sta     L8024
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        sta     L8024
        eor     ($73,x)
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        rti

        .byte   $43
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        eor     ($43,x)
        .byte   $80
L9A81:  .byte   $0B
        brk
L9A83:  brk
        .byte   $80
        lsr     $63
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $47
        .byte   $63
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        lsr     $73
        .byte   $80
        stx     L8014
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        .byte   $8E
L9AA2:  .byte   $14
        .byte   $80
        .byte   $47
        .byte   $73
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        lsr     $43
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $47
        .byte   $43
        .byte   $80
        .byte   $0B
        brk
        brk
        .byte   $80
        beq     L9B20
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     ($62),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        beq     L9B41
        .byte   $80
        sta     L8014
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        sta     L8014
        sbc     ($72),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        beq     L9B28
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     ($42),y
        .byte   $80
        .byte   $0B
        brk
        brk
        .byte   $80
        .byte   $4F
        .byte   $63
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        bvc     L9B60
        .byte   $80
        .byte   $73
L9AFF:  .byte   $04
        .byte   $80
        sbc     L8002,y
        .byte   $4F
        .byte   $73
        .byte   $80
        stx     L8034
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        stx     L8034
        bvc     L9B87
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        .byte   $4F
        .byte   $43
        .byte   $80
        brk
        brk
L9B20:  .byte   $7F
        ora     #$80
        bvc     L9B68
        .byte   $80
        .byte   $0B
        brk
L9B28:  brk
        .byte   $80
        adc     ($63,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $62
        .byte   $63
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        adc     ($73,x)
        .byte   $80
        sta     L8034
L9B41:  brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        sta     L8034
        .byte   $62
        .byte   $73
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        adc     ($43,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $62
        .byte   $43
        .byte   $80
        .byte   $0B
        brk
        brk
L9B60:  .byte   $80
        beq     L9BC5
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $09
L9B68:  .byte   $80
        sbc     ($62),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        beq     L9BE6
        .byte   $80
        sta     L8024
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        sta     L8024
        sbc     ($72),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        .byte   $F9
L9B87:  .byte   $02
        .byte   $80
        beq     L9BCD
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $04
        .byte   $80
        .byte   $8F
        .byte   $14
        .byte   $80
        brk
        brk
        .byte   $80
        bcc     L9BBD
        .byte   $80
        brk
        brk
        .byte   $80
        sta     ($04),y
        .byte   $80
        sbc     ($42),y
        .byte   $80
        .byte   $0B
        brk
        brk
        .byte   $80
        .byte   $74
        .byte   $63
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        adc     $63,x
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        .byte   $74
        .byte   $73
        .byte   $80
        .byte   $8E
        .byte   $14
L9BBD:  .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        .byte   $8E
        .byte   $14
L9BC5:  .byte   $80
        adc     $73,x
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        .byte   $F9
L9BCD:  .byte   $02
        .byte   $80
        .byte   $74
        .byte   $43
        .byte   $80
        sta     ($04),y
        .byte   $80
        .byte   $74
        .byte   $14
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        sta     ($04),y
        .byte   $80
        .byte   $92
        .byte   $14
        .byte   $80
        .byte   $93
        bit     $01
        .byte   $80
L9BE6:  brk
        brk
        .byte   $80
        bcc     L9C1F
        .byte   $80
        adc     $43,x
        .byte   $80
        .byte   $0B
        brk
        brk
        .byte   $80
        .byte   $7C
        .byte   $63
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        adc     L8063,x
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        .byte   $7C
        .byte   $73
        .byte   $80
        sta     L8014
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        sta     L8014
        adc     L8073,x
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        .byte   $7C
        .byte   $43
        .byte   $80
        .byte   $7A
L9C1F:  .byte   $14
        ora     ($FE,x)
        .byte   $80
        brk
        brk
        .byte   $80
        sta     $14,x
        ora     (L0080,x)
        .byte   $7C
        bit     L0080
        .byte   $97
        .byte   $34
        .byte   $DF
        .byte   $22
        .byte   $80
        adc     L8043,x
        .byte   $0B
        brk
        brk
        .byte   $80
        .byte   $7F
        .byte   $03
        ora     ($7F,x)
        ora     #$01
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
L9C46:  .byte   $7F
        .byte   $03
        ora     ($7F,x)
        ora     #$01
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        .byte   $7F
        .byte   $03
        ora     ($7F,x)
        ora     #$01
        .byte   $80
        .byte   $0B
        brk
        brk
        .byte   $80
        sta     $0104,y
        .byte   $7F
        ora     #$01
        cld
        .byte   $80
        sbc     L8002,y
        sta     $0104,y
        .byte   $7F
        ora     #$01
        cld
        .byte   $80
        sbc     L8002,y
        sta     $0104,y
        .byte   $7F
        ora     #$01
        .byte   $80
        .byte   $0B
        brk
        .byte   $7F
        ora     $7380
        .byte   $04
        .byte   $80
        sbc     L8002,y
        .byte   $0B
        brk
        .byte   $7F
        .byte   $0B
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        .byte   $0B
        brk
        .byte   $7F
        ora     $7380,y
        .byte   $04
        .byte   $80
        sbc     L8002,y
        .byte   $0B
        brk
        .byte   $7F
        .byte   $0B
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
        .byte   $0B
        brk
        .byte   $7F
        ora     $7380,y
        .byte   $04
        .byte   $80
        sbc     L8002,y
        .byte   $0B
L9CB3:  brk
        .byte   $7F
        .byte   $0B
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        .byte   $F9
L9CBB:  .byte   $02
        .byte   $80
        .byte   $0B
        brk
        .byte   $7F
        .byte   $0C
        .byte   $80
        .byte   $92
        bvs     L9C46
        .byte   $03
        .byte   $FF
        .byte   $02
        sbc     $0201,x
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
        ora     (L00FF,x)
        .byte   $02
        sbc     $FC05,x
        .byte   $02
        sbc     $0201,x
        sbc     $FC04,x
        ora     ($06,x)
        sta     ($04,x)
        .byte   $F5
L9CEF:  .byte   $0C
        sbc     $0201,x
        sbc     $0C,x
        .byte   $F4
        ora     $0CF2
        sbc     $0C,x
L9CFB:  .byte   $F4
        .byte   $0C
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     L0080
        .byte   $9E
        bvs     L9CFB
        .byte   $0B
        sbc     $0C,x
        sbc     $0D,x
        .byte   $F2
        .byte   $0C
        sbc     $0201,x
        sbc     $0C,x
        .byte   $FC
        ora     ($FE,x)
        .byte   $04
        .byte   $04
        ora     ($F3,x)
        .byte   $02
L9D1A:  .byte   $FA
        bpl     L9D1E
        .byte   $80
L9D1E:  brk
        brk
        .byte   $7F
        .byte   $07
L9D22:  .byte   $80
        lda     $30
        ora     ($01,x)
        .byte   $80
        brk
        bmi     L9D2B
L9D2B:  brk
        .byte   $80
        brk
        brk
        .byte   $80
        brk
        bvc     L9CB3
        lda     #$50
        sta     ($03,x)
        .byte   $80
L9D38:  brk
        bvc     L9CBB
        brk
        brk
        .byte   $7F
        .byte   $04
        .byte   $80
L9D40:  .byte   $A3
        bvs     L9D44
        .byte   $F0
L9D44:  ora     $FC
        asl     $FB01
        sed
        .byte   $02
        .byte   $FA
        .byte   $0C
        sed
        .byte   $FC
        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        .byte   $A5
L9D56:  brk
        ora     ($01,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        lda     L8130
        ora     L0080
        brk
        brk
        .byte   $80
L9D67:  ldx     $50,y
        sta     ($04,x)
        .byte   $80
        brk
        bvc     L9CEF
        lda     $40
        ora     ($01,x)
        .byte   $80
        brk
        rti

        brk
        brk
        .byte   $80
        brk
L9D7A:  brk
        .byte   $80
        sty     $70,x
        ora     ($0A,x)
        sbc     $05,x
        .byte   $FC
        asl     a
        sed
        .byte   $FC
        ora     ($0C,x)
        .byte   $80
        brk
        brk
        .byte   $7F
L9D8C:  .byte   $03
        .byte   $80
        lda     L8100
        ora     L0080
L9D93:  brk
        brk
        .byte   $80
        .byte   $BB
        bmi     L9D1A
L9D99:  ora     L0080
        brk
        brk
        .byte   $80
        .byte   $C3
        bvc     L9D22
        ora     L0080
        .byte   $AD
L9DA4:  rti

        sta     ($05,x)
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        .byte   $9E
        bvs     L9DA4
        ora     ($01,x)
        asl     a
        sbc     $0C,x
        .byte   $80
        brk
        .byte   $10
L9DB7:  .byte   $80
        lda     #$10
        sta     ($03,x)
        .byte   $80
        brk
        bpl     L9D40
        brk
        brk
        .byte   $80
        .byte   $BB
        brk
        sta     ($05,x)
        .byte   $80
        brk
        brk
        .byte   $80
        cmp     #$30
L9DCD:  sta     ($05,x)
        .byte   $80
        brk
        brk
        .byte   $80
L9DD3:  brk
        bvc     L9D56
        .byte   $D4
        bvc     L9DDA
        .byte   $01
L9DDA:  .byte   $80
        brk
        bvc     L9DDE
L9DDE:  .byte   $80
        .byte   $BB
        rti

        sta     ($05,x)
        .byte   $80
L9DE4:  brk
        bpl     L9D67
        lda     #$10
        sta     ($03,x)
        .byte   $80
        .byte   $9E
        bvs     L9DE4
        ora     #$01
L9DF1:  .byte   $80
        ldx     $10,y
        sta     ($04,x)
        .byte   $80
        brk
        bpl     L9D7A
        brk
        brk
        .byte   $80
        cmp     #$00
        sta     ($05,x)
        .byte   $80
        brk
        brk
        .byte   $80
        .byte   $D7
        bmi     L9E09
        .byte   $80
L9E09:  brk
        bmi     L9D8C
        cmp     $0130,y
        .byte   $80
        brk
        bmi     L9D93
        brk
        brk
        .byte   $80
        brk
        bvc     L9D99
        sbc     ($50,x)
        ora     ($01,x)
        .byte   $80
        brk
        bvc     L9E21
L9E21:  .byte   $80
        cmp     #$40
        sta     ($05,x)
        .byte   $80
        ldx     $10,y
        sta     ($03,x)
        .byte   $2B
        .byte   $80
        .byte   $9C
        bvs     L9E31
        .byte   $06
L9E31:  ora     (L0080,x)
        .byte   $C3
        bpl     L9DB7
        ora     L0080
        brk
        brk
        .byte   $80
        .byte   $D7
        brk
        ora     (L0080,x)
        brk
        brk
        .byte   $80
        cmp     $0100,y
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        brk
        bmi     L9DCD
        sbc     $30
        .byte   $80
        brk
        bmi     L9DD3
        inc     $30
        ora     (L0080,x)
        brk
        bmi     L9DDA
        brk
        brk
        .byte   $7F
        asl     L0080
        .byte   $D7
        rti

        ora     (L0080,x)
        brk
        rti

        .byte   $80
        cmp     $0140,y
        .byte   $80
        brk
        rti

        .byte   $80
        .byte   $C3
        bpl     L9DF1
        .byte   $04
        .byte   $80
        .byte   $A3
        bvs     L9E76
        .byte   $4E
L9E76:  .byte   $A7
        .byte   $5A
        .byte   $80
        .byte   $D4
        bpl     L9E7D
        .byte   $01
L9E7D:  .byte   $80
        brk
        bpl     L9E81
L9E81:  .byte   $80
        brk
        brk
        brk
        .byte   $80
        sbc     $00
        .byte   $80
        brk
        brk
        .byte   $80
        inc     $00
        ora     (L0080,x)
        brk
        brk
        .byte   $80
        .byte   $43
        .byte   $74
        eor     $0481,y
        ldx     #$05
        lsr     $04,x
        .byte   $A3
        ora     ($5D,x)
        ora     (L0080,x)
        brk
        brk
        .byte   $80
        sbc     $40
        .byte   $80
        brk
        rti

        .byte   $80
        inc     $40
        ora     (L0080,x)
        brk
        rti

        .byte   $80
        brk
        brk
        .byte   $80
        .byte   $D4
        bpl     L9EB8
        .byte   $01
L9EB8:  .byte   $80
        .byte   $97
        bvs     L9EBE
        .byte   $FA
        .byte   $01
L9EBE:  ora     ($0A,x)
        .byte   $80
        sbc     ($10,x)
        ora     ($01,x)
        .byte   $80
        lda     $40
        ora     ($01,x)
        .byte   $80
        brk
        rti

        brk
        brk
        .byte   $80
        brk
        brk
        .byte   $80
        brk
        bvs     L9ED6
L9ED6:  .byte   $80
        ldy     $74
        sta     ($06,x)
        .byte   $AB
L9EDC:  lsr     $81,x
        ora     L0080
        brk
        brk
        .byte   $80
        brk
        rts

        .byte   $80
        lda     #$60
        sta     ($03,x)
        .byte   $80
        brk
        rts

        .byte   $80
L9EEE:  sbc     ($10,x)
        ora     ($01,x)
        .byte   $80
        .byte   $9F
        bvs     L9EEE
        .byte   $FC
        ora     $06
        sbc     L0080,x
        brk
        brk
        brk
        brk
        .byte   $80
        lda     L8140
        ora     L0080
        brk
        brk
        .byte   $80
        brk
        bvs     L9F8A
        .byte   $0F
        .byte   $80
        brk
        brk
        .byte   $80
        .byte   $B6
L9F11:  rts

        sta     ($04,x)
        .byte   $80
        brk
        rts

        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        sty     $70,x
        .byte   $0C
        sed
        .byte   $80
        rol     $0171,x
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        .byte   $BB
        rti

        sta     ($05,x)
        .byte   $80
        brk
        brk
        .byte   $80
        brk
        bvs     L9FB5
        bpl     L9EB8
        .byte   $C3
        rts

        sta     ($05,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        .byte   $5C
        adc     ($01),y
        .byte   $80
        tya
        bvs     L9F50
        .byte   $80
        brk
        brk
        .byte   $7F
L9F4D:  .byte   $03
        .byte   $80
        .byte   $C9
L9F50:  rti

        sta     ($05,x)
        .byte   $80
        brk
        brk
        .byte   $80
        brk
        bvs     L9FD9
        bpl     L9EDC
        brk
        rts

        .byte   $80
        .byte   $D4
        rts

        .byte   $01
L9F62:  ora     (L0080,x)
        brk
        rts

        brk
        .byte   $80
        brk
L9F69:  brk
        .byte   $7F
        .byte   $03
L9F6C:  .byte   $80
        .byte   $9F
        bvs     L9F69
        .byte   $03
        sbc     $3F80,y
        adc     (L0080),y
        brk
        brk
        brk
        brk
        .byte   $80
        .byte   $D7
        rti

        ora     (L0080,x)
        brk
L9F80:  rti

        .byte   $80
        cmp     $0140,y
        .byte   $80
        brk
        rti

        .byte   $80
        brk
L9F8A:  brk
        .byte   $80
        brk
        bvs     LA00E
        bpl     L9F11
        brk
        rts

        .byte   $80
        sbc     ($60,x)
        ora     ($01,x)
        .byte   $80
        brk
        rts

        brk
        .byte   $80
        brk
        brk
        brk
L9FA0:  brk
        .byte   $80
        .byte   $5C
        adc     (L0080),y
        .byte   $93
        bvs     L9FB0
        .byte   $80
        rol     L8071,x
        .byte   $93
        bvs     L9FB7
        .byte   $80
L9FB0:  brk
        brk
        brk
        brk
        .byte   $80
L9FB5:  brk
        rti

L9FB7:  .byte   $80
        sbc     $40
        .byte   $80
        brk
        rti

        .byte   $80
        inc     $40
        ora     (L0080,x)
        brk
        rti

        .byte   $80
        brk
        brk
        .byte   $80
        brk
L9FC9:  bvs     LA04A
        bpl     L9F4D
        brk
L9FCE:  brk
        .byte   $7F
L9FD0:  php
        .byte   $80
        .byte   $9B
        bvs     L9FCE
        .byte   $80
        eor     L8071,x
L9FD9:  sty     $70,x
        .byte   $80
        .byte   $3F
        adc     (L0080),y
        .byte   $9F
        bvs     L9F62
        brk
        brk
        .byte   $7F
        ora     #$80
        brk
        bvs     LA069
        bpl     L9F6C
        brk
        brk
        .byte   $80
        lda     $30
L9FF1:  ora     ($01,x)
        .byte   $80
        brk
        bmi     L9FF7
L9FF7:  brk
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        .byte   $9F
        bvs     L9F80
        .byte   $5C
        adc     (L0080),y
        .byte   $93
        bvs     LA00B
        .byte   $03
        .byte   $80
        brk
        brk
        .byte   $7F
LA00B:  .byte   $03
LA00C:  .byte   $80
        brk
LA00E:  jsr     LA980
        jsr     L0381
        .byte   $80
        brk
        jsr     L0080
        brk
        .byte   $80
        brk
        .byte   $70
LA01D:  .byte   $7F
        bpl     L9FA0
        brk
        brk
        .byte   $80
        .byte   $AD
LA024:  bmi     *-125
        ora     L0080
        brk
        brk
        brk
        brk
        .byte   $80
LA02D:  .byte   $9B
LA02E:  bvs     LA02D
        .byte   $03
        .byte   $04
        sbc     L0080,y
LA035:  brk
        brk
        brk
        .byte   $80
        ldx     $20,y
LA03B:  sta     ($04,x)
        .byte   $80
        brk
        jsr     L0080
        brk
        .byte   $80
        brk
        bvs     LA0C6
        bpl     L9FC9
        brk
LA04A:  brk
        .byte   $80
        .byte   $BB
        bmi     L9FD0
        ora     L0080
        brk
        brk
        brk
        .byte   $80
        tya
        bvs     LA05F
        .byte   $FC
        brk
        sbc     $3E80,x
        .byte   $71
LA05E:  .byte   $01
LA05F:  .byte   $80
        brk
        brk
        brk
        .byte   $80
LA064:  .byte   $C3
        jsr     L0581
        .byte   $80
LA069:  brk
LA06A:  brk
        .byte   $80
        brk
        bvs     LA0EE
        bpl     L9FF1
LA071:  brk
        brk
        .byte   $80
        cmp     #$30
        sta     ($05,x)
        .byte   $80
        brk
        brk
        .byte   $80
        .byte   $5C
        adc     ($01),y
        .byte   $80
        tya
        bvs     LA086
        .byte   $04
        .byte   $80
        .byte   $3E
LA086:  adc     ($01),y
        .byte   $80
LA089:  .byte   $9F
        bvs     LA00C
        brk
        brk
        brk
        .byte   $80
        brk
        jsr     LD480
        jsr     L0101
        .byte   $80
        brk
        jsr     L8000
        brk
        brk
        .byte   $80
        brk
        bvs     LA121
        .byte   $10
LA0A3:  .byte   $80
        brk
        brk
        .byte   $80
        .byte   $D7
        bmi     LA0AB
        .byte   $80
LA0AB:  brk
        bmi     LA02E
        cmp     $0130,y
        .byte   $80
        brk
        bmi     LA035
LA0B5:  brk
        brk
        .byte   $80
        .byte   $9F
        bvs     LA03B
        .byte   $5C
        adc     ($01),y
LA0BE:  .byte   $80
        .byte   $9F
        bvs     LA0B5
        ora     ($0C,x)
        .byte   $F9
        .byte   $80
LA0C6:  brk
        brk
        brk
        .byte   $80
        brk
        jsr     LE180
        jsr     L0101
        .byte   $80
        brk
        jsr     L8000
        brk
        brk
        .byte   $80
        brk
        bvs     LA15B
        bpl     LA05E
        brk
        brk
        .byte   $80
LA0E1:  brk
        bmi     LA064
        sbc     $30
        .byte   $80
        brk
        bmi     LA06A
        inc     $30
        ora     (L0080,x)
LA0EE:  brk
        bmi     LA071
        brk
        brk
        .byte   $80
        tya
        bvs     LA0FE
        sbc     $06,x
        ora     ($FD,x)
        .byte   $FC
LA0FC:  .byte   $0D
        .byte   $F2
LA0FE:  .byte   $80
LA0FF:  brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        brk
        bvs     LA186
        bpl     LA089
        brk
        brk
        .byte   $7F
        asl     L0080
        sty     $70,x
LA110:  ora     $05F2
        .byte   $03
        .byte   $04
        .byte   $FC
        ora     ($01,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        php
        .byte   $80
        brk
        bvs     LA1A0
LA121:  .byte   $10
LA122:  .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        .byte   $9C
        bvs     LA12C
        .byte   $FE
LA12C:  .byte   $04
        sbc     $0803,y
        ora     ($F4,x)
        brk
        .byte   $80
        brk
        brk
        .byte   $7F
        asl     L0080
        brk
        bvs     LA1BB
        bpl     LA0BE
        brk
LA13F:  brk
        .byte   $7F
        ora     L0080
        tya
        bvs     LA146
LA146:  .byte   $0B
        ora     ($F7,x)
        sbc     $0403,x
        sbc     L80FC,y
        lda     ($74),y
        ora     (L0080,x)
        sta     $FA70,y
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $04
LA15B:  .byte   $80
        brk
        bvs     LA1DE
        bpl     LA0E1
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        sty     $70,x
        ora     L0080
        .byte   $B3
        .byte   $74
        .byte   $80
LA16D:  sty     $72,x
        .byte   $80
        .byte   $93
        bvs     LA178
        .byte   $07
        .byte   $FC
        .byte   $80
        .byte   $3E
        .byte   $71
LA178:  .byte   $80
        .byte   $93
        bvs     LA0FC
        rol     $0171,x
        .byte   $80
LA180:  .byte   $9F
        bvs     LA180
        ora     ($FB,x)
        .byte   $80
LA186:  brk
        brk
        .byte   $7F
        .byte   $04
        .byte   $80
        brk
        bvs     LA20D
        bpl     LA110
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        tya
        bvs     LA19C
        ora     ($02,x)
        .byte   $80
        .byte   $5C
LA19C:  adc     ($01),y
        .byte   $80
        .byte   $94
LA1A0:  bvs     LA122
        eor     L8071,x
        .byte   $97
        bvs     LA1AA
        .byte   $FA
        .byte   $0C
LA1AA:  sbc     $010B,y
        .byte   $80
        .byte   $B2
        .byte   $74
        .byte   $80
        sta     $FA70,y
        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        brk
LA1BB:  bvs     LA23C
        bpl     LA13F
        brk
        brk
        brk
        .byte   $80
        tya
        bvs     LA146
        .byte   $5C
        adc     ($01),y
        .byte   $80
        .byte   $A3
        bvs     LA1CE
        .byte   $F4
LA1CE:  .byte   $07
        sbc     $05,x
        .byte   $FC
        asl     a
        sbc     $02,x
        sbc     $3E80,x
        adc     ($01),y
        .byte   $80
        sty     $70,x
        .byte   $01
LA1DE:  .byte   $FF
        ora     (L0080,x)
        brk
        brk
        .byte   $80
        sty     $70,x
        ora     (L0080,x)
        brk
        brk
        .byte   $7F
        bpl     LA16D
        sty     $70,x
        ora     $07
        .byte   $FF
        .byte   $F3
        ora     (L0080,x)
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
        .byte   $0B
        sbc     $05,x
        asl     $F5
        .byte   $05
LA20D:  .byte   $5A
        .byte   $A7
        .byte   $5A
        lda     $5A
        .byte   $A7
        .byte   $5A
        lda     $5A
        .byte   $A7
        .byte   $5A
        lda     $5A
        .byte   $A7
        .byte   $5A
        lda     ($05,x)
        brk
        .byte   $FA
        php
        sbc     $F507,x
        ora     ($0A,x)
        sbc     $0601,x
        ora     ($F0,x)
        .byte   $0C
        .byte   $F4
        ora     $07
        .byte   $F4
        ora     $00
        .byte   $FA
        .byte   $80
        .byte   $B2
        .byte   $74
        .byte   $80
        sta     $FA70,y
        .byte   $80
        .byte   $B2
LA23C:  .byte   $74
        .byte   $80
        sta     $FA70,y
        .byte   $0C
        .byte   $80
        .byte   $B2
        .byte   $74
        .byte   $80
        sta     $FA70,y
        .byte   $0C
        .byte   $80
        .byte   $B2
        .byte   $74
        .byte   $80
        sta     $FA70,y
        .byte   $0C
        .byte   $80
        .byte   $B2
        .byte   $74
        .byte   $80
        sta     $FA70,y
        .byte   $0C
        sbc     $05,x
        brk
        .byte   $FA
        .byte   $0C
        .byte   $FF
        .byte   $FB
        .byte   $FA
LA262:  .byte   $0B
        sbc     $10,x
        ora     (L0080,x)
        ldy     $14,x
        sta     ($03,x)
        .byte   $FF
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        sta     ($03,x)
        sbc     $FD01,x
        sta     ($05,x)
        sbc     $FF01,x
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     ($FD,x)
        ora     ($05,x)
        sta     ($04,x)
        .byte   $FF
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        sta     ($04,x)
        .byte   $FB
        .byte   $03
        .byte   $FB
        ora     ($01,x)
        .byte   $03
        ora     ($01,x)
        .byte   $FB
        ora     ($01,x)
        .byte   $FF
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     ($01,x)
        .byte   $FB
        ora     ($07,x)
        ora     (L0080,x)
        brk
        bpl     LA338
        and     L0080
        cpy     $14
        sta     ($03,x)
        .byte   $80
        brk
        bpl     LA342
        ora     #$80
        iny
        .byte   $14
        sta     ($11,x)
        .byte   $80
        brk
        bpl     LA34C
        ora     #$80
        .byte   $DA
        .byte   $14
        ora     ($E7,x)
        .byte   $1A
        .byte   $80
        brk
        bpl     LA357
        ora     #$80
        cmp     L8114,x
        .byte   $07
        .byte   $80
        brk
        bpl     LA262
        sbc     $14
        sta     ($08,x)
        .byte   $80
        brk
        bpl     LA369
        ora     #$80
        inc     $D714
        ora     ($01,x)
        .byte   $80
        brk
        bpl     LA374
        and     L0080
        .byte   $DA
        .byte   $14
        ora     ($E7,x)
        .byte   $1A
        .byte   $80
        brk
        bpl     LA37F
        and     L0080
        inc     $D714
        ora     ($01,x)
        .byte   $80
        brk
        bpl     LA38A
        and     L0080
        .byte   $DA
        .byte   $14
        ora     ($E7,x)
        .byte   $1A
        .byte   $80
        brk
        bpl     LA395
        and     L0080
        inc     $D714
        ora     ($29,x)
        .byte   $80
        brk
        bpl     LA3A0
        and     L0080
        beq     LA339
        .byte   $EB
        cmp     L8001,x
        brk
        bpl     LA3AB
        and     L0080
        clv
        .byte   $14
        ora     ($07,x)
        ora     (L0080,x)
        brk
        bpl     LA3B6
        .byte   $25
LA338:  .byte   $80
LA339:  cpy     #$14
        sta     ($03,x)
        .byte   $80
        brk
        bpl     LA3C0
        .byte   $25
LA342:  .byte   $80
        cpy     $14
        ora     ($01,x)
        and     #$80
        brk
        bpl     LA3CB
LA34C:  and     L0080
        beq     LA364
        .byte   $EB
        cmp     L8001,y
        brk
        bpl     LA3D6
LA357:  and     L0080
        ldy     $14,x
        ora     ($05,x)
        ora     (L0080,x)
        brk
        bpl     LA3E1
        and     L0080
LA364:  tsx
        .byte   $14
        ora     ($07,x)
        .byte   $01
LA369:  .byte   $80
        brk
        bpl     LA3EC
        and     L0080
        cpy     $14
        ora     ($01,x)
        .byte   $29
LA374:  .byte   $80
        brk
        bpl     LA3F7
        and     L0080
        beq     LA390
        .byte   $EB
        .byte   $DD
        .byte   $01
LA37F:  .byte   $80
        brk
        bpl     LA402
        and     L0080
        clv
        .byte   $14
        ora     ($07,x)
        .byte   $01
LA38A:  .byte   $80
        brk
        bpl     LA40D
        and     L0080
LA390:  cpy     #$14
        sta     ($03,x)
        .byte   $80
LA395:  brk
        bpl     LA417
        and     L0080
        cpy     $14
        sta     ($03,x)
        .byte   $80
        brk
LA3A0:  bpl     LA421
        and     L0080
        .byte   $DA
        .byte   $14
        ora     ($E7,x)
        .byte   $1A
        .byte   $80
        brk
LA3AB:  bpl     LA42C
        and     L0080
        inc     $D714
        ora     ($01,x)
        .byte   $80
        brk
LA3B6:  bpl     LA437
        and     L0080
        .byte   $DA
        .byte   $14
        ora     ($E7,x)
        .byte   $1A
        .byte   $80
LA3C0:  brk
        bpl     LA442
        and     L0080
        inc     $D714
        ora     ($01,x)
        .byte   $80
LA3CB:  brk
        bpl     LA44D
        and     L0080
        .byte   $DA
        .byte   $14
        ora     ($E7,x)
        .byte   $1A
        .byte   $80
LA3D6:  brk
        bpl     LA458
        and     L0080
        inc     $D714
        ora     ($29,x)
        .byte   $80
LA3E1:  brk
        bpl     LA463
        and     L0080
        beq     LA3FC
        .byte   $EB
        cmp     $3C01,y
LA3EC:  ora     ($01,x)
        .byte   $FF
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        .byte   $02
        .byte   $FE
LA3F7:  .byte   $02
        ora     ($C3,x)
        ora     ($3D,x)
LA3FC:  .byte   $FF
        .byte   $BF
        ora     ($41,x)
        .byte   $FF
        .byte   $C3
LA402:  ora     ($3D,x)
        .byte   $FC
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
LA40D:  ora     (L00FF,x)
        ora     ($02,x)
        .byte   $BF
        ora     ($05,x)
        ora     ($3C,x)
        .byte   $01
LA417:  .byte   $FF
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        .byte   $01
LA421:  .byte   $FF
        ora     ($C8,x)
        ora     ($36,x)
        ora     ($C2,x)
        ora     ($3C,x)
        ora     ($C8,x)
LA42C:  ora     ($36,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        .byte   $01
LA437:  .byte   $FF
        ora     (L00FF,x)
        ora     ($C2,x)
        ora     ($00,x)
        brk
        ora     ($00,x)
        .byte   $02
LA442:  brk
        .byte   $03
        brk
        .byte   $04
        brk
        ora     $00
        asl     $00
        .byte   $07
        brk
LA44D:  php
        brk
        ora     #$00
        asl     a
        brk
        .byte   $0B
        brk
        .byte   $0C
        brk
        .byte   $0D
LA458:  brk
        asl     $0F00
        brk
        bpl     LA45F
LA45F:  ora     ($20),y
        .byte   $12
        .byte   $20
LA463:  .byte   $13
        jsr     L2014
        ora     $20,x
        asl     $20,x
        .byte   $17
        jsr     L0018
        ora     $1A00,y
        brk
        .byte   $1B
        brk
        .byte   $1C
        brk
        ora     $1E00,x
        bvs     LA49B
        bvs     LA49E
        brk
        and     ($70,x)
        .byte   $22
        bvs     LA4A7
        brk
        bit     $00
        and     $40
        rol     $40
        .byte   $27
        rti

        plp
        rti

        and     #$40
        rol     a
        rti

        .byte   $2B
        rti

        bit     $2D40
        brk
        .byte   $2E
        brk
LA49B:  .byte   $2F
        brk
        .byte   $30
LA49E:  brk
        and     ($00),y
        .byte   $32
        brk
        .byte   $33
        brk
        .byte   $34
        brk
LA4A7:  and     $00,x
        rol     $00,x
        .byte   $37
        brk
        sec
        brk
        and     $3A00,y
        brk
        .byte   $3B
        brk
        .byte   $3C
        brk
        and     $3E00,x
        brk
        .byte   $3F
        brk
        rti

        brk
        eor     ($00,x)
        .byte   $42
        brk
        .byte   $43
        brk
        .byte   $44
        brk
        eor     $00
        lsr     $00
        .byte   $47
        brk
        pha
        brk
        eor     #$00
        lsr     a
        brk
        .byte   $4B
        brk
        jmp     L4D00

        brk
        lsr     $4F00
        brk
        bvc     LA4DF
LA4DF:  eor     ($00),y
        .byte   $52
        brk
        .byte   $53
        brk
        .byte   $54
        brk
        eor     $00,x
        lsr     $00,x
        .byte   $57
        brk
        cli
        brk
        eor     $5A00,y
        brk
        .byte   $5B
        brk
        .byte   $5C
        brk
        eor     $5E00,x
        brk
        .byte   $5F
        brk
        rts

        brk
        adc     ($00,x)
        .byte   $62
        brk
        .byte   $63
        bmi     LA56A
        brk
        adc     $00
        ror     $00
        .byte   $67
        brk
        pla
        brk
        adc     #$00
        ror     a
        brk
        .byte   $6B
        brk
        jmp     (L6D00)

        brk
        ror     $6F00
        brk
        bvs     LA51F
LA51F:  adc     ($00),y
        .byte   $72
        brk
        .byte   $73
        brk
        .byte   $74
        bmi     LA59D
        bmi     LA5A0
        bmi     LA5A3
        bmi     LA5A6
        bmi     LA5A9
        brk
        .byte   $7A
        brk
        .byte   $7B
        brk
        .byte   $7C
        brk
        adc     $7E00,x
        brk
        .byte   $7F
        brk
        .byte   $80
        brk
        sta     ($00,x)
        .byte   $82
        brk
        .byte   $83
        brk
        sty     $00
        sta     $00
        stx     $00
        .byte   $87
        brk
        dey
        brk
        .byte   $89
        brk
        txa
        brk
        .byte   $87
        brk
        .byte   $8B
        brk
        .byte   $87
        brk
        sty     L8D00
        brk
        stx     L8F00
        brk
        bcc     LA563
LA563:  sta     ($00),y
        .byte   $14
        .byte   $04
        ora     $04,x
        .byte   $16
LA56A:  .byte   $04
        .byte   $17
        .byte   $04
        clc
        .byte   $04
        ora     $1A04,y
        .byte   $04
        .byte   $1B
        .byte   $04
        .byte   $1C
        .byte   $04
        ora     $1E04,x
        .byte   $04
        .byte   $1F
        .byte   $04
        .byte   $80
        .byte   $03
        .byte   $80
        .byte   $03
        .byte   $80
        .byte   $03
        .byte   $80
        .byte   $03
        .byte   $80
        .byte   $03
        .byte   $80
        .byte   $03
        .byte   $80
        .byte   $03
        .byte   $80
        .byte   $03
        .byte   $80
        .byte   $03
        .byte   $80
        .byte   $03
        .byte   $87
        .byte   $03
        .byte   $87
        .byte   $03
        .byte   $87
        .byte   $03
        .byte   $87
        .byte   $03
        .byte   $87
        .byte   $03
        .byte   $87
        .byte   $03
LA59D:  .byte   $87
        .byte   $03
        .byte   $87
LA5A0:  .byte   $03
        .byte   $87
        .byte   $03
LA5A3:  .byte   $87
        .byte   $03
        .byte   $20
LA5A6:  .byte   $04
        and     ($04,x)
LA5A9:  .byte   $22
        .byte   $04
        .byte   $23
        .byte   $04
        bit     $04
        and     $04
        .byte   $80
        .byte   $03
        txa
        brk
        .byte   $80
        brk
        .byte   $80
        .byte   $03
        .byte   $87
        brk
        .byte   $83
        brk
        rol     $04
        .byte   $27
        .byte   $04
        plp
        .byte   $04
        and     #$04
        .byte   $87
        .byte   $03
        .byte   $87
        brk
        sta     ($00,x)
        .byte   $87
        .byte   $03
        rol     a
        .byte   $04
        .byte   $2B
        .byte   $04
        bit     $2D04
        .byte   $04
        bit     $04
        and     $04
        .byte   $80
        .byte   $03
        .byte   $82
        brk
        txa
        brk
        .byte   $80
        brk
        rol     L8704
        brk
        .byte   $87
        brk
        .byte   $2F
        .byte   $04
        plp
        .byte   $04
        and     #$04
        .byte   $87
        .byte   $03
        .byte   $83
        brk
        .byte   $87
        brk
        sta     ($00,x)
        and     ($04,x)
        bmi     LA5FD
        and     ($04,x)
        and     ($04),y
LA5FD:  bit     $04
        and     $04
        .byte   $80
        .byte   $03
        dey
        brk
        .byte   $80
        brk
        .byte   $80
        brk
        sta     $3200
        .byte   $04
        .byte   $83
        brk
        .byte   $33
        .byte   $04
        plp
        .byte   $04
        and     #$04
        .byte   $87
        .byte   $03
        .byte   $89
        brk
        sta     ($00,x)
        sta     ($00,x)
        .byte   $34
        .byte   $04
        and     $04,x
        .byte   $34
        .byte   $04
        rol     $04,x
        .byte   $34
        .byte   $04
        .byte   $37
        .byte   $04
        .byte   $80
        .byte   $03
        sec
        .byte   $04
        and     $3904,y
        .byte   $04
        .byte   $3A
        .byte   $04
        .byte   $3B
        .byte   $04
        .byte   $3A
        .byte   $04
        .byte   $3C
        .byte   $04
        and     $3E04,x
        .byte   $04
        .byte   $87
        .byte   $03
        .byte   $3F
        .byte   $04
        rti

        .byte   $04
        rti

        .byte   $04
        and     $2B04
        .byte   $04
        .byte   $22
        .byte   $04
        bit     $2004
        .byte   $04
        .byte   $80
        .byte   $03
        .byte   $80
        .byte   $03
        .byte   $80
        .byte   $03
        .byte   $80
        .byte   $03
        .byte   $80
        .byte   $03
        .byte   $2F
        .byte   $04
        .byte   $87
        brk
        rol     $04
        .byte   $87
        brk
        .byte   $87
        brk
        .byte   $87
        .byte   $03
        .byte   $87
        .byte   $03
        .byte   $87
        .byte   $03
        .byte   $87
        .byte   $03
        .byte   $87
        .byte   $03
        .byte   $E7
        .byte   $52
        inx
        .byte   $52
        sbc     #$52
        nop
        .byte   $52
        .byte   $F4
        .byte   $52
        sbc     $52,x
        inc     $52,x
        .byte   $F7
        .byte   $52
        ora     ($53,x)
        .byte   $02
        .byte   $53
        .byte   $03
        .byte   $53
        .byte   $04
        .byte   $53
        .byte   $0B
        .byte   $53
        .byte   $0C
        .byte   $53
        ora     $0453
        .byte   $53
        .byte   $12
        .byte   $53
        .byte   $13
        .byte   $53
        .byte   $14
        .byte   $53
        .byte   $04
        .byte   $53
        .byte   $1C
        .byte   $53
        ora     $1E53,x
        .byte   $53
        .byte   $1F
        .byte   $53
        .byte   $E7
        .byte   $52
        inx
        .byte   $52
        sbc     #$52
        nop
        .byte   $52
        .byte   $F4
        .byte   $52
        sbc     $52,x
        inc     $52,x
        .byte   $F7
        .byte   $52
        ora     ($53,x)
        .byte   $02
        .byte   $53
        sbc     $0454,y
        .byte   $53
        .byte   $0B
        .byte   $53
        .byte   $FA
        .byte   $54
        ora     $0453
        .byte   $53
        .byte   $12
        .byte   $53
        .byte   $13
        .byte   $53
        .byte   $14
        .byte   $53
        .byte   $04
        .byte   $53
        .byte   $1C
        .byte   $53
        ora     $1E53,x
        .byte   $53
        .byte   $1F
        .byte   $53
        .byte   $E7
        .byte   $52
        .byte   $FB
        .byte   $54
        .byte   $FC
        .byte   $54
        nop
        .byte   $52
        sbc     $FE54,x
        .byte   $54
        .byte   $FF
        .byte   $54
        .byte   $F7
        .byte   $52
        brk
        eor     $01,x
        eor     $02,x
        eor     $03,x
        eor     $04,x
        eor     $05,x
        eor     $06,x
        eor     $07,x
        eor     $08,x
        eor     $09,x
        eor     $0A,x
        eor     $07,x
        eor     $0B,x
        eor     $0C,x
        eor     $0D,x
        eor     $0E,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        ora     (L0055),y
        .byte   $12
        eor     $13,x
        eor     $F7,x
        .byte   $52
        .byte   $14
        eor     $12,x
        eor     $15,x
        eor     $03,x
        eor     $16,x
        eor     $12,x
        eor     $17,x
        eor     $07,x
        eor     L0018,x
        eor     $12,x
        eor     $19,x
        eor     $07,x
        eor     $1A,x
        eor     $1B,x
        eor     $1C,x
        eor     $1D,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        asl     a:L0055,x
        bvc     LA759
        eor     $F7,x
        .byte   $52
        jsr     L0055
        bvc     LA742
LA742:  bvc     LA747
        eor     $21,x
        .byte   $55
LA747:  brk
        bvc     LA74A
LA74A:  bvc     LA753
        eor     $21,x
        eor     $00,x
        bvc     LA752
LA752:  .byte   $50
LA753:  .byte   $07
        eor     $22,x
        eor     $1B,x
        .byte   $55
LA759:  .byte   $1B
        eor     $23,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LA789
        eor     $25,x
        eor     $26,x
        eor     $00,x
        bvc     LA772
LA772:  bvc     LA79B
        eor     $28,x
        eor     $00,x
        bvc     LA77A
LA77A:  bvc     LA7A3
        eor     $28,x
        eor     $00,x
        bvc     LA782
LA782:  bvc     LA7AB
        eor     $29,x
        eor     $1B,x
        .byte   $55
LA789:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LA7B9
        .byte   $55
LA79B:  and     L0055
        rol     L0055
        .byte   $2B
        eor     $00,x
        .byte   $50
LA7A3:  .byte   $27
        eor     $2C,x
        eor     $2D,x
        eor     $2E,x
        .byte   $55
LA7AB:  .byte   $27
        eor     $2F,x
        eor     $30,x
        eor     $31,x
        eor     $32,x
        eor     $33,x
        eor     $34,x
        .byte   $55
LA7B9:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LA7E9
        eor     $25,x
        eor     $26,x
        eor     $35,x
        eor     $36,x
        eor     $27,x
        eor     $28,x
        eor     $37,x
        eor     $38,x
        eor     $27,x
        eor     $39,x
        eor     $3A,x
        eor     $3B,x
        eor     $3C,x
        eor     $29,x
        eor     $1B,x
        .byte   $55
LA7E9:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LA819
        eor     $25,x
        eor     $3D,x
        eor     $3E,x
        eor     $3F,x
        eor     $27,x
        eor     $40,x
        eor     $41,x
        eor     $42,x
        eor     $27,x
        eor     $43,x
        eor     $44,x
        eor     $45,x
        eor     $27,x
        eor     $46,x
        eor     $1B,x
        .byte   $55
LA819:  .byte   $47
        eor     $48,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LA849
        eor     $25,x
        eor     $26,x
        eor     $49,x
        eor     $4A,x
        eor     $27,x
        eor     $28,x
        eor     $4B,x
        eor     $4C,x
        eor     $27,x
        eor     $4D,x
        eor     $4E,x
        eor     $4F,x
        eor     $3C,x
        eor     $29,x
        eor     $1B,x
        .byte   $55
LA849:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LA879
        eor     $25,x
        eor     $26,x
        eor     $00,x
        bvc     LA8B2
        eor     $27,x
        eor     $28,x
        eor     $51,x
        eor     $52,x
        eor     $53,x
        eor     $54,x
        eor     L0055,x
        eor     $56,x
        eor     $57,x
        eor     $29,x
        eor     $1B,x
        .byte   $55
LA879:  cli
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LA8A9
        eor     $25,x
        eor     $26,x
        eor     $59,x
        eor     $5A,x
        eor     $27,x
        eor     $28,x
        eor     $5B,x
        eor     $5C,x
        eor     $27,x
        eor     $5D,x
        eor     $5E,x
        eor     $5F,x
        eor     $27,x
        eor     $29,x
        eor     $1B,x
        .byte   $55
LA8A9:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
LA8B2:  eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LA8D9
        eor     $25,x
        eor     $26,x
        eor     $60,x
        eor     $61,x
        eor     $27,x
        eor     $28,x
        eor     $62,x
        eor     $63,x
        eor     $27,x
        eor     $28,x
        eor     $64,x
        eor     $65,x
        eor     $27,x
        eor     $29,x
        eor     $66,x
        .byte   $55
LA8D9:  .byte   $67
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LA909
        eor     $25,x
        eor     $26,x
        eor     $68,x
        eor     $69,x
        eor     $27,x
        eor     $28,x
        eor     $6A,x
        eor     $6B,x
        eor     $27,x
        eor     $28,x
        eor     $6C,x
        eor     $6D,x
        eor     $27,x
        eor     $29,x
        eor     $6E,x
        .byte   $55
LA909:  .byte   $6F
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LA939
        eor     $25,x
        eor     $26,x
        eor     $00,x
        bvc     LA922
LA922:  bvc     LA94B
        eor     $28,x
        eor     $70,x
        eor     $71,x
        eor     $27,x
        eor     $72,x
        eor     $73,x
        eor     $74,x
        eor     $27,x
        eor     $29,x
        eor     $75,x
        .byte   $55
LA939:  ror     L0055,x
        rol     a
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
LA947:  .byte   $77
        eor     $78,x
        .byte   $55
LA94B:  and     L0055
        adc     $7A55,y
        eor     $7B,x
        eor     $7C,x
        eor     $7D,x
        eor     $7E,x
        eor     $7F,x
        eor     L0080,x
        eor     $28,x
        eor     $00,x
        bvc     LA962
LA962:  bvc     LA98B
        eor     $29,x
        eor     $1B,x
        eor     $1B,x
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LA999
        eor     $25,x
        eor     $26,x
        eor     $81,x
LA980:  eor     $82,x
        eor     $27,x
        eor     $28,x
        eor     $83,x
        eor     $84,x
        .byte   $55
LA98B:  .byte   $27
        eor     $28,x
        eor     $85,x
        eor     $86,x
        eor     $27,x
        eor     $29,x
        eor     $87,x
        .byte   $55
LA999:  dey
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LA9C9
        eor     $25,x
        eor     $26,x
        eor     $89,x
        eor     $8A,x
        eor     $27,x
        eor     $28,x
        eor     $8B,x
        eor     $8C,x
        eor     $27,x
        eor     $8D,x
        eor     $8E,x
        eor     $8F,x
        eor     $27,x
        eor     $33,x
        eor     $90,x
        .byte   $55
LA9C9:  sta     (L0055),y
        rol     a
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LA9F9
        eor     $25,x
        eor     $26,x
        eor     $92,x
        eor     $69,x
        eor     $27,x
        eor     $28,x
        eor     $93,x
        eor     $6B,x
        eor     $27,x
        eor     $28,x
        eor     $6C,x
        eor     $6D,x
        eor     $27,x
        eor     $29,x
        eor     $6E,x
        .byte   $55
LA9F9:  .byte   $6F
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAA29
        eor     $25,x
        eor     $26,x
        eor     $94,x
        eor     $95,x
        eor     $27,x
        eor     $28,x
        eor     $96,x
        eor     $97,x
        eor     $27,x
        eor     $28,x
        eor     $85,x
        eor     $86,x
        eor     $27,x
        eor     $29,x
        eor     $87,x
        .byte   $55
LAA29:  dey
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        tya
        eor     $99,x
        eor     $25,x
        eor     $26,x
        eor     $9A,x
        eor     $9B,x
        eor     $27,x
        eor     $28,x
        eor     $9C,x
        eor     $9D,x
        eor     $27,x
        eor     $28,x
        eor     $9E,x
        eor     $9F,x
        eor     $27,x
        eor     $29,x
        eor     $1B,x
        eor     $1B,x
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        ldy     #$55
        lda     (L0055,x)
        nop
        .byte   $52
        bit     L0055
        ldx     #$55
        .byte   $A3
        eor     $25,x
        eor     $26,x
        eor     $A4,x
        eor     $A5,x
        eor     $27,x
        eor     $28,x
        eor     $00,x
        bvc     LAA7A
LAA7A:  bvc     LAAA3
        eor     $28,x
        eor     $00,x
        bvc     LAA82
LAA82:  bvc     LAAAB
        eor     $29,x
        eor     $1B,x
        eor     $1B,x
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAAB9
        eor     $25,x
        eor     $26,x
        eor     $A6,x
        eor     $A7,x
        .byte   $55
LAAA3:  .byte   $27
        eor     $A8,x
        eor     $A9,x
        eor     $AA,x
        .byte   $55
LAAAB:  .byte   $27
        eor     $AB,x
        eor     $AC,x
        eor     $AD,x
        eor     $27,x
        eor     $33,x
        eor     $34,x
        .byte   $55
LAAB9:  ldx     $2A55
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAAE9
        eor     $25,x
        eor     $26,x
        eor     $AF,x
        eor     $B0,x
        eor     $27,x
        eor     $28,x
        eor     $B1,x
        eor     $B2,x
        eor     $B3,x
        eor     $B4,x
        eor     $B5,x
        eor     $B6,x
        eor     $27,x
        eor     $29,x
        eor     $B7,x
        .byte   $55
LAAE9:  cli
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAB19
        eor     $25,x
        eor     $B8,x
        eor     $B9,x
        eor     $BA,x
        eor     $27,x
        eor     $BB,x
        eor     $BC,x
        eor     $BD,x
        eor     $27,x
        eor     $AB,x
        eor     $AC,x
        eor     $AD,x
        eor     $27,x
        eor     $33,x
        eor     $34,x
        .byte   $55
LAB19:  ldx     $2A55
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAB49
        eor     $25,x
        eor     $26,x
        eor     $BE,x
        eor     $61,x
        eor     $BF,x
        eor     $28,x
        eor     $C0,x
        eor     $C1,x
        eor     $C2,x
        eor     $B4,x
        eor     $B5,x
        eor     $B6,x
        eor     $27,x
        eor     $29,x
        eor     $B7,x
        .byte   $55
LAB49:  cli
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        .byte   $C3
        eor     $C4,x
        eor     $25,x
        eor     $C5,x
        eor     $C6,x
        eor     $C7,x
        eor     $C8,x
        eor     $28,x
        eor     $C9,x
        eor     $CA,x
        eor     $27,x
        eor     $28,x
        eor     $CB,x
        eor     $CC,x
        eor     $27,x
        eor     $29,x
        eor     $1B,x
        eor     $1B,x
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LABA9
        eor     $25,x
        eor     $26,x
        eor     $CD,x
        eor     $00,x
        bvc     LABBB
        eor     $CE,x
        eor     $CF,x
        eor     $D0,x
        eor     $27,x
        eor     $D1,x
        eor     $D2,x
        eor     $AD,x
        eor     $27,x
        eor     $33,x
        eor     $34,x
        .byte   $55
LABA9:  ldx     $2A55
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LABD9
        .byte   $55
LABBB:  and     L0055
        rol     L0055
        .byte   $D3
        eor     $D4,x
        eor     $27,x
        eor     $28,x
        eor     $D5,x
        eor     $D6,x
        eor     $D7,x
        eor     $B4,x
        eor     $D8,x
        eor     $D9,x
        eor     $27,x
        eor     $29,x
        eor     $B7,x
        .byte   $55
LABD9:  cli
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        .byte   $C3
        eor     $C4,x
        eor     $25,x
        eor     $26,x
        eor     $DA,x
        eor     $DB,x
        eor     $27,x
        eor     $28,x
        eor     $DC,x
        eor     $DD,x
        eor     $27,x
        eor     $28,x
        eor     $CB,x
        eor     $CC,x
        eor     $27,x
        eor     $29,x
        eor     $1B,x
        eor     $1B,x
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAC39
        eor     $25,x
        eor     $26,x
        eor     $DE,x
        eor     $69,x
        eor     $27,x
        eor     $28,x
        eor     $DF,x
        eor     $E0,x
        eor     $E1,x
        eor     $28,x
        eor     $E2,x
        eor     $E3,x
        eor     $27,x
        eor     $29,x
        eor     $1B,x
        .byte   $55
LAC39:  cpx     L0055
        rol     a
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAC69
        eor     $25,x
        eor     $26,x
        eor     $E5,x
        eor     $00,x
        bvc     LAC7B
        eor     $E6,x
        eor     $E7,x
        eor     $E8,x
        eor     $27,x
        eor     $8D,x
        eor     $E9,x
        eor     $EA,x
        eor     $27,x
        eor     $33,x
        eor     $EB,x
        .byte   $55
LAC69:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAC99
        .byte   $55
LAC7B:  and     L0055
        rol     L0055
        cpx     $ED55
        eor     $27,x
        eor     $28,x
        eor     $EE,x
        eor     $EF,x
        eor     $27,x
        eor     $28,x
        eor     $F0,x
        eor     $F1,x
        eor     $27,x
        eor     $29,x
        eor     $1B,x
        .byte   $55
LAC99:  sta     (L0055),y
        rol     a
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LACC9
        eor     $25,x
LACAC:  eor     $26,x
        eor     $00,x
        bvc     LACB2
LACB2:  bvc     LACDB
        eor     $28,x
        eor     $00,x
        bvc     LACAC
        eor     $F3,x
        eor     $28,x
        eor     $F4,x
        eor     $F5,x
        eor     $F6,x
        eor     $29,x
        eor     $1B,x
        .byte   $55
LACC9:  sta     (L0055),y
        rol     a
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LACF9
        .byte   $55
LACDB:  and     L0055
        .byte   $F7
        eor     $F8,x
        eor     $F9,x
        eor     $27,x
        eor     $FA,x
        eor     $FB,x
        eor     $FC,x
        eor     $27,x
        eor     $28,x
        .byte   $55
LACEF:  brk
        bvc     LACEF
        eor     $27,x
        eor     $29,x
        eor     $1B,x
        .byte   $55
LACF9:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAD29
        eor     $25,x
        eor     $FE,x
        eor     L00FF,x
        eor     $00,x
        lsr     $01,x
        lsr     $02,x
        lsr     $03,x
        lsr     $00,x
        bvc     LAD43
        eor     $28,x
        eor     $00,x
        bvc     LAD22
LAD22:  bvc     LAD4B
        eor     $29,x
        eor     $1B,x
        .byte   $55
LAD29:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        .byte   $04
        lsr     $1F,x
        eor     $25,x
        eor     $05,x
        lsr     $06,x
        lsr     $00,x
        .byte   $50
LAD43:  .byte   $27
        eor     $07,x
        lsr     $08,x
        lsr     $00,x
        .byte   $50
LAD4B:  .byte   $27
        eor     $28,x
        eor     $00,x
        bvc     LAD52
LAD52:  bvc     LAD7B
        eor     $29,x
        eor     $1B,x
        eor     $1B,x
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAD89
        eor     $25,x
        eor     $09,x
        lsr     $0A,x
        lsr     $0B,x
        lsr     $27,x
        eor     $0C,x
        lsr     $0D,x
        lsr     $0E,x
        .byte   $56
LAD7B:  .byte   $27
        eor     $28,x
        eor     $00,x
        bvc     LAD82
LAD82:  bvc     LADAB
        eor     $29,x
        eor     $1B,x
        .byte   $55
LAD89:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LADB9
        eor     $25,x
        eor     $26,x
        eor     $0F,x
        lsr     $00,x
        bvc     LADCB
        eor     $28,x
        eor     $10,x
        lsr     $11,x
        .byte   $56
LADAB:  .byte   $27
        eor     $28,x
        eor     $12,x
        lsr     $13,x
        lsr     $27,x
        eor     $29,x
        eor     $1B,x
        .byte   $55
LADB9:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LADE9
        .byte   $55
LADCB:  and     L0055
        rol     L0055
        brk
        bvc     LADD2
LADD2:  bvc     LADFB
        eor     $28,x
        eor     $14,x
        lsr     $15,x
        lsr     $27,x
        eor     $28,x
        eor     $16,x
        lsr     $17,x
        lsr     $27,x
        eor     $29,x
        eor     $1B,x
        .byte   $55
LADE9:  sta     (L0055),y
        rol     a
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAE19
        .byte   $55
LADFB:  .byte   $25
LADFC:  eor     $26,x
        eor     $00,x
        bvc     LAE02
LAE02:  bvc     LAE2B
        eor     $28,x
        eor     $00,x
        bvc     LADFC
        eor     $F3,x
        eor     $28,x
        eor     $F4,x
        eor     $F5,x
        eor     $F6,x
        eor     $29,x
        eor     $1B,x
        .byte   $55
LAE19:  sta     (L0055),y
        rol     a
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAE49
        .byte   $55
LAE2B:  and     L0055
        rol     L0055
        clc
        lsr     $19,x
        lsr     $27,x
        eor     $28,x
        eor     $1A,x
        lsr     $1B,x
        lsr     $27,x
        eor     $28,x
        eor     $1C,x
        lsr     $1D,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LAE49:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAE79
        eor     $25,x
        eor     $26,x
        eor     $20,x
        lsr     $21,x
        lsr     $27,x
        eor     $28,x
        eor     $22,x
        lsr     $23,x
        lsr     $27,x
        eor     $28,x
        eor     $24,x
        lsr     $25,x
        lsr     $27,x
        eor     $29,x
        eor     $26,x
        .byte   $56
LAE79:  .byte   $27
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAEA9
        eor     $25,x
        eor     $26,x
        eor     $28,x
        lsr     $29,x
        lsr     $27,x
        eor     $28,x
        eor     $2A,x
        lsr     $2B,x
        lsr     $27,x
        eor     $28,x
        eor     $2C,x
        lsr     $2D,x
        lsr     $27,x
        eor     $29,x
        eor     $1B,x
        .byte   $55
LAEA9:  .byte   $27
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAED9
        eor     $25,x
        eor     $26,x
        eor     $28,x
        lsr     $2E,x
        lsr     $27,x
        eor     $28,x
        eor     $2F,x
        lsr     $30,x
        lsr     $27,x
        eor     $28,x
        eor     $31,x
        lsr     $32,x
        lsr     $27,x
        eor     $29,x
        eor     $1B,x
        .byte   $55
LAED9:  .byte   $27
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAF09
        eor     $25,x
        eor     $26,x
        eor     $20,x
        lsr     $33,x
        lsr     $27,x
        eor     $28,x
        eor     $22,x
        lsr     $34,x
        lsr     $27,x
        eor     $28,x
        eor     $24,x
        lsr     $35,x
        lsr     $27,x
        eor     $29,x
        eor     $26,x
        .byte   $56
LAF09:  .byte   $27
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAF39
        eor     $25,x
        eor     $36,x
        lsr     $37,x
        lsr     $33,x
        lsr     $27,x
        eor     $28,x
        eor     $38,x
        lsr     $39,x
        lsr     $27,x
        eor     $28,x
        eor     $3A,x
        lsr     $3B,x
        lsr     $27,x
        eor     $29,x
        eor     $3C,x
        .byte   $56
LAF39:  and     $2A56,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAF69
        eor     $25,x
        eor     $26,x
        eor     $3E,x
        lsr     $3F,x
        lsr     $27,x
        eor     $28,x
        eor     $40,x
        lsr     $41,x
        lsr     $27,x
        eor     $28,x
        eor     $42,x
        lsr     $43,x
        lsr     $27,x
        eor     $29,x
        eor     $3C,x
        .byte   $56
LAF69:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAF99
        eor     $25,x
        eor     $26,x
        eor     $44,x
        lsr     $3F,x
        lsr     $27,x
        eor     $28,x
        eor     $45,x
        lsr     $46,x
        lsr     $27,x
        eor     $28,x
        eor     $47,x
        lsr     $48,x
        lsr     $27,x
        eor     $29,x
        eor     $3C,x
        .byte   $56
LAF99:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAFC9
        eor     $25,x
        eor     $26,x
        eor     $20,x
        lsr     $33,x
        lsr     $27,x
        eor     $28,x
        eor     $49,x
        lsr     $39,x
        lsr     $27,x
        eor     $28,x
        eor     $4A,x
        lsr     $3B,x
        lsr     $27,x
        eor     $29,x
        eor     $3C,x
        .byte   $56
LAFC9:  and     $2A56,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LAFF9
        eor     $25,x
        eor     $26,x
        eor     $98,x
        eor     $4B,x
        lsr     $27,x
        eor     $28,x
        eor     $4C,x
        lsr     $4D,x
        lsr     $27,x
        eor     $28,x
        eor     $1C,x
        lsr     $1D,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LAFF9:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB029
        eor     $25,x
        eor     $26,x
        eor     $4E,x
        lsr     $4F,x
        lsr     $27,x
        eor     $28,x
        .byte   $55
LB017:  .byte   $50
LB018:  .byte   $56
LB019:  eor     ($56),y
        .byte   $27
        eor     $28,x
        eor     $1C,x
        lsr     $1D,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LB029:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB059
        eor     $25,x
        eor     $26,x
        eor     L0018,x
        lsr     $19,x
        lsr     $52,x
        lsr     $28,x
        eor     $1A,x
        lsr     $1B,x
        lsr     $53,x
        lsr     $28,x
        eor     $1C,x
        lsr     $1D,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LB059:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB089
        eor     $25,x
        eor     $26,x
        eor     $54,x
        lsr     L0055,x
        lsr     $56,x
        lsr     $28,x
        eor     $1A,x
        lsr     $57,x
        lsr     $58,x
        lsr     $28,x
        eor     $1C,x
        lsr     $1D,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LB089:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB0B9
        eor     $25,x
        eor     $26,x
        eor     $59,x
        lsr     $5A,x
        lsr     $27,x
        eor     $28,x
        eor     $1A,x
        lsr     $5B,x
        lsr     $58,x
        lsr     $28,x
        eor     $1C,x
        lsr     $1D,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LB0B9:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB0E9
        eor     $25,x
        eor     $26,x
        eor     $5C,x
        lsr     $5D,x
        lsr     $27,x
        eor     $28,x
        eor     $5E,x
        lsr     $5F,x
        lsr     $58,x
        lsr     $60,x
        lsr     $61,x
        lsr     $62,x
        lsr     $63,x
        lsr     $29,x
        eor     $1E,x
        .byte   $56
LB0E9:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB119
        eor     $25,x
        eor     $26,x
        eor     $00,x
        bvc     LB102
LB102:  bvc     LB12B
        eor     $64,x
        lsr     $65,x
        lsr     $66,x
        lsr     $67,x
        lsr     $68,x
        lsr     $69,x
        lsr     $6A,x
        lsr     $6B,x
        lsr     $33,x
        eor     $6C,x
        .byte   $56
LB119:  adc     L0055,x
        rol     a
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB149
        .byte   $55
LB12B:  and     L0055
        rol     L0055
        brk
        bvc     LB132
LB132:  bvc     LB15B
        eor     $6D,x
        lsr     $6E,x
        lsr     $6F,x
        lsr     $67,x
        lsr     $68,x
        lsr     $69,x
        lsr     $6A,x
        lsr     $6B,x
        lsr     $33,x
        eor     $6C,x
        .byte   $56
LB149:  adc     L0055,x
        rol     a
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB179
        .byte   $55
LB15B:  and     L0055
        rol     L0055
        brk
        bvc     LB162
LB162:  bvc     LB18B
        eor     $6D,x
        lsr     $70,x
        lsr     $71,x
        lsr     $72,x
        lsr     $68,x
        lsr     $69,x
        lsr     $6A,x
        lsr     $6B,x
        lsr     $33,x
        eor     $6C,x
        .byte   $56
LB179:  adc     L0055,x
        rol     a
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB1A9
        .byte   $55
LB18B:  and     L0055
        rol     L0055
        .byte   $5C
        lsr     $00,x
        bvc     LB1BB
        eor     $28,x
        eor     $73,x
        lsr     $74,x
        lsr     $27,x
        eor     $60,x
        lsr     $61,x
        lsr     $62,x
        lsr     $63,x
        lsr     $29,x
        eor     $1E,x
        .byte   $56
LB1A9:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB1D9
        .byte   $55
LB1BB:  and     L0055
        rol     L0055
        adc     $56,x
        ror     $56,x
        .byte   $27
        eor     $28,x
        eor     $1A,x
        lsr     $1B,x
        lsr     $27,x
        eor     $28,x
        eor     $1C,x
        lsr     $1D,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LB1D9:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB209
        eor     $25,x
        eor     $26,x
        eor     $77,x
        lsr     $78,x
        lsr     $27,x
        eor     $28,x
        eor     $79,x
        lsr     $7A,x
        lsr     $27,x
        eor     $28,x
        eor     $7B,x
        lsr     $7C,x
        lsr     $27,x
        eor     $29,x
        eor     $7D,x
        .byte   $56
LB209:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB239
        eor     $25,x
        eor     $26,x
        eor     L0018,x
        lsr     $7E,x
        lsr     $27,x
        eor     $28,x
        eor     $1A,x
        lsr     $7F,x
        lsr     $58,x
        lsr     $28,x
        eor     $1C,x
        lsr     $1D,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LB239:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB269
        eor     $25,x
        eor     $26,x
        eor     L0080,x
        lsr     $19,x
        lsr     $27,x
        eor     $81,x
        lsr     $82,x
        lsr     $83,x
        lsr     $58,x
        lsr     $28,x
        eor     $1C,x
        lsr     $1D,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LB269:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB299
        eor     $25,x
        eor     $26,x
        eor     $84,x
        lsr     $85,x
        lsr     $27,x
        eor     $28,x
        eor     $86,x
        lsr     $83,x
        lsr     $58,x
        lsr     $28,x
        eor     $1C,x
        lsr     $1D,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LB299:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB2C9
        .byte   $55
LB2AB:  and     L0055
        rol     L0055
        .byte   $87
        lsr     $88,x
        lsr     $27,x
        eor     $28,x
        eor     $89,x
        lsr     $8A,x
        lsr     $8B,x
        lsr     $28,x
        eor     $8C,x
        lsr     $8D,x
        lsr     $27,x
        eor     $29,x
        eor     $8E,x
        .byte   $56
LB2C9:  .byte   $34
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB2F9
        eor     $25,x
        eor     $26,x
        eor     $8F,x
        lsr     $90,x
        lsr     $91,x
        lsr     $28,x
        eor     $92,x
        lsr     $93,x
        .byte   $56
LB2EB:  sty     $56,x
        sta     $56,x
        .byte   $96
LB2F0:  lsr     $97,x
        lsr     $98,x
        lsr     $29,x
        eor     $1B,x
        .byte   $55
LB2F9:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB329
        eor     $25,x
        eor     $26,x
        eor     $00,x
        bvc     LB2AB
        lsr     $9A,x
        lsr     $28,x
        eor     $9B,x
        lsr     $9C,x
        lsr     $9D,x
        lsr     $28,x
        eor     $9E,x
        lsr     $9F,x
        lsr     $A0,x
        lsr     $29,x
        eor     $1B,x
        .byte   $55
LB329:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB359
        eor     $25,x
        eor     $26,x
        eor     $00,x
        bvc     LB342
LB342:  bvc     LB36B
        eor     $28,x
        eor     $00,x
        bvc     LB2EB
        lsr     $A2,x
        lsr     $28,x
        eor     $00,x
        bvc     LB2F0
        lsr     $A3,x
        lsr     $29,x
        eor     $1B,x
        .byte   $55
LB359:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB389
        .byte   $55
LB36B:  and     L0055
        rol     L0055
        .byte   $77
        lsr     $78,x
        lsr     $27,x
        eor     $28,x
        eor     $79,x
        lsr     $7A,x
        lsr     $27,x
        eor     $28,x
        eor     $A4,x
LB380:  lsr     $7C,x
        lsr     $27,x
        eor     $29,x
        eor     $A5,x
        .byte   $56
LB389:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB3B9
        eor     $25,x
        eor     $26,x
        eor     $77,x
        lsr     $78,x
        lsr     $27,x
        eor     $28,x
        eor     $A6,x
        lsr     $A7,x
        lsr     $A8,x
        lsr     $28,x
        eor     $A9,x
        lsr     $AA,x
        lsr     $27,x
        eor     $29,x
        eor     $AB,x
        .byte   $56
LB3B9:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB3E9
        eor     $25,x
        eor     $26,x
        eor     L0018,x
        lsr     $19,x
        lsr     $27,x
        eor     $28,x
        eor     $AC,x
        lsr     $AD,x
        lsr     $27,x
        eor     $28,x
        eor     $AE,x
        lsr     $AF,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LB3E9:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB419
        eor     $25,x
        eor     $26,x
        eor     $B0,x
        lsr     $B1,x
        lsr     $27,x
        eor     $28,x
        eor     $B2,x
        lsr     $B3,x
        lsr     $27,x
        eor     $28,x
        eor     $1C,x
        lsr     $B4,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LB419:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        lda     $56,x
        .byte   $1F
        eor     $25,x
        eor     $26,x
        eor     $B6,x
        lsr     $B7,x
        lsr     $27,x
        eor     $28,x
        eor     $B8,x
        lsr     $B9,x
        lsr     $27,x
        eor     $28,x
        eor     $1C,x
        lsr     $BA,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        lsr     $1F,x
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB479
        eor     $25,x
        eor     $26,x
        eor     $BB,x
        lsr     $00,x
        bvc     LB48B
        eor     $28,x
        eor     $BC,x
        lsr     $00,x
        bvc     LB493
        eor     $28,x
        eor     $BD,x
        lsr     $00,x
        bvc     LB49B
        eor     $29,x
        eor     $BE,x
        .byte   $56
LB479:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB4A9
        .byte   $55
LB48B:  and     L0055
        rol     L0055
        brk
        bvc     LB492
LB492:  .byte   $50
LB493:  .byte   $27
        eor     $BF,x
        lsr     $C0,x
        lsr     $00,x
        .byte   $50
LB49B:  .byte   $27
        eor     $C1,x
        lsr     $C2,x
        lsr     $C3,x
        lsr     $27,x
        eor     $29,x
        eor     $BE,x
        .byte   $56
LB4A9:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB4D9
        eor     $25,x
        eor     $26,x
        eor     $C4,x
        lsr     $C5,x
        lsr     $27,x
        eor     $C6,x
        lsr     $C7,x
LB4C8:  lsr     $C8,x
        lsr     $27,x
        eor     $C9,x
        lsr     $CA,x
        lsr     $00,x
        bvc     LB4FB
        eor     $29,x
        eor     $1B,x
        .byte   $55
LB4D9:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        .byte   $50
LB4E9:  .byte   $1F
        eor     $25,x
        eor     $CB,x
        lsr     $CC,x
        lsr     $CD,x
        lsr     $27,x
        eor     $28,x
        eor     $00,x
        bvc     LB4C8
        .byte   $56
LB4FB:  .byte   $27
        eor     $28,x
        eor     $00,x
        bvc     LB502
LB502:  bvc     LB52B
        eor     $29,x
        eor     $1B,x
        .byte   $55
LB509:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB4E9
        lsr     $25,x
        eor     $26,x
        eor     $D0,x
        lsr     $D1,x
        lsr     $27,x
        eor     $28,x
        eor     $D2,x
        lsr     $D3,x
        .byte   $56
LB52B:  .byte   $27
        eor     $28,x
        eor     $00,x
        bvc     LB532
LB532:  bvc     LB55B
        eor     $29,x
        eor     $1B,x
        eor     $1B,x
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB569
        eor     $25,x
        eor     $D4,x
        lsr     $D5,x
        lsr     $D6,x
        lsr     $27,x
        eor     $D7,x
        lsr     $D8,x
        lsr     $D9,x
        .byte   $56
LB55B:  .byte   $DA
        lsr     $28,x
        eor     $00,x
        bvc     LB562
LB562:  bvc     LB58B
        eor     $29,x
        eor     $1B,x
        .byte   $55
LB569:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB599
        eor     $25,x
        eor     $26,x
        eor     $DB,x
        lsr     $DC,x
        lsr     $27,x
        eor     $28,x
        eor     $DD,x
        lsr     $DE,x
        .byte   $56
LB58B:  .byte   $27
        eor     $28,x
        eor     $DF,x
        lsr     $00,x
        bvc     LB5BB
        eor     $29,x
        eor     $1B,x
        .byte   $55
LB599:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB5C9
        eor     $25,x
        eor     $26,x
        eor     $00,x
        bvc     LB5B2
LB5B2:  bvc     LB5DB
        eor     $E0,x
        lsr     $E1,x
        lsr     $00,x
        .byte   $50
LB5BB:  .byte   $27
        eor     $28,x
        eor     $E2,x
        lsr     $00,x
        bvc     LB5EB
        eor     $29,x
        eor     $BE,x
        .byte   $56
LB5C9:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB5F9
        .byte   $55
LB5DB:  and     L0055
        .byte   $E3
        lsr     L0018,x
        lsr     $19,x
        lsr     $27,x
        eor     $E4,x
        lsr     $E5,x
        lsr     $E6,x
        .byte   $56
LB5EB:  .byte   $27
        eor     $28,x
        eor     $1C,x
        lsr     $1D,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LB5F9:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB629
        eor     $25,x
        eor     $E7,x
        lsr     $E8,x
        lsr     $E9,x
        lsr     $27,x
        eor     $EA,x
        lsr     $E5,x
        lsr     $E6,x
        lsr     $27,x
        eor     $28,x
        eor     $1C,x
        lsr     $1D,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LB629:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB659
        eor     $25,x
        eor     $EB,x
        lsr     $EC,x
        lsr     $ED,x
        lsr     $27,x
        eor     $EE,x
        lsr     $EF,x
        lsr     $E6,x
        lsr     $27,x
        eor     $28,x
        eor     $1C,x
        lsr     $1D,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LB659:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB689
        eor     $25,x
        eor     $26,x
        eor     $F0,x
        lsr     $F1,x
        lsr     $27,x
        eor     $EE,x
        lsr     $F2,x
        lsr     $F3,x
        lsr     $27,x
        eor     $60,x
        lsr     $F4,x
        lsr     $F5,x
        lsr     $63,x
        lsr     $29,x
        eor     $1E,x
        .byte   $56
LB689:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB6B9
        eor     $25,x
        eor     $26,x
        eor     $00,x
        bvc     LB6A2
LB6A2:  bvc     LB6CB
        eor     $F6,x
        lsr     $66,x
        lsr     $F7,x
        lsr     $F8,x
        lsr     $F9,x
        lsr     $FA,x
        lsr     $FB,x
        lsr     $FC,x
        lsr     $29,x
        eor     $FD,x
        .byte   $56
LB6B9:  inc     $2A56,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB6E9
        .byte   $55
LB6CB:  and     L0055
        rol     L0055
        brk
        bvc     LB6D2
LB6D2:  bvc     LB6FB
        eor     $F6,x
        lsr     L00FF,x
        lsr     $00,x
        .byte   $57
        .byte   $27
        eor     $F9,x
        lsr     $FA,x
        lsr     $FB,x
        lsr     $FC,x
        lsr     $29,x
        eor     $FD,x
        .byte   $56
LB6E9:  inc     $2A56,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB719
        .byte   $55
LB6FB:  and     L0055
        rol     L0055
        brk
        bvc     LB702
LB702:  bvc     LB72B
        eor     $01,x
        .byte   $57
        .byte   $02
        .byte   $57
        brk
        .byte   $57
        .byte   $27
        eor     $F9,x
        lsr     $FA,x
        lsr     $FB,x
        lsr     $FC,x
        lsr     $29,x
        eor     $FD,x
        .byte   $56
LB719:  inc     $2A56,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB749
        .byte   $55
LB72B:  and     L0055
        rol     L0055
        brk
        bvc     LB78E
        lsr     $27,x
        eor     $28,x
        eor     $03,x
        .byte   $57
        .byte   $04
        .byte   $57
        .byte   $27
        eor     $05,x
        .byte   $57
        asl     $57
        .byte   $07
        .byte   $57
        php
        .byte   $57
        and     #$55
        lda     $56
LB749:  .byte   $27
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB779
        eor     $25,x
        eor     $26,x
        eor     $09,x
        .byte   $57
        ora     $2756,y
        eor     $EE,x
        lsr     $0A,x
        .byte   $57
        inc     $56
        .byte   $27
        eor     $28,x
        eor     $1C,x
        lsr     $1D,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LB779:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB7A9
        eor     $25,x
        eor     $26,x
LB78E:  eor     L0018,x
        lsr     $0B,x
        .byte   $57
        .byte   $27
        eor     $EE,x
        lsr     $0C,x
        .byte   $57
        ora     $2757
        eor     $28,x
        eor     $1C,x
        lsr     $1D,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LB7A9:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB7D9
        eor     $25,x
        eor     $26,x
        eor     $84,x
        lsr     $85,x
        lsr     $27,x
        eor     $EE,x
        lsr     $0C,x
        .byte   $57
        asl     $2757
        eor     $28,x
        eor     $1C,x
        lsr     $1D,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LB7D9:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB809
        eor     $25,x
        eor     $26,x
        eor     $0F,x
        .byte   $57
        brk
        bvc     LB81B
        eor     $10,x
        .byte   $57
        ora     ($57),y
        .byte   $12
        .byte   $57
        .byte   $27
        eor     $13,x
        .byte   $57
        .byte   $14
        .byte   $57
        ora     $57,x
        .byte   $27
        eor     $29,x
        eor     $16,x
        .byte   $57
LB809:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB839
        .byte   $55
LB81B:  and     L0055
        .byte   $17
        .byte   $57
        clc
        .byte   $57
        brk
        bvc     LB84B
        eor     $19,x
        .byte   $57
        .byte   $1A
        .byte   $57
        .byte   $1B
        .byte   $57
        .byte   $27
        eor     $1C,x
        .byte   $57
        ora     $1E57,x
        .byte   $57
        .byte   $27
        eor     $29,x
        eor     $1B,x
        .byte   $55
LB839:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB869
        .byte   $55
LB84B:  and     L0055
        .byte   $1F
        .byte   $57
        brk
        bvc     LB852
LB852:  bvc     LB87B
        eor     $20,x
        .byte   $57
        and     ($57,x)
        .byte   $22
        .byte   $57
        .byte   $27
        eor     $23,x
        .byte   $57
        bit     $57
        and     $57
        .byte   $27
        eor     $29,x
        eor     $1B,x
        .byte   $55
LB869:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB899
        .byte   $55
LB87B:  and     L0055
        rol     L0055
        brk
        bvc     LB882
LB882:  bvc     LB8AB
        eor     $26,x
        .byte   $57
        .byte   $22
        .byte   $57
        brk
        bvc     LB8B3
        eor     $27,x
        .byte   $57
        and     $57
        brk
        bvc     LB8BB
        eor     $29,x
        eor     $1B,x
        .byte   $55
LB899:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB8C9
        .byte   $55
LB8AB:  and     L0055
        rol     L0055
        brk
        bvc     LB8DA
        .byte   $57
LB8B3:  .byte   $27
        eor     $28,x
        eor     $00,x
        bvc     LB8E3
        .byte   $57
LB8BB:  .byte   $27
        eor     $28,x
        eor     $2A,x
        .byte   $57
        .byte   $2B
        .byte   $57
        .byte   $3C
        eor     $29,x
        eor     $2C,x
        .byte   $57
LB8C9:  and     $2A57
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB8F9
LB8DA:  eor     $25,x
        eor     $26,x
        eor     $00,x
        bvc     LB910
        .byte   $57
LB8E3:  .byte   $27
        eor     $28,x
        eor     $00,x
        bvc     LB919
        .byte   $57
        .byte   $27
        eor     $28,x
        eor     $00,x
        bvc     LB922
        .byte   $57
        .byte   $27
        eor     $29,x
        eor     $1B,x
        .byte   $55
LB8F9:  and     ($57),y
        .byte   $32
        .byte   $57
        .byte   $E7
        .byte   $52
LB8FF:  .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB929
        eor     $25,x
        eor     $26,x
        eor     $00,x
LB910:  bvc     LB912
LB912:  bvc     LB947
        .byte   $57
        plp
        eor     $00,x
        .byte   $50
LB919:  brk
        bvc     LB950
        .byte   $57
        plp
        eor     $00,x
        bvc     LB957
LB922:  .byte   $57
        rol     $57,x
        and     #$55
        .byte   $1B
        .byte   $55
LB929:  .byte   $37
        .byte   $57
        sec
        .byte   $57
        .byte   $E7
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB959
        eor     $25,x
        eor     $26,x
        eor     $39,x
        .byte   $57
        brk
        bvc     LB96B
        eor     $3A,x
        .byte   $57
LB947:  .byte   $3B
        .byte   $57
        brk
        bvc     LB973
        eor     $3C,x
        .byte   $57
        .byte   $3D
LB950:  .byte   $57
        rol     $2757,x
        eor     $3F,x
        .byte   $57
LB957:  rti

        .byte   $57
LB959:  eor     ($57,x)
        rol     a
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB989
        .byte   $55
LB96B:  and     L0055
        .byte   $42
        .byte   $57
        .byte   $43
        .byte   $57
        brk
        .byte   $50
LB973:  .byte   $27
        eor     $44,x
        .byte   $57
        eor     $57
        brk
        bvc     LB9A3
        eor     $46,x
        .byte   $57
        .byte   $47
        .byte   $57
        brk
        bvc     LB9AB
        eor     $48,x
        .byte   $57
        eor     #$57
LB989:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LB9B9
        eor     $25,x
        eor     $4A,x
        .byte   $57
        brk
        bvc     LB9A2
LB9A2:  .byte   $50
LB9A3:  .byte   $27
        eor     $4B,x
        .byte   $57
        brk
        bvc     LB9AA
LB9AA:  .byte   $50
LB9AB:  .byte   $27
        eor     $4C,x
        .byte   $57
        eor     a:$57
        bvc     LB9DB
        eor     $4E,x
        .byte   $57
        .byte   $4F
        .byte   $57
LB9B9:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        bvc     LBA20
        .byte   $1F
        eor     $25,x
        eor     $51,x
        .byte   $57
        .byte   $52
        .byte   $57
        .byte   $53
        .byte   $57
        .byte   $27
        eor     $28,x
        eor     $54,x
        .byte   $57
        eor     $57,x
LB9DB:  .byte   $27
        eor     $28,x
        eor     $1C,x
        lsr     $56,x
        .byte   $57
        .byte   $27
        eor     $29,x
        eor     $1E,x
        lsr     $1F,x
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LBA19
        eor     $25,x
        eor     $26,x
        eor     $57,x
        .byte   $57
        brk
        bvc     LBA2B
        eor     $58,x
        .byte   $57
        eor     $5A57,y
        .byte   $57
        .byte   $5B
        .byte   $57
        .byte   $5C
        .byte   $57
        eor     $1D57,x
        lsr     $5E,x
        .byte   $57
        and     #$55
        .byte   $1E
        .byte   $56
LBA19:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
LBA20:  eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LBA49
        .byte   $55
LBA2B:  and     L0055
        rol     L0055
        .byte   $5F
        .byte   $57
        brk
        bvc     LBA5B
        eor     $28,x
        eor     $60,x
        .byte   $57
        adc     ($57,x)
        .byte   $62
        .byte   $57
        plp
        eor     $63,x
        .byte   $57
        .byte   $64
        .byte   $57
        .byte   $27
        eor     $29,x
        eor     $65,x
        .byte   $57
LBA49:  ror     $57
        rol     a
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LBA79
        .byte   $55
LBA5B:  and     L0055
        rol     L0055
        .byte   $5F
        .byte   $57
        brk
        bvc     LBA8B
        eor     $28,x
        eor     $67,x
        .byte   $57
        pla
        .byte   $57
        adc     #$57
        plp
        eor     $6A,x
        .byte   $57
        .byte   $6B
        .byte   $57
        .byte   $27
        eor     $29,x
        eor     $65,x
        .byte   $57
LBA79:  ror     $57
        rol     a
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LBAA9
        .byte   $55
LBA8B:  and     L0055
        rol     L0055
        .byte   $57
        .byte   $57
        brk
        bvc     LBABB
        eor     $6C,x
        .byte   $57
        eor     $5A57,y
        .byte   $57
        .byte   $5B
        .byte   $57
        adc     $6E57
        .byte   $57
        .byte   $6F
        .byte   $57
        lsr     $2957,x
        eor     $65,x
        .byte   $57
LBAA9:  ror     $57
        rol     a
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LBAD9
        .byte   $55
LBABB:  and     L0055
        rol     L0055
        bvs     LBB18
        .byte   $53
        .byte   $57
        .byte   $27
        eor     $28,x
        eor     $AC,x
        lsr     $AD,x
        lsr     $27,x
        eor     $28,x
        eor     $71,x
        .byte   $57
        .byte   $72
        .byte   $57
        .byte   $27
        eor     $29,x
        eor     $65,x
        .byte   $57
LBAD9:  ror     $57
        rol     a
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LBB09
        eor     $25,x
        eor     $26,x
        eor     $00,x
        bvc     LBAF2
LBAF2:  bvc     LBB1B
        eor     $28,x
        eor     $73,x
        .byte   $57
        .byte   $74
        .byte   $57
        .byte   $27
        eor     $75,x
        .byte   $57
        ror     $57,x
        .byte   $77
        .byte   $57
        sei
        .byte   $57
        and     #$55
        .byte   $79
        .byte   $57
LBB09:  .byte   $7A
        .byte   $57
        rol     a
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        .byte   $7B
LBB18:  .byte   $57
        .byte   $7C
        .byte   $57
LBB1B:  and     L0055
        adc     $7E57,x
        .byte   $57
        .byte   $7F
        .byte   $57
        .byte   $80
        .byte   $57
        plp
        eor     $81,x
        .byte   $57
        .byte   $82
        .byte   $57
        .byte   $27
        eor     $28,x
        eor     $83,x
        .byte   $57
        sty     $57
        .byte   $27
        eor     $29,x
        eor     $85,x
        .byte   $57
        .byte   $4F
        .byte   $57
        rol     a
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LBB69
        eor     $25,x
        eor     $26,x
        eor     $86,x
        .byte   $57
        .byte   $87
        .byte   $57
        .byte   $27
        eor     $88,x
        .byte   $57
        .byte   $89
        .byte   $57
        txa
        .byte   $57
        .byte   $8B
        .byte   $57
        plp
        eor     $3A,x
        lsr     $25,x
        lsr     $27,x
        eor     $29,x
        eor     $8C,x
        .byte   $57
LBB69:  sta     $2A57
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LBB99
        eor     $25,x
        eor     $26,x
        eor     $00,x
        bvc     LBB82
LBB82:  bvc     LBBAB
        eor     $28,x
        eor     $73,x
        .byte   $57
        .byte   $74
        .byte   $57
        .byte   $27
        eor     $75,x
        .byte   $57
        stx     $7757
        .byte   $57
        sei
        .byte   $57
        and     #$55
        .byte   $8F
        .byte   $57
LBB99:  bcc     LBBF2
        rol     a
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LBBC9
        .byte   $55
LBBAB:  and     L0055
        rol     L0055
        bvs     LBC08
        .byte   $53
        .byte   $57
        .byte   $27
        eor     $28,x
        eor     $AC,x
        lsr     $AD,x
        lsr     $27,x
        eor     $28,x
        eor     $AE,x
        lsr     $AF,x
        lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LBBC9:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LBBF9
        eor     $25,x
        eor     $26,x
        eor     $91,x
        .byte   $57
        .byte   $92
        .byte   $57
        .byte   $27
        eor     $28,x
        eor     $AC,x
        lsr     $AD,x
        lsr     $27,x
        eor     $28,x
        eor     $AE,x
        lsr     $AF,x
LBBF2:  lsr     $27,x
        eor     $29,x
        eor     $1E,x
        .byte   $56
LBBF9:  .byte   $1F
        lsr     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
LBC08:  bvc     LBC29
        eor     $25,x
        eor     $26,x
        eor     $93,x
        .byte   $57
        brk
        bvc     LBC3B
        eor     $3A,x
        .byte   $57
        sty     $57,x
        brk
        bvc     LBC43
        eor     $3C,x
        .byte   $57
        and     $3E57,x
        .byte   $57
        .byte   $27
        eor     $3F,x
        .byte   $57
        rti

        .byte   $57
LBC29:  eor     ($57,x)
        rol     a
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LBC59
LBC3A:  .byte   $55
LBC3B:  and     L0055
        sta     $57,x
        stx     $57,y
        brk
        .byte   $50
LBC43:  .byte   $27
        eor     $44,x
        .byte   $57
        eor     $57
        brk
        bvc     LBC73
        eor     $46,x
        .byte   $57
        .byte   $47
        .byte   $57
        brk
        bvc     LBC7B
        eor     $48,x
        .byte   $57
        eor     #$57
LBC59:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LBC89
        .byte   $55
LBC6B:  and     L0055
        .byte   $97
        .byte   $57
        brk
        bvc     LBC72
LBC72:  .byte   $50
LBC73:  .byte   $27
        eor     $4B,x
        .byte   $57
        brk
        bvc     LBC7A
LBC7A:  .byte   $50
LBC7B:  .byte   $27
        eor     $4C,x
        .byte   $57
        eor     a:$57
        bvc     LBCAB
        eor     $4E,x
        .byte   $57
        .byte   $4F
        .byte   $57
LBC89:  .byte   $1B
        eor     $2A,x
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LBCB9
        eor     $25,x
        eor     $26,x
LBC9E:  eor     $00,x
        bvc     LBC3A
        .byte   $57
        .byte   $27
        eor     $28,x
        eor     $00,x
        bvc     LBCD3
        .byte   $57
LBCAB:  .byte   $27
        eor     $28,x
        eor     $2A,x
        .byte   $57
        .byte   $2B
        .byte   $57
        .byte   $3C
        eor     $29,x
        eor     $2C,x
        .byte   $57
LBCB9:  and     $2A57
        eor     $E7,x
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LBCE9
        eor     $25,x
        eor     $26,x
        eor     $00,x
        bvc     LBC6B
        .byte   $57
LBCD3:  .byte   $27
        eor     $28,x
        eor     $00,x
        bvc     LBD09
        .byte   $57
        .byte   $27
        eor     $28,x
        eor     $00,x
        bvc     LBD12
        .byte   $57
        .byte   $27
        eor     $29,x
        eor     $1B,x
        .byte   $55
LBCE9:  and     ($57),y
        .byte   $32
        .byte   $57
        .byte   $E7
        .byte   $52
        .byte   $0F
        eor     $10,x
        eor     $EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     LBD19
        eor     $25,x
        eor     $26,x
        .byte   $55
LBCFF:  brk
        bvc     LBD02
LBD02:  bvc     LBC9E
        .byte   $57
        plp
        eor     $00,x
        .byte   $50
LBD09:  brk
        bvc     LBD40
        .byte   $57
        plp
        eor     $00,x
        bvc     LBD47
LBD12:  .byte   $57
        rol     $57,x
        and     #$55
        .byte   $1B
        .byte   $55
LBD19:  .byte   $37
        .byte   $57
        sec
        .byte   $57
        brk
        brk
        brk
        brk
        ora     ($01,x)
        ora     ($02,x)
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $04
        ora     $05
        ora     $15
        .byte   $14
        .byte   $0B
        asl     $0B0E
        ora     #$08
        php
        php
        .byte   $0B
        asl     $0F0B
        .byte   $0F
        .byte   $0B
LBD40:  .byte   $0B
        asl     $06
        .byte   $0B
        .byte   $0B
        asl     a
        asl     a
LBD47:  .byte   $0B
        .byte   $0B
        asl     $06
        .byte   $0B
        .byte   $0B
        .byte   $0F
        .byte   $0F
        .byte   $0B
        .byte   $0B
        asl     $0B0E
        asl     $0F0F
        .byte   $0B
        asl     $0F0F
        .byte   $0B
        asl     $0F0F
        .byte   $0B
        asl     $0F0F
        .byte   $0B
        .byte   $0B
        php
        php
        .byte   $0B
        .byte   $0B
        php
        php
        .byte   $0B
        .byte   $0B
        php
        php
        .byte   $0B
        .byte   $0B
        .byte   $0C
        ora     $0D12
        .byte   $12
        ora     $0D12
        .byte   $12
        .byte   $0C
        ora     #$09
        ora     ($10),y
        .byte   $13
LBD80:  bpl     LBD95
        bpl     LBD97
        bpl     LBD99
        ora     ($0B),y
        .byte   $0B
        asl     $16,x
        asl     $0B,x
        .byte   $17
        .byte   $17
        .byte   $17
        ora     $1B1B,x
        .byte   $1B
        .byte   $1D
LBD95:  .byte   $1C
        .byte   $1C
LBD97:  .byte   $1C
        .byte   $1D
LBD99:  clc
        clc
        clc
        .byte   $1A
        ora     $1919,y
        .byte   $1A
        clc
        clc
        clc
        .byte   $1A
        .byte   $1A
        .byte   $1A
        .byte   $1A
        .byte   $0B
        .byte   $17
        jsr     L2020
        and     ($21,x)
        and     ($27,x)
        .byte   $22
        .byte   $23
        bit     $25
        rol     $27
        and     ($21,x)
        and     ($27,x)
        jsr     L3229
        .byte   $32
        .byte   $32
        .byte   $32
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $32
        .byte   $32
        .byte   $32
        .byte   $32
        and     #$64
        adc     $66
        ora     $04
        .byte   $03
        .byte   $02
        ora     ($00,x)
        brk
        brk
        and     #$61
        .byte   $62
        .byte   $63
        ora     $04
        .byte   $03
        .byte   $02
        ora     ($00,x)
        brk
        brk
        brk
        ora     ($01,x)
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        ora     $15
        .byte   $14
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $1A
        .byte   $1A
        .byte   $1A
        .byte   $0B
        asl     $16,x
        asl     $0B,x
        .byte   $17
        .byte   $17
        .byte   $17
        .byte   $0B
        asl     $16,x
        asl     $0B,x
        .byte   $1A
        .byte   $1A
        .byte   $1A
        .byte   $1A
        clc
        clc
        clc
        .byte   $1A
        ora     $1919,y
        .byte   $1A
        clc
        clc
        clc
        .byte   $1A
        php
        php
        .byte   $07
        .byte   $07
        asl     $06
        .byte   $07
        .byte   $07
        php
        php
        ora     #$09
        asl     a
        asl     a
        ora     #$09
        php
        php
        .byte   $07
        .byte   $07
        asl     $06
        .byte   $07
        .byte   $0B
        asl     $16,x
        .byte   $1F
        .byte   $1F
        asl     $16,x
        .byte   $0B
        .byte   $0B
        .byte   $17
        .byte   $17
        asl     $171E,x
        .byte   $17
        .byte   $0B
        .byte   $0B
        asl     $16,x
        .byte   $1F
        .byte   $1F
        asl     $16,x
        .byte   $0B
        .byte   $0B
        .byte   $17
        .byte   $17
        asl     $171E,x
        .byte   $17
        .byte   $0B
        .byte   $0B
        php
        php
        php
        php
        .byte   $0B
        asl     $0B0E
        .byte   $14
        ora     $05,x
        .byte   $04
        .byte   $03
        .byte   $02
        ora     ($00,x)
        brk
        brk
        brk
        brk
        brk
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     $15
        .byte   $14
        .byte   $0B
        .byte   $0B
        php
        php
        php
        php
        .byte   $0B
        .byte   $0B
        .byte   $07
        asl     $06
        .byte   $07
        ora     #$0A
        asl     a
        ora     #$07
        asl     $09
        asl     a
        asl     a
        asl     a
        .byte   $0B
        .byte   $0B
        .byte   $07
        asl     $06
        .byte   $07
        ora     #$0A
        asl     a
        ora     #$07
        asl     $09
        asl     a
        asl     a
        asl     a
        .byte   $0B
        .byte   $0B
        asl     $0B,x
        .byte   $17
        .byte   $0B
        asl     $0B,x
        .byte   $17
        .byte   $0B
        asl     $0B,x
        .byte   $17
        .byte   $0B
        asl     $20,x
        jsr     L2221
        .byte   $23
        bit     $25
        rol     $27
        and     ($21,x)
        .byte   $22
        .byte   $23
        bit     $25
        rol     $27
        and     ($20,x)
        and     #$2A
        .byte   $2B
        bit     $2D2C
        and     $2E29
        .byte   $2F
        bmi     LBEE8
        and     ($31),y
        and     #$0B
        .byte   $1A
        clc
        .byte   $1A
        ora     $181A,y
        .byte   $1A
        ora     $181A,y
        .byte   $1A
        ora     $181A,y
        .byte   $1A
        ora     $140B,y
        ora     $05,x
        .byte   $04
        .byte   $03
        .byte   $02
        ora     ($00,x)
        brk
        brk
        brk
        brk
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     $15
        .byte   $14
        .byte   $0B
        .byte   $0B
        php
        php
        php
        php
        .byte   $0B
        .byte   $0B
LBEE8:  .byte   $07
        asl     $06
        .byte   $07
        ora     #$0A
        asl     a
        ora     #$07
        asl     $09
        asl     a
        asl     a
        asl     a
        .byte   $0B
        .byte   $0B
        .byte   $07
        asl     $06
        .byte   $07
        ora     #$0A
        asl     a
        ora     #$07
        asl     $09
        asl     a
        asl     a
        asl     a
        .byte   $0B
        .byte   $0B
        asl     $0B,x
        .byte   $17
        .byte   $0B
        asl     $0B,x
        .byte   $17
        .byte   $0B
        asl     $0B,x
        .byte   $17
        .byte   $0B
        asl     $4A,x
        lsr     a
        .byte   $4B
        jmp     L4E4D

        .byte   $4F
        bvc     LBF6F
        .byte   $4B
        .byte   $4B
        jmp     L4E4D

        .byte   $4F
        bvc     LBF77
        .byte   $4B
        lsr     a
        and     #$2A
        .byte   $2B
        bit     $2D2C
        and     $2E29
        .byte   $2F
        bmi     LBF64
        and     ($31),y
        and     #$0B
        .byte   $1A
        clc
        .byte   $1A
        ora     $181A,y
        .byte   $1A
        ora     $181A,y
        .byte   $1A
        ora     $181A,y
        .byte   $1A
        ora     $140B,y
        ora     $05,x
        .byte   $04
        .byte   $03
        .byte   $02
        ora     ($00,x)
        brk
        brk
        brk
        .byte   $0B
        and     #$52
        .byte   $53
        .byte   $54
        eor     $56,x
        .byte   $57
        cli
        eor     $5B5A,y
        .byte   $5C
        eor     $5F5E,x
LBF64:  rts

        ora     $04
        .byte   $03
        .byte   $02
        ora     ($00,x)
        brk
        .byte   $0B
        and     #$52
LBF6F:  .byte   $5A
        .byte   $5B
        .byte   $5C
        eor     $5F5E,x
        rts

        .byte   $05
LBF77:  .byte   $04
        .byte   $03
        .byte   $02
        ora     ($00,x)
        .byte   $0B
        and     #$34
        rol     $403F,x
        eor     ($42,x)
        .byte   $43
        .byte   $44
        ora     $04
        .byte   $03
        .byte   $02
        ora     ($00,x)
        .byte   $0B
        and     #$34
        and     $36,x
        .byte   $37
        sec
        and     $3B3A,y
        .byte   $34
        rol     $403F,x
        eor     ($42,x)
        .byte   $43
        .byte   $44
        ora     $04
        .byte   $03
        .byte   $02
        ora     ($00,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
