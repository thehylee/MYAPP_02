; da65 V2.19 - Git 2fa92f9
; Created:    2026-11-27 01:24:03
; Input file: bank0.bin
; Page:       1


        .setcpu "6502"

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
L4C20           := $4C20
L4C26           := $4C26
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
L8000           := $8000
L82FF           := $82FF
L88FF           := $88FF
L8C00           := $8C00
L8CFF           := $8CFF
LA01D           := $A01D
LA0FF           := $A0FF
LA980           := $A980
LB017           := $B017
LB018           := $B018
LB019           := $B019
LB8FF           := $B8FF
LBCFF           := $BCFF
LC680           := $C680
LC8FF           := $C8FF
LCC40           := $CC40
LCCFF           := $CCFF
LD480           := $D480
LE180           := $E180
LF854           := $F854
LFF20           := $FF20
LFF29           := $FF29
LFF32           := $FF32
LFF33           := $FF33
LFF45           := $FF45
LFF4C           := $FF4C
LFF53           := $FF53
L0000:  brk
L0001:  brk
L0002:  brk
L0003:  brk
L0004:  brk
L0005:  brk
L0006:  brk
L0007:  brk
L0008:  .byte   $F0
L0009:  brk
L000A:  .byte   $44
L000B:  .byte   $44
L000C:  .byte   $F0
L000D:  brk
L000E:  .byte   $44
L000F:  .byte   $44
L0010:  .byte   $E4
L0011:  brk
L0012:  .byte   $8C
L0013:  .byte   $80
L0014:  .byte   $4E
L0015:  brk
L0016:  .byte   $4C
L0017:  rti

L0018:  .byte   $CC
L0019:  brk
L001A:  .byte   $CC
L001B:  brk
L001C:  .byte   $CC
L001D:  brk
L001E:  .byte   $CC
L001F:  brk
L0020:  .byte   $E2
L0021:  brk
L0022:  iny
L0023:  .byte   $80
L0024:  .byte   $8E
L0025:  brk
L0026:  .byte   $44
L0027:  .byte   $C0
L0028:  inx
L0029:  brk
L002A:  dey
L002B:  .byte   $C0
L002C:  .byte   $2E
L002D:  brk
L002E:  .byte   $C4
L002F:  rti

L0030:  .byte   $6C
L0031:  brk
L0032:  .byte   $8C
L0033:  rti

L0034:  .byte   $6C
L0035:  brk
L0036:  .byte   $8C
L0037:  rti

L0038:  .byte   $C6
L0039:  brk
L003A:  .byte   $4C
L003B:  .byte   $80
L003C:  .byte   $C6
L003D:  brk
L003E:  .byte   $4C
L003F:  .byte   $80
L0040:  .byte   $FE
L0041:  rti

L0042:  .byte   $FE
L0043:  rti

L0044:  .byte   $FF
L0045:  rti

L0046:  .byte   $FF
L0047:  rti

L0048:  .byte   $FF
L0049:  rti

L004A:  .byte   $FF
L004B:  rti

L004C:  .byte   $FF
L004D:  rti

L004E:  brk
L004F:  .byte   $41
L0050:  brk
L0051:  .byte   $41
L0052:  .byte   $06
L0053:  .byte   $41
L0054:  .byte   $23
L0055:  .byte   $41
L0056:  rti

L0057:  .byte   $41
L0058:  .byte   $A3
L0059:  .byte   $41
L005A:  .byte   $D6
L005B:  .byte   $41
L005C:  .byte   $F6
L005D:  .byte   $41
L005E:  php
L005F:  .byte   $42
L0060:  .byte   $32
L0061:  .byte   $42
L0062:  .byte   $55
L0063:  .byte   $42
L0064:  tax
L0065:  .byte   $42
L0066:  .byte   $FF
L0067:  .byte   $42
L0068:  brk
L0069:  .byte   $43
L006A:  .byte   $55
L006B:  .byte   $43
L006C:  tax
L006D:  .byte   $43
L006E:  .byte   $AB
L006F:  .byte   $43
L0070:  .byte   $E6
L0071:  .byte   $43
L0072:  .byte   $2D
L0073:  .byte   $44
L0074:  .byte   $74
L0075:  .byte   $44
        .byte   $75
L0077:  .byte   $44
L0078:  .byte   $9D
L0079:  .byte   $44
L007A:  .byte   $C3
L007B:  .byte   $44
L007C:  .byte   $E6
L007D:  .byte   $44
L007E:  .byte   $0D
L007F:  .byte   $45
L0080:  .byte   $34
L0081:  .byte   $45
L0082:  .byte   $35
L0083:  .byte   $45
L0084:  .byte   $4C
L0085:  .byte   $45
L0086:  .byte   $5D
L0087:  .byte   $45
L0088:  .byte   $6F
L0089:  .byte   $45
L008A:  .byte   $C5
L008B:  .byte   $45
L008C:  .byte   $1B
L008D:  .byte   $46
L008E:  .byte   $3B
L008F:  .byte   $46
L0090:  .byte   $5B
L0091:  .byte   $46
L0092:  .byte   $65
L0093:  .byte   $46
L0094:  .byte   $B4
L0095:  .byte   $46
L0096:  .byte   $12
L0097:  .byte   $47
L0098:  .byte   $13
L0099:  .byte   $47
L009A:  .byte   $5E
L009B:  .byte   $47
L009C:  .byte   $A9
L009D:  .byte   $47
L009E:  .byte   $DB
L009F:  .byte   $47
L00A0:  rol     L0048
L00A2:  .byte   $2C
L00A3:  pha
L00A4:  .byte   $74
L00A5:  pha
L00A6:  .byte   $B2
L00A7:  pha
L00A8:  inx
L00A9:  pha
L00AA:  .byte   $2D
L00AB:  .byte   $49
L00AC:  .byte   $59
L00AD:  .byte   $49
L00AE:  .byte   $71
L00AF:  .byte   $49
L00B0:  .byte   $9C
L00B1:  .byte   $49
L00B2:  .byte   $D0
L00B3:  .byte   $49
L00B4:  .byte   $EC
L00B5:  .byte   $49
L00B6:  .byte   $ED
L00B7:  .byte   $49
L00B8:  .byte   $12
L00B9:  lsr     a
L00BA:  .byte   $37
L00BB:  lsr     a
L00BC:  .byte   $4B
L00BD:  lsr     a
L00BE:  .byte   $5F
L00BF:  lsr     a
L00C0:  .byte   $B0
L00C1:  lsr     a
L00C2:  .byte   $D1
L00C3:  lsr     a
L00C4:  .byte   $F2
L00C5:  lsr     a
L00C6:  .byte   $13
L00C7:  .byte   $4B
L00C8:  .byte   $34
L00C9:  .byte   $4B
L00CA:  .byte   $55
L00CB:  .byte   $4B
L00CC:  .byte   $74
L00CD:  .byte   $4B
L00CE:  .byte   $A5
L00CF:  .byte   $4B
L00D0:  .byte   $D6
L00D1:  .byte   $4B
L00D2:  .byte   $F7
L00D3:  .byte   $4B
L00D4:  clc
L00D5:  .byte   $4C
L00D6:  .byte   $1F
L00D7:  .byte   $4C
L00D8:  .byte   $26
L00D9:  .byte   $4C
L00DA:  .byte   $5F
L00DB:  .byte   $4C
L00DC:  tya
L00DD:  .byte   $4C
L00DE:  .byte   $CD
L00DF:  .byte   $4C
L00E0:  .byte   $D7
L00E1:  .byte   $4C
L00E2:  .byte   $19
L00E3:  .byte   $4D
L00E4:  .byte   $5B
L00E5:  .byte   $4D
L00E6:  .byte   $89
L00E7:  .byte   $4D
L00E8:  .byte   $B7
L00E9:  .byte   $4D
L00EA:  .byte   $53
L00EB:  .byte   $4F
L00EC:  .byte   $A9
L00ED:  .byte   $4F
L00EE:  .byte   $FF
L00EF:  .byte   $4F
L00F0:  .byte   $FF
L00F1:  .byte   $4F
L00F2:  .byte   $FF
L00F3:  .byte   $4F
L00F4:  .byte   $FF
L00F5:  .byte   $4F
L00F6:  brk
L00F7:  .byte   $50
L00F8:  .byte   $10
L00F9:  .byte   $50
L00FA:  .byte   $20
L00FB:  .byte   $50
L00FC:  .byte   $3E
L00FD:  .byte   $51
L00FE:  brk
L00FF:  brk
L0100:  .byte   $94
L0101:  .byte   $14
L0102:  brk
L0103:  .byte   $20
L0104:  .byte   $FF
L0105:  brk
        stx     L001D
        .byte   $E0
L0109:  .byte   $53
L010A:  .byte   $43
L010B:  .byte   $4F
L010C:  .byte   $52
        eor     L0020
        .byte   $FF
        asl     L001E
        .byte   $E0
L0113:  jmp     L4E49

        eor     L0053
        jsr     L82FF
L011B:  bpl     L00DD
        lsr     L5845
        .byte   $54
        .byte   $FF
        brk
L0123:  ldx     L001D,y
        beq     L017A
        .byte   $43
        .byte   $4F
        .byte   $52
        eor     L0020
        .byte   $FF
        rol     L001E,x
        .byte   $F0
L0130:  jmp     L4E49

        eor     L0053
        jsr     LCCFF
        bpl     L010A
        .byte   $4E
L013B:  eor     L0058
        .byte   $54
        .byte   $FF
        brk
L0140:  ldy     #$16
        bcs     L0164
        jsr     L2020
        jsr     L2020
        jsr     L2020
        .byte   $FF
        jsr     LB017
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     LA0FF
        .byte   $17
        bcs     L0180
        jsr     L2020
        .byte   $20
L0164:  jsr     L2020
        jsr     LFF20
        jsr     LB018
        jsr     L2020
        .byte   $20
L0171:  jsr     L2020
        jsr     L2020
        .byte   $FF
        ldy     #$18
L017A:  bcs     L019C
        .byte   $20
L017D:  jsr     L2020
L0180:  jsr     L2020
        jsr     LFF20
        jsr     LB019
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     LA0FF
        ora     L20B0,y
        jsr     L2020
        .byte   $20
L019C:  jsr     L2020
        jsr     LFF20
        brk
        ldx     #$16
        bcs     L01EA
        .byte   $4F
        eor     L4C50
        eor     L0054
        eor     L00FF
        ldx     #$17
        bcs     L01E5
        bmi     L01D5
        jmp     L4E49

        eor     L0053
        .byte   $FF
        ldx     #$18
        bcs     L0213
        .byte   $4F
        jsr     L4F47
        jsr     L4F54
        .byte   $FF
        ldy     #$19
        bcs     L0219
        eor     L0058
        .byte   $54
        jsr     L4F52
        eor     L004E,x
        .byte   $44
        .byte   $FF
L01D5:  brk
        ldx     #$16
        bcs     L021C
        .byte   $4F
        lsr     L5355
        jsr     L4F46
        .byte   $52
        .byte   $FF
        bit     L0017
L01E5:  bcs     L0207
        jmp     L574F

L01EA:  .byte   $FF
        ldy     L0017
        bcs     L023F
        eor     L005A,x
        .byte   $5A
        jmp     LFF45

        brk
        rol     L0018
        bcs     L0246
        eor     #$4E
        eor     L0053
        .byte   $FF
        rol     L0019
L0201:  bcs     L024F
        eor     L0046
        .byte   $54
        .byte   $FF
L0207:  brk
        ldy     #$16
        bcs     L0250
        eor     #$46
        lsr     L0049
        .byte   $43
        eor     L004C,x
L0213:  .byte   $54
        eor     LA0FF,y
        .byte   $17
        .byte   $B0
L0219:  eor     #$4E
        .byte   $43
L021C:  .byte   $52
        eor     L0041
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
L023F:  clc
        bcs     L0262
        jsr     L5420
        pha
L0246:  eor     #$53
        .byte   $FF
        jsr     LB019
        jsr     L5220
L024F:  .byte   $4F
L0250:  eor     L004E,x
        .byte   $44
        .byte   $FF
        brk
        dey
        .byte   $12
        bcs     L027E
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
        .byte   $27
L0262:  .byte   $FF
        php
        .byte   $13
        bcs     L028F
        bvc     L02BB
        eor     L0050
        eor     (L0052,x)
        eor     L0020
        and     #$FF
        dey
        .byte   $13
        bcs     L029D
        jsr     L4620
        .byte   $4F
        .byte   $52
        jsr     L2020
        .byte   $29
L027E:  .byte   $FF
        php
        .byte   $14
        bcs     L02AB
        jsr     L4F42
        lsr     L5355
        jsr     L2920
        .byte   $FF
        dey
        .byte   $14
L028F:  bcs     L02B9
        jsr     L4F52
        eor     L004E,x
        .byte   $44
        jsr     L2920
        .byte   $FF
        php
        .byte   $15
L029D:  bcs     L02C9
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
L02AB:  .byte   $12
        bcs     L02D3
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
        .byte   $27
        .byte   $FF
        sec
L02B9:  .byte   $13
        .byte   $B0
L02BB:  plp
        bvc     L0310
        eor     L0050
        eor     (L0052,x)
        eor     L0020
        and     #$FF
        clv
        .byte   $13
        .byte   $B0
L02C9:  plp
        jsr     L4620
        .byte   $4F
        .byte   $52
        jsr     L2020
        .byte   $29
L02D3:  .byte   $FF
        sec
        .byte   $14
        bcs     L0300
        jsr     L4F42
        lsr     L5355
        jsr     L2920
        .byte   $FF
        clv
        .byte   $14
        bcs     L030E
        jsr     L4F52
        eor     L004E,x
        .byte   $44
        jsr     L2920
        .byte   $FF
        sec
        ora     L00B0,x
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
L02FF:  brk
L0300:  dey
        .byte   $12
        bcs     L0329
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
        .byte   $27
        .byte   $FF
L030E:  php
        .byte   $13
L0310:  bcs     L033A
        jsr     L2020
        jsr     L2020
        jsr     L2920
        .byte   $FF
        dey
        .byte   $13
        bcs     L0348
        jsr     L2020
        jsr     L2020
        jsr     L2920
L0329:  .byte   $FF
        php
        .byte   $14
        bcs     L0356
        jsr     L2020
        jsr     L2020
        jsr     L2920
        .byte   $FF
        dey
        .byte   $14
L033A:  bcs     L0364
        jsr     L2020
        jsr     L2020
        jsr     L2920
        .byte   $FF
        php
        .byte   $15
L0348:  bcs     L0374
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
L0356:  .byte   $12
        bcs     L037E
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
        .byte   $27
        .byte   $FF
        sec
L0364:  .byte   $13
        bcs     L038F
        jsr     L2020
        jsr     L2020
        jsr     L2920
        .byte   $FF
        clv
        .byte   $13
        .byte   $B0
L0374:  plp
        jsr     L2020
        jsr     L2020
        jsr     L2920
L037E:  .byte   $FF
        sec
        .byte   $14
L0381:  bcs     L03AB
        jsr     L2020
        jsr     L2020
        jsr     L2920
        .byte   $FF
        clv
        .byte   $14
L038F:  bcs     L03B9
        jsr     L2020
        jsr     L2020
        jsr     L2920
        .byte   $FF
        sec
        ora     L00B0,x
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
L03AB:  jsr     LB017
        jsr     L5420
        .byte   $52
        eor     L5420,y
        .byte   $4F
        .byte   $FF
        ldy     #$17
L03B9:  bcs     L03DB
        jsr     L5720
        .byte   $4F
        .byte   $52
        .byte   $4B
        .byte   $FF
        jsr     LB018
        jsr     L4120
        .byte   $52
        .byte   $4F
        eor     L004E,x
        .byte   $44
        .byte   $FF
        ldy     #$18
        bcs     L03F2
        jsr     L4854
        eor     L0053
        eor     L00FF
        .byte   $20
        .byte   $19
L03DB:  bcs     L03FD
        jsr     L5242
        eor     #$43
        .byte   $4B
        .byte   $53
        .byte   $FF
        brk
        dey
        .byte   $12
        bcs     L040F
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
L03F2:  .byte   $27
        .byte   $FF
        php
        .byte   $13
        bcs     L0420
        jsr     L4E45
        .byte   $44
        .byte   $20
L03FD:  .byte   $4F
        lsr     L0020
        and     #$FF
        dey
L0403:  .byte   $13
        bcs     L042E
        jsr     L4F42
        lsr     L5355
        jsr     L2920
L040F:  .byte   $FF
        php
        .byte   $14
        bcs     L043C
        jsr     L4F52
        eor     L004E,x
        .byte   $44
        jsr     L2920
        .byte   $FF
        dey
        .byte   $14
L0420:  bcs     L044C
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
L042E:  .byte   $12
        bcs     L0456
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
        .byte   $27
        .byte   $FF
        sec
L043C:  .byte   $13
        bcs     L0467
        jsr     L4E45
        .byte   $44
        jsr     L464F
        jsr     LFF29
        clv
        .byte   $13
        .byte   $B0
L044C:  plp
        jsr     L4F42
        lsr     L5355
L0453:  .byte   $20
L0454:  .byte   $20
        .byte   $29
L0456:  .byte   $FF
        sec
        .byte   $14
        bcs     L0483
        jsr     L4F52
        eor     L004E,x
        .byte   $44
        jsr     L2920
        .byte   $FF
        clv
        .byte   $14
L0467:  bcs     L0493
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
        bcs     L04D0
        eor     (L0054,x)
        .byte   $43
        pha
        jsr     L554F
        .byte   $54
L0481:  .byte   $FF
        .byte   $A6
L0483:  .byte   $17
        bcs     L04CC
        .byte   $4F
        .byte   $52
        .byte   $FF
        ldy     L0018
        bcs     L04CE
        .byte   $44
        .byte   $44
        eor     L0044
        .byte   $FF
        .byte   $A4
L0493:  ora     $42B0,y
        .byte   $52
        eor     #$43
        .byte   $4B
        .byte   $53
        .byte   $FF
        brk
        jsr     LB017
        .byte   $42
        eor     L0057
        eor     (L0052,x)
        eor     L0020
        .byte   $4F
        lsr     L00FF
        jsr     LB018
        eor     (L0044,x)
        lsr     L0041,x
        lsr     $4943
        lsr     $FF47
        jsr     LB019
        jsr     L4C20
        eor     #$4E
        eor     L0053
        .byte   $FF
        brk
        jsr     LB017
        jsr     L4542
        .byte   $53
        .byte   $54
        .byte   $FF
L04CC:  .byte   $20
        clc
L04CE:  bcs     L04F0
L04D0:  bvc     L051E
        eor     (L0059,x)
        eor     L0052
        .byte   $53
        .byte   $FF
        jsr     LB019
        jsr     L4E49
        .byte   $49
L04DF:  .byte   $54
        eor     #$41
        jmp     LFF53

        brk
        jsr     LB017
        jsr     L554E
        eor     L4542
        .byte   $52
L04F0:  jsr     LFF32
        jsr     LB018
        jsr     L4C50
        eor     (L0059,x)
        eor     L0052
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
L051E:  bvc     L056C
        eor     (L0059,x)
L0522:  eor     L0052
        .byte   $53
        .byte   $FF
        jsr     LB019
        jsr     L4E49
        eor     #$54
        eor     #$41
        jmp     LFF53

L0533:  brk
        brk
        ldy     #$17
        bcs     L0559
        jsr     L5920
        .byte   $4F
        eor     L00FF,x
        ldy     #$18
        bcs     L0563
        jsr     L4944
        .byte   $44
        jsr     L5449
        .byte   $FF
        brk
        .byte   $82
        bpl     L04DF
        jsr     L5920
        .byte   $4F
        eor     L0020,x
        .byte   $44
        eor     #$44
        .byte   $20
L0559:  eor     #$54
        .byte   $FF
        brk
        ldx     L0010,y
        bcc     L0581
        .byte   $20
        .byte   $20
L0563:  eor     L554F,y
        jsr     L4944
        .byte   $44
        .byte   $20
        .byte   $49
L056C:  .byte   $54
        .byte   $FF
        brk
        .byte   $02
        bpl     L0522
        and     L0026
        rol     L0026
        rol     L0026
L0578:  rol     L0026
        rol     L0026
        rol     L0026
        .byte   $27
        .byte   $FF
        .byte   $82
L0581:  bpl     L0533
        plp
        jsr     L4946
        .byte   $4E
        .byte   $49
L0589:  .byte   $53
        pha
        eor     #$4E
        .byte   $47
        jsr     LFF29
        .byte   $02
        ora     (L00B0),y
        plp
        lsr     L0049
        .byte   $52
        .byte   $53
        .byte   $54
        jsr     L4F42
        lsr     L5355
        and     #$FF
        .byte   $82
        ora     (L00B0),y
        plp
        jsr     L4920
        .byte   $53
        jsr     L3032
        bmi     L05DF
        jsr     L2920
        .byte   $FF
        .byte   $02
        .byte   $12
        bcs     L05E1
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
        bpl     L0578
        and     L0026
        rol     L0026
        rol     L0026
L05CE:  rol     L0026
        rol     L0026
        rol     L0026
        .byte   $27
        .byte   $FF
        clv
        bpl     L0589
        plp
        jsr     L4946
        .byte   $4E
        .byte   $49
L05DF:  .byte   $53
        pha
L05E1:  eor     #$4E
        .byte   $47
        jsr     LFF29
        sec
        ora     (L00B0),y
        plp
        lsr     L0049
        .byte   $52
        .byte   $53
        .byte   $54
        .byte   $20
        .byte   $42
L05F2:  .byte   $4F
        lsr     L5355
        and     #$FF
        clv
        ora     (L00B0),y
        plp
        jsr     L4920
        .byte   $53
        .byte   $20
L0601:  .byte   $32
        bmi     *+50
        bmi     *+34
        jsr     LFF29
        sec
        .byte   $12
        bcs     L0637
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
L0618:  bit     a:L00FF
        sty     L0010
        bcc     L0661
        .byte   $4F
        lsr     L5355
        jsr     L4F46
        .byte   $52
        .byte   $FF
        asl     L0011
        bcc     L064C
        jmp     L574F

        .byte   $FF
        stx     L0011
        bcc     L0684
        .byte   $55
L0635:  .byte   $5A
        .byte   $5A
L0637:  jmp     LFF45

        brk
        tsx
        bpl     L05CE
        .byte   $42
        .byte   $4F
        lsr     L5355
        jsr     L4F46
        .byte   $52
        .byte   $FF
        .byte   $3A
        ora     (L0090),y
        .byte   $20
L064C:  jmp     L574F

        .byte   $FF
        tsx
        ora     (L0090),y
        bvc     L06AA
        .byte   $5A
        .byte   $5A
        jmp     LFF45

        brk
        ldy     $9013,x
        .byte   $53
        .byte   $54
        .byte   $41
L0661:  .byte   $54
        .byte   $53
        .byte   $FF
        brk
        .byte   $14
        bpl     L0618
        and     L0026
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0027
        .byte   $FF
        sty     L0010,x
        bcs     L06AB
        .byte   $50
L0684:  .byte   $52
        eor     L0053
        .byte   $53
        jsr     L2031
        bvc     L06D9
        eor     (L0059,x)
        eor     L0052
        jsr     L5453
        eor     (L0052,x)
        .byte   $54
        and     #$FF
        .byte   $14
        ora     (L00B0),y
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
L06AA:  .byte   $2B
L06AB:  .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     a:L00FF
        bpl     L06C6
        bcs     L06DD
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
L06C6:  rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0027
        .byte   $FF
        bcc     L06E5
        bcs     L06FF
        bvc     L072B
L06D9:  eor     L0053
        .byte   $53
        .byte   $20
L06DD:  and     (L0020),y
        .byte   $4F
        .byte   $52
        jsr     L2032
        .byte   $50
L06E5:  jmp     L5941

        eor     L0052
        jsr     L5453
        eor     (L0052,x)
        .byte   $54
        and     #$FF
        bpl     L0705
        bcs     L0720
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
L06FF:  .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
L0705:  .byte   $2B
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
        bcc     L0778
        rts

        .byte   $FF
        stx     L0013,y
        bcc     L077C
        .byte   $FF
        asl     L0014,x
L0720:  bcc     L0780
        .byte   $FF
        asl     $9015
        bvc     L0763
        eor     L0053
        .byte   $53
L072B:  .byte   $FF
        .byte   $0C
        asl     L0090,x
        .byte   $42
        eor     L0054,x
        .byte   $54
        .byte   $4F
        lsr     L10FF
        .byte   $17
        bcc     L078E
        .byte   $4F
        .byte   $FF
        .byte   $0C
        clc
        bcc     L077B
        .byte   $4F
        .byte   $54
        eor     (L0054,x)
        eor     L00FF
        .byte   $0C
        ora     $5090,y
        eor     #$45
        .byte   $43
        eor     L00FF
        php
        .byte   $1A
        bcc     L078C
        bmi     L0775
        .byte   $44
        eor     L0047
        .byte   $3B
        eor     L0045
        .byte   $53
        .byte   $FF
        brk
        .byte   $92
        .byte   $13
        bcc     L07C3
        rts

L0763:  .byte   $FF
        asl     L0014,x
        bcc     L07C7
        .byte   $FF
        stx     L0014,y
        bcc     L07CB
        .byte   $FF
        asl     $9016
        .byte   $3B
        .byte   $4F
        .byte   $54
        .byte   $41
L0775:  .byte   $54
        eor     L00FF
L0778:  asl     $9017
L077B:  .byte   $50
L077C:  eor     #$45
        .byte   $43
        .byte   $45
L0780:  .byte   $FF
L0781:  bpl     L079B
        bcc     L07D9
        .byte   $4F
        .byte   $FF
        asl     $9019
        lsr     L0049
L078C:  .byte   $54
        .byte   $FF
L078E:  asl     $901A
        pha
        eor     L0052
        eor     L005B
        .byte   $5B
        .byte   $5C
        .byte   $FF
        txs
        .byte   $1A
L079B:  bcc     L07FA
        .byte   $FF
        .byte   $1A
        .byte   $1B
        bcc     L07FF
        .byte   $FF
        txs
        .byte   $1B
        bcc     L0804
        .byte   $FF
        brk
        .byte   $12
        .byte   $14
        bcc     L080E
        rts

        .byte   $FF
        stx     L0014,y
        bcc     L0812
        .byte   $FF
        asl     L0015,x
        bcc     L0816
        .byte   $FF
        .byte   $0C
        .byte   $17
        bcc     L07F8
        .byte   $4F
        .byte   $54
        eor     (L0054,x)
        eor     L00FF
L07C3:  asl     $9018
        .byte   $4F
L07C7:  lsr     LFF45
        .byte   $0E
L07CB:  ora     $4D90,y
        .byte   $4F
        .byte   $3B
        eor     L00FF
        asl     $901A
        .byte   $54
        eor     #$4D
        .byte   $45
L07D9:  .byte   $FF
        brk
        asl     a
        .byte   $13
        bcc     L082D
        .byte   $4F
        .byte   $57
        jsr     L5355
        eor     L00FF
        asl     a
        .byte   $14
        bcc     L0834
        .byte   $4F
        eor     L5453,y
        eor     #$43
        .byte   $4B
        .byte   $FF
        asl     a
        ora     L0090,x
        .byte   $54
        .byte   $4F
        .byte   $FF
L07F8:  asl     a
        clc
L07FA:  bcc     L0849
        .byte   $4F
        lsr     L0045,x
L07FF:  .byte   $FF
        asl     a
        .byte   $19
        .byte   $90
L0803:  .byte   $50
L0804:  eor     #$45
        .byte   $43
        eor     L00FF
        asl     a
        .byte   $1A
        bcc     L0855
        .byte   $45
L080E:  .byte   $3B
        eor     L005B
        .byte   $5B
L0812:  .byte   $5B
        .byte   $5B
        .byte   $5C
        .byte   $FF
L0816:  txs
        .byte   $1A
        bcc     L0877
        .byte   $FF
        .byte   $1A
        .byte   $1B
        bcc     L087C
        .byte   $FF
        txs
        .byte   $1B
        bcc     L0881
        .byte   $FF
        brk
        .byte   $0C
        .byte   $13
        bcs     L084A
        .byte   $FF
        brk
        .byte   $0E
L082D:  .byte   $13
        bcc     L0880
        eor     L004C,x
        .byte   $4C
        .byte   $FF
L0834:  .byte   $0C
        .byte   $14
        bcc     L087C
        .byte   $4F
        .byte   $57
        lsr     $4F20
        lsr     L0AFF
        ora     L0090,x
        lsr     a
        .byte   $4F
        eor     L5453,y
        eor     #$43
L0849:  .byte   $4B
L084A:  .byte   $FF
        .byte   $0C
        asl     L0090,x
        .byte   $54
        .byte   $4F
        jsr     L3B44
        .byte   $4F
        .byte   $50
L0855:  .byte   $FF
        .byte   $0C
        .byte   $17
        bcc     L08AA
        eor     #$45
        .byte   $43
        eor     L00FF
        .byte   $1A
        .byte   $1A
        bcc     L08C0
        .byte   $FF
        txs
        .byte   $1A
        bcc     L08C5
        .byte   $FF
        .byte   $1A
        .byte   $1B
        bcc     L08CA
        .byte   $FF
        txs
        .byte   $1B
        bcc     L08CF
        .byte   $FF
        brk
        asl     $9013
L0877:  bvc     L08CE
        jmp     LFF4C

L087C:  .byte   $0C
        .byte   $14
        bcc     L08C4
L0880:  .byte   $4F
L0881:  .byte   $57
        lsr     $4F20
        lsr     L0AFF
        ora     L0090,x
        lsr     a
        .byte   $4F
        eor     L5453,y
        eor     #$43
        .byte   $4B
        .byte   $FF
        .byte   $0C
        asl     L0090,x
        .byte   $54
        .byte   $4F
        jsr     L3B44
        .byte   $4F
        .byte   $50
L089D:  .byte   $FF
        .byte   $0C
        .byte   $17
        bcc     L08F2
        eor     #$45
        .byte   $43
        eor     L00FF
        .byte   $1A
        .byte   $1B
        .byte   $90
L08AA:  eor     $9AFF,x
        .byte   $1B
        bcc     L090D
        .byte   $FF
        brk
        .byte   $0C
        .byte   $13
        bcc     L08FD
        .byte   $3B
        eor     L0041
        .byte   $54
        .byte   $62
        .byte   $FF
        .byte   $0C
        .byte   $14
        bcc     L08E0
L08C0:  .byte   $4F
        lsr     L2045
L08C4:  .byte   $20
L08C5:  jsr     L0AFF
        ora     L0090,x
L08CA:  jsr     L4C20
        .byte   $49
L08CE:  .byte   $4E
L08CF:  eor     L0020
        jsr     L0CFF
        asl     L0090,x
        lsr     L0049
        jmp     L454C

        .byte   $44
        jsr     L0CFF
        .byte   $17
L08E0:  bcc     L0902
        jsr     L2020
        jsr     L00FF
        .byte   $0C
        .byte   $13
        bcc     L0932
        eor     #$4C
        jmp     L4445

        .byte   $FF
L08F2:  asl     $9014
        jmp     L4E49

        eor     L00FF
        php
        ora     L0090,x
L08FD:  .byte   $44
        eor     #$53
        eor     (L0050,x)
L0902:  bvc     L0949
        eor     (L003B,x)
        .byte   $53
        .byte   $FF
        .byte   $0C
        asl     L0090,x
        .byte   $20
        .byte   $20
L090D:  eor     (L004E,x)
        .byte   $44
        jsr     L0EFF
        .byte   $17
        bcc     L0965
        .byte   $54
        pha
        eor     L003B
        .byte   $FF
        asl     $9018
        jmp     L4E49

        eor     L0053
        .byte   $FF
        asl     $9019
        .byte   $44
        .byte   $3B
        .byte   $4F
        .byte   $50
L092B:  .byte   $FF
        brk
        asl     $9013
        .byte   $59
        .byte   $4F
L0932:  eor     L003B,x
        .byte   $FF
        asl     $9014
        .byte   $47
        .byte   $4F
        eor     (L004C,x)
        .byte   $FF
        .byte   $0C
        ora     L0090,x
        eor     #$53
        jsr     L4F54
        .byte   $FF
        asl     $9016
L0949:  lsr     L0049
        jmp     LFF4C

        .byte   $0C
        .byte   $17
        bcc     L099E
        eor     #$4E
        eor     L0053
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
L0965:  eor     L00FF
        jsr     LA01D
        .byte   $52
        .byte   $4F
        eor     L004E,x
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
        bcs     L09A3
        jsr     L5420
        .byte   $4F
        jsr     L2020
        jsr     LFF20
        jsr     LB019
        jsr     L2020
        bvc     L09E1
        eor     (L0059,x)
        jsr     L2020
        .byte   $FF
        brk
        .byte   $0E
        .byte   $13
L099E:  bcc     L09F0
        eor     L004C,x
        .byte   $4C
L09A3:  .byte   $FF
        .byte   $0C
        .byte   $14
        .byte   $90
L09A7:  .byte   $44
        .byte   $4F
        .byte   $57
        lsr     $4F20
        lsr     L0AFF
        ora     L0090,x
        lsr     a
        .byte   $4F
        eor     L5453,y
        eor     #$43
        .byte   $4B
        .byte   $FF
        .byte   $0C
        asl     L0090,x
        .byte   $54
        .byte   $4F
        jsr     L3B44
        .byte   $4F
        .byte   $50
L09C5:  .byte   $FF
        .byte   $0C
        .byte   $17
        bcc     L0A1A
        eor     #$45
        .byte   $43
        eor     L00FF
        brk
        stx     L001D
        cpx     #$53
        .byte   $43
        .byte   $4F
        .byte   $52
        eor     L0020
        .byte   $FF
        asl     L001E
        cpx     #$4C
        eor     #$4E
        .byte   $45
L09E1:  .byte   $53
        jsr     L82FF
        bpl     L09A7
        lsr     L5845
        .byte   $54
        .byte   $FF
L09EC:  brk
        sty     $9014
L09F0:  eor     #$4E
        .byte   $53
        eor     L0052
        .byte   $54
        .byte   $FF
        stx     $9015
        .byte   $43
        .byte   $4F
        eor     #$4E
        .byte   $FF
        bcc     L0A17
        bcc     L0A57
        .byte   $4F
        .byte   $FF
        txa
        .byte   $17
        bcc     L0A4C
        .byte   $4F
        lsr     $4954
        lsr     $4555
        .byte   $FF
        brk
        ldy     $9014,x
        eor     #$4E
L0A17:  .byte   $53
        eor     L0052
L0A1A:  .byte   $54
        .byte   $FF
        ldx     $9015,y
        .byte   $43
        .byte   $4F
        eor     #$4E
        .byte   $FF
        cpy     #$16
        bcc     L0A7C
        .byte   $4F
        .byte   $FF
        tsx
        .byte   $17
        bcc     L0A71
        .byte   $4F
        lsr     $4954
        lsr     $4555
        .byte   $FF
        brk
        sty     $9014
        bvc     L0A8E
        eor     L0053
        .byte   $53
        jsr     L8CFF
        ora     L0090,x
        .byte   $53
        .byte   $54
        eor     (L0052,x)
        .byte   $54
        .byte   $FF
        brk
        .byte   $BC
L0A4C:  .byte   $14
        bcc     L0A9F
        .byte   $52
        eor     L0053
        .byte   $53
        jsr     LBCFF
        .byte   $15
L0A57:  bcc     L0AAC
        .byte   $54
        eor     (L0052,x)
        .byte   $54
        .byte   $FF
        brk
        stx     L001D
        cpx     #$52
        .byte   $4F
        eor     L004E,x
        .byte   $44
        jsr     L3120
        .byte   $FF
        asl     L001E
        cpx     #$4E
        .byte   $4F
        .byte   $20
L0A71:  .byte   $42
        .byte   $4F
        lsr     L5355
        .byte   $FF
        ldx     #$1D
        cpx     #$52
        .byte   $4F
L0A7C:  eor     L004E,x
        .byte   $44
        jsr     L3420
        .byte   $FF
        asl     $E01E,x
        .byte   $32
        bmi     L0AB9
        bmi     L0ABB
        jsr     L4220
L0A8E:  .byte   $4F
        lsr     L5355
        .byte   $FF
        ldx     $E01D,y
        .byte   $52
        .byte   $4F
        eor     L004E,x
        .byte   $44
        jsr     L3720
        .byte   $FF
L0A9F:  .byte   $3A
        asl     L34E0,x
        bmi     L0AD5
        bmi     L0AD7
        jsr     L4220
        .byte   $4F
        .byte   $4E
L0AAC:  eor     L0053,x
        .byte   $FF
        brk
        stx     L001D
        cpx     #$20
        jsr     L4920
        .byte   $4E
        .byte   $53
L0AB9:  eor     L0052
L0ABB:  .byte   $54
        jsr     L2020
        .byte   $FF
        asl     L001E
        cpx     #$20
        jsr     L2020
        .byte   $43
        .byte   $4F
        eor     #$4E
        jsr     L2020
        jsr     L00FF
        ldx     L001D,y
        beq     L0AF5
L0AD5:  .byte   $20
        .byte   $20
L0AD7:  eor     #$4E
        .byte   $53
        eor     L0052
        .byte   $54
        jsr     L2020
        .byte   $FF
        rol     L001E,x
        beq     L0B05
        jsr     L2020
        .byte   $43
        .byte   $4F
        eor     #$4E
        jsr     L2020
        jsr     L00FF
        stx     L001D
        .byte   $E0
L0AF5:  jsr     L4A20
        .byte   $4F
        eor     #$4E
        jsr     L4E49
        .byte   $20
L0AFF:  jsr     LFF20
        asl     L001E
        .byte   $E0
L0B05:  jsr     L4120
        lsr     L2059
        .byte   $54
        eor     #$4D
L0B0E:  eor     L0020
        jsr     L00FF
        ldx     L001D,y
        beq     L0B37
        jsr     L4F4A
        eor     #$4E
        jsr     L4E49
        jsr     L2020
        .byte   $FF
        rol     L001E,x
        beq     L0B47
L0B27:  jsr     L4E41
        eor     L5420,y
        eor     #$4D
        eor     L0020
        .byte   $20
        .byte   $FF
L0B33:  brk
        stx     L001D
        .byte   $E0
L0B37:  jsr     L2020
        bvc     L0B8E
        eor     L0053
        .byte   $53
        jsr     L2020
        jsr     L06FF
        .byte   $1E
        .byte   $E0
L0B47:  jsr     L2020
        .byte   $53
        .byte   $54
        eor     (L0052,x)
        .byte   $54
        jsr     L2020
        jsr     L00FF
        ldx     L001D,y
        .byte   $F0
L0B58:  jsr     L2020
        bvc     *+84
        eor     L0053
        .byte   $53
        jsr     L2020
        .byte   $FF
L0B64:  rol     L001E,x
        beq     L0B88
        jsr     L5320
        .byte   $54
        eor     (L0052,x)
        .byte   $54
        jsr     L2020
        .byte   $FF
        brk
        php
        bpl     L0B27
        and     L0026
L0B79:  rol     L0026
        rol     L0026
        rol     L0027
L0B7F:  .byte   $FF
L0B80:  dey
        bpl     L0B33
        plp
        jsr     L4147
        .byte   $4D
L0B88:  eor     L0020
        and     #$FF
        php
        .byte   $11
L0B8E:  bcs     L0BB8
        jsr     L564F
        eor     L0052
        jsr     LFF29
        dey
        ora     (L00B0),y
        rol     a
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     a:L00FF
        sec
        bpl     L0B58
        and     L0026
        rol     L0026
        rol     L0026
        rol     L0027
        .byte   $FF
        clv
        bpl     L0B64
        plp
        jsr     L4147
L0BB8:  eor     L2045
        and     #$FF
        sec
        ora     (L00B0),y
        plp
        jsr     L564F
        eor     L0052
        jsr     LFF29
        clv
        ora     (L00B0),y
        rol     a
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     a:L00FF
        stx     L001D
        cpx     #$20
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     LFF20
        asl     L001E
        cpx     #$20
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     LFF20
        brk
        ldx     L001D,y
        beq     L0C1B
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     LFF20
        rol     L001E,x
        beq     L0C2B
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     LFF20
        brk
        .byte   $22
        .byte   $17
        .byte   $B0
L0C1B:  jsr     LFF20
        brk
        rol     LB017
        jsr     LFF20
        brk
        dey
        .byte   $12
        bcs     L0C4F
        .byte   $26
L0C2B:  rol     L0026
        rol     L0026
        rol     L0026
        rol     L0027
        .byte   $FF
        php
        .byte   $13
        bcs     L0C60
        jsr     L4C50
        eor     L0041
        .byte   $53
        eor     L0020
        and     #$FF
        dey
        .byte   $13
        bcs     L0C6E
        jsr     L5720
        eor     (L0049,x)
        .byte   $54
        jsr     L2920
L0C4F:  .byte   $FF
        php
        .byte   $14
        bcs     L0C7E
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
L0C60:  .byte   $12
        bcs     L0C88
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
        .byte   $27
        .byte   $FF
        sec
L0C6E:  .byte   $13
        bcs     L0C99
        jsr     L4C50
        eor     L0041
        .byte   $53
        eor     L0020
        and     #$FF
        clv
        .byte   $13
        .byte   $B0
L0C7E:  plp
        jsr     L5720
        eor     (L0049,x)
        .byte   $54
        jsr     L2920
L0C88:  .byte   $FF
        sec
        .byte   $14
        bcs     L0CB7
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
L0C99:  .byte   $13
        bcc     L0CEE
        .byte   $4F
        .byte   $54
        eor     (L0054,x)
        eor     L0020
        eor     (L004E,x)
        .byte   $44
        .byte   $FF
        php
        .byte   $14
        bcc     L0CCA
        jsr     L4C50
        eor     (L0043,x)
        eor     L00FF
        php
        ora     L0090,x
        bvc     L0CFF
        .byte   $45
L0CB7:  .byte   $43
        eor     L0053
        jsr     L4F54
        .byte   $FF
        php
        asl     L0090,x
        lsr     L0049
        jmp     L204C

        jmp     L4E49

        .byte   $45
L0CCA:  .byte   $53
        .byte   $FF
        brk
        ldx     #$1D
        cpx     #$52
        .byte   $4F
        eor     L004E,x
        .byte   $44
        .byte   $FF
        brk
        dey
        .byte   $12
        bcc     L0CFB
        .byte   $52
        eor     L004D
        eor     L004D
        .byte   $42
        eor     L0052
        .byte   $FF
        php
        .byte   $13
        bcc     L0D41
        .byte   $4F
        eor     L0052,x
        jsr     L4F47
L0CEE:  eor     (L004C,x)
        .byte   $FF
        dey
L0CF2:  .byte   $13
        bcc     L0D3E
        .byte   $53
        jsr     L4F54
        .byte   $20
        .byte   $46
L0CFB:  eor     #$4C
        .byte   $4C
        .byte   $FF
L0CFF:  php
        .byte   $14
        bcc     L0D4B
        .byte   $4F
        .byte   $52
        eor     #$5A
        .byte   $4F
        lsr     $4154
        jmp     L88FF

        .byte   $14
        bcc     L0D31
        .byte   $20
L0D12:  jmp     L4E49

        eor     L0053
        .byte   $FF
        brk
        iny
        .byte   $12
        bcc     L0D3D
        .byte   $52
        eor     L004D
        eor     L004D
        .byte   $42
        eor     L0052
        .byte   $FF
        sec
        .byte   $13
        bcc     L0D83
        .byte   $4F
        eor     L0052,x
        jsr     L4F47
        .byte   $41
L0D31:  jmp     LC8FF

        .byte   $13
        bcc     L0D80
        .byte   $53
        jsr     L4F54
        .byte   $20
        .byte   $46
L0D3D:  .byte   $49
L0D3E:  jmp     LFF4C

L0D41:  sec
        .byte   $14
        bcc     L0D8D
        .byte   $4F
        .byte   $52
        eor     #$5A
        .byte   $4F
        .byte   $4E
L0D4B:  .byte   $54
        eor     (L004C,x)
        .byte   $FF
        iny
        .byte   $14
        bcc     L0D73
        jsr     L494C
        lsr     $5345
        .byte   $FF
        brk
        .byte   $0C
        .byte   $13
        bcc     L0DA6
        .byte   $52
        eor     L0041
        .byte   $54
        .byte   $FF
        sty     $9013
        .byte   $53
        .byte   $43
        .byte   $4F
        .byte   $52
        eor     L0062
        .byte   $FF
        dey
        .byte   $14
        bcc     L0DB7
        .byte   $4E
L0D73:  .byte   $54
        eor     L0052
        jsr     L4F59
        eor     L0052,x
        .byte   $FF
        asl     a
        ora     L0090,x
        .byte   $49
L0D80:  lsr     L5449
L0D83:  eor     #$41
        jmp     LFF53

        brk
        .byte   $3C
        .byte   $13
        bcc     L0DD4
L0D8D:  .byte   $52
        eor     L0041
        .byte   $54
        .byte   $FF
        ldy     $9013,x
        .byte   $53
        .byte   $43
        .byte   $4F
        .byte   $52
        eor     L0062
        .byte   $FF
        clv
        .byte   $14
        bcc     L0DE5
        lsr     $4554
        .byte   $52
        .byte   $20
        .byte   $59
L0DA6:  .byte   $4F
        eor     L0052,x
        .byte   $FF
        .byte   $3A
        ora     L0090,x
        eor     #$4E
        eor     #$54
        eor     #$41
        jmp     LFF53

        brk
L0DB7:  php
        .byte   $13
        bcc     L0E0B
        .byte   $52
        .byte   $4F
        lsr     a
        eor     L0043
        .byte   $54
        jsr     L454C
        eor     (L0044,x)
        eor     L0052
        .byte   $3A
        jsr     L454B
        jmp     L594C

        jsr     L5554
        .byte   $52
        .byte   $4E
L0DD4:  eor     L0052
        .byte   $FF
        php
        .byte   $14
        bcc     L0E2B
        .byte   $52
        .byte   $4F
        .byte   $47
        .byte   $52
        eor     (L004D,x)
        eor     $5245
        .byte   $53
L0DE5:  .byte   $3A
        jsr     L4F4E
        .byte   $52
        eor     L4120
        lsr     L0045,x
        jmp     L414C

        .byte   $52
        .byte   $FF
        sty     L0014,x
        bcc     L0E43
        eor     L004C
        jmp     L2059

        .byte   $54
        eor     L0052,x
        lsr     $5245
        bit     L0020
        eor     L0044
        jsr     L4F4C
        .byte   $47
L0E0B:  .byte   $47
        .byte   $FF
        dey
        ora     L0090,x
        lsr     L0049,x
        .byte   $44
        eor     L004F
        jsr     L5247
        eor     (L0050,x)
        pha
        eor     #$43
        .byte   $53
        .byte   $3A
        jsr     L524B
        eor     #$53
        jsr     L4F4D
        .byte   $53
        eor     L0052
        .byte   $FF
L0E2B:  dey
        asl     L0090,x
        eor     L004E
        .byte   $47
        eor     #$4E
        eor     L0045
        .byte   $52
        .byte   $3A
        jsr     L4F44
        eor     L0047,x
        jsr     L4E53
        eor     L4544,y
        .byte   $52
L0E43:  .byte   $FF
        dey
        .byte   $17
        bcc     L0E9C
        eor     L0043
        pha
        lsr     $4349
        eor     #$41
        lsr     L203A
        .byte   $47
        jmp     L4E45

        lsr     L4D20
        .byte   $43
        lsr     $4D41
        eor     (L0052,x)
        eor     (L00FF,x)
        dey
        clc
        bcc     L0EA7
        eor     L0044,x
        eor     #$4F
        .byte   $3A
        jsr     L5242
        eor     (L0044,x)
        jsr     L5546
        jmp     L454C

        .byte   $52
        .byte   $FF
        dey
        ora     $5390,y
        bvc     L0EC3
        .byte   $43
        eor     #$41
        jmp     L5420

        pha
        eor     (L004E,x)
        .byte   $4B
        .byte   $53
        jsr     L4F54
        jsr     L4F4A
        pha
        lsr     L5220
        eor     (L0059,x)
        bit     L00FF
        php
        .byte   $1A
        bcc     L0EE5
        .byte   $45
L0E9C:  .byte   $53
        .byte   $53
        jsr     L454D
        jmp     L4843

        .byte   $4F
        .byte   $52
        .byte   $24
L0EA7:  jsr     L2052
        .byte   $44
        eor     (L0057,x)
        eor     L0020
        eor     (L004E,x)
        .byte   $44
        jsr     L594C
        jmp     L2045

        .byte   $3B
        eor     (L0049,x)
        lsr     LFF53
        php
        .byte   $1B
        bcc     L0F11
        .byte   $52
L0EC3:  eor     #$47
        eor     #$4E
        eor     (L004C,x)
        jsr     L4F43
        lsr     $4543
        bvc     L0F25
        jsr     L4E41
        .byte   $44
        jsr     L4544
        .byte   $53
        eor     #$47
        lsr     $FF3A
        dey
        .byte   $1B
        bcc     L0F23
        jmp     L5845

L0EE5:  eor     L0059
        jsr     L4150
        .byte   $5A
        pha
        eor     #$54
        lsr     L564F
        bit     L0020
        lsr     L0041,x
        .byte   $44
        .byte   $49
L0EF7:  eor     $4720
        eor     L003B
        eor     (L0053,x)
        .byte   $49
L0EFF:  .byte   $4D
L0F00:  .byte   $4F
        lsr     L00FF,x
        dey
        .byte   $1C
        .byte   $90
L0F06:  rti

        and     (L0039),y
        sec
        .byte   $37
L0F0B:  jsr     L4341
        .byte   $41
L0F0F:  .byte   $44
        .byte   $45
L0F11:  eor     $5359
        .byte   $4F
        lsr     L0054
        and     $4C45
        .byte   $4F
        .byte   $3B
        .byte   $47
        .byte   $FF
        php
        ora     $4090,x
        .byte   $31
L0F23:  .byte   $39
        sec
L0F25:  sec
        jsr     L5441
        eor     (L003B,x)
        eor     #$20
        .byte   $47
        eor     (L004D,x)
        eor     L0053
        .byte   $FF
        dey
        ora     $4C90,x
        eor     #$43
        eor     L004E
        .byte   $53
        eor     L0044
        jsr     L5942
        jsr     L494D
        .byte   $3B
        .byte   $3B
        .byte   $4F
L0F47:  .byte   $3B
        .byte   $53
        .byte   $4F
        lsr     L0054
        .byte   $20
L0F4D:  jmp     $4454

        rol     a:L00FF
        .byte   $02
        bpl     L0F06
        jsr     L2020
        jsr     L2020
L0F5C:  jsr     L2020
        jsr     L2020
        jsr     L82FF
        bpl     L0EF7
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L02FF
        ora     (L0090),y
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L82FF
        ora     (L0090),y
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L02FF
        .byte   $12
        bcs     L0FBB
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        .byte   $FF
        brk
        sec
        bpl     L0F5C
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     LB8FF
L0FBB:  bpl     L0F4D
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L38FF
        ora     (L0090),y
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     LB8FF
        ora     (L0090),y
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L38FF
        .byte   $12
        bcs     L1011
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
        eor     L0020
        .byte   $57
        eor     (L0049,x)
        .byte   $54
        .byte   $FF
        brk
        dey
L1011:  .byte   $1B
        ldy     #$20
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L00FF
        stx     L0010
        bcs     L1065
        .byte   $43
        .byte   $43
        .byte   $4F
        eor     L004E,x
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
        eor     (L004D,x)
        .byte   $FF
        .byte   $02
        ora     (L00B0),y
        jmp     L4320

        .byte   $4F
        eor     #$4E
        .byte   $FF
        .byte   $82
        ora     (L00B0),y
        .byte   $3B
        jsr     L4F43
        eor     #$4E
        .byte   $FF
        .byte   $02
        .byte   $12
        bcs     L1086
        and     L4C50
        eor     $FF3B,y
        .byte   $82
        .byte   $12
        bcs     L107E
        jsr     L4145
        .byte   $53
        eor     L02FF,y
L1065:  .byte   $13
        bcs     L1088
        jsr     L4D20
        eor     L0044
        .byte   $FF
        .byte   $82
        .byte   $13
        bcs     L1092
        jsr     L4148
        .byte   $3B
        .byte   $44
        .byte   $FF
        .byte   $02
        .byte   $14
        bcs     L10BD
        .byte   $44
        .byte   $44
L107E:  and     $4E43
        .byte   $FF
        .byte   $82
        .byte   $14
        bcs     L10B6
L1086:  bvc     L10A8
L1088:  eor     L4E49
        .byte   $FF
        .byte   $02
        ora     L00B0,x
        and     (L0050),y
        .byte   $20
L1092:  eor     L4E49
        .byte   $FF
        .byte   $82
        ora     L00B0,x
        .byte   $32
        bvc     L10BC
        eor     L4E49
        .byte   $FF
        .byte   $02
        asl     L00B0,x
        jsr     L2020
        eor     (L0056,x)
L10A8:  .byte   $47
        .byte   $FF
        bit     L0011
        bcs     L10DE
        .byte   $FF
        ldy     L0011
        bcs     L10E3
        clc
        .byte   $FF
        .byte   $24
L10B6:  .byte   $12
        bcs     L10E9
        .byte   $1A
        .byte   $FF
        .byte   $A4
L10BC:  .byte   $12
L10BD:  bcs     L10EF
        .byte   $1C
        .byte   $FF
        bit     L0013
        bcs     L10F6
        .byte   $FF
        ldy     L0013
        bcs     L10FB
        clc
        .byte   $FF
        bit     L0014
        bcs     L1101
        .byte   $1A
        .byte   $FF
        ldy     L0014
        bcs     L1107
        .byte   $1C
        .byte   $FF
        bit     L0015
        bcs     L110E
        .byte   $FF
        .byte   $A4
L10DE:  ora     L00B0,x
        .byte   $32
        clc
        .byte   $FF
L10E3:  bit     L0016
        bcs     L1119
        .byte   $1A
        .byte   $FF
L10E9:  ldy     L0016
        bcs     L111F
        .byte   $1C
        .byte   $FF
L10EF:  bit     L0017
        bcs     L1126
        .byte   $FF
        ldy     L0017
L10F6:  bcs     L112B
        clc
        .byte   $FF
        .byte   $24
L10FB:  clc
        bcs     L1131
        .byte   $1A
L10FF:  .byte   $FF
        .byte   $A4
L1101:  clc
        bcs     L1137
        .byte   $1C
        .byte   $FF
        .byte   $24
L1107:  ora     L34B0,y
        .byte   $FF
        ldy     L0019
        .byte   $B0
L110E:  .byte   $34
        clc
        .byte   $FF
        bit     L001A
        bcs     L1149
        .byte   $1A
        .byte   $FF
        ldy     L001A
L1119:  bcs     L114F
        .byte   $1C
        .byte   $FF
        bit     L001B
L111F:  bcs     L1156
        .byte   $FF
        ldy     L001B
        bcs     L115B
L1126:  clc
        .byte   $FF
        bit     L001C
        .byte   $B0
L112B:  and     L001A,x
        .byte   $FF
        ldy     #$1C
        .byte   $B0
L1131:  rol     L002D,x
        and     (L0032),y
        .byte   $FF
        .byte   $22
L1137:  ora     L31B0,x
        .byte   $32
        rol     a:L00FF,x
        sty     LB018
        bvc     L1198
        .byte   $53
        pha
        .byte   $FF
        .byte   $04
        .byte   $19
        .byte   $B0
L1149:  .byte   $53
        .byte   $54
        eor     #$43
        .byte   $4B
        .byte   $20
L114F:  and     (L0020),y
        jmp     L4645

        .byte   $54
        .byte   $FF
L1156:  stx     LB019
        eor     (L004E,x)
L115B:  .byte   $44
        .byte   $FF
        .byte   $04
        .byte   $1A
        bcs     L11B4
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
        bcs     L11C6
        .byte   $4F
        jsr     L4C20
        eor     L0041
        lsr     L0045,x
        .byte   $FF
        brk
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $12
        .byte   $80
        lda     L0002
        sta     (L0003,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $22
        .byte   $80
        lda     #$02
        sta     (L0009,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        asl     $B380,x
        .byte   $02
L1198:  sta     (L0003,x)
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
        lda     $8102,y
        .byte   $03
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     $BD80,x
        .byte   $02
        ora     (L0001,x)
        .byte   $80
L11B4:  .byte   $0B
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
        ora     (L0001,x)
        .byte   $80
        brk
L11C6:  brk
        .byte   $7F
        ora     $C580,x
        .byte   $02
        ora     (L0080,x)
        .byte   $C7
        .byte   $52
        sta     (L0007,x)
        .byte   $80
        .byte   $CF
        .byte   $02
        ora     (L0080,x)
        brk
        brk
        .byte   $7F
        asl     a:L0008
        .byte   $80
        cmp     (L0002),y
        ora     (L0080,x)
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $D3
        .byte   $02
        ora     (L0001,x)
        .byte   $80
        dec     L0052,x
        sta     (L0007,x)
        .byte   $80
        dec     L0102,x
        .byte   $F3
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $D3
        .byte   $02
        ora     L0880
        brk
        brk
        .byte   $80
        sbc     (L0002,x)
        brk
        ora     (L0001,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        cpx     L0002
        ora     (L0001,x)
        .byte   $80
        .byte   $E7
        .byte   $52
        sta     (L0003,x)
        sbc     L0381,x
        .byte   $80
        .byte   $EB
        .byte   $02
        ora     (L0001,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        inc     L0102
        .byte   $F2
        brk
        .byte   $80
        .byte   $0B
        brk
        brk
        brk
        .byte   $80
        beq     L1294
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     (L0062),y
        .byte   $80
        .byte   $F2
        .byte   $02
        ora     (L0080,x)
        .byte   $F4
        .byte   $52
        sta     (L0003,x)
        sbc     L0381,x
        .byte   $80
        sed
        .byte   $02
        ora     (L0080,x)
        beq     L12BF
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
L125B:  .byte   $FB
        .byte   $12
        ora     (L0001,x)
        .byte   $80
        inc     $8062,x
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $FF
        .byte   $62
        .byte   $80
        .byte   $F2
        .byte   $02
        asl     L0180
        .byte   $53
        sta     (L0003,x)
        sbc     L0381,x
        .byte   $80
        sed
        .byte   $02
        ora     (L0080,x)
        inc     $8072,x
        brk
        brk
L1280:  .byte   $7F
        ora     #$80
        ora     L0073
        .byte   $80
        .byte   $FB
        .byte   $22
        ora     (L0001,x)
        .byte   $80
        asl     L0013
        ora     (L0001,x)
        .byte   $80
        ora     #$63
        .byte   $80
        brk
L1294:  brk
        .byte   $7F
        ora     #$80
        asl     a
        .byte   $63
        .byte   $80
        .byte   $F2
        .byte   $02
        asl     L0B80
        .byte   $53
        ora     (L0001,x)
        .byte   $F7
        .byte   $07
        ora     (L0001,x)
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
        asl     $8073
        asl     L0023
        ora     (L0001,x)
        .byte   $80
        .byte   $0F
        .byte   $13
L12BF:  ora     (L0001,x)
        .byte   $80
        beq     L1326
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     (L0062),y
        .byte   $80
        .byte   $F2
        .byte   $02
        asl     L1280
        .byte   $53
        ora     (L0001,x)
        beq     L12E5
        ora     (L0001,x)
        beq     L125B
        sed
        .byte   $02
        ora     (L0080,x)
        beq     L1353
        .byte   $80
        brk
        brk
        .byte   $7F
L12E5:  ora     #$80
        .byte   $FA
        .byte   $72
        .byte   $80
        .byte   $0F
        .byte   $23
        ora     (L0001,x)
        .byte   $80
        ora     L0013,x
        ora     (L0001,x)
        .byte   $80
        clc
        .byte   $63
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        ora     $8063,y
        .byte   $1A
        .byte   $03
        ora     (L0080,x)
        .byte   $1C
        .byte   $53
        sta     (L0003,x)
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
        ora     L0023,x
        ora     (L0001,x)
        .byte   $80
        .byte   $23
        .byte   $13
        ora     (L0001,x)
        .byte   $80
        rol     L0063
L1326:  .byte   $80
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
        rol     L0073
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
        ora     (L0001,x)
        .byte   $80
        .byte   $2B
        .byte   $13
        ora     (L0001,x)
        .byte   $80
        beq     L13B3
        .byte   $80
        brk
L1353:  brk
        .byte   $7F
        ora     #$80
        sbc     (L0062),y
        .byte   $80
        plp
        .byte   $03
        .byte   $80
        ora     $7F00
        ora     #$80
        and     #$03
        .byte   $80
        beq     L13D9
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
        ora     (L0001,x)
        .byte   $80
        rol     L0113
        ora     (L0080,x)
        and     (L0063),y
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
        and     (L0073),y
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
        ora     (L0001,x)
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
L13B3:  ora     $7F00
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
        and     $8073,y
        .byte   $34
        .byte   $23
        ora     (L0001,x)
        .byte   $80
        .byte   $3A
        .byte   $13
        ora     (L0001,x)
        .byte   $80
        beq     L1434
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $F1
L13D9:  .byte   $62
        .byte   $80
        plp
        .byte   $03
        .byte   $80
        ora     $7F00
        ora     #$80
        and     #$03
        .byte   $80
        beq     L145A
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
        ora     (L0001,x)
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
        eor     (L0063,x)
        .byte   $80
        plp
        .byte   $03
        .byte   $80
        .byte   $0D
        brk
L140B:  .byte   $7F
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
        ora     (L0001,x)
        .byte   $80
        lsr     L0063
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
L1434:  ora     $7F00
        ora     #$80
        and     #$03
        .byte   $80
        lsr     L0073
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
        ora     (L0001,x)
        .byte   $80
        eor     #$13
        ora     (L0001,x)
        .byte   $80
        beq     L14B5
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $F1
L145A:  .byte   $62
        .byte   $80
        plp
        .byte   $03
        .byte   $80
        ora     $7F00
        ora     #$80
        and     #$03
        .byte   $80
        beq     L14DB
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $FA
        .byte   $72
        .byte   $80
        eor     #$23
        ora     (L0001,x)
        .byte   $80
        jmp     L0113

        ora     (L0080,x)
        .byte   $4F
        .byte   $63
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        bvc     L14E9
        .byte   $80
        eor     (L0003),y
        .byte   $80
        .byte   $52
        .byte   $13
        sta     (L0004,x)
        .byte   $80
        .byte   $57
        .byte   $23
        sta     (L0004,x)
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
        eor     $8073,x
        jmp     L0123

        ora     (L0080,x)
        lsr     L0113,x
        ora     (L0080,x)
        adc     (L0063,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $62
L14B5:  .byte   $63
        .byte   $80
        .byte   $F2
        .byte   $02
        .byte   $80
        .byte   $63
        .byte   $13
        sta     (L0004,x)
        .byte   $80
        pla
        .byte   $23
        sta     (L0004,x)
        .byte   $80
        sbc     $8002,y
        adc     (L0073,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        adc     $8073
        lsr     L0123,x
        ora     (L0080,x)
        eor     #$13
        and     L0001
L14DB:  .byte   $80
        beq     L1540
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     (L0062),y
        .byte   $80
        bvs     L14FC
L14E9:  ora     (L007F,x)
        ora     #$01
        .byte   $80
        beq     L1562
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
L14FC:  ora     (L0080,x)
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
        adc     L0063,x
        .byte   $80
        ror     L0013,x
        .byte   $80
        .byte   $0B
        bpl     L1593
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
        adc     $8063,x
        ror     L0013,x
        .byte   $80
        .byte   $0B
        bpl     L15BE
        .byte   $09
L1540:  .byte   $80
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
        ror     $8073,x
        adc     L0123,y
        ora     (L0080,x)
        .byte   $0B
        brk
        brk
        brk
        .byte   $80
        .byte   $7F
        .byte   $03
        ora     (L007F,x)
        ora     #$01
        .byte   $80
        ror     L0013,x
L1562:  .byte   $80
        .byte   $0B
        bpl     L15E5
        ora     #$80
        .byte   $77
        .byte   $13
        .byte   $80
        .byte   $7F
        .byte   $03
        ora     (L007F,x)
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
        sty     L0033
        .byte   $80
        sta     L0013
        .byte   $80
        stx     L0003
        .byte   $80
        .byte   $87
        .byte   $13
        .byte   $7F
        ora     #$01
        ora     (L0080,x)
        .byte   $0B
        bpl     L160C
        ora     #$80
        txa
        .byte   $13
        .byte   $80
        .byte   $86
L1593:  .byte   $03
        .byte   $80
        .byte   $87
        .byte   $13
        .byte   $7F
        ora     #$04
        ora     (L0080,x)
        sty     L0043
        .byte   $80
        sta     $EA03
        .byte   $80
        stx     $8033
        .byte   $8F
        .byte   $13
        .byte   $80
        ora     $7F10
        .byte   $0B
        .byte   $80
        bcc     L15C3
        .byte   $80
        .byte   $0B
        bpl     L1633
        ora     #$80
        .byte   $77
        .byte   $13
        .byte   $80
        ora     $7F10
        .byte   $0B
        .byte   $80
L15BE:  .byte   $8F
        .byte   $13
        .byte   $80
        .byte   $8E
        .byte   $43
L15C3:  .byte   $80
        sta     (L0003),y
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
        bcc     L15E8
        .byte   $80
        .byte   $0B
        bpl     L1658
        ora     #$80
        .byte   $77
        .byte   $13
        .byte   $80
        ora     $7F10
        .byte   $0B
        .byte   $80
        .byte   $8F
        .byte   $13
L15E5:  .byte   $80
        .byte   $92
        .byte   $43
L15E8:  .byte   $80
        sta     (L0003),y
        .byte   $02
        dec     $9480,x
        .byte   $13
        ora     (L007F,x)
        .byte   $0B
        ora     (L0080,x)
        .byte   $0B
        bpl     L1677
        ora     #$80
        .byte   $97
        .byte   $13
        inc     L0B7F,x
        .byte   $03
        .byte   $80
        adc     (L0003),y
        plp
        .byte   $80
        txs
        .byte   $03
        ora     (L0001,x)
        .byte   $FF
        sta     (L0003,x)
L160C:  .byte   $FF
        sta     (L0004,x)
        .byte   $FF
        ora     (L00FF,x)
        .byte   $02
        ora     (L00FF,x)
        ora     (L00FF,x)
        .byte   $02
        .byte   $7F
        .byte   $04
        ora     (L007F,x)
        .byte   $04
        .byte   $FF
        .byte   $7F
        .byte   $04
        ora     (L007F,x)
        .byte   $04
        .byte   $FF
        .byte   $7F
        .byte   $04
        ora     (L007F,x)
        .byte   $04
        .byte   $FF
        .byte   $7F
        .byte   $04
        ora     (L007F,x)
        .byte   $04
        .byte   $FF
        .byte   $7F
        .byte   $04
        .byte   $01
L1633:  .byte   $7F
        .byte   $04
        .byte   $FF
        .byte   $7F
        .byte   $04
        ora     (L007F,x)
        .byte   $04
        .byte   $80
        txs
        .byte   $03
        ora     (L0001,x)
        .byte   $FF
        sta     (L0003,x)
        .byte   $FF
        sta     (L0004,x)
        .byte   $FF
L1647:  ora     (L00FF,x)
        .byte   $02
        ora     (L00FF,x)
        ora     (L00FF,x)
        .byte   $02
        .byte   $7F
        .byte   $04
        ora     (L007F,x)
        .byte   $04
        .byte   $FF
        brk
        brk
        .byte   $02
L1658:  sta     (L0003,x)
        .byte   $FC
        brk
        brk
        .byte   $FF
        asl     L0081
        .byte   $07
        .byte   $F4
        .byte   $FF
        asl     L0781
        cpx     L16FF
        ora     (L0001,x)
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        lda     L0103,x
        ora     (L00E6,x)
        .byte   $FF
        .byte   $1C
L1677:  ora     (L0001,x)
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        .byte   $C3
        .byte   $03
        ora     (L0001,x)
        cpx     #$80
        txs
        .byte   $03
        ora     (L0001,x)
        .byte   $FF
        sta     (L0003,x)
        .byte   $FF
        sta     (L0004,x)
        .byte   $FF
        ora     (L00FF,x)
        .byte   $02
        ora     (L00FF,x)
        ora     (L00FF,x)
        bit     L0081
        .byte   $17
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        dec     $8103,x
        ora     L0080
        brk
        brk
        .byte   $7F
        ora     L0080
        cpx     L0003
        ora     (L0001,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        .byte   $E7
        .byte   $03
        ora     (L0001,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     L0080
        nop
L16BD:  .byte   $03
        ora     (L0080,x)
        txs
        .byte   $03
        ora     (L0001,x)
        bvc     L1647
        .byte   $03
        ldx     L0101
        .byte   $51
L16CB:  sta     (L000D,x)
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        inc     $8103,x
        asl     L0080
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        ora     L0004
        sta     (L0004,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     L0080
        asl     a
        .byte   $04
        ora     (L00F2,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        inc     $8003,x
        brk
        brk
        .byte   $7F
        .byte   $13
        .byte   $80
        .byte   $0C
        .byte   $04
        cpx     #$01
        .byte   $FF
        sta     (L0003,x)
L16FF:  .byte   $FF
        ora     (L001E,x)
        .byte   $E7
        .byte   $1A
        inc     L0001
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
L171E:  brk
        brk
        .byte   $7F
        eor     L0080
        brk
        brk
        .byte   $7F
        asl     a
        .byte   $80
        eor     (L0054,x)
        sta     (L0006,x)
        .byte   $FF
        sbc     L0105,x
        sbc     $FF00,y
        ora     #$FF
        .byte   $02
        sta     (L0003,x)
        .byte   $FB
        .byte   $80
        brk
        bvc     L16BD
        brk
        brk
        .byte   $7F
        .byte   $13
        .byte   $80
        .byte   $4F
        .byte   $54
        sta     (L0013,x)
        .byte   $F7
        .byte   $80
        brk
        bvc     L16CB
        brk
        brk
        .byte   $7F
        .byte   $13
        .byte   $80
        brk
        bvc     L17D2
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
        sta     (L0003,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        lda     $8002,x
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
        asl     L0001
        ora     (L00FD,x)
        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        lda     $8002,x
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
        cmp     (L0002),y
        ora     (L0080,x)
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $D3
        .byte   $02
        .byte   $80
        ror     L0104
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
        ror     L0104
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
        ora     L0102
        .byte   $80
        brk
L17D2:  brk
        .byte   $7F
        ora     #$80
        inc     $8002
        bvs     L17DF
        ora     (L0080,x)
        .byte   $E3
        .byte   $02
L17DF:  .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        inc     $8002
        bvs     L17EE
        ora     (L0080,x)
        .byte   $E3
        .byte   $02
L17EE:  .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        inc     L0102
        .byte   $80
        .byte   $0B
        brk
        .byte   $80
        beq     L185F
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     (L0062),y
        .byte   $80
        .byte   $72
        .byte   $04
        .byte   $80
        cpx     $8002
        beq     L1880
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     (L0072),y
        .byte   $80
        .byte   $72
        .byte   $04
        .byte   $80
L181A:  .byte   $EC
        .byte   $02
L181C:  .byte   $80
        beq     L1861
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     (L0042),y
        .byte   $80
        .byte   $0B
        brk
        brk
        .byte   $80
        inc     $8062,x
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
        sbc     $8002,y
        inc     $8072,x
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
        sbc     $8002,y
        inc     $8042,x
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
L185F:  .byte   $80
        brk
L1861:  brk
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
L1873:  sbc     $8002,y
        ora     #$73
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        adc     L0034,x
L1880:  ora     (L0001,x)
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
        sbc     $8002,y
        ora     #$43
        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        .byte   $07
        bmi     L181C
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
        beq     L1910
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        .byte   $7A
        .byte   $14
        ora     (L00FE,x)
        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        sbc     (L0062),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        beq     L193B
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
        bmi     L18D5
L18D5:  .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        sbc     (L0072),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        beq     L1928
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
        bmi     L1873
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        sbc     (L0042),y
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
        ora     $8063,y
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
L1910:  clc
        .byte   $73
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $19
L1919:  .byte   $73
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        clc
        .byte   $43
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $09
L1928:  .byte   $80
        ora     $8043,y
        .byte   $0B
        brk
        brk
        .byte   $80
        rol     L0063
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $27
        .byte   $63
        .byte   $80
L193B:  .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        rol     L0073
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
        sbc     $8002,y
        rol     L0043
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
        beq     L19C5
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     (L0062),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        beq     L19E6
        .byte   $80
        brk
        brk
        .byte   $80
        ror     $8154,x
        ora     L00FC
        ora     L0080
        brk
        brk
        .byte   $80
        sbc     (L0072),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        beq     L19CF
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        sta     L0054
        .byte   $FA
        ora     (L0001,x)
        ora     L0001
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        sbc     (L0042),y
        .byte   $80
        .byte   $0B
        brk
        brk
        .byte   $80
        and     (L0063),y
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
        sbc     $8002,y
        and     (L0073),y
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
L19C5:  .byte   $02
        .byte   $80
        and     (L0043),y
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
L19CF:  .byte   $32
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
L19E6:  .byte   $80
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
        ora     (L00F6,x)
        asl     L0004
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
L1A00:  sbc     $8002,y
        .byte   $37
L1A04:  .byte   $43
        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        txa
        .byte   $54
        ora     (L00FB,x)
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
        beq     L1A81
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     (L0062),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        beq     L1AA2
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     (L0072),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        beq     L1A83
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     (L0042),y
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
        eor     (L0063,x)
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        rti

        .byte   $73
        .byte   $80
        sta     $8024
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        sta     $8024
        eor     (L0073,x)
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        rti

        .byte   $43
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        eor     (L0043,x)
        .byte   $80
L1A81:  .byte   $0B
        brk
L1A83:  brk
        .byte   $80
        lsr     L0063
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
        sbc     $8002,y
        lsr     L0073
        .byte   $80
        stx     $8014
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        .byte   $8E
L1AA2:  .byte   $14
        .byte   $80
        .byte   $47
        .byte   $73
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        lsr     L0043
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
        beq     L1B20
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     (L0062),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        beq     L1B41
        .byte   $80
        sta     $8014
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        sta     $8014
        sbc     (L0072),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        beq     L1B28
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        sbc     (L0042),y
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
        bvc     L1B60
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        .byte   $4F
        .byte   $73
        .byte   $80
        stx     $8034
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        stx     $8034
        bvc     L1B87
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
L1B1B:  .byte   $4F
        .byte   $43
        .byte   $80
        brk
        brk
L1B20:  .byte   $7F
        ora     #$80
        bvc     L1B68
        .byte   $80
        .byte   $0B
        brk
L1B28:  brk
        .byte   $80
        adc     (L0063,x)
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
        sbc     $8002,y
        adc     (L0073,x)
        .byte   $80
        sta     $8034
L1B41:  brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        sta     $8034
        .byte   $62
        .byte   $73
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        adc     (L0043,x)
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
L1B60:  .byte   $80
        beq     L1BC5
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $09
L1B68:  .byte   $80
        sbc     (L0062),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        beq     L1BE6
        .byte   $80
        sta     $8024
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        sta     $8024
        sbc     (L0072),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        .byte   $F9
L1B87:  .byte   $02
        .byte   $80
        beq     L1BCD
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
        bcc     L1BBD
        .byte   $80
        brk
        brk
        .byte   $80
        sta     (L0004),y
        .byte   $80
        sbc     (L0042),y
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
        adc     L0063,x
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        .byte   $74
        .byte   $73
        .byte   $80
        .byte   $8E
        .byte   $14
L1BBD:  .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        .byte   $8E
        .byte   $14
L1BC5:  .byte   $80
        adc     L0073,x
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        .byte   $F9
L1BCD:  .byte   $02
        .byte   $80
        .byte   $74
        .byte   $43
        .byte   $80
        sta     (L0004),y
        .byte   $80
        .byte   $74
        .byte   $14
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        sta     (L0004),y
        .byte   $80
        .byte   $92
        .byte   $14
        .byte   $80
        .byte   $93
        bit     L0001
        .byte   $80
L1BE6:  brk
        brk
        .byte   $80
        bcc     L1C1F
        .byte   $80
        adc     L0043,x
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
        adc     $8063,x
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        .byte   $7C
        .byte   $73
        .byte   $80
        sta     $8014
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        sta     $8014
        adc     $8073,x
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        .byte   $7C
        .byte   $43
        .byte   $80
        .byte   $7A
L1C1F:  .byte   $14
        ora     (L00FE,x)
        .byte   $80
        brk
        brk
        .byte   $80
        sta     L0014,x
        ora     (L0080,x)
        .byte   $7C
        bit     L0080
        .byte   $97
        .byte   $34
        .byte   $DF
        .byte   $22
        .byte   $80
        adc     $8043,x
        .byte   $0B
        brk
        brk
        .byte   $80
        .byte   $7F
        .byte   $03
        ora     (L007F,x)
        ora     #$01
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
L1C46:  .byte   $7F
        .byte   $03
        ora     (L007F,x)
        ora     #$01
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        .byte   $7F
        .byte   $03
        ora     (L007F,x)
        ora     #$01
        .byte   $80
        .byte   $0B
        brk
        brk
        .byte   $80
        sta     L0104,y
        .byte   $7F
        ora     #$01
        cld
        .byte   $80
        sbc     $8002,y
        sta     L0104,y
        .byte   $7F
        ora     #$01
        cld
        .byte   $80
        sbc     $8002,y
        sta     L0104,y
        .byte   $7F
        ora     #$01
        .byte   $80
        .byte   $0B
        brk
        .byte   $7F
        ora     $7380
        .byte   $04
        .byte   $80
        sbc     $8002,y
        .byte   $0B
        brk
        .byte   $7F
        .byte   $0B
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        .byte   $0B
        brk
        .byte   $7F
        ora     $7380,y
        .byte   $04
        .byte   $80
        sbc     $8002,y
        .byte   $0B
        brk
        .byte   $7F
        .byte   $0B
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     $8002,y
        .byte   $0B
        brk
        .byte   $7F
        ora     $7380,y
        .byte   $04
        .byte   $80
        sbc     $8002,y
        .byte   $0B
L1CB3:  brk
        .byte   $7F
        .byte   $0B
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        .byte   $F9
L1CBB:  .byte   $02
        .byte   $80
        .byte   $0B
        brk
        .byte   $7F
        .byte   $0C
        .byte   $80
        .byte   $92
        bvs     L1C46
        .byte   $03
        .byte   $FF
        .byte   $02
        sbc     L0201,x
        sbc     $FC04,x
        ora     L00FC
        .byte   $02
        sbc     $FC04,x
        .byte   $04
        .byte   $FC
        ora     (L0005,x)
        brk
        .byte   $FA
        ora     (L0001,x)
        .byte   $FF
        ora     (L00FF,x)
        .byte   $02
        sbc     $FC05,x
        .byte   $02
        sbc     L0201,x
        sbc     $FC04,x
        ora     (L0006,x)
        sta     (L0004,x)
        .byte   $F5
L1CEF:  .byte   $0C
        sbc     L0201,x
        sbc     L000C,x
        .byte   $F4
        ora     L0CF2
        sbc     L000C,x
L1CFB:  .byte   $F4
        .byte   $0C
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     L0080
        .byte   $9E
        bvs     L1CFB
        .byte   $0B
        sbc     L000C,x
        sbc     L000D,x
        .byte   $F2
        .byte   $0C
        sbc     L0201,x
        sbc     L000C,x
        .byte   $FC
        ora     (L00FE,x)
        .byte   $04
        .byte   $04
        ora     (L00F3,x)
        .byte   $02
L1D1A:  .byte   $FA
        bpl     L1D1E
        .byte   $80
L1D1E:  brk
        brk
        .byte   $7F
        .byte   $07
L1D22:  .byte   $80
        lda     L0030
        ora     (L0001,x)
        .byte   $80
        brk
        bmi     L1D2B
L1D2B:  brk
        .byte   $80
        brk
        brk
        .byte   $80
        brk
        bvc     L1CB3
        lda     #$50
        sta     (L0003,x)
        .byte   $80
L1D38:  brk
        bvc     L1CBB
        brk
        brk
        .byte   $7F
        .byte   $04
        .byte   $80
L1D40:  .byte   $A3
        bvs     L1D44
        .byte   $F0
L1D44:  ora     L00FC
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
L1D56:  brk
L1D57:  ora     (L0001,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        lda     $8130
        ora     L0080
        brk
        brk
        .byte   $80
L1D67:  ldx     L0050,y
        sta     (L0004,x)
        .byte   $80
        brk
        bvc     L1CEF
        lda     L0040
        ora     (L0001,x)
        .byte   $80
        brk
        rti

        brk
        brk
        .byte   $80
        brk
L1D7A:  brk
        .byte   $80
        sty     L0070,x
        ora     (L000A,x)
        sbc     L0005,x
        .byte   $FC
        asl     a
        sed
        .byte   $FC
        ora     (L000C,x)
        .byte   $80
        brk
        brk
        .byte   $7F
L1D8C:  .byte   $03
        .byte   $80
        lda     $8100
        ora     L0080
L1D93:  brk
        brk
        .byte   $80
        .byte   $BB
        bmi     L1D1A
L1D99:  ora     L0080
        brk
        brk
        .byte   $80
        .byte   $C3
        bvc     L1D22
        ora     L0080
        .byte   $AD
L1DA4:  rti

        sta     (L0005,x)
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        .byte   $9E
        bvs     L1DA4
        ora     (L0001,x)
        asl     a
        sbc     L000C,x
        .byte   $80
        brk
        .byte   $10
L1DB7:  .byte   $80
        lda     #$10
        sta     (L0003,x)
        .byte   $80
        brk
        bpl     L1D40
        brk
        brk
        .byte   $80
        .byte   $BB
        brk
        sta     (L0005,x)
        .byte   $80
        brk
        brk
        .byte   $80
        cmp     #$30
L1DCD:  sta     (L0005,x)
        .byte   $80
        brk
        brk
        .byte   $80
L1DD3:  brk
        bvc     L1D56
        .byte   $D4
        bvc     L1DDA
        .byte   $01
L1DDA:  .byte   $80
        brk
        bvc     L1DDE
L1DDE:  .byte   $80
        .byte   $BB
        rti

        sta     (L0005,x)
        .byte   $80
L1DE4:  brk
        bpl     L1D67
        lda     #$10
        sta     (L0003,x)
        .byte   $80
        .byte   $9E
        bvs     L1DE4
        ora     #$01
L1DF1:  .byte   $80
        ldx     L0010,y
        sta     (L0004,x)
        .byte   $80
        brk
        bpl     L1D7A
        brk
        brk
        .byte   $80
        cmp     #$00
        .byte   $81
L1E00:  ora     L0080
        brk
        brk
L1E04:  .byte   $80
        .byte   $D7
        bmi     L1E09
        .byte   $80
L1E09:  brk
        bmi     L1D8C
        cmp     L0130,y
        .byte   $80
        brk
        bmi     L1D93
        brk
        brk
        .byte   $80
        brk
        bvc     L1D99
        sbc     (L0050,x)
        ora     (L0001,x)
        .byte   $80
        brk
        bvc     L1E21
L1E21:  .byte   $80
        cmp     #$40
        sta     (L0005,x)
        .byte   $80
        ldx     L0010,y
        sta     (L0003,x)
        .byte   $2B
        .byte   $80
        .byte   $9C
        bvs     L1E31
        .byte   $06
L1E31:  ora     (L0080,x)
        .byte   $C3
        bpl     L1DB7
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
        cmp     L0100,y
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        brk
        bmi     L1DCD
        sbc     L0030
        .byte   $80
        brk
        bmi     L1DD3
L1E53:  inc     L0030
        ora     (L0080,x)
L1E57:  brk
        bmi     L1DDA
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
        cmp     L0140,y
        .byte   $80
        brk
        rti

        .byte   $80
        .byte   $C3
        bpl     L1DF1
        .byte   $04
        .byte   $80
        .byte   $A3
        bvs     L1E76
        .byte   $4E
L1E76:  .byte   $A7
        .byte   $5A
        .byte   $80
        .byte   $D4
        bpl     L1E7D
        .byte   $01
L1E7D:  .byte   $80
        brk
        bpl     L1E81
L1E81:  .byte   $80
        brk
        brk
        brk
        .byte   $80
        sbc     L0000
        .byte   $80
        brk
        brk
        .byte   $80
        inc     L0000
        ora     (L0080,x)
        brk
        brk
        .byte   $80
        .byte   $43
        .byte   $74
        eor     L0481,y
        ldx     #$05
        lsr     L0004,x
        .byte   $A3
        ora     (L005D,x)
        ora     (L0080,x)
        brk
        brk
        .byte   $80
        sbc     L0040
        .byte   $80
        brk
        rti

        .byte   $80
        inc     L0040
        ora     (L0080,x)
        brk
        rti

        .byte   $80
        brk
        brk
        .byte   $80
        .byte   $D4
        bpl     L1EB8
        .byte   $01
L1EB8:  .byte   $80
        .byte   $97
        bvs     L1EBE
        .byte   $FA
        .byte   $01
L1EBE:  ora     (L000A,x)
        .byte   $80
        sbc     (L0010,x)
        ora     (L0001,x)
        .byte   $80
        lda     L0040
        ora     (L0001,x)
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
        bvs     L1ED6
L1ED6:  .byte   $80
        ldy     L0074
        sta     (L0006,x)
        .byte   $AB
L1EDC:  lsr     L0081,x
        ora     L0080
        brk
        brk
        .byte   $80
        brk
        rts

        .byte   $80
        lda     #$60
        sta     (L0003,x)
        .byte   $80
        brk
        rts

        .byte   $80
L1EEE:  sbc     (L0010,x)
        ora     (L0001,x)
        .byte   $80
        .byte   $9F
        bvs     L1EEE
        .byte   $FC
        ora     L0006
        sbc     L0080,x
        brk
        brk
        brk
        brk
        .byte   $80
        lda     $8140
        ora     L0080
        brk
        brk
        .byte   $80
        brk
        bvs     L1F8A
        .byte   $0F
        .byte   $80
        brk
        brk
        .byte   $80
        .byte   $B6
L1F11:  rts

        sta     (L0004,x)
        .byte   $80
        brk
        rts

        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        sty     L0070,x
        .byte   $0C
        sed
        .byte   $80
        rol     L0171,x
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        .byte   $BB
        rti

        sta     (L0005,x)
        .byte   $80
        brk
        brk
        .byte   $80
        brk
        bvs     L1FB5
        bpl     L1EB8
        .byte   $C3
        rts

        sta     (L0005,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        .byte   $5C
        adc     (L0001),y
        .byte   $80
        tya
        bvs     L1F50
        .byte   $80
        brk
        brk
        .byte   $7F
L1F4D:  .byte   $03
        .byte   $80
        .byte   $C9
L1F50:  rti

        sta     (L0005,x)
        .byte   $80
        brk
        brk
L1F56:  .byte   $80
        brk
        bvs     L1FD9
        bpl     L1EDC
        brk
        rts

        .byte   $80
        .byte   $D4
        rts

        .byte   $01
L1F62:  ora     (L0080,x)
        brk
        rts

        brk
        .byte   $80
        brk
L1F69:  brk
        .byte   $7F
        .byte   $03
L1F6C:  .byte   $80
        .byte   $9F
        bvs     L1F69
        .byte   $03
        sbc     L3F80,y
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
L1F80:  rti

        .byte   $80
        cmp     L0140,y
        .byte   $80
        brk
        rti

        .byte   $80
        brk
L1F8A:  brk
        .byte   $80
        brk
        bvs     L200E
        bpl     L1F11
        brk
        rts

        .byte   $80
        sbc     (L0060,x)
        ora     (L0001,x)
        .byte   $80
        brk
        rts

        brk
        .byte   $80
        brk
        brk
        brk
L1FA0:  brk
        .byte   $80
        .byte   $5C
        adc     (L0080),y
        .byte   $93
        bvs     L1FB0
        .byte   $80
        rol     $8071,x
        .byte   $93
        bvs     L1FB7
        .byte   $80
L1FB0:  brk
        brk
        brk
        brk
        .byte   $80
L1FB5:  brk
        rti

L1FB7:  .byte   $80
        sbc     L0040
        .byte   $80
        brk
        rti

        .byte   $80
        inc     L0040
        ora     (L0080,x)
        brk
        rti

        .byte   $80
        brk
        brk
        .byte   $80
        brk
L1FC9:  bvs     L204A
        bpl     L1F4D
        brk
L1FCE:  brk
        .byte   $7F
L1FD0:  php
        .byte   $80
        .byte   $9B
        bvs     L1FCE
        .byte   $80
        eor     $8071,x
L1FD9:  sty     L0070,x
        .byte   $80
        .byte   $3F
        adc     (L0080),y
        .byte   $9F
        bvs     L1F62
        brk
        brk
        .byte   $7F
        ora     #$80
        brk
        bvs     L2069
        bpl     L1F6C
        brk
        brk
        .byte   $80
        lda     L0030
L1FF1:  ora     (L0001,x)
        .byte   $80
        brk
        bmi     L1FF7
L1FF7:  brk
        .byte   $80
        brk
        brk
        brk
        .byte   $80
        .byte   $9F
        bvs     L1F80
        .byte   $5C
        adc     (L0080),y
        .byte   $93
L2004:  bvs     L200B
        .byte   $03
        .byte   $80
        brk
        brk
        .byte   $7F
L200B:  .byte   $03
L200C:  .byte   $80
        brk
L200E:  jsr     LA980
        jsr     L0381
L2014:  .byte   $80
        brk
        jsr     L0080
        brk
        .byte   $80
        brk
        bvs     L209D
        bpl     L1FA0
L2020:  brk
        brk
        .byte   $80
        .byte   $AD
L2024:  bmi     *-125
        ora     L0080
        brk
        brk
        brk
        brk
        .byte   $80
L202D:  .byte   $9B
L202E:  bvs     L202D
        .byte   $03
L2031:  .byte   $04
L2032:  sbc     L0080,y
L2035:  brk
        brk
        brk
        .byte   $80
        .byte   $B6
L203A:  .byte   $20
L203B:  sta     (L0004,x)
        .byte   $80
        brk
        jsr     L0080
        brk
        .byte   $80
        brk
L2045:  bvs     L20C6
        bpl     L1FC9
        brk
L204A:  brk
        .byte   $80
L204C:  .byte   $BB
        bmi     L1FD0
        ora     L0080
        brk
L2052:  brk
        brk
        .byte   $80
        tya
        bvs     L205F
        .byte   $FC
L2059:  brk
        sbc     L3E80,x
        .byte   $71
L205E:  .byte   $01
L205F:  .byte   $80
        brk
        brk
        brk
        .byte   $80
L2064:  .byte   $C3
        jsr     L0581
        .byte   $80
L2069:  brk
L206A:  brk
        .byte   $80
        brk
        bvs     L20EE
        bpl     L1FF1
L2071:  brk
        brk
        .byte   $80
        cmp     #$30
        sta     (L0005,x)
        .byte   $80
        brk
        brk
        .byte   $80
        .byte   $5C
        adc     (L0001),y
        .byte   $80
        tya
        bvs     L2086
        .byte   $04
        .byte   $80
        .byte   $3E
L2086:  adc     (L0001),y
        .byte   $80
L2089:  .byte   $9F
        bvs     L200C
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
L209D:  brk
        .byte   $80
        brk
        bvs     L2121
        .byte   $10
L20A3:  .byte   $80
        brk
        brk
        .byte   $80
        .byte   $D7
        bmi     L20AB
        .byte   $80
L20AB:  brk
        bmi     L202E
        .byte   $D9
        .byte   $30
L20B0:  ora     (L0080,x)
        brk
        bmi     L2035
L20B5:  brk
        brk
        .byte   $80
        .byte   $9F
        bvs     L203B
        .byte   $5C
        adc     (L0001),y
L20BE:  .byte   $80
        .byte   $9F
        bvs     L20B5
        ora     (L000C,x)
        .byte   $F9
        .byte   $80
L20C6:  brk
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
        bvs     L215B
        bpl     L205E
        brk
        brk
        .byte   $80
L20E1:  brk
        bmi     L2064
        sbc     L0030
        .byte   $80
        brk
        bmi     L206A
        inc     L0030
        ora     (L0080,x)
L20EE:  brk
        bmi     L2071
        brk
        brk
        .byte   $80
        tya
        bvs     L20FE
        sbc     L0006,x
        ora     (L00FD,x)
        .byte   $FC
L20FC:  .byte   $0D
        .byte   $F2
L20FE:  .byte   $80
L20FF:  brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        brk
        bvs     L2186
        bpl     L2089
        brk
        brk
        .byte   $7F
        asl     L0080
        sty     L0070,x
L2110:  ora     L05F2
        .byte   $03
        .byte   $04
        .byte   $FC
        ora     (L0001,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        php
        .byte   $80
        brk
        bvs     L21A0
L2121:  .byte   $10
L2122:  .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        .byte   $9C
        bvs     L212C
        .byte   $FE
L212C:  .byte   $04
        sbc     L0803,y
        ora     (L00F4,x)
        brk
        .byte   $80
        brk
        brk
        .byte   $7F
        asl     L0080
        brk
        bvs     L21BB
        bpl     L20BE
        brk
L213F:  brk
        .byte   $7F
        ora     L0080
        tya
        bvs     L2146
L2146:  .byte   $0B
        ora     (L00F7,x)
        sbc     L0403,x
        sbc     $80FC,y
        lda     (L0074),y
        ora     (L0080,x)
        sta     $FA70,y
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $04
L215B:  .byte   $80
        brk
        bvs     L21DE
        bpl     L20E1
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        sty     L0070,x
        ora     L0080
        .byte   $B3
        .byte   $74
        .byte   $80
L216D:  sty     L0072,x
        .byte   $80
        .byte   $93
        bvs     L2178
        .byte   $07
        .byte   $FC
        .byte   $80
        .byte   $3E
        .byte   $71
L2178:  .byte   $80
        .byte   $93
        bvs     L20FC
        rol     L0171,x
        .byte   $80
L2180:  .byte   $9F
        bvs     L2180
        ora     (L00FB,x)
        .byte   $80
L2186:  brk
        brk
        .byte   $7F
        .byte   $04
        .byte   $80
        brk
        bvs     L220D
        bpl     L2110
        brk
        brk
        .byte   $7F
        .byte   $03
        .byte   $80
        tya
        bvs     L219C
        ora     (L0002,x)
        .byte   $80
        .byte   $5C
L219C:  adc     (L0001),y
        .byte   $80
        .byte   $94
L21A0:  bvs     L2122
        eor     $8071,x
        .byte   $97
        bvs     L21AA
        .byte   $FA
        .byte   $0C
L21AA:  sbc     L010B,y
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
L21BB:  bvs     L223C
        bpl     L213F
        brk
        brk
        brk
        .byte   $80
        tya
        bvs     L2146
        .byte   $5C
        adc     (L0001),y
        .byte   $80
        .byte   $A3
        bvs     L21CE
        .byte   $F4
L21CE:  .byte   $07
        sbc     L0005,x
        .byte   $FC
        asl     a
        sbc     L0002,x
        sbc     L3E80,x
        adc     (L0001),y
        .byte   $80
        sty     L0070,x
        .byte   $01
L21DE:  .byte   $FF
        ora     (L0080,x)
        brk
        brk
        .byte   $80
        sty     L0070,x
        ora     (L0080,x)
        brk
        brk
        .byte   $7F
        bpl     L216D
        sty     L0070,x
        ora     L0007
        .byte   $FF
        .byte   $F3
        ora     (L0080,x)
        .byte   $5C
        adc     (L0001),y
        .byte   $80
        sty     L0070,x
        .byte   $02
        sbc     $FD0C,x
        ora     (L0002,x)
        sed
        .byte   $FC
        .byte   $0C
        sbc     $F506,y
        .byte   $0B
        sbc     L0005,x
        asl     L00F5
        .byte   $05
L220D:  .byte   $5A
        .byte   $A7
        .byte   $5A
        lda     L005A
        .byte   $A7
        .byte   $5A
        lda     L005A
        .byte   $A7
        .byte   $5A
        lda     L005A
        .byte   $A7
        .byte   $5A
        lda     (L0005,x)
        brk
        .byte   $FA
        php
L2221:  sbc     $F507,x
        ora     (L000A,x)
        sbc     L0601,x
        ora     (L00F0,x)
        .byte   $0C
        .byte   $F4
        ora     L0007
        .byte   $F4
        ora     L0000
        .byte   $FA
        .byte   $80
        .byte   $B2
        .byte   $74
        .byte   $80
        sta     $FA70,y
        .byte   $80
        .byte   $B2
L223C:  .byte   $74
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
        sbc     L0005,x
        brk
        .byte   $FA
        .byte   $0C
        .byte   $FF
        .byte   $FB
        .byte   $FA
L2262:  .byte   $0B
        sbc     L0010,x
        ora     (L0080,x)
        ldy     L0014,x
        sta     (L0003,x)
        .byte   $FF
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        sta     (L0003,x)
        sbc     $FD01,x
        sta     (L0005,x)
        sbc     $FF01,x
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FD,x)
        ora     (L0005,x)
        sta     (L0004,x)
        .byte   $FF
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        sta     (L0004,x)
        .byte   $FB
        .byte   $03
        .byte   $FB
        ora     (L0001,x)
        .byte   $03
        ora     (L0001,x)
        .byte   $FB
        ora     (L0001,x)
        .byte   $FF
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L0001,x)
        .byte   $FB
        ora     (L0007,x)
        ora     (L0080,x)
        brk
        bpl     L2338
        and     L0080
        cpy     L0014
        sta     (L0003,x)
        .byte   $80
        brk
        bpl     L2342
        ora     #$80
        iny
        .byte   $14
        sta     (L0011,x)
        .byte   $80
        brk
        bpl     L234C
        ora     #$80
        .byte   $DA
        .byte   $14
        ora     (L00E7,x)
        .byte   $1A
        .byte   $80
        brk
        bpl     L2357
        ora     #$80
        cmp     $8114,x
        .byte   $07
        .byte   $80
        brk
        bpl     L2262
        sbc     L0014
        sta     (L0008,x)
        .byte   $80
        brk
        bpl     L2369
        ora     #$80
        inc     $D714
        ora     (L0001,x)
        .byte   $80
        brk
        bpl     L2374
        and     L0080
        .byte   $DA
        .byte   $14
        ora     (L00E7,x)
        .byte   $1A
        .byte   $80
        brk
        bpl     L237F
        and     L0080
        inc     $D714
        ora     (L0001,x)
        .byte   $80
        brk
        bpl     L238A
        and     L0080
        .byte   $DA
        .byte   $14
        ora     (L00E7,x)
        .byte   $1A
        .byte   $80
        brk
        bpl     L2395
        and     L0080
        inc     $D714
        ora     (L0029,x)
        .byte   $80
        brk
        bpl     L23A0
        and     L0080
        beq     L2339
        .byte   $EB
        cmp     $8001,x
        brk
        bpl     L23AB
        and     L0080
        clv
        .byte   $14
        ora     (L0007,x)
        ora     (L0080,x)
        brk
        bpl     L23B6
        .byte   $25
L2338:  .byte   $80
L2339:  cpy     #$14
        sta     (L0003,x)
        .byte   $80
        brk
        bpl     L23C0
        .byte   $25
L2342:  .byte   $80
        cpy     L0014
        ora     (L0001,x)
        and     #$80
        brk
        bpl     L23CB
L234C:  and     L0080
        beq     L2364
        .byte   $EB
        cmp     $8001,y
        brk
        bpl     L23D6
L2357:  and     L0080
        ldy     L0014,x
        ora     (L0005,x)
        ora     (L0080,x)
        brk
        bpl     L23E1
        and     L0080
L2364:  tsx
        .byte   $14
        ora     (L0007,x)
        .byte   $01
L2369:  .byte   $80
        brk
        bpl     L23EC
        and     L0080
        cpy     L0014
        ora     (L0001,x)
        .byte   $29
L2374:  .byte   $80
        brk
        bpl     L23F7
        and     L0080
        beq     L2390
        .byte   $EB
        .byte   $DD
        .byte   $01
L237F:  .byte   $80
        brk
        bpl     L2402
        and     L0080
        clv
        .byte   $14
        ora     (L0007,x)
        .byte   $01
L238A:  .byte   $80
        brk
        bpl     L240D
        and     L0080
L2390:  cpy     #$14
        sta     (L0003,x)
        .byte   $80
L2395:  brk
        bpl     L2417
        and     L0080
        cpy     L0014
        sta     (L0003,x)
        .byte   $80
        brk
L23A0:  bpl     L2421
        and     L0080
        .byte   $DA
        .byte   $14
        ora     (L00E7,x)
        .byte   $1A
        .byte   $80
        brk
L23AB:  bpl     L242C
        and     L0080
        inc     $D714
        ora     (L0001,x)
        .byte   $80
        brk
L23B6:  bpl     L2437
        and     L0080
        .byte   $DA
        .byte   $14
        ora     (L00E7,x)
        .byte   $1A
        .byte   $80
L23C0:  brk
        bpl     L2442
        and     L0080
        inc     $D714
        ora     (L0001,x)
        .byte   $80
L23CB:  brk
        bpl     L244D
        and     L0080
        .byte   $DA
        .byte   $14
        ora     (L00E7,x)
        .byte   $1A
        .byte   $80
L23D6:  brk
        bpl     L2458
        and     L0080
        inc     $D714
        ora     (L0029,x)
        .byte   $80
L23E1:  brk
        bpl     L2463
        and     L0080
        beq     L23FC
        .byte   $EB
        cmp     L3C01,y
L23EC:  ora     (L0001,x)
        .byte   $FF
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        .byte   $02
        .byte   $FE
L23F7:  .byte   $02
        ora     (L00C3,x)
        ora     (L003D,x)
L23FC:  .byte   $FF
        .byte   $BF
        ora     (L0041,x)
        .byte   $FF
        .byte   $C3
L2402:  ora     (L003D,x)
        .byte   $FC
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
L240D:  ora     (L00FF,x)
        ora     (L0002,x)
        .byte   $BF
        ora     (L0005,x)
        ora     (L003C,x)
        .byte   $01
L2417:  .byte   $FF
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        .byte   $01
L2421:  .byte   $FF
        ora     (L00C8,x)
        ora     (L0036,x)
        ora     (L00C2,x)
        ora     (L003C,x)
        ora     (L00C8,x)
L242C:  ora     (L0036,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        ora     (L00FF,x)
        .byte   $01
L2437:  .byte   $FF
        ora     (L00FF,x)
        ora     (L00C2,x)
        ora     (L0000,x)
        brk
        ora     (L0000,x)
        .byte   $02
L2442:  brk
        .byte   $03
        brk
        .byte   $04
        brk
        ora     L0000
        asl     L0000
        .byte   $07
        brk
L244D:  php
        brk
        ora     #$00
        asl     a
        brk
        .byte   $0B
        brk
        .byte   $0C
        brk
        .byte   $0D
L2458:  brk
        asl     L0F00
        brk
        bpl     L245F
L245F:  ora     (L0020),y
        .byte   $12
        .byte   $20
L2463:  .byte   $13
        jsr     L2014
        ora     L0020,x
        asl     L0020,x
        .byte   $17
        jsr     L0018
        ora     L1A00,y
        brk
        .byte   $1B
        brk
        .byte   $1C
        brk
        ora     L1E00,x
        bvs     L249B
        bvs     L249E
        brk
        and     (L0070,x)
        .byte   $22
        bvs     L24A7
        brk
        bit     L0000
        and     L0040
        rol     L0040
        .byte   $27
        rti

        plp
        rti

        and     #$40
        rol     a
        rti

        .byte   $2B
        rti

        bit     L2D40
        brk
        .byte   $2E
        brk
L249B:  .byte   $2F
        brk
        .byte   $30
L249E:  brk
        and     (L0000),y
        .byte   $32
        brk
        .byte   $33
        brk
        .byte   $34
        brk
L24A7:  and     L0000,x
        rol     L0000,x
        .byte   $37
        brk
        sec
        brk
        and     L3A00,y
        brk
        .byte   $3B
        brk
        .byte   $3C
        brk
        and     L3E00,x
        brk
        .byte   $3F
        brk
        rti

        brk
        eor     (L0000,x)
        .byte   $42
        brk
        .byte   $43
        brk
        .byte   $44
        brk
        eor     L0000
        lsr     L0000
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
        bvc     L24DF
L24DF:  eor     (L0000),y
        .byte   $52
        brk
        .byte   $53
        brk
        .byte   $54
        brk
        eor     L0000,x
        lsr     L0000,x
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
        adc     (L0000,x)
        .byte   $62
        brk
        .byte   $63
        bmi     L256A
        brk
        adc     L0000
        ror     L0000
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
        bvs     L251F
L251F:  adc     (L0000),y
        .byte   $72
        brk
        .byte   $73
        brk
        .byte   $74
        bmi     L259D
        bmi     L25A0
        bmi     L25A3
        bmi     L25A6
        bmi     L25A9
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
        sta     (L0000,x)
        .byte   $82
        brk
        .byte   $83
        brk
        sty     L0000
        sta     L0000
        stx     L0000
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
        sty     $8D00
        brk
        stx     $8F00
        brk
        bcc     L2563
L2563:  sta     (L0000),y
        .byte   $14
        .byte   $04
        ora     L0004,x
        .byte   $16
L256A:  .byte   $04
        .byte   $17
        .byte   $04
        clc
        .byte   $04
        ora     L1A04,y
        .byte   $04
        .byte   $1B
        .byte   $04
        .byte   $1C
        .byte   $04
        ora     L1E04,x
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
L259D:  .byte   $87
        .byte   $03
        .byte   $87
L25A0:  .byte   $03
        .byte   $87
        .byte   $03
L25A3:  .byte   $87
        .byte   $03
        .byte   $20
L25A6:  .byte   $04
        and     (L0004,x)
L25A9:  .byte   $22
        .byte   $04
        .byte   $23
        .byte   $04
        bit     L0004
        and     L0004
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
        rol     L0004
        .byte   $27
        .byte   $04
        plp
        .byte   $04
        and     #$04
        .byte   $87
        .byte   $03
        .byte   $87
        brk
        sta     (L0000,x)
        .byte   $87
        .byte   $03
        rol     a
        .byte   $04
        .byte   $2B
        .byte   $04
        bit     L2D04
        .byte   $04
        bit     L0004
        and     L0004
        .byte   $80
        .byte   $03
        .byte   $82
        brk
        txa
        brk
        .byte   $80
        brk
        rol     $8704
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
        sta     (L0000,x)
        and     (L0004,x)
        bmi     L25FD
        and     (L0004,x)
        and     (L0004),y
L25FD:  bit     L0004
        and     L0004
        .byte   $80
        .byte   $03
        dey
        brk
        .byte   $80
        brk
        .byte   $80
        brk
        sta     L3200
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
        sta     (L0000,x)
        sta     (L0000,x)
        .byte   $34
        .byte   $04
        and     L0004,x
        .byte   $34
        .byte   $04
        rol     L0004,x
        .byte   $34
        .byte   $04
        .byte   $37
        .byte   $04
        .byte   $80
        .byte   $03
        sec
        .byte   $04
        and     L3904,y
        .byte   $04
        .byte   $3A
        .byte   $04
        .byte   $3B
        .byte   $04
        .byte   $3A
        .byte   $04
        .byte   $3C
        .byte   $04
        and     L3E04,x
        .byte   $04
        .byte   $87
        .byte   $03
        .byte   $3F
        .byte   $04
        rti

        .byte   $04
        rti

        .byte   $04
        and     L2B04
        .byte   $04
        .byte   $22
        .byte   $04
        bit     L2004
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
        rol     L0004
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
        sbc     L0052,x
        inc     L0052,x
        .byte   $F7
        .byte   $52
        ora     (L0053,x)
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
        ora     L0453
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
        ora     L1E53,x
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
        sbc     L0052,x
        inc     L0052,x
        .byte   $F7
        .byte   $52
        ora     (L0053,x)
        .byte   $02
        .byte   $53
        sbc     L0454,y
        .byte   $53
        .byte   $0B
        .byte   $53
        .byte   $FA
        .byte   $54
        ora     L0453
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
        ora     L1E53,x
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
        eor     L0001,x
        eor     L0002,x
        eor     L0003,x
        eor     L0004,x
        eor     L0005,x
        eor     L0006,x
        eor     L0007,x
        eor     L0008,x
        eor     L0009,x
        eor     L000A,x
        eor     L0007,x
        eor     L000B,x
        eor     L000C,x
        eor     L000D,x
        eor     L000E,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        ora     (L0055),y
        .byte   $12
        eor     L0013,x
        eor     L00F7,x
        .byte   $52
        .byte   $14
        eor     L0012,x
        eor     L0015,x
        eor     L0003,x
        eor     L0016,x
        eor     L0012,x
        eor     L0017,x
        eor     L0007,x
        eor     L0018,x
        eor     L0012,x
        eor     L0019,x
        eor     L0007,x
        eor     L001A,x
        eor     L001B,x
        eor     L001C,x
        eor     L001D,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        asl     a:L0055,x
        bvc     L2759
        eor     L00F7,x
        .byte   $52
        jsr     L0055
        bvc     L2742
L2742:  bvc     L2747
        eor     L0021,x
        .byte   $55
L2747:  brk
        bvc     L274A
L274A:  bvc     L2753
        eor     L0021,x
        eor     L0000,x
        bvc     L2752
L2752:  .byte   $50
L2753:  .byte   $07
        eor     L0022,x
L2756:  .byte   $55
L2757:  .byte   $1B
        .byte   $55
L2759:  .byte   $1B
        eor     L0023,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2789
        eor     L0025,x
        eor     L0026,x
        eor     L0000,x
        bvc     L2772
L2772:  bvc     L279B
        eor     L0028,x
        eor     L0000,x
        bvc     L277A
L277A:  bvc     L27A3
        eor     L0028,x
        eor     L0000,x
        bvc     L2782
L2782:  bvc     L27AB
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L2789:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L27B9
        .byte   $55
L279B:  and     L0055
        rol     L0055
        .byte   $2B
        eor     L0000,x
        .byte   $50
L27A3:  .byte   $27
        eor     L002C,x
        eor     L002D,x
        eor     L002E,x
        .byte   $55
L27AB:  .byte   $27
        eor     L002F,x
        eor     L0030,x
        eor     L0031,x
        eor     L0032,x
        eor     L0033,x
        eor     L0034,x
        .byte   $55
L27B9:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L27E9
        eor     L0025,x
        eor     L0026,x
        eor     L0035,x
        eor     L0036,x
        eor     L0027,x
        eor     L0028,x
        eor     L0037,x
        eor     L0038,x
        eor     L0027,x
        eor     L0039,x
        eor     L003A,x
        eor     L003B,x
        eor     L003C,x
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L27E9:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2819
        eor     L0025,x
        eor     L003D,x
        eor     L003E,x
        eor     L003F,x
        eor     L0027,x
        eor     L0040,x
        eor     L0041,x
        eor     L0042,x
        eor     L0027,x
        eor     L0043,x
        eor     L0044,x
        eor     L0045,x
        eor     L0027,x
        eor     L0046,x
        eor     L001B,x
        .byte   $55
L2819:  .byte   $47
        eor     L0048,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2849
        eor     L0025,x
        eor     L0026,x
        eor     L0049,x
        eor     L004A,x
        eor     L0027,x
        eor     L0028,x
        eor     L004B,x
        eor     L004C,x
        eor     L0027,x
        eor     L004D,x
        eor     L004E,x
        eor     L004F,x
        eor     L003C,x
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L2849:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2879
        eor     L0025,x
        eor     L0026,x
        eor     L0000,x
        bvc     L28B2
        eor     L0027,x
        eor     L0028,x
        eor     L0051,x
        eor     L0052,x
        eor     L0053,x
        eor     L0054,x
        eor     L0055,x
        eor     L0056,x
        eor     L0057,x
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L2879:  cli
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L28A9
        eor     L0025,x
        eor     L0026,x
        eor     L0059,x
        eor     L005A,x
        eor     L0027,x
        eor     L0028,x
        eor     L005B,x
        eor     L005C,x
        eor     L0027,x
        eor     L005D,x
        eor     L005E,x
        eor     L005F,x
        eor     L0027,x
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L28A9:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
L28B2:  eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L28D9
        eor     L0025,x
        eor     L0026,x
        eor     L0060,x
        eor     L0061,x
        eor     L0027,x
        eor     L0028,x
        eor     L0062,x
        eor     L0063,x
        eor     L0027,x
        eor     L0028,x
        eor     L0064,x
        eor     L0065,x
        eor     L0027,x
        eor     L0029,x
        eor     L0066,x
        .byte   $55
L28D9:  .byte   $67
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2909
        eor     L0025,x
        eor     L0026,x
        eor     L0068,x
        eor     L0069,x
        eor     L0027,x
        eor     L0028,x
        eor     L006A,x
        eor     L006B,x
        eor     L0027,x
        eor     L0028,x
        eor     L006C,x
        eor     L006D,x
        eor     L0027,x
        eor     L0029,x
        eor     L006E,x
        .byte   $55
L2909:  .byte   $6F
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2939
        eor     L0025,x
        eor     L0026,x
        eor     L0000,x
L2920:  bvc     L2922
L2922:  bvc     L294B
        eor     L0028,x
        eor     L0070,x
        eor     L0071,x
        eor     L0027,x
        eor     L0072,x
        eor     L0073,x
        eor     L0074,x
        eor     L0027,x
        eor     L0029,x
        eor     L0075,x
        .byte   $55
L2939:  ror     L0055,x
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        .byte   $77
        eor     L0078,x
        .byte   $55
L294B:  and     L0055
        adc     $7A55,y
        eor     L007B,x
        eor     L007C,x
        eor     L007D,x
        .byte   $55
L2957:  ror     $7F55,x
        eor     L0080,x
        eor     L0028,x
        eor     L0000,x
        bvc     L2962
L2962:  bvc     L298B
        eor     L0029,x
        eor     L001B,x
        eor     L001B,x
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2999
        eor     L0025,x
        eor     L0026,x
        eor     L0081,x
        eor     L0082,x
        eor     L0027,x
        eor     L0028,x
        eor     L0083,x
        eor     L0084,x
        .byte   $55
L298B:  .byte   $27
        eor     L0028,x
        eor     L0085,x
        eor     L0086,x
        eor     L0027,x
        eor     L0029,x
        eor     L0087,x
        .byte   $55
L2999:  dey
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L29C9
        eor     L0025,x
        eor     L0026,x
        eor     L0089,x
        eor     L008A,x
        eor     L0027,x
        eor     L0028,x
        eor     L008B,x
        eor     L008C,x
        eor     L0027,x
        eor     L008D,x
        eor     L008E,x
        eor     L008F,x
        eor     L0027,x
        eor     L0033,x
        eor     L0090,x
        .byte   $55
L29C9:  sta     (L0055),y
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L29F9
        eor     L0025,x
        eor     L0026,x
        eor     L0092,x
        eor     L0069,x
        eor     L0027,x
        eor     L0028,x
        eor     L0093,x
        eor     L006B,x
        eor     L0027,x
        eor     L0028,x
        eor     L006C,x
        eor     L006D,x
        eor     L0027,x
        eor     L0029,x
        eor     L006E,x
        .byte   $55
L29F9:  .byte   $6F
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2A29
        eor     L0025,x
        eor     L0026,x
        eor     L0094,x
        eor     L0095,x
        eor     L0027,x
        eor     L0028,x
        eor     L0096,x
        eor     L0097,x
        eor     L0027,x
        eor     L0028,x
        eor     L0085,x
        eor     L0086,x
        eor     L0027,x
        eor     L0029,x
        eor     L0087,x
        .byte   $55
L2A29:  dey
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        tya
        eor     L0099,x
        eor     L0025,x
        eor     L0026,x
        eor     L009A,x
        eor     L009B,x
        eor     L0027,x
        eor     L0028,x
        eor     L009C,x
        eor     L009D,x
        eor     L0027,x
        eor     L0028,x
        eor     L009E,x
        eor     L009F,x
        eor     L0027,x
        .byte   $55
L2A55:  .byte   $29
L2A56:  .byte   $55
L2A57:  .byte   $1B
        eor     L001B,x
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        ldy     #$55
        lda     (L0055,x)
        nop
        .byte   $52
        bit     L0055
        ldx     #$55
        .byte   $A3
        eor     L0025,x
        eor     L0026,x
        eor     L00A4,x
        eor     L00A5,x
        eor     L0027,x
        eor     L0028,x
        eor     L0000,x
        bvc     L2A7A
L2A7A:  bvc     L2AA3
        eor     L0028,x
        eor     L0000,x
        bvc     L2A82
L2A82:  bvc     L2AAB
        eor     L0029,x
        eor     L001B,x
        eor     L001B,x
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2AB9
        eor     L0025,x
        eor     L0026,x
        eor     L00A6,x
        eor     L00A7,x
        .byte   $55
L2AA3:  .byte   $27
        eor     L00A8,x
        eor     L00A9,x
        eor     L00AA,x
        .byte   $55
L2AAB:  .byte   $27
        eor     L00AB,x
        eor     L00AC,x
        eor     L00AD,x
        eor     L0027,x
        eor     L0033,x
        eor     L0034,x
        .byte   $55
L2AB9:  ldx     L2A55
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2AE9
        eor     L0025,x
        eor     L0026,x
        eor     L00AF,x
        eor     L00B0,x
        eor     L0027,x
        eor     L0028,x
        eor     L00B1,x
        eor     L00B2,x
        eor     L00B3,x
        eor     L00B4,x
        eor     L00B5,x
        eor     L00B6,x
        eor     L0027,x
        eor     L0029,x
        eor     L00B7,x
        .byte   $55
L2AE9:  cli
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2B19
        eor     L0025,x
        eor     L00B8,x
        eor     L00B9,x
        eor     L00BA,x
        eor     L0027,x
L2B04:  eor     L00BB,x
        eor     L00BC,x
        eor     L00BD,x
        eor     L0027,x
        eor     L00AB,x
        eor     L00AC,x
        eor     L00AD,x
        eor     L0027,x
        eor     L0033,x
        eor     L0034,x
        .byte   $55
L2B19:  ldx     L2A55
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2B49
        eor     L0025,x
        eor     L0026,x
        eor     L00BE,x
        eor     L0061,x
        eor     L00BF,x
        eor     L0028,x
        eor     L00C0,x
        eor     L00C1,x
        eor     L00C2,x
        eor     L00B4,x
        eor     L00B5,x
        eor     L00B6,x
        eor     L0027,x
        eor     L0029,x
        eor     L00B7,x
        .byte   $55
L2B49:  cli
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        .byte   $C3
        eor     L00C4,x
        eor     L0025,x
        eor     L00C5,x
        eor     L00C6,x
        eor     L00C7,x
        eor     L00C8,x
        eor     L0028,x
        eor     L00C9,x
        eor     L00CA,x
        eor     L0027,x
        eor     L0028,x
        eor     L00CB,x
        eor     L00CC,x
        eor     L0027,x
        eor     L0029,x
        eor     L001B,x
        eor     L001B,x
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2BA9
        eor     L0025,x
        eor     L0026,x
        eor     L00CD,x
        eor     L0000,x
        bvc     L2BBB
        eor     L00CE,x
        eor     L00CF,x
        eor     L00D0,x
        eor     L0027,x
        eor     L00D1,x
        eor     L00D2,x
        eor     L00AD,x
        eor     L0027,x
        eor     L0033,x
        eor     L0034,x
        .byte   $55
L2BA9:  ldx     L2A55
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2BD9
        .byte   $55
L2BBB:  and     L0055
        rol     L0055
        .byte   $D3
        eor     L00D4,x
        eor     L0027,x
        eor     L0028,x
        eor     L00D5,x
        eor     L00D6,x
        eor     L00D7,x
        eor     L00B4,x
        eor     L00D8,x
        eor     L00D9,x
        eor     L0027,x
        eor     L0029,x
        eor     L00B7,x
        .byte   $55
L2BD9:  cli
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        .byte   $C3
        eor     L00C4,x
        eor     L0025,x
        eor     L0026,x
        eor     L00DA,x
        eor     L00DB,x
        eor     L0027,x
        eor     L0028,x
        eor     L00DC,x
        eor     L00DD,x
        eor     L0027,x
        eor     L0028,x
        eor     L00CB,x
        eor     L00CC,x
        eor     L0027,x
        eor     L0029,x
        eor     L001B,x
        eor     L001B,x
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2C39
        eor     L0025,x
        eor     L0026,x
        eor     L00DE,x
        eor     L0069,x
        eor     L0027,x
        eor     L0028,x
        eor     L00DF,x
        eor     L00E0,x
        eor     L00E1,x
        eor     L0028,x
        eor     L00E2,x
        eor     L00E3,x
        eor     L0027,x
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L2C39:  cpx     L0055
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2C69
        eor     L0025,x
        eor     L0026,x
        eor     L00E5,x
        eor     L0000,x
        bvc     L2C7B
        eor     L00E6,x
        eor     L00E7,x
        eor     L00E8,x
        eor     L0027,x
        eor     L008D,x
        eor     L00E9,x
        eor     L00EA,x
        eor     L0027,x
        eor     L0033,x
        eor     L00EB,x
        .byte   $55
L2C69:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2C99
        .byte   $55
L2C7B:  and     L0055
        rol     L0055
        cpx     $ED55
        eor     L0027,x
        eor     L0028,x
        eor     L00EE,x
        eor     L00EF,x
        eor     L0027,x
        eor     L0028,x
        eor     L00F0,x
        eor     L00F1,x
        eor     L0027,x
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L2C99:  sta     (L0055),y
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2CC9
        eor     L0025,x
L2CAC:  eor     L0026,x
        eor     L0000,x
        bvc     L2CB2
L2CB2:  bvc     L2CDB
        eor     L0028,x
        eor     L0000,x
        bvc     L2CAC
        eor     L00F3,x
        eor     L0028,x
        eor     L00F4,x
        eor     L00F5,x
        eor     L00F6,x
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L2CC9:  sta     (L0055),y
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2CF9
        .byte   $55
L2CDB:  and     L0055
        .byte   $F7
        eor     L00F8,x
        eor     L00F9,x
        eor     L0027,x
        eor     L00FA,x
        eor     L00FB,x
        eor     L00FC,x
        eor     L0027,x
        eor     L0028,x
        .byte   $55
L2CEF:  brk
        bvc     L2CEF
        eor     L0027,x
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L2CF9:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
L2D04:  .byte   $52
        bit     L0055
        brk
        bvc     L2D29
        eor     L0025,x
        eor     L00FE,x
        eor     L00FF,x
        eor     L0000,x
        lsr     L0001,x
        lsr     L0002,x
        lsr     L0003,x
        lsr     L0000,x
        bvc     L2D43
        eor     L0028,x
        eor     L0000,x
        bvc     L2D22
L2D22:  bvc     L2D4B
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L2D29:  .byte   $1B
        eor     L002A,x
L2D2C:  eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        .byte   $04
        lsr     L001F,x
        eor     L0025,x
        eor     L0005,x
        lsr     L0006,x
L2D40:  lsr     L0000,x
        .byte   $50
L2D43:  .byte   $27
        eor     L0007,x
        lsr     L0008,x
        lsr     L0000,x
        .byte   $50
L2D4B:  .byte   $27
        eor     L0028,x
        eor     L0000,x
        bvc     L2D52
L2D52:  bvc     L2D7B
        eor     L0029,x
        eor     L001B,x
        eor     L001B,x
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2D89
        eor     L0025,x
        eor     L0009,x
        lsr     L000A,x
        lsr     L000B,x
        lsr     L0027,x
        eor     L000C,x
        lsr     L000D,x
        lsr     L000E,x
        .byte   $56
L2D7B:  .byte   $27
        eor     L0028,x
        eor     L0000,x
        bvc     L2D82
L2D82:  bvc     L2DAB
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L2D89:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2DB9
        eor     L0025,x
        eor     L0026,x
        eor     L000F,x
        lsr     L0000,x
        bvc     L2DCB
        eor     L0028,x
        eor     L0010,x
        lsr     L0011,x
        .byte   $56
L2DAB:  .byte   $27
        eor     L0028,x
        eor     L0012,x
        lsr     L0013,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L2DB9:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2DE9
        .byte   $55
L2DCB:  and     L0055
        rol     L0055
        brk
        bvc     L2DD2
L2DD2:  bvc     L2DFB
        eor     L0028,x
        eor     L0014,x
        lsr     L0015,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0016,x
        lsr     L0017,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L2DE9:  sta     (L0055),y
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2E19
        .byte   $55
L2DFB:  .byte   $25
L2DFC:  eor     L0026,x
        eor     L0000,x
        bvc     L2E02
L2E02:  bvc     L2E2B
        eor     L0028,x
        eor     L0000,x
        bvc     L2DFC
        eor     L00F3,x
        eor     L0028,x
        eor     L00F4,x
        eor     L00F5,x
        eor     L00F6,x
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L2E19:  sta     (L0055),y
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        .byte   $50
L2E29:  .byte   $1F
        .byte   $55
L2E2B:  and     L0055
        rol     L0055
        clc
        lsr     L0019,x
        lsr     L0027,x
        eor     L0028,x
        eor     L001A,x
        lsr     L001B,x
        lsr     L0027,x
        eor     L0028,x
        eor     L001C,x
        lsr     L001D,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L2E49:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2E79
        eor     L0025,x
        eor     L0026,x
        eor     L0020,x
        lsr     L0021,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0022,x
        lsr     L0023,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0024,x
        lsr     L0025,x
        lsr     L0027,x
        eor     L0029,x
        eor     L0026,x
        .byte   $56
L2E79:  .byte   $27
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2EA9
        eor     L0025,x
        eor     L0026,x
        eor     L0028,x
        lsr     L0029,x
        lsr     L0027,x
        eor     L0028,x
        eor     L002A,x
        lsr     L002B,x
        lsr     L0027,x
        eor     L0028,x
        eor     L002C,x
        lsr     L002D,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L2EA9:  .byte   $27
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2ED9
        eor     L0025,x
        eor     L0026,x
        eor     L0028,x
        lsr     L002E,x
        lsr     L0027,x
        eor     L0028,x
        eor     L002F,x
        lsr     L0030,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0031,x
        lsr     L0032,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L2ED9:  .byte   $27
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2F09
        eor     L0025,x
        eor     L0026,x
        eor     L0020,x
        lsr     L0033,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0022,x
        lsr     L0034,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0024,x
        lsr     L0035,x
        lsr     L0027,x
        eor     L0029,x
        eor     L0026,x
        .byte   $56
L2F09:  .byte   $27
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2F39
        eor     L0025,x
        eor     L0036,x
        lsr     L0037,x
        lsr     L0033,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0038,x
        lsr     L0039,x
        lsr     L0027,x
        eor     L0028,x
        eor     L003A,x
        lsr     L003B,x
        lsr     L0027,x
        eor     L0029,x
        eor     L003C,x
        .byte   $56
L2F39:  and     L2A56,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2F69
        eor     L0025,x
        eor     L0026,x
        eor     L003E,x
        lsr     L003F,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0040,x
        lsr     L0041,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0042,x
        lsr     L0043,x
        lsr     L0027,x
        eor     L0029,x
        eor     L003C,x
        .byte   $56
L2F69:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2F99
        eor     L0025,x
        eor     L0026,x
        eor     L0044,x
        lsr     L003F,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0045,x
        lsr     L0046,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0047,x
        lsr     L0048,x
        lsr     L0027,x
        eor     L0029,x
        eor     L003C,x
        .byte   $56
L2F99:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2FC9
        eor     L0025,x
        eor     L0026,x
        eor     L0020,x
        lsr     L0033,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0049,x
        lsr     L0039,x
        lsr     L0027,x
        eor     L0028,x
        eor     L004A,x
        lsr     L003B,x
        lsr     L0027,x
        eor     L0029,x
        eor     L003C,x
        .byte   $56
L2FC9:  and     L2A56,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L2FF9
        eor     L0025,x
        eor     L0026,x
        eor     L0098,x
        eor     L004B,x
        lsr     L0027,x
        eor     L0028,x
        eor     L004C,x
        lsr     L004D,x
        lsr     L0027,x
        eor     L0028,x
        eor     L001C,x
        lsr     L001D,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L2FF9:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3029
        eor     L0025,x
        eor     L0026,x
        eor     L004E,x
        lsr     L004F,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0050,x
        lsr     L0051,x
        lsr     L0027,x
        eor     L0028,x
        eor     L001C,x
        lsr     L001D,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L3029:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
L3032:  eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3059
        eor     L0025,x
        eor     L0026,x
        eor     L0018,x
        lsr     L0019,x
        lsr     L0052,x
        lsr     L0028,x
        eor     L001A,x
        lsr     L001B,x
        lsr     L0053,x
        lsr     L0028,x
        eor     L001C,x
        lsr     L001D,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L3059:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3089
        eor     L0025,x
        eor     L0026,x
        eor     L0054,x
        lsr     L0055,x
        lsr     L0056,x
        lsr     L0028,x
        eor     L001A,x
        lsr     L0057,x
        lsr     L0058,x
        lsr     L0028,x
        eor     L001C,x
        lsr     L001D,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L3089:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L30B9
        eor     L0025,x
        eor     L0026,x
        eor     L0059,x
        lsr     L005A,x
        lsr     L0027,x
        eor     L0028,x
        eor     L001A,x
        lsr     L005B,x
        lsr     L0058,x
        lsr     L0028,x
        eor     L001C,x
        lsr     L001D,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L30B9:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L30E9
        eor     L0025,x
        eor     L0026,x
        eor     L005C,x
        lsr     L005D,x
        lsr     L0027,x
        eor     L0028,x
        eor     L005E,x
        lsr     L005F,x
        lsr     L0058,x
        lsr     L0060,x
        lsr     L0061,x
        lsr     L0062,x
        lsr     L0063,x
        lsr     L0029,x
        eor     L001E,x
        .byte   $56
L30E9:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3119
        eor     L0025,x
        eor     L0026,x
        eor     L0000,x
        bvc     L3102
L3102:  bvc     L312B
        eor     L0064,x
        lsr     L0065,x
        lsr     L0066,x
        lsr     L0067,x
        lsr     L0068,x
        lsr     L0069,x
        lsr     L006A,x
        lsr     L006B,x
        lsr     L0033,x
        eor     L006C,x
        .byte   $56
L3119:  adc     L0055,x
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
L3120:  eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3149
        .byte   $55
L312B:  and     L0055
        rol     L0055
        brk
        bvc     L3132
L3132:  bvc     L315B
        eor     L006D,x
        lsr     L006E,x
        lsr     L006F,x
        lsr     L0067,x
        lsr     L0068,x
        lsr     L0069,x
        lsr     L006A,x
        lsr     L006B,x
        lsr     L0033,x
        eor     L006C,x
        .byte   $56
L3149:  adc     L0055,x
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3179
        .byte   $55
L315B:  and     L0055
        rol     L0055
        brk
        bvc     L3162
L3162:  bvc     L318B
        eor     L006D,x
        lsr     L0070,x
        lsr     L0071,x
        lsr     L0072,x
        lsr     L0068,x
        lsr     L0069,x
        lsr     L006A,x
        lsr     L006B,x
        lsr     L0033,x
        eor     L006C,x
        .byte   $56
L3179:  adc     L0055,x
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L31A9
        .byte   $55
L318B:  and     L0055
        rol     L0055
        .byte   $5C
        lsr     L0000,x
        bvc     L31BB
        eor     L0028,x
        eor     L0073,x
        lsr     L0074,x
        lsr     L0027,x
        eor     L0060,x
        lsr     L0061,x
        lsr     L0062,x
        lsr     L0063,x
        lsr     L0029,x
        eor     L001E,x
        .byte   $56
L31A9:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
L31B0:  eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L31D9
        .byte   $55
L31BB:  and     L0055
        rol     L0055
        adc     L0056,x
        ror     L0056,x
        .byte   $27
        eor     L0028,x
        eor     L001A,x
        lsr     L001B,x
        lsr     L0027,x
        eor     L0028,x
        eor     L001C,x
        lsr     L001D,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L31D9:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3209
        eor     L0025,x
        eor     L0026,x
        eor     L0077,x
        lsr     L0078,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0079,x
        lsr     L007A,x
        lsr     L0027,x
        eor     L0028,x
        eor     L007B,x
L3200:  lsr     L007C,x
        lsr     L0027,x
        eor     L0029,x
        eor     L007D,x
        .byte   $56
L3209:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3239
        eor     L0025,x
        eor     L0026,x
        eor     L0018,x
        lsr     L007E,x
        lsr     L0027,x
        eor     L0028,x
        eor     L001A,x
        .byte   $56
L3229:  .byte   $7F
        lsr     L0058,x
        lsr     L0028,x
        eor     L001C,x
        lsr     L001D,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L3239:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3269
        eor     L0025,x
        eor     L0026,x
        eor     L0080,x
        lsr     L0019,x
        lsr     L0027,x
        eor     L0081,x
        lsr     L0082,x
        lsr     L0083,x
        lsr     L0058,x
        lsr     L0028,x
        eor     L001C,x
        lsr     L001D,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L3269:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3299
        eor     L0025,x
        eor     L0026,x
        eor     L0084,x
        lsr     L0085,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0086,x
        lsr     L0083,x
        lsr     L0058,x
        lsr     L0028,x
        eor     L001C,x
        lsr     L001D,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L3299:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L32C9
        .byte   $55
L32AB:  and     L0055
        rol     L0055
        .byte   $87
        lsr     L0088,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0089,x
        lsr     L008A,x
        lsr     L008B,x
        lsr     L0028,x
        eor     L008C,x
        lsr     L008D,x
        lsr     L0027,x
        eor     L0029,x
        eor     L008E,x
        .byte   $56
L32C9:  .byte   $34
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L32F9
        eor     L0025,x
        eor     L0026,x
        eor     L008F,x
        lsr     L0090,x
        lsr     L0091,x
        lsr     L0028,x
        eor     L0092,x
        lsr     L0093,x
        .byte   $56
L32EB:  sty     L0056,x
        sta     L0056,x
        .byte   $96
L32F0:  lsr     L0097,x
        lsr     L0098,x
        lsr     L0029,x
        eor     L001B,x
        .byte   $55
L32F9:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3329
        eor     L0025,x
        eor     L0026,x
        eor     L0000,x
        bvc     L32AB
        lsr     L009A,x
        lsr     L0028,x
        eor     L009B,x
        lsr     L009C,x
        lsr     L009D,x
        lsr     L0028,x
        eor     L009E,x
        lsr     L009F,x
        lsr     L00A0,x
        lsr     L0029,x
        eor     L001B,x
        .byte   $55
L3329:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3359
        eor     L0025,x
        eor     L0026,x
        eor     L0000,x
        bvc     L3342
L3342:  bvc     L336B
        eor     L0028,x
        eor     L0000,x
        bvc     L32EB
        lsr     L00A2,x
        lsr     L0028,x
        eor     L0000,x
        bvc     L32F0
        lsr     L00A3,x
        lsr     L0029,x
        eor     L001B,x
        .byte   $55
L3359:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3389
        .byte   $55
L336B:  and     L0055
        rol     L0055
        .byte   $77
        lsr     L0078,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0079,x
        lsr     L007A,x
        lsr     L0027,x
        eor     L0028,x
        eor     L00A4,x
        lsr     L007C,x
        lsr     L0027,x
        eor     L0029,x
        eor     L00A5,x
        .byte   $56
L3389:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L33B9
        eor     L0025,x
        eor     L0026,x
        eor     L0077,x
        lsr     L0078,x
        lsr     L0027,x
        eor     L0028,x
        eor     L00A6,x
        lsr     L00A7,x
        lsr     L00A8,x
        lsr     L0028,x
        eor     L00A9,x
        lsr     L00AA,x
        lsr     L0027,x
        eor     L0029,x
        eor     L00AB,x
        .byte   $56
L33B9:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L33E9
        eor     L0025,x
        eor     L0026,x
        eor     L0018,x
        lsr     L0019,x
        lsr     L0027,x
        eor     L0028,x
        eor     L00AC,x
        lsr     L00AD,x
        lsr     L0027,x
        eor     L0028,x
        eor     L00AE,x
        lsr     L00AF,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L33E9:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3419
        eor     L0025,x
        eor     L0026,x
        eor     L00B0,x
        lsr     L00B1,x
        lsr     L0027,x
        eor     L0028,x
        eor     L00B2,x
        lsr     L00B3,x
        lsr     L0027,x
        eor     L0028,x
        eor     L001C,x
        lsr     L00B4,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L3419:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
L3420:  eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        lda     L0056,x
        .byte   $1F
        eor     L0025,x
        eor     L0026,x
        eor     L00B6,x
        lsr     L00B7,x
        lsr     L0027,x
        eor     L0028,x
        eor     L00B8,x
        lsr     L00B9,x
        lsr     L0027,x
        eor     L0028,x
        eor     L001C,x
        lsr     L00BA,x
        lsr     L0027,x
        .byte   $55
L3445:  and     #$55
        asl     L1F56,x
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3479
        eor     L0025,x
        eor     L0026,x
        eor     L00BB,x
        lsr     L0000,x
        bvc     L348B
        eor     L0028,x
        eor     L00BC,x
        lsr     L0000,x
        bvc     L3493
        eor     L0028,x
        eor     L00BD,x
        lsr     L0000,x
        bvc     L349B
        eor     L0029,x
        eor     L00BE,x
        .byte   $56
L3479:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L34A9
        .byte   $55
L348B:  and     L0055
        rol     L0055
        brk
        bvc     L3492
L3492:  .byte   $50
L3493:  .byte   $27
        eor     L00BF,x
        lsr     L00C0,x
        lsr     L0000,x
        .byte   $50
L349B:  .byte   $27
        eor     L00C1,x
        lsr     L00C2,x
        lsr     L00C3,x
        lsr     L0027,x
        eor     L0029,x
        eor     L00BE,x
        .byte   $56
L34A9:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
L34B0:  eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L34D9
        eor     L0025,x
        eor     L0026,x
        eor     L00C4,x
        lsr     L00C5,x
        lsr     L0027,x
        eor     L00C6,x
        lsr     L00C7,x
L34C8:  lsr     L00C8,x
        lsr     L0027,x
        eor     L00C9,x
        lsr     L00CA,x
        lsr     L0000,x
        bvc     L34FB
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L34D9:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
L34E0:  eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        .byte   $50
L34E9:  .byte   $1F
        eor     L0025,x
        eor     L00CB,x
        lsr     L00CC,x
        lsr     L00CD,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0000,x
        bvc     L34C8
        .byte   $56
L34FB:  .byte   $27
        eor     L0028,x
        eor     L0000,x
        bvc     L3502
L3502:  bvc     L352B
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L3509:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L34E9
        lsr     L0025,x
        eor     L0026,x
        eor     L00D0,x
        lsr     L00D1,x
        lsr     L0027,x
        eor     L0028,x
        eor     L00D2,x
        lsr     L00D3,x
        .byte   $56
L352B:  .byte   $27
        eor     L0028,x
        eor     L0000,x
        bvc     L3532
L3532:  bvc     L355B
        eor     L0029,x
        eor     L001B,x
        eor     L001B,x
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3569
        eor     L0025,x
        eor     L00D4,x
        lsr     L00D5,x
        lsr     L00D6,x
        lsr     L0027,x
        eor     L00D7,x
        lsr     L00D8,x
        lsr     L00D9,x
        .byte   $56
L355B:  .byte   $DA
        lsr     L0028,x
        eor     L0000,x
        bvc     L3562
L3562:  bvc     L358B
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L3569:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3599
        eor     L0025,x
        eor     L0026,x
        eor     L00DB,x
        lsr     L00DC,x
        lsr     L0027,x
        eor     L0028,x
        eor     L00DD,x
        lsr     L00DE,x
        .byte   $56
L358B:  .byte   $27
        eor     L0028,x
        eor     L00DF,x
        lsr     L0000,x
        bvc     L35BB
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L3599:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L35C9
        eor     L0025,x
        eor     L0026,x
        eor     L0000,x
        bvc     L35B2
L35B2:  bvc     L35DB
        eor     L00E0,x
        lsr     L00E1,x
        lsr     L0000,x
        .byte   $50
L35BB:  .byte   $27
        eor     L0028,x
        eor     L00E2,x
        lsr     L0000,x
        bvc     L35EB
        eor     L0029,x
        eor     L00BE,x
        .byte   $56
L35C9:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L35F9
        .byte   $55
L35DB:  and     L0055
        .byte   $E3
        lsr     L0018,x
        lsr     L0019,x
        lsr     L0027,x
        eor     L00E4,x
        lsr     L00E5,x
        lsr     L00E6,x
        .byte   $56
L35EB:  .byte   $27
        eor     L0028,x
        eor     L001C,x
        lsr     L001D,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L35F9:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3629
        eor     L0025,x
        eor     L00E7,x
        lsr     L00E8,x
        lsr     L00E9,x
        lsr     L0027,x
        eor     L00EA,x
        lsr     L00E5,x
        lsr     L00E6,x
        lsr     L0027,x
        eor     L0028,x
        eor     L001C,x
        lsr     L001D,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L3629:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3659
        eor     L0025,x
        eor     L00EB,x
        lsr     L00EC,x
        lsr     L00ED,x
        lsr     L0027,x
        eor     L00EE,x
        lsr     L00EF,x
        lsr     L00E6,x
        lsr     L0027,x
        eor     L0028,x
        eor     L001C,x
        lsr     L001D,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L3659:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3689
        eor     L0025,x
        eor     L0026,x
        eor     L00F0,x
        lsr     L00F1,x
        lsr     L0027,x
        eor     L00EE,x
        lsr     L00F2,x
        lsr     L00F3,x
        lsr     L0027,x
        eor     L0060,x
        lsr     L00F4,x
        lsr     L00F5,x
        lsr     L0063,x
        lsr     L0029,x
        eor     L001E,x
        .byte   $56
L3689:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L36B9
        eor     L0025,x
        eor     L0026,x
        eor     L0000,x
        bvc     L36A2
L36A2:  bvc     L36CB
        eor     L00F6,x
        lsr     L0066,x
        lsr     L00F7,x
        lsr     L00F8,x
        lsr     L00F9,x
        lsr     L00FA,x
        lsr     L00FB,x
        lsr     L00FC,x
        lsr     L0029,x
        eor     L00FD,x
        .byte   $56
L36B9:  inc     L2A56,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L36E9
        .byte   $55
L36CB:  and     L0055
        rol     L0055
        brk
        bvc     L36D2
L36D2:  bvc     L36FB
        eor     L00F6,x
        lsr     L00FF,x
        lsr     L0000,x
        .byte   $57
        .byte   $27
        eor     L00F9,x
        lsr     L00FA,x
        lsr     L00FB,x
        lsr     L00FC,x
        lsr     L0029,x
        eor     L00FD,x
        .byte   $56
L36E9:  inc     L2A56,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3719
        .byte   $55
L36FB:  and     L0055
        rol     L0055
        brk
        bvc     L3702
L3702:  bvc     L372B
        eor     L0001,x
        .byte   $57
        .byte   $02
        .byte   $57
        brk
        .byte   $57
        .byte   $27
        eor     L00F9,x
        lsr     L00FA,x
        lsr     L00FB,x
        lsr     L00FC,x
        lsr     L0029,x
        eor     L00FD,x
        .byte   $56
L3719:  inc     L2A56,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
L3720:  eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3749
        .byte   $55
L372B:  and     L0055
        rol     L0055
        brk
        bvc     L378E
        lsr     L0027,x
        eor     L0028,x
        eor     L0003,x
        .byte   $57
        .byte   $04
        .byte   $57
        .byte   $27
        eor     L0005,x
        .byte   $57
        asl     L0057
        .byte   $07
        .byte   $57
        php
        .byte   $57
        and     #$55
        lda     L0056
L3749:  .byte   $27
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3779
        eor     L0025,x
        eor     L0026,x
        eor     L0009,x
        .byte   $57
        ora     L2756,y
        eor     L00EE,x
        lsr     L000A,x
        .byte   $57
        inc     L0056
        .byte   $27
        eor     L0028,x
        eor     L001C,x
        lsr     L001D,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L3779:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L37A9
        eor     L0025,x
        eor     L0026,x
L378E:  eor     L0018,x
        lsr     L000B,x
        .byte   $57
        .byte   $27
        eor     L00EE,x
        lsr     L000C,x
        .byte   $57
        ora     L2757
        eor     L0028,x
        eor     L001C,x
        lsr     L001D,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L37A9:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L37D9
        eor     L0025,x
        eor     L0026,x
        eor     L0084,x
        lsr     L0085,x
        lsr     L0027,x
        eor     L00EE,x
        lsr     L000C,x
        .byte   $57
        asl     L2757
        eor     L0028,x
        eor     L001C,x
        lsr     L001D,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L37D9:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3809
        eor     L0025,x
        eor     L0026,x
        eor     L000F,x
        .byte   $57
        brk
        bvc     L381B
        eor     L0010,x
        .byte   $57
        ora     (L0057),y
        .byte   $12
        .byte   $57
        .byte   $27
        eor     L0013,x
        .byte   $57
        .byte   $14
        .byte   $57
        ora     L0057,x
        .byte   $27
        eor     L0029,x
        eor     L0016,x
        .byte   $57
L3809:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3839
        .byte   $55
L381B:  and     L0055
        .byte   $17
        .byte   $57
        clc
        .byte   $57
        brk
        bvc     L384B
        eor     L0019,x
        .byte   $57
        .byte   $1A
        .byte   $57
        .byte   $1B
        .byte   $57
        .byte   $27
        eor     L001C,x
        .byte   $57
        ora     L1E57,x
        .byte   $57
        .byte   $27
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L3839:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3869
        .byte   $55
L384B:  and     L0055
        .byte   $1F
        .byte   $57
        brk
        bvc     L3852
L3852:  bvc     L387B
        eor     L0020,x
        .byte   $57
        and     (L0057,x)
        .byte   $22
        .byte   $57
        .byte   $27
        eor     L0023,x
        .byte   $57
        bit     L0057
        and     L0057
        .byte   $27
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L3869:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3899
        .byte   $55
L387B:  and     L0055
        rol     L0055
        brk
        bvc     L3882
L3882:  bvc     L38AB
        eor     L0026,x
        .byte   $57
        .byte   $22
        .byte   $57
        brk
        bvc     L38B3
        eor     L0027,x
        .byte   $57
        and     L0057
        brk
        bvc     L38BB
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L3899:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L38C9
        .byte   $55
L38AB:  and     L0055
        rol     L0055
        brk
        bvc     L38DA
        .byte   $57
L38B3:  .byte   $27
        eor     L0028,x
        eor     L0000,x
        bvc     L38E3
        .byte   $57
L38BB:  .byte   $27
        eor     L0028,x
        eor     L002A,x
        .byte   $57
        .byte   $2B
        .byte   $57
        .byte   $3C
        eor     L0029,x
        eor     L002C,x
        .byte   $57
L38C9:  and     L2A57
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L38F9
L38DA:  eor     L0025,x
        eor     L0026,x
        eor     L0000,x
        bvc     L3910
        .byte   $57
L38E3:  .byte   $27
        eor     L0028,x
        eor     L0000,x
        bvc     L3919
        .byte   $57
        .byte   $27
        eor     L0028,x
        eor     L0000,x
        bvc     L3922
        .byte   $57
        .byte   $27
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L38F9:  and     (L0057),y
        .byte   $32
        .byte   $57
        .byte   $E7
        .byte   $52
L38FF:  .byte   $0F
        eor     L0010,x
        eor     L00EA,x
L3904:  .byte   $52
        bit     L0055
        brk
        bvc     L3929
        eor     L0025,x
        eor     L0026,x
        eor     L0000,x
L3910:  bvc     L3912
L3912:  bvc     L3947
        .byte   $57
        plp
        eor     L0000,x
        .byte   $50
L3919:  brk
        bvc     L3950
        .byte   $57
        plp
        eor     L0000,x
        bvc     L3957
L3922:  .byte   $57
        rol     L0057,x
        and     #$55
        .byte   $1B
        .byte   $55
L3929:  .byte   $37
        .byte   $57
        sec
        .byte   $57
        .byte   $E7
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3959
        eor     L0025,x
        eor     L0026,x
        eor     L0039,x
        .byte   $57
        brk
        bvc     L396B
        eor     L003A,x
        .byte   $57
L3947:  .byte   $3B
        .byte   $57
        brk
        bvc     L3973
        eor     L003C,x
        .byte   $57
        .byte   $3D
L3950:  .byte   $57
        rol     L2757,x
        eor     L003F,x
        .byte   $57
L3957:  rti

        .byte   $57
L3959:  eor     (L0057,x)
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3989
        .byte   $55
L396B:  and     L0055
        .byte   $42
        .byte   $57
        .byte   $43
        .byte   $57
        brk
        .byte   $50
L3973:  .byte   $27
        eor     L0044,x
        .byte   $57
        eor     L0057
        brk
        bvc     L39A3
        eor     L0046,x
        .byte   $57
        .byte   $47
        .byte   $57
        brk
        bvc     L39AB
        eor     L0048,x
        .byte   $57
        eor     #$57
L3989:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L39B9
        eor     L0025,x
        eor     L004A,x
        .byte   $57
        brk
        bvc     L39A2
L39A2:  .byte   $50
L39A3:  .byte   $27
        eor     L004B,x
        .byte   $57
        brk
        bvc     L39AA
L39AA:  .byte   $50
L39AB:  .byte   $27
        eor     L004C,x
        .byte   $57
        eor     a:L0057
        bvc     L39DB
        eor     L004E,x
        .byte   $57
        .byte   $4F
        .byte   $57
L39B9:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        bvc     L3A20
        .byte   $1F
        eor     L0025,x
        eor     L0051,x
        .byte   $57
        .byte   $52
        .byte   $57
        .byte   $53
        .byte   $57
        .byte   $27
        eor     L0028,x
        eor     L0054,x
        .byte   $57
        eor     L0057,x
L39DB:  .byte   $27
        eor     L0028,x
        eor     L001C,x
        lsr     L0056,x
        .byte   $57
        .byte   $27
        eor     L0029,x
        eor     L001E,x
        lsr     L001F,x
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3A19
        eor     L0025,x
        eor     L0026,x
        eor     L0057,x
L3A00:  .byte   $57
        brk
        bvc     L3A2B
        eor     L0058,x
        .byte   $57
        eor     $5A57,y
        .byte   $57
        .byte   $5B
        .byte   $57
        .byte   $5C
        .byte   $57
        eor     L1D57,x
        lsr     L005E,x
        .byte   $57
        and     #$55
        .byte   $1E
        .byte   $56
L3A19:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
L3A20:  eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3A49
        .byte   $55
L3A2B:  and     L0055
        rol     L0055
        .byte   $5F
        .byte   $57
        brk
        bvc     L3A5B
        eor     L0028,x
        eor     L0060,x
        .byte   $57
        adc     (L0057,x)
        .byte   $62
        .byte   $57
        plp
        eor     L0063,x
        .byte   $57
        .byte   $64
        .byte   $57
        .byte   $27
        eor     L0029,x
        eor     L0065,x
        .byte   $57
L3A49:  ror     L0057
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3A79
        .byte   $55
L3A5B:  and     L0055
        rol     L0055
        .byte   $5F
        .byte   $57
        brk
        bvc     L3A8B
        eor     L0028,x
        eor     L0067,x
        .byte   $57
        pla
        .byte   $57
        adc     #$57
        plp
        eor     L006A,x
        .byte   $57
        .byte   $6B
        .byte   $57
        .byte   $27
        eor     L0029,x
        eor     L0065,x
        .byte   $57
L3A79:  ror     L0057
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3AA9
        .byte   $55
L3A8B:  and     L0055
        rol     L0055
        .byte   $57
        .byte   $57
        brk
        bvc     L3ABB
        eor     L006C,x
        .byte   $57
        eor     $5A57,y
        .byte   $57
        .byte   $5B
        .byte   $57
        adc     $6E57
        .byte   $57
        .byte   $6F
        .byte   $57
        lsr     L2957,x
        eor     L0065,x
        .byte   $57
L3AA9:  ror     L0057
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3AD9
        .byte   $55
L3ABB:  and     L0055
        rol     L0055
        bvs     L3B18
        .byte   $53
        .byte   $57
        .byte   $27
        eor     L0028,x
        eor     L00AC,x
        lsr     L00AD,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0071,x
        .byte   $57
        .byte   $72
        .byte   $57
        .byte   $27
        eor     L0029,x
        eor     L0065,x
        .byte   $57
L3AD9:  ror     L0057
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3B09
        eor     L0025,x
        eor     L0026,x
        eor     L0000,x
        bvc     L3AF2
L3AF2:  bvc     L3B1B
        eor     L0028,x
        eor     L0073,x
        .byte   $57
        .byte   $74
        .byte   $57
        .byte   $27
        eor     L0075,x
        .byte   $57
        ror     L0057,x
        .byte   $77
        .byte   $57
        sei
        .byte   $57
        and     #$55
        .byte   $79
        .byte   $57
L3B09:  .byte   $7A
        .byte   $57
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        .byte   $7B
L3B18:  .byte   $57
        .byte   $7C
        .byte   $57
L3B1B:  and     L0055
        adc     $7E57,x
        .byte   $57
        .byte   $7F
        .byte   $57
        .byte   $80
        .byte   $57
        plp
        eor     L0081,x
        .byte   $57
        .byte   $82
        .byte   $57
        .byte   $27
        eor     L0028,x
        eor     L0083,x
        .byte   $57
        sty     L0057
        .byte   $27
        eor     L0029,x
        eor     L0085,x
        .byte   $57
        .byte   $4F
L3B3A:  .byte   $57
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
L3B44:  .byte   $52
        bit     L0055
        brk
        bvc     L3B69
        eor     L0025,x
        eor     L0026,x
        eor     L0086,x
        .byte   $57
        .byte   $87
        .byte   $57
        .byte   $27
        eor     L0088,x
        .byte   $57
        .byte   $89
        .byte   $57
        txa
        .byte   $57
        .byte   $8B
        .byte   $57
        plp
        eor     L003A,x
        lsr     L0025,x
        lsr     L0027,x
        eor     L0029,x
        eor     L008C,x
        .byte   $57
L3B69:  sta     L2A57
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3B99
        eor     L0025,x
        eor     L0026,x
        eor     L0000,x
        bvc     L3B82
L3B82:  bvc     L3BAB
        eor     L0028,x
        eor     L0073,x
        .byte   $57
        .byte   $74
        .byte   $57
        .byte   $27
        eor     L0075,x
        .byte   $57
        stx     $7757
        .byte   $57
        sei
        .byte   $57
        and     #$55
        .byte   $8F
        .byte   $57
L3B99:  bcc     L3BF2
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3BC9
        .byte   $55
L3BAB:  and     L0055
        rol     L0055
        bvs     L3C08
        .byte   $53
        .byte   $57
        .byte   $27
        eor     L0028,x
        eor     L00AC,x
        lsr     L00AD,x
        lsr     L0027,x
        eor     L0028,x
        eor     L00AE,x
        lsr     L00AF,x
        lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L3BC9:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3BF9
        eor     L0025,x
        eor     L0026,x
        eor     L0091,x
        .byte   $57
        .byte   $92
        .byte   $57
        .byte   $27
        eor     L0028,x
        eor     L00AC,x
        lsr     L00AD,x
        lsr     L0027,x
        eor     L0028,x
        eor     L00AE,x
        lsr     L00AF,x
L3BF2:  lsr     L0027,x
        eor     L0029,x
        eor     L001E,x
        .byte   $56
L3BF9:  .byte   $1F
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        .byte   $55
L3C01:  bpl     L3C58
        nop
        .byte   $52
        bit     L0055
        brk
L3C08:  bvc     L3C29
        eor     L0025,x
        eor     L0026,x
        eor     L0093,x
        .byte   $57
        brk
        bvc     L3C3B
        eor     L003A,x
        .byte   $57
        sty     L0057,x
        brk
        bvc     L3C43
        eor     L003C,x
        .byte   $57
        and     L3E57,x
        .byte   $57
        .byte   $27
        eor     L003F,x
        .byte   $57
        rti

        .byte   $57
L3C29:  eor     (L0057,x)
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3C59
L3C3A:  .byte   $55
L3C3B:  and     L0055
        sta     L0057,x
        stx     L0057,y
        brk
        .byte   $50
L3C43:  .byte   $27
        eor     L0044,x
        .byte   $57
        eor     L0057
        brk
        bvc     L3C73
        eor     L0046,x
        .byte   $57
        .byte   $47
        .byte   $57
        brk
        bvc     L3C7B
        eor     L0048,x
        .byte   $57
        .byte   $49
L3C58:  .byte   $57
L3C59:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3C89
        .byte   $55
L3C6B:  and     L0055
        .byte   $97
        .byte   $57
        brk
        bvc     L3C72
L3C72:  .byte   $50
L3C73:  .byte   $27
        eor     L004B,x
        .byte   $57
        brk
        bvc     L3C7A
L3C7A:  .byte   $50
L3C7B:  .byte   $27
        eor     L004C,x
        .byte   $57
        eor     a:L0057
        bvc     L3CAB
        eor     L004E,x
        .byte   $57
        .byte   $4F
        .byte   $57
L3C89:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3CB9
        eor     L0025,x
        eor     L0026,x
L3C9E:  eor     L0000,x
        bvc     L3C3A
        .byte   $57
        .byte   $27
        eor     L0028,x
        eor     L0000,x
        bvc     L3CD3
        .byte   $57
L3CAB:  .byte   $27
        eor     L0028,x
        eor     L002A,x
        .byte   $57
        .byte   $2B
        .byte   $57
        .byte   $3C
        eor     L0029,x
        eor     L002C,x
        .byte   $57
L3CB9:  and     L2A57
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3CE9
        eor     L0025,x
        eor     L0026,x
        eor     L0000,x
        bvc     L3C6B
        .byte   $57
L3CD3:  .byte   $27
        eor     L0028,x
        eor     L0000,x
        bvc     L3D09
        .byte   $57
        .byte   $27
        eor     L0028,x
        eor     L0000,x
        bvc     L3D12
        .byte   $57
        .byte   $27
        eor     L0029,x
        eor     L001B,x
        .byte   $55
L3CE9:  and     (L0057),y
        .byte   $32
        .byte   $57
        .byte   $E7
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3D19
        eor     L0025,x
        eor     L0026,x
        eor     L0000,x
        bvc     L3D02
L3D02:  bvc     L3C9E
        .byte   $57
        plp
        eor     L0000,x
        .byte   $50
L3D09:  brk
        bvc     L3D40
        .byte   $57
        plp
        eor     L0000,x
        bvc     L3D47
L3D12:  .byte   $57
        rol     L0057,x
        and     #$55
        .byte   $1B
        .byte   $55
L3D19:  .byte   $37
        .byte   $57
        sec
        .byte   $57
        brk
        brk
        brk
        brk
        ora     (L0001,x)
        ora     (L0002,x)
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        .byte   $04
        ora     L0005
        ora     L0015
        .byte   $14
        .byte   $0B
        asl     L0B0E
        ora     #$08
        php
        php
        .byte   $0B
        asl     L0F0B
        .byte   $0F
        .byte   $0B
L3D40:  .byte   $0B
        asl     L0006
        .byte   $0B
        .byte   $0B
        asl     a
        asl     a
L3D47:  .byte   $0B
        .byte   $0B
        asl     L0006
        .byte   $0B
        .byte   $0B
        .byte   $0F
        .byte   $0F
        .byte   $0B
        .byte   $0B
        asl     L0B0E
        asl     L0F0F
        .byte   $0B
        asl     L0F0F
        .byte   $0B
        asl     L0F0F
        .byte   $0B
        asl     L0F0F
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
        ora     L0D12
        .byte   $12
        ora     L0D12
        .byte   $12
        .byte   $0C
        ora     #$09
        ora     (L0010),y
        .byte   $13
        bpl     L3D95
        bpl     L3D97
        bpl     L3D99
        ora     (L000B),y
        .byte   $0B
        asl     L0016,x
        asl     L000B,x
        .byte   $17
        .byte   $17
        .byte   $17
        ora     L1B1B,x
        .byte   $1B
        .byte   $1D
L3D95:  .byte   $1C
        .byte   $1C
L3D97:  .byte   $1C
        .byte   $1D
L3D99:  clc
        clc
        clc
        .byte   $1A
        ora     L1919,y
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
        and     (L0021,x)
        and     (L0027,x)
        .byte   $22
        .byte   $23
        bit     L0025
        rol     L0027
        and     (L0021,x)
        and     (L0027,x)
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
        adc     L0066
        ora     L0004
        .byte   $03
        .byte   $02
        ora     (L0000,x)
        brk
        brk
        and     #$61
        .byte   $62
        .byte   $63
        ora     L0004
        .byte   $03
        .byte   $02
        ora     (L0000,x)
        brk
        brk
        brk
        ora     (L0001,x)
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $03
        .byte   $04
        .byte   $04
        ora     L0015
        .byte   $14
        .byte   $0B
        .byte   $0B
        .byte   $0B
        .byte   $1A
        .byte   $1A
        .byte   $1A
        .byte   $0B
        asl     L0016,x
        asl     L000B,x
        .byte   $17
        .byte   $17
        .byte   $17
        .byte   $0B
        asl     L0016,x
        asl     L000B,x
L3E00:  .byte   $1A
        .byte   $1A
        .byte   $1A
        .byte   $1A
L3E04:  clc
        clc
        clc
        .byte   $1A
        ora     L1919,y
        .byte   $1A
        clc
        clc
        clc
        .byte   $1A
        php
        php
        .byte   $07
        .byte   $07
        asl     L0006
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
        asl     L0006
        .byte   $07
        .byte   $0B
        asl     L0016,x
        .byte   $1F
        .byte   $1F
        asl     L0016,x
        .byte   $0B
        .byte   $0B
        .byte   $17
        .byte   $17
        asl     L171E,x
        .byte   $17
        .byte   $0B
        .byte   $0B
        asl     L0016,x
        .byte   $1F
        .byte   $1F
        asl     L0016,x
        .byte   $0B
        .byte   $0B
        .byte   $17
        .byte   $17
        asl     L171E,x
        .byte   $17
        .byte   $0B
        .byte   $0B
        php
        php
        php
        php
        .byte   $0B
        asl     L0B0E
        .byte   $14
        ora     L0005,x
        .byte   $04
        .byte   $03
        .byte   $02
        .byte   $01
L3E57:  brk
        brk
        brk
        brk
        brk
        brk
        ora     (L0002,x)
        .byte   $03
        .byte   $04
        ora     L0015
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
        asl     L0006
        .byte   $07
        ora     #$0A
        asl     a
        ora     #$07
        asl     L0009
        asl     a
        asl     a
        asl     a
        .byte   $0B
        .byte   $0B
        .byte   $07
        asl     L0006
        .byte   $07
L3E80:  ora     #$0A
        asl     a
        ora     #$07
        asl     L0009
        asl     a
        asl     a
        asl     a
        .byte   $0B
        .byte   $0B
        asl     L000B,x
        .byte   $17
        .byte   $0B
        asl     L000B,x
        .byte   $17
        .byte   $0B
        asl     L000B,x
        .byte   $17
        .byte   $0B
        asl     L0020,x
        jsr     L2221
        .byte   $23
        bit     L0025
        rol     L0027
        and     (L0021,x)
        .byte   $22
        .byte   $23
        bit     L0025
        rol     L0027
        and     (L0020,x)
        and     #$2A
        .byte   $2B
        bit     L2D2C
        and     L2E29
        .byte   $2F
        bmi     L3EE8
        and     (L0031),y
        and     #$0B
        .byte   $1A
        clc
        .byte   $1A
        ora     L181A,y
        .byte   $1A
        ora     L181A,y
        .byte   $1A
        ora     L181A,y
        .byte   $1A
        ora     L140B,y
        ora     L0005,x
        .byte   $04
        .byte   $03
        .byte   $02
        ora     (L0000,x)
        brk
        brk
        brk
        brk
        ora     (L0002,x)
        .byte   $03
        .byte   $04
        ora     L0015
        .byte   $14
        .byte   $0B
        .byte   $0B
        php
        php
        php
        php
        .byte   $0B
        .byte   $0B
L3EE8:  .byte   $07
        asl     L0006
        .byte   $07
        ora     #$0A
        asl     a
        ora     #$07
        asl     L0009
        asl     a
        asl     a
        asl     a
        .byte   $0B
        .byte   $0B
        .byte   $07
        asl     L0006
        .byte   $07
        ora     #$0A
        asl     a
        ora     #$07
        asl     L0009
        asl     a
        asl     a
        asl     a
        .byte   $0B
        .byte   $0B
        asl     L000B,x
        .byte   $17
        .byte   $0B
        asl     L000B,x
        .byte   $17
        .byte   $0B
        asl     L000B,x
        .byte   $17
        .byte   $0B
        asl     L004A,x
        lsr     a
        .byte   $4B
        jmp     L4E4D

        .byte   $4F
        bvc     L3F6F
        .byte   $4B
        .byte   $4B
        jmp     L4E4D

        .byte   $4F
        bvc     L3F77
        .byte   $4B
        lsr     a
        and     #$2A
        .byte   $2B
        bit     L2D2C
        and     L2E29
        .byte   $2F
        bmi     L3F64
        and     (L0031),y
        and     #$0B
        .byte   $1A
        clc
        .byte   $1A
        ora     L181A,y
        .byte   $1A
        ora     L181A,y
        .byte   $1A
        ora     L181A,y
        .byte   $1A
        ora     L140B,y
        ora     L0005,x
        .byte   $04
        .byte   $03
        .byte   $02
        ora     (L0000,x)
        brk
        brk
        brk
        .byte   $0B
        and     #$52
        .byte   $53
        .byte   $54
        eor     L0056,x
        .byte   $57
        cli
        eor     $5B5A,y
        .byte   $5C
        eor     $5F5E,x
L3F64:  rts

        ora     L0004
        .byte   $03
        .byte   $02
        ora     (L0000,x)
        brk
        .byte   $0B
        and     #$52
L3F6F:  .byte   $5A
        .byte   $5B
        .byte   $5C
        eor     $5F5E,x
        rts

        .byte   $05
L3F77:  .byte   $04
        .byte   $03
        .byte   $02
        ora     (L0000,x)
        .byte   $0B
        and     #$34
        .byte   $3E
L3F80:  .byte   $3F
        rti

        eor     (L0042,x)
        .byte   $43
        .byte   $44
        ora     L0004
        .byte   $03
        .byte   $02
        ora     (L0000,x)
        .byte   $0B
        and     #$34
        and     L0036,x
        .byte   $37
        sec
        and     L3B3A,y
        .byte   $34
        rol     $403F,x
        eor     (L0042,x)
        .byte   $43
        .byte   $44
        ora     L0004
        .byte   $03
        .byte   $02
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
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
