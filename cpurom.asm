; da65 V2.19 - Git 2fa92f9
; Created:    2026-11-27 00:40:15
; Input file: cpurom.bin
; Page:       1


        .setcpu "6502"

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
L0076:  .byte   $75
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
L00A0:  .byte   $26
L00A1:  pha
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
L0108:  .byte   $E0
L0109:  .byte   $53
L010A:  .byte   $43
L010B:  .byte   $4F
L010C:  .byte   $52
        eor     L0020
        .byte   $FF
L0110:  asl     L001E
L0112:  .byte   $E0
L0113:  jmp     L4E49

        eor     L0053
        jsr     L82FF
L011B:  bpl     L00DD
        lsr     L5845
L0120:  .byte   $54
L0121:  .byte   $FF
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
        .byte   $20
L0148:  jsr     L2020
        jsr     LFF20
        jsr     LB017
L0151:  jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     LA0FF
        .byte   $17
        bcs     L0180
L0160:  jsr     L2020
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
L01C0:  jsr     L4F47
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
        .byte   $20
        .byte   $46
L01E0:  .byte   $4F
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
L01FC:  eor     L0053
        .byte   $FF
        .byte   $26
L0200:  .byte   $19
L0201:  .byte   $B0
L0202:  .byte   $4C
        .byte   $45
L0204:  lsr     L0054
        .byte   $FF
L0207:  brk
L0208:  ldy     #$16
L020A:  bcs     L0250
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
L0220:  eor     #$4E
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
L028E:  .byte   $14
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
L02D6:  bcs     L0300
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
L0302:  bcs     L0329
        rol     L0026
        rol     L0026
L0308:  rol     L0026
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
L0320:  jsr     L2020
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
        .byte   $20
        .byte   $20
L0341:  jsr     L2020
        and     #$FF
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
L0381:  .byte   $B0
L0382:  plp
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
L03F0:  rol     L0026
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
L0400:  and     #$FF
        dey
L0403:  .byte   $13
        bcs     L042E
        .byte   $20
        .byte   $42
L0408:  .byte   $4F
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
        .byte   $26
L0432:  rol     L0026
        rol     L0026
        rol     L0026
        rol     L0027
        .byte   $FF
        sec
L043C:  .byte   $13
        bcs     L0467
        jsr     L4E45
        .byte   $44
        .byte   $20
L0444:  .byte   $4F
        lsr     L0020
        and     #$FF
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
L0488:  .byte   $FF
        ldy     L0018
        bcs     L04CE
        .byte   $44
        .byte   $44
        eor     L0044
        .byte   $FF
        .byte   $A4
L0493:  ora     L42B0,y
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
        lsr     L4943
        lsr     LFF47
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
L0505:  eor     #$54
        .byte   $49
L0508:  eor     (L004C,x)
        .byte   $53
        .byte   $FF
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
L05C0:  .byte   $2B
L05C1:  .byte   $2B
L05C2:  .byte   $2C
L05C3:  .byte   $FF
        brk
        sec
        bpl     L0578
        and     L0026
        rol     L0026
        rol     L0026
L05CE:  rol     L0026
L05D0:  rol     L0026
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
L0600:  .byte   $20
L0601:  .byte   $32
L0602:  .byte   $30
L0603:  .byte   $30
L0604:  .byte   $30
L0605:  .byte   $20
L0606:  .byte   $20
L0607:  .byte   $29
L0608:  .byte   $FF
        sec
        .byte   $12
        .byte   $B0
L060C:  rol     a
L060D:  .byte   $2B
L060E:  .byte   $2B
L060F:  .byte   $2B
L0610:  .byte   $2B
        .byte   $2B
L0612:  .byte   $2B
        .byte   $2B
L0614:  .byte   $2B
L0615:  .byte   $2B
L0616:  .byte   $2B
L0617:  .byte   $2B
L0618:  .byte   $2C
L0619:  .byte   $FF
        brk
        .byte   $84
L061C:  bpl     *-110
        .byte   $42
        .byte   $4F
        .byte   $4E
        .byte   $55
L0622:  .byte   $53
        .byte   $20
L0624:  lsr     L004F
L0626:  .byte   $52
        .byte   $FF
        asl     L0011
L062A:  bcc     L064C
L062C:  jmp     L574F

        .byte   $FF
L0630:  .byte   $86
L0631:  ora     (L0090),y
        bvc     L068A
L0635:  .byte   $5A
        .byte   $5A
L0637:  jmp     LFF45

        brk
L063B:  tsx
L063C:  .byte   $10
L063D:  .byte   $90
L063E:  .byte   $42
L063F:  .byte   $4F
L0640:  .byte   $4E
L0641:  .byte   $55
L0642:  .byte   $53
L0643:  .byte   $20
L0644:  .byte   $46
L0645:  .byte   $4F
L0646:  .byte   $52
L0647:  .byte   $FF
        .byte   $3A
L0649:  .byte   $11
L064A:  .byte   $90
L064B:  .byte   $20
L064C:  .byte   $4C
L064D:  .byte   $4F
L064E:  .byte   $57
L064F:  .byte   $FF
L0650:  tsx
L0651:  ora     (L0090),y
L0653:  .byte   $50
L0654:  .byte   $55
L0655:  .byte   $5A
L0656:  .byte   $5A
L0657:  .byte   $4C
L0658:  .byte   $45
L0659:  .byte   $FF
L065A:  brk
L065B:  .byte   $BC
L065C:  .byte   $13
L065D:  .byte   $90
L065E:  .byte   $53
L065F:  .byte   $54
L0660:  .byte   $41
L0661:  .byte   $54
L0662:  .byte   $53
L0663:  .byte   $FF
L0664:  brk
L0665:  .byte   $14
        .byte   $10
L0667:  bcs     L068E
L0669:  rol     L0026
L066B:  rol     L0026
L066D:  .byte   $26
L066E:  .byte   $26
L066F:  .byte   $26
L0670:  .byte   $26
L0671:  .byte   $26
L0672:  .byte   $26
L0673:  .byte   $26
L0674:  .byte   $26
L0675:  rol     L0026
L0677:  .byte   $26
L0678:  .byte   $26
L0679:  .byte   $26
L067A:  .byte   $26
L067B:  rol     L0026
L067D:  .byte   $27
L067E:  .byte   $FF
L067F:  sty     L0010,x
L0681:  .byte   $B0
L0682:  plp
L0683:  .byte   $50
L0684:  .byte   $52
L0685:  .byte   $45
L0686:  .byte   $53
L0687:  .byte   $53
L0688:  .byte   $20
L0689:  .byte   $31
L068A:  .byte   $20
L068B:  .byte   $50
L068C:  .byte   $4C
L068D:  .byte   $41
L068E:  .byte   $59
L068F:  eor     L0052
L0691:  .byte   $20
        .byte   $53
L0693:  .byte   $54
        .byte   $41
L0695:  .byte   $52
        .byte   $54
L0697:  and     #$FF
        .byte   $14
L069A:  .byte   $11
L069B:  .byte   $B0
L069C:  rol     a
L069D:  .byte   $2B
        .byte   $2B
L069F:  .byte   $2B
        .byte   $2B
L06A1:  .byte   $2B
L06A2:  .byte   $2B
L06A3:  .byte   $2B
L06A4:  .byte   $2B
L06A5:  .byte   $2B
L06A6:  .byte   $2B
L06A7:  .byte   $2B
L06A8:  .byte   $2B
L06A9:  .byte   $2B
L06AA:  .byte   $2B
L06AB:  .byte   $2B
L06AC:  .byte   $2B
L06AD:  .byte   $2B
L06AE:  .byte   $2B
L06AF:  .byte   $2B
L06B0:  .byte   $2B
L06B1:  .byte   $2C
L06B2:  .byte   $FF
L06B3:  brk
L06B4:  .byte   $10
L06B5:  .byte   $10
L06B6:  .byte   $B0
L06B7:  .byte   $25
L06B8:  .byte   $26
L06B9:  rol     L0026
L06BB:  .byte   $26
L06BC:  .byte   $26
L06BD:  rol     L0026
L06BF:  .byte   $26
L06C0:  .byte   $26
L06C1:  .byte   $26
L06C2:  rol     L0026
        rol     L0026
L06C6:  .byte   $26
L06C7:  .byte   $26
L06C8:  .byte   $26
L06C9:  .byte   $26
L06CA:  .byte   $26
L06CB:  .byte   $26
L06CC:  .byte   $26
L06CD:  .byte   $26
L06CE:  rol     L0026
        rol     L0027
        .byte   $FF
        bcc     L06E5
        bcs     L06FF
L06D7:  .byte   $50
L06D8:  .byte   $52
L06D9:  .byte   $45
L06DA:  .byte   $53
        .byte   $53
L06DC:  .byte   $20
L06DD:  .byte   $31
L06DE:  .byte   $20
L06DF:  .byte   $4F
L06E0:  .byte   $52
L06E1:  .byte   $20
L06E2:  .byte   $32
L06E3:  .byte   $20
L06E4:  .byte   $50
L06E5:  .byte   $4C
L06E6:  .byte   $41
L06E7:  .byte   $59
L06E8:  .byte   $45
L06E9:  .byte   $52
L06EA:  .byte   $20
L06EB:  .byte   $53
L06EC:  .byte   $54
L06ED:  .byte   $41
L06EE:  .byte   $52
L06EF:  .byte   $54
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
L0700:  .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
L0705:  .byte   $2B
        .byte   $2B
        .byte   $2B
L0708:  .byte   $2B
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
        asl     L9015
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
L0741:  .byte   $54
        eor     (L0054,x)
        eor     L00FF
        .byte   $0C
        ora     L5090,y
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
        asl     L9016
        .byte   $3B
        .byte   $4F
        .byte   $54
        .byte   $41
L0775:  .byte   $54
        eor     L00FF
L0778:  asl     L9017
L077B:  .byte   $50
L077C:  eor     #$45
        .byte   $43
        .byte   $45
L0780:  .byte   $FF
L0781:  .byte   $10
L0782:  clc
        bcc     L07D9
        .byte   $4F
        .byte   $FF
        asl     L9019
        lsr     L0049
L078C:  .byte   $54
        .byte   $FF
L078E:  asl     L901A
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
L07C3:  asl     L9018
        .byte   $4F
L07C7:  lsr     LFF45
        .byte   $0E
L07CB:  ora     L4D90,y
        .byte   $4F
        .byte   $3B
        eor     L00FF
        asl     L901A
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
L0800:  asl     a
L0801:  .byte   $19
        .byte   $90
L0803:  .byte   $50
L0804:  .byte   $49
L0805:  eor     L0043
        .byte   $45
L0808:  .byte   $FF
        asl     a
        .byte   $1A
        bcc     L0855
        .byte   $45
L080E:  .byte   $3B
        .byte   $45
L0810:  .byte   $5B
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
L0820:  txs
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
        lsr     L4F20
        lsr     L0AFF
        ora     L0090,x
        lsr     a
        .byte   $4F
        .byte   $59
L0845:  .byte   $53
        .byte   $54
L0847:  .byte   $49
L0848:  .byte   $43
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
L0865:  .byte   $1A
L0866:  .byte   $90
L0867:  eor     $1AFF,x
        .byte   $1B
        bcc     L08CA
        .byte   $FF
        txs
        .byte   $1B
        bcc     L08CF
        .byte   $FF
        brk
        asl     L9013
L0877:  bvc     L08CE
        jmp     LFF4C

L087C:  .byte   $0C
        .byte   $14
        bcc     L08C4
L0880:  .byte   $4F
L0881:  .byte   $57
        .byte   $4E
        .byte   $20
L0884:  .byte   $4F
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
L08A0:  bcc     L08F2
L08A2:  eor     #$45
L08A4:  .byte   $43
        eor     L00FF
        .byte   $1A
        .byte   $1B
        .byte   $90
L08AA:  .byte   $5D
L08AB:  .byte   $FF
L08AC:  txs
        .byte   $1B
        bcc     L090D
        .byte   $FF
        brk
        .byte   $0C
        .byte   $13
        bcc     L08FD
        .byte   $3B
        .byte   $45
L08B8:  .byte   $41
L08B9:  .byte   $54
L08BA:  .byte   $62
L08BB:  .byte   $FF
L08BC:  .byte   $0C
        .byte   $14
        bcc     L08E0
L08C0:  .byte   $4F
L08C1:  .byte   $4E
L08C2:  .byte   $45
L08C3:  .byte   $20
L08C4:  .byte   $20
L08C5:  .byte   $20
L08C6:  .byte   $FF
        asl     a
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
L08F2:  asl     L9014
        jmp     L4E49

        eor     L00FF
L08FA:  php
L08FB:  .byte   $15
L08FC:  .byte   $90
L08FD:  .byte   $44
        .byte   $49
L08FF:  .byte   $53
L0900:  eor     (L0050,x)
L0902:  .byte   $50
L0903:  eor     L0041
        .byte   $3B
        .byte   $53
        .byte   $FF
L0908:  .byte   $0C
        asl     L0090,x
L090B:  .byte   $20
        .byte   $20
L090D:  eor     (L004E,x)
        .byte   $44
        jsr     L0EFF
        .byte   $17
L0914:  bcc     L0965
        .byte   $54
        pha
        eor     L003B
        .byte   $FF
        asl     L9018
        jmp     L4E49

        eor     L0053
        .byte   $FF
        asl     L9019
        .byte   $44
        .byte   $3B
        .byte   $4F
        .byte   $50
L092B:  .byte   $FF
        brk
        asl     L9013
        .byte   $59
        .byte   $4F
L0932:  eor     L003B,x
        .byte   $FF
        asl     L9014
        .byte   $47
        .byte   $4F
        eor     (L004C,x)
        .byte   $FF
        .byte   $0C
        ora     L0090,x
        eor     #$53
        jsr     L4F54
        .byte   $FF
        asl     L9016
L0949:  lsr     L0049
        jmp     LFF4C

        .byte   $0C
L094F:  .byte   $17
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
L096E:  .byte   $44
        .byte   $FF
        brk
        jsr     LB017
        jsr     L2020
        pha
L0978:  .byte   $4F
L0979:  .byte   $57
L097A:  .byte   $20
L097B:  .byte   $20
L097C:  .byte   $20
L097D:  .byte   $20
L097E:  .byte   $FF
L097F:  .byte   $20
L0980:  clc
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
L09A0:  eor     L004C,x
        .byte   $4C
L09A3:  .byte   $FF
        .byte   $0C
        .byte   $14
        .byte   $90
L09A7:  .byte   $44
        .byte   $4F
        .byte   $57
        lsr     L4F20
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
L09D9:  .byte   $FF
L09DA:  .byte   $06
L09DB:  .byte   $1E
L09DC:  cpx     #$4C
        eor     #$4E
        .byte   $45
L09E1:  .byte   $53
        jsr     L82FF
        bpl     L09A7
        lsr     L5845
        .byte   $54
        .byte   $FF
L09EC:  brk
        sty     L9014
L09F0:  eor     #$4E
        .byte   $53
        eor     L0052
        .byte   $54
        .byte   $FF
        stx     L9015
        .byte   $43
        .byte   $4F
        eor     #$4E
        .byte   $FF
        bcc     L0A17
L0A01:  bcc     L0A57
        .byte   $4F
        .byte   $FF
        txa
        .byte   $17
        .byte   $90
L0A08:  .byte   $43
        .byte   $4F
        lsr     L4954
        lsr     L4555
        .byte   $FF
        brk
        ldy     L9014,x
        eor     #$4E
L0A17:  .byte   $53
        eor     L0052
L0A1A:  .byte   $54
        .byte   $FF
        ldx     L9015,y
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
        lsr     L4954
        lsr     L4555
        .byte   $FF
        brk
        sty     L9014
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
        asl     LE01E,x
        .byte   $32
        bmi     L0AB9
        bmi     L0ABB
        jsr     L4220
L0A8E:  .byte   $4F
        lsr     L5355
        .byte   $FF
        ldx     LE01D,y
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
L0AFF:  .byte   $20
L0B00:  jsr     L06FF
        .byte   $1E
        .byte   $E0
L0B05:  jsr     L4120
L0B08:  lsr     L2059
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
        .byte   $20
        .byte   $20
L0C00:  jsr     L2020
        jsr     L2020
        .byte   $FF
        .byte   $36
L0C08:  asl     $20F0,x
        jsr     L2020
        .byte   $20
        .byte   $20
L0C10:  .byte   $20
L0C11:  .byte   $20
L0C12:  jsr     L2020
        .byte   $20
L0C16:  .byte   $FF
        brk
        .byte   $22
        .byte   $17
        .byte   $B0
L0C1B:  jsr     LFF20
        brk
        rol     LB017
L0C22:  .byte   $20
L0C23:  .byte   $20
L0C24:  .byte   $FF
L0C25:  brk
        dey
        .byte   $12
        bcs     L0C4F
        .byte   $26
L0C2B:  rol     L0026
        rol     L0026
L0C2F:  rol     L0026
        rol     L0027
        .byte   $FF
        php
        .byte   $13
        bcs     L0C60
        .byte   $20
L0C39:  bvc     *+78
        eor     L0041
        .byte   $53
        eor     L0020
        and     #$FF
        dey
L0C43:  .byte   $13
        bcs     L0C6E
        jsr     L5720
        eor     (L0049,x)
        .byte   $54
        .byte   $20
L0C4D:  .byte   $20
        .byte   $29
L0C4F:  .byte   $FF
        php
        .byte   $14
        bcs     L0C7E
        .byte   $2B
        .byte   $2B
        .byte   $2B
L0C57:  .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        bit     a:L00FF
        clv
L0C60:  .byte   $12
L0C61:  bcs     L0C88
        rol     L0026
        rol     L0026
        rol     L0026
        rol     L0026
L0C6B:  .byte   $27
        .byte   $FF
        sec
L0C6E:  .byte   $13
        bcs     L0C99
        jsr     L4C50
        .byte   $45
L0C75:  eor     (L0053,x)
        eor     L0020
        and     #$FF
        clv
        .byte   $13
        .byte   $B0
L0C7E:  plp
L0C7F:  jsr     L5720
        eor     (L0049,x)
        .byte   $54
        jsr     L2920
L0C88:  .byte   $FF
L0C89:  sec
        .byte   $14
        bcs     L0CB7
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
        .byte   $2B
L0C93:  .byte   $2B
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
L0CAA:  jsr     L4C50
        eor     (L0043,x)
        eor     L00FF
L0CB1:  php
        ora     L0090,x
        bvc     L0CFF
        .byte   $45
L0CB7:  .byte   $43
        eor     L0053
        .byte   $20
L0CBB:  .byte   $54
        .byte   $4F
        .byte   $FF
        php
        asl     L0090,x
        lsr     L0049
        .byte   $4C
        .byte   $4C
L0CC5:  jsr     L494C
        .byte   $4E
        .byte   $45
L0CCA:  .byte   $53
        .byte   $FF
        brk
        ldx     #$1D
L0CCF:  cpx     #$52
        .byte   $4F
        eor     L004E,x
        .byte   $44
        .byte   $FF
        brk
        dey
        .byte   $12
L0CD9:  bcc     L0CFB
        .byte   $52
        eor     L004D
        eor     L004D
        .byte   $42
        eor     L0052
L0CE3:  .byte   $FF
        php
        .byte   $13
        bcc     L0D41
        .byte   $4F
        eor     L0052,x
        .byte   $20
        .byte   $47
L0CED:  .byte   $4F
L0CEE:  eor     (L004C,x)
        .byte   $FF
        dey
L0CF2:  .byte   $13
        bcc     L0D3E
        .byte   $53
        .byte   $20
L0CF7:  .byte   $54
        .byte   $4F
        .byte   $20
        .byte   $46
L0CFB:  eor     #$4C
        .byte   $4C
        .byte   $FF
L0CFF:  php
L0D00:  .byte   $14
L0D01:  bcc     L0D4B
        .byte   $4F
        .byte   $52
        eor     #$5A
L0D07:  .byte   $4F
L0D08:  lsr     L4154
L0D0B:  jmp     L88FF

        .byte   $14
        bcc     L0D31
        .byte   $20
L0D12:  jmp     L4E49

L0D15:  eor     L0053
        .byte   $FF
        brk
        iny
        .byte   $12
        bcc     L0D3D
        .byte   $52
        .byte   $45
L0D1F:  eor     $4D45
        .byte   $42
        eor     L0052
        .byte   $FF
        sec
        .byte   $13
        .byte   $90
L0D29:  eor     L554F,y
L0D2C:  .byte   $52
        jsr     L4F47
        .byte   $41
L0D31:  .byte   $4C
        .byte   $FF
L0D33:  iny
        .byte   $13
        bcc     L0D80
        .byte   $53
        .byte   $20
        .byte   $54
L0D3A:  .byte   $4F
        .byte   $20
        .byte   $46
L0D3D:  .byte   $49
L0D3E:  jmp     LFF4C

L0D41:  sec
L0D42:  .byte   $14
        bcc     L0D8D
        .byte   $4F
        .byte   $52
L0D47:  eor     #$5A
        .byte   $4F
        .byte   $4E
L0D4B:  .byte   $54
        eor     (L004C,x)
        .byte   $FF
        iny
        .byte   $14
L0D51:  bcc     L0D73
        jsr     L494C
L0D56:  lsr     L5345
        .byte   $FF
        brk
L0D5B:  .byte   $0C
        .byte   $13
        bcc     L0DA6
        .byte   $52
        eor     L0041
        .byte   $54
        .byte   $FF
        .byte   $8C
L0D65:  .byte   $13
        bcc     *+85
L0D68:  .byte   $43
        .byte   $4F
        .byte   $52
L0D6B:  eor     L0062
        .byte   $FF
        dey
L0D6F:  .byte   $14
        bcc     L0DB7
        .byte   $4E
L0D73:  .byte   $54
        eor     L0052
        jsr     L4F59
L0D79:  eor     L0052,x
        .byte   $FF
        asl     a
        ora     L0090,x
        .byte   $49
L0D80:  .byte   $4E
        .byte   $49
L0D82:  .byte   $54
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
        ldy     L9013,x
        .byte   $53
        .byte   $43
L0D97:  .byte   $4F
        .byte   $52
        eor     L0062
        .byte   $FF
        clv
        .byte   $14
        bcc     L0DE5
        .byte   $4E
L0DA1:  .byte   $54
        eor     L0052
        .byte   $20
        .byte   $59
L0DA6:  .byte   $4F
        eor     L0052,x
        .byte   $FF
        .byte   $3A
L0DAB:  ora     L0090,x
        eor     #$4E
        eor     #$54
        eor     #$41
        .byte   $4C
        .byte   $53
L0DB5:  .byte   $FF
        brk
L0DB7:  php
        .byte   $13
        bcc     L0E0B
        .byte   $52
        .byte   $4F
        lsr     a
        .byte   $45
L0DBF:  .byte   $43
        .byte   $54
        jsr     L454C
        eor     (L0044,x)
        eor     L0052
        .byte   $3A
L0DC9:  jsr     L454B
        jmp     L594C

        jsr     L5554
        .byte   $52
L0DD3:  .byte   $4E
L0DD4:  eor     L0052
        .byte   $FF
        php
        .byte   $14
        bcc     L0E2B
        .byte   $52
        .byte   $4F
L0DDD:  .byte   $47
        .byte   $52
        eor     (L004D,x)
        eor     L5245
        .byte   $53
L0DE5:  .byte   $3A
        .byte   $20
L0DE7:  lsr     $524F
        eor     L4120
        lsr     L0045,x
        .byte   $4C
        .byte   $4C
L0DF1:  eor     (L0052,x)
        .byte   $FF
        sty     L0014,x
        bcc     L0E43
        eor     L004C
        .byte   $4C
L0DFB:  .byte   $59
L0DFC:  jsr     L5554
        .byte   $52
L0E00:  lsr     L5245
        bit     L0020
L0E05:  eor     L0044
        .byte   $20
L0E08:  jmp     $474F

L0E0B:  .byte   $47
        .byte   $FF
        dey
L0E0E:  .byte   $15
L0E0F:  bcc     *+88
        eor     #$44
        eor     L004F
        jsr     L5247
        .byte   $41
L0E19:  bvc     *+74
        eor     #$43
        .byte   $53
        .byte   $3A
        jsr     L524B
        .byte   $49
L0E23:  .byte   $53
        jsr     L4F4D
        .byte   $53
        eor     L0052
        .byte   $FF
L0E2B:  dey
        .byte   $16
L0E2D:  bcc     *+71
        lsr     L4947
        lsr     $4545
        .byte   $52
        .byte   $3A
        jsr     L4F44
        eor     L0047,x
        jsr     L4E53
        .byte   $59
L0E40:  .byte   $44
L0E41:  .byte   $45
L0E42:  .byte   $52
L0E43:  .byte   $FF
L0E44:  dey
L0E45:  .byte   $17
L0E46:  .byte   $90
L0E47:  .byte   $54
L0E48:  .byte   $45
L0E49:  .byte   $43
L0E4A:  pha
L0E4B:  .byte   $4E
L0E4C:  .byte   $49
L0E4D:  .byte   $43
L0E4E:  .byte   $49
L0E4F:  .byte   $41
L0E50:  .byte   $4E
L0E51:  .byte   $3A
L0E52:  .byte   $20
L0E53:  .byte   $47
L0E54:  .byte   $4C
L0E55:  .byte   $45
L0E56:  lsr     $204E
        eor     L4E43
        eor     (L004D,x)
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
        ora     L5390,y
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
L0EAA:  .byte   $44
        .byte   $41
L0EAC:  .byte   $57
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
        lsr     L4543
        bvc     L0F25
        jsr     L4E41
        .byte   $44
        jsr     L4544
        .byte   $53
        eor     #$47
        lsr     LFF3A
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
L0EF7:  eor     L4720
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

        .byte   $31
L0F08:  and     $3738,y
L0F0B:  jsr     L4341
L0F0E:  .byte   $41
L0F0F:  .byte   $44
        .byte   $45
L0F11:  eor     L5359
        .byte   $4F
        lsr     L0054
        and     L4C45
        .byte   $4F
        .byte   $3B
        .byte   $47
        .byte   $FF
        php
        ora     L4090,x
        .byte   $31
L0F23:  .byte   $39
        sec
L0F25:  sec
        jsr     L5441
L0F29:  eor     (L003B,x)
        eor     #$20
        .byte   $47
        eor     (L004D,x)
        eor     L0053
        .byte   $FF
        dey
        ora     L4C90,x
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
        .byte   $4C
        .byte   $45
L1006:  eor     (L0053,x)
L1008:  eor     L0020
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
        eor     LFF3B,y
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
L107E:  and     L4E43
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
L1102:  bcs     L1137
        .byte   $1C
        .byte   $FF
        .byte   $24
L1107:  .byte   $19
L1108:  bcs     *+54
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
L118A:  .byte   $22
        .byte   $80
        lda     #$02
        sta     (L0009,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        asl     LB380,x
        .byte   $02
L1198:  sta     (L0003,x)
        .byte   $80
        .byte   $0B
        brk
        .byte   $80
        .byte   $B7
        .byte   $02
L11A0:  .byte   $01
L11A1:  .byte   $80
L11A2:  .byte   $0B
L11A3:  brk
        .byte   $80
        .byte   $B9
L11A6:  .byte   $02
L11A7:  .byte   $81
L11A8:  .byte   $03
L11A9:  .byte   $80
        brk
        brk
L11AC:  .byte   $7F
L11AD:  ora     LBD80,x
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
        ora     LC580,x
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
L1200:  brk
        brk
        .byte   $80
        sbc     (L0002,x)
        brk
        ora     (L0001,x)
L1208:  .byte   $80
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
        asl     L0180
        .byte   $53
        sta     (L0003,x)
        sbc     L0381,x
        .byte   $80
        sed
        .byte   $02
        ora     (L0080,x)
        inc     L8072,x
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
        asl     L8073
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
        ora     L8063,y
        .byte   $1A
L1300:  .byte   $03
        ora     (L0080,x)
        .byte   $1C
        .byte   $53
        sta     (L0003,x)
        .byte   $FD
L1308:  sta     (L0003,x)
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
        ora     L7F00
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
        ora     L7F00
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
        ora     L7F00
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
L13B3:  ora     L7F00
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
        ora     L7F00
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
L1400:  .byte   $7F
        ora     #$80
        eor     (L0063,x)
        .byte   $80
        plp
        .byte   $03
L1408:  .byte   $80
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
L1419:  .byte   $42
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
L142E:  .byte   $47
        .byte   $63
        .byte   $80
        plp
        .byte   $03
        .byte   $80
L1434:  ora     L7F00
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
        ora     L7F00
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
        eor     L8073,x
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
        sbc     L8002,y
        adc     (L0073,x)
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        adc     L8073
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
L1508:  .byte   $7F
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
        adc     L8063,x
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
        sta     LEA03
        .byte   $80
        stx     L8033
        .byte   $8F
        .byte   $13
        .byte   $80
        ora     L7F10
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
        ora     L7F10
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
        ora     L7F10
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
        ora     L7F10
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
        dec     L9480,x
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
L1600:  .byte   $80
        adc     (L0003),y
        plp
        .byte   $80
        txs
        .byte   $03
        .byte   $01
L1608:  ora     (L00FF,x)
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
L161A:  ora     (L007F,x)
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
        dec     L8103,x
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
        inc     L8103,x
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
        sta     (L0003,x)
L16FF:  .byte   $FF
L1700:  ora     (L001E,x)
        .byte   $E7
        .byte   $1A
        inc     L0001
        .byte   $FF
        .byte   $01
L1708:  .byte   $FF
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
        .byte   $01
L171C:  .byte   $FF
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
L1728:  eor     (L0054,x)
        sta     (L0006,x)
        .byte   $FF
        sbc     L0105,x
L1730:  sbc     LFF00,y
        .byte   $09
L1734:  .byte   $FF
        .byte   $02
        .byte   $81
L1737:  .byte   $03
        .byte   $FB
        .byte   $80
L173A:  brk
        .byte   $50
L173C:  .byte   $80
        brk
L173E:  brk
        .byte   $7F
L1740:  .byte   $13
        .byte   $80
L1742:  .byte   $4F
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
        asl     L0001
        ora     (L00FD,x)
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
L17A2:  .byte   $04
L17A3:  .byte   $80
L17A4:  .byte   $D1
L17A5:  .byte   $02
        ora     (L0080,x)
        brk
L17A9:  brk
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
L17C8:  .byte   $7F
        ora     #$80
        .byte   $D3
        .byte   $02
        ora     L0102
        .byte   $80
        brk
L17D2:  brk
        .byte   $7F
        ora     #$80
        inc     L8002
        bvs     L17DF
        ora     (L0080,x)
        .byte   $E3
        .byte   $02
L17DF:  .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        inc     L8002
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
L1800:  .byte   $7F
        ora     #$80
        sbc     (L0062),y
        .byte   $80
        .byte   $72
        .byte   $04
L1808:  .byte   $80
        cpx     L8002
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
L1873:  sbc     L8002,y
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
L1888:  asl     a
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
        sbc     L8002,y
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
        sbc     L8002,y
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
L1900:  .byte   $63
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $19
L1908:  .byte   $63
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
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
        sbc     L8002,y
        clc
        .byte   $43
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $09
L1928:  .byte   $80
        ora     L8043,y
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
        .byte   $F9
        .byte   $02
L1940:  .byte   $80
        rol     L0073
L1943:  .byte   $80
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
        rol     L0043
        .byte   $80
        brk
        brk
        .byte   $7F
        ora     #$80
        .byte   $27
        .byte   $43
        .byte   $80
L195D:  .byte   $0B
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
        sbc     L8002,y
        beq     L19E6
        .byte   $80
        brk
        brk
        .byte   $80
        ror     L8154,x
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
        sbc     L8002,y
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
L1999:  .byte   $80
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
        sbc     L8002,y
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
L1A00:  sbc     L8002,y
        .byte   $37
L1A04:  .byte   $43
        .byte   $80
        brk
        brk
L1A08:  brk
        brk
        .byte   $80
        txa
        .byte   $54
        ora     (L00FB,x)
        sbc     LFC09,x
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
L1A20:  brk
        brk
        .byte   $7F
        ora     #$80
        sbc     (L0062),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
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
        sbc     L8002,y
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
        eor     (L0073,x)
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
        sbc     L8002,y
        lsr     L0073
        .byte   $80
        stx     L8014
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
        sbc     L8002,y
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
        sbc     L8002,y
        beq     L1B41
        .byte   $80
        sta     L8014
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        sta     L8014
        sbc     (L0072),y
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
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
L1B00:  .byte   $80
        sbc     L8002,y
        .byte   $4F
        .byte   $73
        .byte   $80
        .byte   $8E
L1B08:  .byte   $34
        .byte   $80
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        stx     L8034
        bvc     L1B87
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
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
        sbc     L8002,y
        adc     (L0073,x)
        .byte   $80
        sta     L8034
L1B41:  brk
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
        sbc     L8002,y
        beq     L1BE6
        .byte   $80
        sta     L8024
        brk
        brk
        .byte   $7F
        .byte   $07
        .byte   $80
        sta     L8024
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
        sbc     L8002,y
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
        adc     L8063,x
        .byte   $73
        .byte   $04
L1C00:  .byte   $80
        sbc     L8002,y
        .byte   $7C
        .byte   $73
        .byte   $80
        .byte   $8D
L1C08:  .byte   $14
        .byte   $80
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
L1C1F:  .byte   $14
        ora     (L00FE,x)
        .byte   $80
        brk
L1C24:  brk
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
        adc     L8043,x
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
        sbc     L8002,y
L1C46:  .byte   $7F
        .byte   $03
        ora     (L007F,x)
        ora     #$01
        .byte   $80
        .byte   $73
        .byte   $04
        .byte   $80
        sbc     L8002,y
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
        sbc     L8002,y
        sta     L0104,y
        .byte   $7F
        ora     #$01
        cld
        .byte   $80
        sbc     L8002,y
        sta     L0104,y
        .byte   $7F
        ora     #$01
        .byte   $80
        .byte   $0B
        brk
        .byte   $7F
        ora     L7380
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
        ora     L7380,y
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
        ora     L7380,y
        .byte   $04
        .byte   $80
        sbc     L8002,y
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
        sbc     LFC04,x
        ora     L00FC
        .byte   $02
        sbc     LFC04,x
        .byte   $04
        .byte   $FC
        ora     (L0005,x)
        brk
        .byte   $FA
        ora     (L0001,x)
        .byte   $FF
        ora     (L00FF,x)
        .byte   $02
        sbc     LFC05,x
        .byte   $02
        sbc     L0201,x
        sbc     LFC04,x
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
L1D00:  .byte   $7F
        ora     L0080
        .byte   $9E
        bvs     L1CFB
        .byte   $0B
        .byte   $F5
L1D08:  .byte   $0C
        sbc     L000D,x
        .byte   $F2
        .byte   $0C
        sbc     L0201,x
        sbc     L000C,x
        .byte   $FC
        ora     (L00FE,x)
        .byte   $04
        .byte   $04
        .byte   $01
L1D18:  .byte   $F3
        .byte   $02
L1D1A:  .byte   $FA
        bpl     L1D1E
L1D1D:  .byte   $80
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
        asl     LFB01
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
        lda     L8130
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
L1D73:  .byte   $80
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
        lda     L8100
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
L1DC2:  .byte   $80
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
L1E08:  .byte   $80
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
L1E1E:  brk
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
L1E42:  cmp     L0100,y
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
L1EFF:  .byte   $80
L1F00:  lda     L8140
        ora     L0080
        brk
        brk
        .byte   $80
L1F08:  brk
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
        .byte   $94
L1F1E:  bvs     *+14
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
        rol     L8071,x
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
        eor     L8071,x
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
L2000:  .byte   $5C
L2001:  adc     (L0080),y
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
L200E:  .byte   $20
L200F:  .byte   $80
L2010:  .byte   $A9
L2011:  .byte   $20
        .byte   $81
L2013:  .byte   $03
L2014:  .byte   $80
L2015:  brk
        jsr     L0080
L2019:  brk
        .byte   $80
L201B:  brk
        .byte   $70
L201D:  .byte   $7F
L201E:  bpl     L1FA0
L2020:  brk
L2021:  brk
        .byte   $80
        .byte   $AD
L2024:  .byte   $30
L2025:  sta     (L0005,x)
        .byte   $80
        brk
L2029:  brk
L202A:  brk
        brk
L202C:  .byte   $80
L202D:  .byte   $9B
L202E:  .byte   $70
L202F:  .byte   $FD
L2030:  .byte   $03
L2031:  .byte   $04
L2032:  .byte   $F9
        .byte   $80
L2034:  brk
L2035:  brk
L2036:  brk
        brk
        .byte   $80
        .byte   $B6
L203A:  .byte   $20
L203B:  sta     (L0004,x)
        .byte   $80
        brk
        .byte   $20
L2040:  .byte   $80
L2041:  brk
        brk
L2043:  .byte   $80
L2044:  brk
L2045:  bvs     L20C6
        bpl     L1FC9
L2049:  brk
L204A:  brk
L204B:  .byte   $80
L204C:  .byte   $BB
        bmi     L1FD0
L204F:  ora     L0080
        brk
L2052:  brk
L2053:  brk
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
L2061:  brk
L2062:  brk
L2063:  .byte   $80
L2064:  .byte   $C3
        jsr     L0581
        .byte   $80
L2069:  brk
L206A:  brk
        .byte   $80
L206C:  brk
        bvs     L20EE
        bpl     L1FF1
L2071:  brk
        brk
L2073:  .byte   $80
        .byte   $C9
L2075:  bmi     *-125
        ora     L0080
L2079:  brk
        brk
L207B:  .byte   $80
L207C:  .byte   $5C
        .byte   $71
L207E:  ora     (L0080,x)
L2080:  tya
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
L20B0:  .byte   $01
L20B1:  .byte   $80
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
        .byte   $70
L20F6:  .byte   $07
        sbc     L0006,x
        ora     (L00FD,x)
L20FB:  .byte   $FC
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
L210E:  sty     L0070,x
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
        sbc     L80FC,y
        lda     (L0074),y
        ora     (L0080,x)
        sta     LFA70,y
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
        eor     L8071,x
        .byte   $97
        bvs     L21AA
        .byte   $FA
        .byte   $0C
L21AA:  sbc     L010B,y
        .byte   $80
        .byte   $B2
        .byte   $74
        .byte   $80
        sta     LFA70,y
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
        sbc     LFD0C,x
        ora     (L0002,x)
        sed
L2202:  .byte   $FC
        .byte   $0C
L2204:  sbc     LF506,y
        .byte   $0B
        .byte   $F5
L2209:  ora     L0006
        sbc     L0005,x
L220D:  .byte   $5A
        .byte   $A7
        .byte   $5A
        lda     L005A
        .byte   $A7
L2213:  .byte   $5A
        lda     L005A
        .byte   $A7
        .byte   $5A
        lda     L005A
        .byte   $A7
        .byte   $5A
        lda     (L0005,x)
        brk
L221F:  .byte   $FA
        php
L2221:  sbc     LF507,x
        ora     (L000A,x)
L2226:  sbc     L0601,x
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
        sta     LFA70,y
        .byte   $80
        .byte   $B2
L223C:  .byte   $74
        .byte   $80
        sta     LFA70,y
        .byte   $0C
        .byte   $80
        .byte   $B2
        .byte   $74
        .byte   $80
        sta     LFA70,y
        .byte   $0C
        .byte   $80
        .byte   $B2
        .byte   $74
        .byte   $80
        sta     LFA70,y
        .byte   $0C
        .byte   $80
        .byte   $B2
        .byte   $74
        .byte   $80
        sta     LFA70,y
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
        sbc     LFD01,x
        sta     (L0005,x)
        sbc     LFF01,x
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
        cmp     L8114,x
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
        inc     LD714
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
        inc     LD714
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
        inc     LD714
        ora     (L0029,x)
        .byte   $80
        brk
        bpl     L23A0
        and     L0080
        beq     L2339
        .byte   $EB
        cmp     L8001,x
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
        cmp     L8001,y
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
        inc     LD714
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
        inc     LD714
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
        inc     LD714
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
L2404:  .byte   $FC
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
L2420:  .byte   $01
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
L244C:  brk
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
        lsr     L4F00
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
        eor     L5A00,y
        brk
        .byte   $5B
        brk
        .byte   $5C
        brk
        eor     L5E00,x
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
        ror     L6F00
        brk
        bvs     L251F
L251F:  adc     (L0000),y
        .byte   $72
        brk
        .byte   $73
        brk
        .byte   $74
        bmi     L259D
        .byte   $30
L2529:  ror     L0030,x
        .byte   $77
        bmi     L25A6
        bmi     L25A9
        brk
        .byte   $7A
        brk
        .byte   $7B
        brk
        .byte   $7C
        brk
        adc     L7E00,x
        brk
        .byte   $7F
        brk
        .byte   $80
        brk
        sta     (L0000,x)
        .byte   $82
        brk
        .byte   $83
L2544:  brk
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
        sty     L8D00
        brk
        stx     L8F00
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
L258C:  .byte   $03
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
L25DF:  .byte   $80
L25E0:  brk
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
L2604:  brk
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
L2623:  rol     L0004,x
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
        .byte   $2C
L264C:  .byte   $04
        jsr     $8004
        .byte   $03
        .byte   $80
        .byte   $03
        .byte   $80
        .byte   $03
        .byte   $80
L2656:  .byte   $03
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
L26A9:  inc     L0052,x
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
        .byte   $1D
        .byte   $53
L26C9:  asl     $1F53,x
        .byte   $53
        .byte   $E7
        .byte   $52
        .byte   $FB
        .byte   $54
        .byte   $FC
        .byte   $54
        nop
        .byte   $52
        sbc     LFE54,x
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
L2704:  .byte   $52
        ora     (L0055),y
        .byte   $12
        eor     L0013,x
        eor     L00F7,x
        .byte   $52
        .byte   $14
        eor     L0012,x
        eor     L0015,x
        .byte   $55
L2713:  .byte   $03
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
L274C:  eor     L0021,x
        eor     L0000,x
        bvc     L2752
L2752:  .byte   $50
L2753:  .byte   $07
L2754:  eor     L0022,x
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
L2800:  .byte   $55
L2801:  .byte   $3F
        eor     L0027,x
        eor     L0040,x
        eor     L0041,x
L2808:  eor     L0042,x
L280A:  .byte   $55
L280B:  .byte   $27
        eor     L0043,x
        .byte   $55
L280F:  .byte   $44
L2810:  eor     L0045,x
        eor     L0027,x
        eor     L0046,x
        eor     L001B,x
L2818:  .byte   $55
L2819:  .byte   $47
L281A:  .byte   $55
L281B:  pha
        eor     L00E7,x
        .byte   $52
L281F:  .byte   $0F
        eor     L0010,x
        eor     L00EA,x
        .byte   $52
L2825:  bit     L0055
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
L2902:  .byte   $55
L2903:  .byte   $27
L2904:  eor     L0029,x
        eor     L006E,x
        .byte   $55
L2909:  .byte   $6F
        .byte   $55
L290B:  rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
L2914:  .byte   $52
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
        adc     L7A55,y
        eor     L007B,x
        .byte   $55
L2953:  .byte   $7C
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
L2B02:  .byte   $55
L2B03:  .byte   $27
L2B04:  eor     L00BB,x
        eor     L00BC,x
        eor     L00BD,x
        eor     L0027,x
        eor     L00AB,x
        eor     L00AC,x
        eor     L00AD,x
        .byte   $55
L2B13:  .byte   $27
L2B14:  eor     L0033,x
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
L2C02:  .byte   $55
L2C03:  .byte   $27
        eor     L0029,x
        eor     L001B,x
        eor     L001B,x
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        .byte   $55
L2C13:  nop
L2C14:  .byte   $52
        bit     L0055
        brk
        bvc     L2C39
        eor     L0025,x
        eor     L0026,x
L2C1E:  eor     L00DE,x
        eor     L0069,x
L2C22:  eor     L0027,x
        eor     L0028,x
        eor     L00DF,x
        eor     L00E0,x
        eor     L00E1,x
L2C2C:  eor     L0028,x
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
        cpx     LED55
        eor     L0027,x
        eor     L0028,x
L2C86:  eor     L00EE,x
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
L2CE8:  eor     L00FC,x
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
L2D2C:  .byte   $55
L2D2D:  .byte   $E7
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
L2D6C:  eor     L0009,x
        .byte   $56
L2D6F:  asl     a
        lsr     L000B,x
L2D72:  lsr     L0027,x
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
        .byte   $55
L2D9D:  rol     L0055
        .byte   $0F
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
L2E00:  bvc     L2E02
L2E02:  .byte   $50
L2E03:  .byte   $27
L2E04:  eor     L0028,x
        .byte   $55
L2E07:  brk
        .byte   $50
L2E09:  .byte   $F2
        eor     L00F3,x
        eor     L0028,x
        eor     L00F4,x
        eor     L00F5,x
        .byte   $55
L2E13:  inc     L0055,x
        and     #$55
        .byte   $1B
        .byte   $55
L2E19:  sta     (L0055),y
        rol     a
        eor     L00E7,x
        .byte   $52
        .byte   $0F
L2E20:  eor     L0010,x
        eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        .byte   $50
L2E29:  .byte   $1F
        .byte   $55
L2E2B:  and     L0055
        .byte   $26
L2E2E:  eor     L0018,x
        lsr     L0019,x
        lsr     L0027,x
        eor     L0028,x
        eor     L001A,x
        lsr     L001B,x
        lsr     L0027,x
        eor     L0028,x
        eor     L001C,x
        lsr     L001D,x
        .byte   $56
L2E43:  .byte   $27
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
L2E84:  .byte   $52
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
L2F00:  lsr     L0035,x
        lsr     L0027,x
L2F04:  eor     L0029,x
        eor     L0026,x
        .byte   $56
L2F09:  .byte   $27
        lsr     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        eor     L00EA,x
L2F14:  .byte   $52
        bit     L0055
        brk
        bvc     L2F39
        eor     L0025,x
        eor     L0036,x
        lsr     L0037,x
L2F20:  lsr     L0033,x
        lsr     L0027,x
        eor     L0028,x
        eor     L0038,x
L2F28:  lsr     L0039,x
        lsr     L0027,x
        eor     L0028,x
        .byte   $55
L2F2F:  .byte   $3A
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
L2F82:  lsr     L0027,x
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
        .byte   $55
L2F9D:  .byte   $E7
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
L3000:  eor     L0010,x
L3002:  eor     L00EA,x
L3004:  .byte   $52
        bit     L0055
L3007:  brk
        bvc     L3029
        eor     L0025,x
        eor     L0026,x
        eor     L004E,x
        lsr     L004F,x
        .byte   $56
L3013:  .byte   $27
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
L3032:  .byte   $55
L3033:  nop
L3034:  .byte   $52
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
L30D0:  lsr     L005D,x
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
L3100:  bvc     L3102
L3102:  bvc     L312B
L3104:  eor     L0064,x
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
L3258:  lsr     L0083,x
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
L3284:  eor     L0028,x
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
        .byte   $55
L3303:  nop
L3304:  .byte   $52
L3305:  bit     L0055
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
L3400:  lsr     L00B1,x
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
L3532:  .byte   $50
L3533:  .byte   $27
L3534:  eor     L0029,x
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
L3602:  eor     L00EA,x
        .byte   $52
        bit     L0055
        brk
        bvc     L3629
        eor     L0025,x
        eor     L00E7,x
        lsr     L00E8,x
        lsr     L00E9,x
        .byte   $56
L3613:  .byte   $27
L3614:  eor     L00EA,x
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
L3800:  .byte   $57
        ora     L0057,x
        .byte   $27
L3804:  eor     L0029,x
        eor     L0016,x
        .byte   $57
L3809:  .byte   $1B
        eor     L002A,x
        eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        .byte   $55
L3813:  nop
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
L3A02:  .byte   $50
L3A03:  .byte   $27
L3A04:  eor     L0058,x
        .byte   $57
        eor     L5A57,y
        .byte   $57
        .byte   $5B
        .byte   $57
        .byte   $5C
        .byte   $57
        eor     L1D57,x
        lsr     L005E,x
L3A14:  .byte   $57
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
        eor     L5A57,y
        .byte   $57
        .byte   $5B
        .byte   $57
        adc     L6E57
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
        .byte   $76
L3B00:  .byte   $57
        .byte   $77
        .byte   $57
L3B03:  sei
L3B04:  .byte   $57
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
L3B14:  .byte   $52
        bit     L0055
        .byte   $7B
L3B18:  .byte   $57
        .byte   $7C
        .byte   $57
L3B1B:  .byte   $25
L3B1C:  eor     L007D,x
        .byte   $57
        .byte   $7E
L3B20:  .byte   $57
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
L3B3C:  eor     L00E7,x
        .byte   $52
        .byte   $0F
        eor     L0010,x
        .byte   $55
L3B43:  nop
L3B44:  .byte   $52
        bit     L0055
L3B47:  brk
        bvc     L3B69
        eor     L0025,x
        eor     L0026,x
        .byte   $55
L3B4F:  .byte   $86
L3B50:  .byte   $57
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
        stx     L7757
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
L3C00:  .byte   $55
L3C01:  bpl     L3C58
        nop
L3C04:  .byte   $52
        bit     L0055
L3C07:  brk
L3C08:  .byte   $50
L3C09:  .byte   $1F
        eor     L0025,x
        eor     L0026,x
        eor     L0093,x
        .byte   $57
        brk
        bvc     L3C3B
L3C14:  eor     L003A,x
        .byte   $57
L3C17:  sty     L0057,x
L3C19:  brk
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
L3C84:  eor     L004E,x
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
L3D04:  .byte   $57
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
        .byte   $0E
L3D3C:  .byte   $0B
L3D3D:  .byte   $0F
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
L3D75:  .byte   $12
        .byte   $0D
        .byte   $12
L3D78:  ora     L0C12
L3D7B:  ora     #$09
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
L3E02:  .byte   $1A
        .byte   $1A
L3E04:  clc
        clc
        clc
        .byte   $1A
        ora     L1919,y
        .byte   $1A
        clc
L3E0D:  clc
        clc
        .byte   $1A
        php
        php
        .byte   $07
        .byte   $07
L3E14:  asl     L0006
        .byte   $07
L3E17:  .byte   $07
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
        .byte   $06
L3F02:  .byte   $09
L3F03:  asl     a
L3F04:  asl     a
        asl     a
        .byte   $0B
        .byte   $0B
        .byte   $16
L3F09:  .byte   $0B
        .byte   $17
        .byte   $0B
        asl     L000B,x
        .byte   $17
        .byte   $0B
        asl     L000B,x
        .byte   $17
        .byte   $0B
L3F14:  asl     L004A,x
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
L3F3E:  .byte   $1A
L3F3F:  ora     L181A,y
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
        eor     L5B5A,y
        .byte   $5C
        eor     L5F5E,x
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
        eor     L5F5E,x
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
L3F84:  .byte   $43
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
        rol     L403F,x
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
L4000:  .byte   $20
L4001:  and     $5840
L4004:  inc     L00CA
        ldx     L0C10
        cpx     L0C11
        beq     L401E
        inx
        cpx     #$10
        bcc     L4015
        ldx     #$00
L4015:  stx     L0C10
        ldy     L0C00,x
        jsr     L4160
L401E:  lda     L00CA
L4020:  lsr     a
        bcc     L4028
        ldx     #$00
        jmp     L4B4D

L4028:  .byte   $A2
L4029:  ora     (L004C,x)
        .byte   $4D
        .byte   $4B
L402D:  php
        sei
        jsr     L40A8
        lda     #$00
        sta     L0C22
        sta     L0C23
        sta     L0C24
        .byte   $8D
        .byte   $10
L403F:  .byte   $0C
L4040:  .byte   $8D
L4041:  ora     (L000C),y
        ldx     #$11
L4045:  sta     L0E2D,x
        dex
        bpl     L4045
        ldx     #$09
L404D:  sta     L0CB1,x
        sta     L0C43,x
        sta     L0C4D,x
        sta     L0CD9,x
        sta     L0DA1,x
        dex
        bpl     L404D
        ldx     #$01
L4061:  lda     L5008,x
        sta     L00CE
        lda     L500A,x
        sta     L00CF
        lda     #$00
        ldy     #$08
        sta     (L00CE),y
        stx     L00D9
        clc
        lda     L00CE
        sta     L00DA
        lda     #$0F
        adc     L00CE
        sta     L00CE
        ldx     #$00
        txa
        sta     (L00CE,x)
L4083:  adc     #$01
        cmp     #$07
        bne     L4083
        sta     (L00CE,x)
        ldx     L00D9
        lda     L00DA
        .byte   $85
L4090:  dec     L08A0
        lda     #$00
        sta     (L00CE),y
        lda     #$00
        ldy     #$08
L409B:  dey
        sta     (L00CE),y
        bne     L409B
        dex
        bmi     L40A6
        jmp     L4061

L40A6:  plp
        rts

L40A8:  lda     #$01
        sta     L00DC
        jsr     L40EA
        lda     #$02
L40B1:  sta     (L00DD),y
        tax
        inx
        lda     L00DD
        clc
        adc     #$04
        sta     L00DD
        bcc     L40C6
        inc     L00DE
        lda     #$0F
        cmp     L00DE
        beq     L40CB
L40C6:  txa
        cmp     #$C8
        bcc     L40B1
L40CB:  dec     L00DE
        lda     L00DD
        sec
        sbc     #$04
        sta     L00DD
        lda     #$00
        sta     (L00DD),y
        rts

L40D9:  .byte   $A5
L40DA:  .byte   $DC
        jsr     L40EA
        pha
        lda     (L00DD),y
        beq     L40E7
        sta     L00DC
        pla
        rts

L40E7:  lda     #$00
        rts

L40EA:  pha
        tay
        dey
        sty     L00DD
        sty     L00D6
        ldy     #$00
        sty     L00DE
        asl     L00DD
        rol     L00DE
        asl     L00DD
        rol     L00DE
        lda     #$57
        clc
        adc     L00DD
L4102:  sta     L00DD
        lda     #$0E
        adc     L00DE
L4108:  sta     L00DE
        pla
        rts

L410C:  tya
        pha
L410E:  lda     L0DD3,x
        beq     L4126
        jsr     L40EA
        pha
        lda     (L00DD),y
        sta     L0DD3,x
        lda     L00DC
L411E:  sta     (L00DD),y
L4120:  pla
        sta     L00DC
        jmp     L410E

L4126:  lda     L0DC9,x
        beq     L413E
        jsr     L40EA
        pha
        lda     (L00DD),y
        sta     L0DC9,x
        lda     L00DC
        sta     (L00DD),y
        pla
        sta     L00DC
L413B:  jmp     L4126

L413E:  pla
        tay
        rts

L4141:  php
L4142:  sei
        .byte   $AC
        .byte   $11
L4145:  .byte   $0C
L4146:  iny
L4147:  .byte   $C0
L4148:  bpl     L40DA
        .byte   $02
        .byte   $A0
L414C:  brk
        sty     L0C11
L4150:  cpy     L0C10
L4153:  .byte   $D0
L4154:  .byte   $04
        lda     #$FF
        plp
        rts

        sta     L0C00,y
        lda     #$00
        plp
        rts

L4160:  cpy     #$1D
        bcs     L4178
        lda     L5252,y
        cmp     #$15
        bcs     L4178
        asl     a
        tax
        lda     L44AD,x
        pha
        lda     L44AC,x
        pha
        lda     L526F,y
L4178:  rts

        asl     a
        asl     a
        sta     L00DB
        rts

        tay
        lda     L5459,y
        and     #$1F
        tax
        lda     L545A,y
        sta     L00E0,x
        rts

        tay
        lda     L5459,y
L418F:  and     #$1F
        tax
        lda     L545A,y
        clc
        adc     L00E0,x
        sta     L00E0,x
        rts

        asl     a
        tay
        lda     L528D,y
        pha
        lda     L528C,y
        pha
        rts

        php
        sei
        sta     L00D9
        ldy     #$09
L41AC:  lda     L0CB1,y
        lsr     a
        lsr     a
        eor     L00D9
        bne     L41BA
        lda     #$FF
        sta     L0C25,y
L41BA:  dey
        bpl     L41AC
        plp
        rts

        php
        sei
        tay
        lda     L5252,y
        cmp     #$08
        bne     L41DF
        lda     L526F,y
        sta     L00D9
        ldy     #$09
L41D0:  cmp     L0C25,y
        bne     L41DC
        lda     #$FF
        sta     L0C25,y
        lda     L00D9
L41DC:  dey
        bpl     L41D0
L41DF:  plp
        rts

        sta     L00D9
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        tay
        lda     L00D9
        and     #$0F
        clc
        adc     L500E,y
        tay
        php
        sei
        lda     L0E2D,y
        beq     L4204
L41F8:  tay
        dey
        lda     #$FF
        sta     L0C25,y
        .byte   $B9
L4200:  and     $D00E
L4203:  .byte   $F4
L4204:  plp
        rts

        php
        sei
        sta     L00D9
        lda     L00D9
        bne     L4214
        lda     #$80
        sta     L00D9
        bne     L4218
L4214:  lda     #$40
        sta     L00D9
L4218:  ldy     #$09
L421A:  lda     L0CB1,y
        beq     L421F
L421F:  dey
L4220:  bpl     L421A
        plp
        rts

        php
        sei
        tay
        lda     L5252,y
        cmp     #$08
        bne     L4259
        lda     L526F,y
        sta     L00D9
        ldy     #$09
L4235:  cmp     L0C25,y
        bne     L4256
        lda     #$00
        sta     L0DE7,y
        .byte   $99
        .byte   $0F
L4241:  asl     $FB99
        ora     $D0A9
        sta     L0E05,y
        lda     #$02
        sta     L0DF1,y
        lda     #$FE
        .byte   $99
L4252:  and     L000C
        lda     L00D9
L4256:  dey
        bpl     L4235
L4259:  plp
        rts

        php
        sei
        sta     L00D9
        ldy     #$09
L4261:  lda     L0CB1,y
        lsr     a
        lsr     a
        eor     L00D9
        bne     L4284
        lda     #$00
        sta     L0DE7,y
        sta     L0E0F,y
        sta     L0DFB,y
        lda     #$D0
        sta     L0E05,y
        lda     #$02
        sta     L0DF1,y
        lda     #$FE
        sta     L0C25,y
L4284:  dey
        bpl     L4261
        plp
        rts

        ldy     L0C23
        sta     L0C12,y
        iny
        cpy     #$10
L4292:  bcc     L4296
        ldy     #$00
L4296:  cpy     L0C22
        beq     L429F
        sty     L0C23
        rts

L429F:  lda     #$80
        sta     L0C24
        rts

        tax
        lda     L545B,x
        cmp     #$3B
        bcs     L42EB
        cmp     #$08
        .byte   $90
L42B0:  .byte   $14
        cmp     #$0A
        bcc     L42EB
        cmp     #$0D
        bcc     L42C5
        cmp     #$12
        bcc     L42EB
        cmp     #$16
        bcc     L42C5
        cmp     #$19
        bcc     L42EB
L42C5:  asl     a
        tay
        lda     L545E,x
        clc
        adc     #$0A
        pha
        lda     L545C,x
        sta     L0E56
        lda     L545D,x
        tax
        lda     L5252,x
        cmp     #$08
        bne     L42EA
        lda     L526F,x
        sta     L0E55
        pla
        tax
        jmp     L4B90

L42EA:  pla
L42EB:  rts

        sta     L00CB
        tay
        asl     a
        tax
        bcs     L42F8
        lda     L528E,x
        bcc     L42FB
L42F8:  lda     L538E,x
L42FB:  sta     L00D0
        bcs     L4304
        lda     L528F,x
        bcc     L4307
L4304:  lda     L538F,x
L4307:  sta     L00D1
        lda     L52C0,y
        bne     L4322
        lda     L00CB
        .byte   $A0
L4311:  .byte   $09
L4312:  cmp     L0C25,y
        bne     L431F
        lda     L0CB1,y
        beq     L431D
        rts

L431D:  lda     L00CB
L431F:  dey
L4320:  bpl     L4312
L4322:  ldy     #$09
L4324:  lda     L0CB1,y
        .byte   $F0
L4328:  eor     L0088
        bpl     L4324
        ldy     #$00
        lda     #$D9
        clc
        adc     L00D0
        sta     L00D2
        lda     #$52
        adc     L00D1
        sta     L00D3
        lda     (L00D2),y
        sta     L00D4
        lda     #$19
L4341:  clc
        adc     L00D0
        .byte   $85
L4345:  .byte   $D2
        lda     #$53
        .byte   $65
L4349:  cmp     (L0085),y
        .byte   $D3
        lda     (L00D2),y
        clc
        adc     #$0A
        tax
        php
L4353:  sei
        ldy     L0E2D,x
        beq     L4364
        dey
        lda     L00D4
        asl     a
        sec
        rol     a
        cmp     L0CB1,y
        bcs     L4367
L4364:  plp
        sec
        rts

L4367:  lda     L0E2D,y
        sta     L0E2D,x
        plp
L436E:  tya
        tax
        jsr     L4428
        ldy     #$00
        lda     #$D9
        clc
        adc     L00D0
        sta     L00D2
        lda     #$52
        adc     L00D1
        sta     L00D3
        lda     (L00D2),y
        asl     a
        sec
        rol     a
        sta     L0CB1,x
        lda     #$19
        clc
        adc     L00D0
        sta     L00D2
        lda     #$53
        adc     L00D1
        sta     L00D3
        lda     (L00D2),y
        clc
        adc     #$0A
        sta     L00D4
        lda     L00D0
        asl     a
        sta     L00D2
        lda     L00D1
        rol     a
        sta     L00D3
        lda     #$59
        clc
        adc     L00D2
        sta     L00D2
        lda     #$53
        adc     L00D3
        sta     L00D3
        lda     (L00D2),y
        sta     L0C2F,x
        iny
        lda     (L00D2),y
        sta     L0C39,x
        ldy     L00D4
        php
        sei
L43C4:  sty     L00D4
        lda     L0E2D,y
        beq     L43F3
        tay
        dey
        lda     L0CB1,y
        ora     #$01
        cmp     L0CB1,x
        bcc     L43C4
        beq     L43DD
        iny
        tya
        bcs     L43EE
L43DD:  txa
        pha
        tya
        tax
        jsr     L410C
        pla
        tax
        lda     #$00
        sta     L0CB1,y
        lda     L0E2D,y
L43EE:  sta     L0E2D,x
        ldy     L00D4
L43F3:  lda     L00CB
        sta     L0C25,x
        inx
        txa
        sta     L0E2D,y
        plp
        ldy     #$00
L4400:  lda     L00D0
        asl     a
        sta     L00D2
        lda     L00D1
        rol     a
        sta     L00D3
        lda     #$D9
        clc
        adc     L00D2
        sta     L00D2
        lda     #$53
        adc     L00D3
        sta     L00D3
        lda     (L00D2),y
        sta     L00D0
        iny
        ora     (L00D2),y
        beq     L4427
L4420:  lda     (L00D2),y
        sta     L00D1
        jmp     L4322

L4427:  rts

L4428:  lda     #$07
        sta     L0CD9,x
        lda     #$10
        sta     L0D79,x
        lda     #$A0
        sta     L0DA1,x
        lda     #$FF
        sta     L0CC5,x
        lda     #$00
        sta     L0D6F,x
L4441:  sta     L0CCF,x
L4444:  .byte   $9D
L4445:  and     L9D0E
        .byte   $83
        ora     L579D
        .byte   $0C
        sta     L0C61,x
        sta     L0C6B,x
        sta     L0DAB,x
        sta     L0DDD,x
        sta     L0DB5,x
        sta     L0DBF,x
        sta     L0DC9,x
        sta     L0DD3,x
        sta     L0C75,x
        sta     L0C7F,x
        sta     L0C89,x
        sta     L0C93,x
        sta     L0DE7,x
        sta     L0DF1,x
        sta     L0D47,x
        sta     L0D51,x
        sta     L0D5B,x
        sta     L0E19,x
        sta     L0E23,x
        sta     L0D97,x
        sta     L0D8D,x
        sta     L0D33,x
        sta     L0D65,x
        sta     L0D0B,x
        sta     L0D29,x
        sta     L0CBB,x
        lda     #$10
        sta     L0CE3,x
        sta     L0CF7,x
        lda     #$50
        sta     L0CED,x
        sta     L0D01,x
        rts

L44AC:  sei
L44AD:  eor     (L007D,x)
        eor     (L008A,x)
        eor     (L009A,x)
        eor     (L00A5,x)
        eor     (L00BE,x)
        eor     (L00E0,x)
        eor     (L0005,x)
        .byte   $42
        .byte   $EB
        .byte   $42
        dey
        .byte   $42
        .byte   $23
        .byte   $42
        .byte   $5A
        .byte   $42
        rol     L0044
        ldy     L0042
        rol     L0044
        rol     L0044
        rol     L0044
        rol     L0044
        rol     L0044
        rol     L0044
        rol     L0044
L44D6:  lda     L0E2D,x
        beq     L44DD
        lda     #$FF
L44DD:  sta     L00DF
        lda     L0CB1,x
        beq     L44EB
        ldy     L0C25,x
        iny
        bne     L44EE
        tya
L44EB:  jmp     L460A

L44EE:  and     #$03
        sta     L0E42
        and     #$01
        tay
        lda     L0CB1,x
        sta     L0E40,y
        lda     L0C2F,x
        .byte   $85
L4500:  cpy     $39BD
        .byte   $0C
        sta     L00CD
        lda     L0C57,x
        sec
        sbc     L0D6F,x
        sta     L0C57,x
        lda     L0C61,x
        sbc     L0D79,x
        sta     L0C61,x
        bcs     L4523
        dec     L0C6B,x
        bpl     L4523
L4520:  jmp     L454D

L4523:  lda     L0C89,x
        bmi     L4542
        lda     L0C75,x
        sec
        sbc     L0D6F,x
        sta     L0C75,x
        lda     L0C7F,x
        sbc     L0D79,x
        sta     L0C7F,x
L453B:  bcs     L454A
        dec     L0C89,x
        bpl     L454A
L4542:  .byte   $AD
L4543:  .byte   $42
L4544:  asl     L03F0
L4547:  .byte   $4C
L4548:  bit     L0049
L454A:  .byte   $4C
L454B:  sei
L454C:  .byte   $47
L454D:  .byte   $BD
L454E:  .byte   $2F
        .byte   $0C
L4550:  clc
        adc     #$02
L4553:  .byte   $9D
L4554:  .byte   $2F
L4555:  .byte   $0C
        bcc     L455B
        inc     L0C39,x
L455B:  ldy     #$00
        lda     (L00CC),y
        bpl     L4580
        jsr     L4B60
        bcc     L4572
        lda     L0C39,x
        sta     L00CD
        lda     L0C2F,x
        sta     L00CC
        bcs     L454D
L4572:  lda     L0E42
        and     #$01
        tay
        lda     #$00
        sta     L0E40,y
        jmp     L4941

L4580:  ldy     L0E42
        beq     L4589
        cmp     #$00
        beq     L458D
L4589:  clc
        adc     L0D83,x
L458D:  ldy     L0E42
        beq     L4596
        cpy     #$01
        beq     L45B4
L4596:  pha
        sec
        sbc     L0C43,x
        sta     L0DB5,x
        asl     a
        lda     #$FF
        bcs     L45A5
        lda     #$00
L45A5:  sta     L0DBF,x
        pla
        sta     L0C43,x
        lda     #$00
        sta     L0C4D,x
        jmp     L45D5

L45B4:  asl     a
        tay
        sec
        lda     L0C43,x
        sbc     L50DE,y
        sta     L0DB5,x
        lda     L0C4D,x
        sbc     L50DF,y
        sta     L0DBF,x
        lda     L50DE,y
        sta     L0C43,x
        lda     L50DF,y
        sta     L0C4D,x
L45D5:  ldy     #$01
        lda     #$00
        sta     L00D9
        lda     (L00CC),y
        beq     L45E2
        jmp     L462B

L45E2:  lda     L0DC9,x
        beq     L460A
        pha
        jsr     L40EA
        lda     (L00DD),y
        sta     L0DC9,x
        lda     L00DC
        sta     (L00DD),y
        pla
        sta     L00DC
        iny
        lda     (L00DD),y
        sta     L0C2F,x
        sta     L00CC
        iny
        lda     (L00DD),y
L4602:  sta     L0C39,x
        sta     L00CD
        jmp     L454D

L460A:  sta     L0CB1,x
        sta     L0CD9,x
        sta     L0C93,x
        sta     L0DE7,x
        .byte   $9D
L4617:  sbc     (L000D),y
        sta     L0E48
        jsr     L410C
        .byte   $BD
L4620:  and     LAE0E
        .byte   $4B
        asl     L2D9D
        asl     L244C
        .byte   $49
L462B:  pha
        lda     L0E42
        bne     L4634
        jmp     L46D6

L4634:  pla
        sta     L00D9
        and     #$0F
        asl     a
        tay
        lda     L51A2,y
        clc
        adc     L0C61,x
        sta     L0C61,x
L4645:  .byte   $B9
        .byte   $A3
L4647:  eor     (L007D),y
        .byte   $6B
        .byte   $0C
        sta     L0C6B,x
        .byte   $A5
L464F:  cmp     L4029,y
        beq     L466B
        lda     L51A3,y
        lsr     a
        pha
        lda     L51A2,y
        ror     a
        clc
        adc     L0C61,x
        sta     L0C61,x
        pla
        adc     L0C6B,x
        sta     L0C6B,x
L466B:  lda     #$7F
        sta     L0C89,x
        lda     L00D9
        bmi     L46B1
        lda     #$00
        sta     L00D8
        lda     L0D79,x
        sta     L00D7
        lda     L0D6F,x
        asl     a
        rol     L00D7
        rol     L00D8
        sta     L00D6
        lda     L0C57,x
        sec
        sbc     L00D6
        sta     L0C75,x
        lda     L0C61,x
        sbc     L00D7
        sta     L0C7F,x
        lda     L0C6B,x
        sbc     L00D8
        sta     L0C89,x
        lda     L00D9
        and     #$30
        cmp     #$10
        bne     L46B1
        .byte   $5E
L46A9:  .byte   $89
        .byte   $0C
        ror     L0C7F,x
        ror     L0C75,x
L46B1:  lda     L0C93,x
        bpl     L46C3
        lda     L0DAB,x
        bne     L4703
        sta     L0DB5,x
        sta     L0DBF,x
        beq     L4703
L46C3:  lda     #$00
        sta     L0DB5,x
        sta     L0DBF,x
        lda     L00D9
        and     #$38
        asl     a
        sta     L0CBB,x
        jmp     L4703

L46D6:  sta     L0CBB,x
        sta     L0DB5,x
        sta     L0DBF,x
        pla
        and     #$7F
        lsr     a
        ror     L00D9
        lsr     a
        ror     L00D9
        lsr     a
        ror     L00D9
        pha
        clc
        lda     L00D9
        adc     L0C61,x
        sta     L0C61,x
        pla
        adc     L0C6B,x
        sta     L0C6B,x
        lda     (L00CC),y
        sta     L00D9
        sta     L0C93,x
L4703:  lda     L0DE7,x
        ora     L0DF1,x
        bne     L4718
        ldy     L0C25,x
        cpy     #$FE
        .byte   $D0
L4711:  ora     #$FE
        and     L000C
        .byte   $4C
        asl     a
L4717:  .byte   $46
L4718:  jsr     L494F
L471B:  lda     L0C93,x
        pha
        .byte   $A5
L4720:  cmp     $939D,y
        .byte   $0C
        pla
        bmi     L4778
        lda     #$00
        tay
        sta     L0D47,x
        sta     L0D51,x
        sta     L0D5B,x
        sta     L0D65,x
        lda     L0CF7,x
        sta     L00CC
        lda     L0D01,x
        sta     L00CD
        lda     (L00CC),y
        sta     L0D3D,x
        iny
        ora     (L00CC),y
        iny
        ora     (L00CC),y
        beq     L4751
        inc     L0D3D,x
        tya
L4751:  sta     L0D33,x
        lda     #$00
        tay
        sta     L0D1F,x
        sta     L0D29,x
        lda     L0CE3,x
        sta     L00CC
        lda     L0CED,x
        sta     L00CD
        lda     (L00CC),y
        sta     L0D15,x
        iny
        ora     (L00CC),y
        beq     L4775
        inc     L0D15,x
        tya
L4775:  sta     L0D0B,x
L4778:  ldy     L0E42
        beq     L4788
        lda     L0C43,x
        ora     L0C4D,x
        bne     L4788
        jmp     L4924

L4788:  lda     L00CA
        and     #$06
        bne     L4798
        lda     L0DBF,x
        asl     a
        ror     L0DBF,x
        ror     L0DB5,x
L4798:  lda     L0CF7,x
        sta     L00CC
        lda     L0D01,x
        sta     L00CD
        ldy     L0D33,x
        bne     L47AC
        tya
        clc
        jmp     L484B

L47AC:  dec     L0D3D,x
        bne     L4807
L47B1:  iny
        lda     (L00CC),y
        sta     L0D3D,x
        iny
        cmp     #$FF
        bne     L47E2
        lda     L0D65,x
        beq     L47C9
        dec     L0D65,x
        bne     L47CE
        iny
        bne     L47B1
L47C9:  lda     (L00CC),y
        sta     L0D65,x
L47CE:  iny
        sec
        lda     L00CC
        sbc     (L00CC),y
        sta     L00CC
        sta     L0CF7,x
        bcs     L47B1
        dec     L00CD
        dec     L0D01,x
        bcc     L47B1
L47E2:  ora     (L00CC),y
        iny
        cpy     #$F9
        ora     (L00CC),y
        bne     L47F2
        sta     L0D33,x
        tay
        clc
        beq     L484B
L47F2:  tya
        bcc     L4804
        sbc     #$02
        adc     L0CF7,x
        sta     L0CF7,x
        lda     #$01
        .byte   $90
L4800:  .byte   $03
        .byte   $FE
L4802:  ora     (L000D,x)
L4804:  sta     L0D33,x
L4807:  lda     #$00
        sta     L00DA
        lda     (L00CC),y
        bpl     L4811
        dec     L00DA
L4811:  sta     L00D9
        dey
        lda     (L00CC),y
        asl     a
        rol     L00D9
        rol     L00DA
        asl     a
        rol     L00D9
        rol     L00DA
L4820:  asl     a
        rol     L00D9
        rol     L00DA
L4825:  clc
        adc     L0D47,x
        sta     L0D47,x
        lda     L00D9
        adc     L0D51,x
        sta     L0D51,x
        sta     L00D9
        lda     L00DA
        adc     L0D5B,x
        sta     L0D5B,x
        tay
        lda     L0E42
        .byte   $C9
L4843:  .byte   $02
        bne     L4848
        dec     L00D9
L4848:  lda     L00D9
        clc
L484B:  adc     L0C43,x
        sta     L00D9
        tya
        adc     L0C4D,x
L4854:  tay
        clc
        .byte   $A5
L4857:  cmp     $B57D,y
        ora     $D985
        tya
        adc     L0DBF,x
        sta     L0E4A
        lda     L0E42
        and     #$01
        tay
        lda     L00D9
        sta     L0E48,y
        lda     L0CE3,x
        sta     L00CC
        lda     L0CED,x
        sta     L00CD
        ldy     L0D0B,x
        bne     L4884
L487E:  lda     L0CD9,x
        jmp     L491E

L4884:  dec     L0D15,x
L4887:  bne     L48DB
L4889:  iny
        lda     (L00CC),y
L488C:  sta     L0D15,x
        iny
        cmp     #$FF
        bne     L48BA
        lda     L0D29,x
        beq     L48A1
        dec     L0D29,x
        bne     L48A6
        iny
        bne     L4889
L48A1:  lda     (L00CC),y
        sta     L0D29,x
L48A6:  iny
        sec
        lda     L00CC
        sbc     (L00CC),y
        sta     L00CC
        sta     L0CE3,x
        bcs     L4889
        dec     L00CD
        dec     L0CED,x
        bcc     L4889
L48BA:  cpy     #$F9
        ora     (L00CC),y
        bne     L48C6
        sta     L0D0B,x
        jmp     L487E

L48C6:  tya
        bcc     L48D8
        sbc     #$02
        adc     L0CE3,x
        sta     L0CE3,x
        lda     #$01
        bcc     L48D8
        inc     L0CED,x
L48D8:  sta     L0D0B,x
L48DB:  lda     (L00CC),y
        clc
        adc     L0D1F,x
        bvc     L48E9
        lda     #$80
        bcs     L48E9
        lda     #$7F
L48E9:  sta     L0D1F,x
        ldy     L0CBB,x
        clc
        adc     L51D2,y
        bvc     L48FB
        lda     #$80
        bcs     L48FB
        lda     #$7F
L48FB:  pha
        tya
        and     #$0F
        .byte   $C9
L4900:  .byte   $0F
        beq     L4906
        inc     L0CBB,x
L4906:  pla
        lsr     a
        lsr     a
        lsr     a
        cmp     #$10
        bcc     L4910
        ora     #$F0
L4910:  clc
        adc     L0CD9,x
        bpl     L4918
        lda     #$00
L4918:  cmp     #$10
        bcc     L491E
        lda     #$0F
L491E:  .byte   $1D
        .byte   $A1
L4920:  ora     L264C
        .byte   $49
L4924:  lda     #$00
        pha
        lda     L0E42
        and     #$01
        tay
        pla
        sta     L0E46,y
        cpx     #$0A
        bcs     L4941
        lda     L0CCF,x
        sta     L0E4D,y
L493B:  lda     L0CC5,x
        sta     L0E51,y
L4941:  .byte   $BD
        .byte   $2D
L4943:  .byte   $0E
L4944:  beq     L494E
L4946:  .byte   $8E
L4947:  .byte   $4B
L4948:  asl     $CAAA
        .byte   $4C
L494C:  .byte   $D6
L494D:  .byte   $44
L494E:  rts

L494F:  lda     L0DFB,x
        sta     L00D6
L4954:  .byte   $BD
        .byte   $05
L4956:  .byte   $0E
L4957:  sta     L00D7
        lda     L00D9
        pha
        and     #$0F
        tay
        lda     L51C2,y
        sta     L00D9
        cmp     #$FF
        bne     L497A
        lda     L0DF1,x
        bne     L4972
        sta     L0DE7,x
        beq     L4975
L4972:  dec     L0DF1,x
L4975:  lda     L00D7
        jmp     L49DA

L497A:  lda     L0DE7,x
        sec
        sbc     L00D9
        sta     L0DE7,x
        bcs     L4992
        .byte   $DE
        .byte   $F1
L4987:  ora     L0810
        lda     #$00
        .byte   $9D
        .byte   $E7
L498E:  ora     $F19D
        .byte   $0D
L4992:  ldy     #$07
        lda     L00D7
L4996:  cmp     #$80
        ror     a
        ror     L00D6
        dey
        bmi     L49A2
        asl     L00D9
        bcc     L4996
L49A2:  ldy     #$00
        sty     L00D9
        sta     L00D7
        cmp     #$80
        bcc     L49BF
        sta     L00D9
        eor     #$FF
        sta     L00D7
        lda     L00D6
        eor     #$FF
        clc
        adc     #$01
        sta     L00D6
        bcc     L49BF
        inc     L00D7
L49BF:  lda     L0E0F,x
        clc
        adc     L00D6
        sta     L0E0F,x
        bcc     L49CC
        inc     L00D7
L49CC:  lda     L00D7
        tay
        beq     L49DF
        ldy     L00D9
        bpl     L49DA
        eor     #$FF
        clc
        adc     #$01
L49DA:  jsr     L4CCA
        ldy     #$FF
L49DF:  pla
        sta     L00D9
        rts

L49E3:  tya
        pha
        iny
        lda     #$00
        sta     L0E43
        sta     L0E44
        sta     L0E40
        sta     L0E41
        sta     L0E47
        sta     L0E46
        sta     L0E4D
        sta     L0E4E
L4A00:  .byte   $8D
        .byte   $4F
L4A02:  asl     $FFA9
        sta     L0E51
        sta     L0E52
        sta     L0E53
        ldx     L0E2D,y
        beq     L4A5C
        dex
        sty     L0E4B
        lda     #$00
        jsr     L44D6
        .byte   $AD
L4A1D:  rti

        .byte   $0E
        .byte   $8D
L4A20:  .byte   $43
        asl     LDBC5
        lda     #$00
        bcc     L4A37
        lda     L0E4D
        sta     L0E4F
        lda     L0E51
        sta     L0E53
        lda     L0E46
L4A37:  sta     L0E44
        lda     L0E48
        sta     L0E45
        .byte   $A9
L4A41:  brk
        sta     L0E40
        sta     L0E41
        sta     L0E47
        sta     L0E46
        sta     L0E4D
        sta     L0E4E
        lda     #$FF
        sta     L0E51
        sta     L0E52
L4A5C:  pla
        tay
        ldx     L0E2D,y
        beq     L4A6C
        dex
        sty     L0E4B
        lda     #$00
        jsr     L44D6
L4A6C:  lda     L0E40
        cmp     L0E41
        bcs     L4A77
        lda     L0E41
L4A77:  cmp     L00DB
        bcs     L4A91
        lda     #$00
        sta     L0E46
        sta     L0E47
        sta     L0E4D
        sta     L0E4E
        lda     #$FF
        sta     L0E51
        sta     L0E52
L4A91:  lda     L0E40
        cmp     L0E43
        bcc     L4A9C
        sta     L0E43
L4A9C:  lda     L0E41
        cmp     L0E43
        bcc     L4AB9
        lda     #$00
        sta     L0E46
        lda     L0E52
        and     L0E54
        sta     L0E54
        lda     L0E4E
        ora     L0E50
        rts

L4AB9:  lda     L0E45
        sta     L0E4A
        lda     L0E48
        sta     L0E49
        lda     L0E44
        sta     L0E47
        lda     L0E51
        and     L0E53
        and     L0E54
        sta     L0E54
        lda     L0E4D
        ora     L0E4F
        ora     L0E50
        rts

L4AE1:  lda     #$00
        sta     L0E50
        lda     #$FF
        sta     L0E54
        txa
        pha
        lda     L500E,x
        pha
        tay
        iny
        iny
        jsr     L49E3
        bcc     L4AFB
        ora     #$28
L4AFB:  sta     L0E50
        ldy     #$04
        lda     L0E49
        sta     (L00CE),y
        iny
        iny
L4B07:  lda     L0E4A
        sta     (L00CE),y
        dey
        lda     L0E46
        sta     (L00CE),y
        iny
        iny
        lda     L0E47
        sta     (L00CE),y
        pla
        tay
        jsr     L49E3
        bcc     L4B22
        ora     #$50
L4B22:  sta     L0E50
        pla
        tax
        lda     L0E50
        and     L0E54
        ldy     #$08
        sta     (L00CE),y
        ldy     #$00
        lda     L0E49
        sta     (L00CE),y
        iny
        iny
        .byte   $AD
        lsr     a
L4B3C:  asl     $CE91
        dey
        lda     L0E46
        sta     (L00CE),y
        iny
        iny
        .byte   $AD
L4B48:  .byte   $47
        asl     $CE91
        rts

L4B4D:  .byte   $BD
        php
L4B4F:  bvc     *-121
        dec     $0ABD
        bvc     *-121
        .byte   $CF
        lda     L500C,x
        sta     L0E4C
        jmp     L4AE1

L4B60:  cmp     #$BB
        bcc     L4B6B
        lda     #$FF
        sta     L0C25,x
        clc
        rts

L4B6B:  iny
        stx     L00D9
        asl     a
        tax
        lda     L4BB3,x
        pha
        lda     L4BB2,x
        pha
        ldx     L00D9
        lda     (L00CC),y
        sec
        rts

L4B7E:  lda     L0C2F,x
        clc
        adc     #$01
        sta     L0C2F,x
        bcc     L4B8C
        inc     L0C39,x
L4B8C:  iny
        lda     (L00CC),y
        rts

L4B90:  php
        sei
L4B92:  lda     L0E2D,x
        beq     L4BA4
        tax
        dex
        lda     L0C25,x
        cmp     L0E55
        bne     L4B92
        jsr     L4BA6
L4BA4:  plp
        rts

L4BA6:  lda     L4BB3,y
        pha
        lda     L4BB2,y
        pha
        lda     L0E56
        rts

L4BB2:  .byte   $B7
L4BB3:  jmp     L4CA3

        cmp     LC24C,y
        jmp     L4CEB

        .byte   $E7
        jmp     L4C98

        sta     L274C
        jmp     L4C84

        beq     L4C14
        .byte   $F4
        jmp     L4D1F

        .byte   $23
        eor     L4D51
        .byte   $7C
        eor     L4FB1
        cmp     L4C4F
        eor     L004C
        eor     L004C
        eor     L004C
        eor     L004C
        eor     L00DC
        .byte   $4F
        jmp     LF845

        .byte   $4F
        jmp     L0845

        eor     L4F93
        jmp     L4C45

        eor     L004C
        eor     L004C
        eor     L004C
        eor     L004C
        eor     L004C
        eor     L00AE
        eor     L454C
        jmp     L4C45

        eor     L004C
        eor     L00DB
        .byte   $4D
        .byte   $E7
L4C07:  eor     $4DF1
        .byte   $F7
        eor     L4DFD
        eor     L844E,x
        lsr     L4EB2
L4C14:  inc     L004E
        .byte   $03
        .byte   $4F
        .byte   $03
        lsr     L4E30
        clc
        .byte   $4F
        .byte   $1F
        .byte   $4F
L4C20:  rol     L004F
        and     L094F
        .byte   $4F
L4C26:  .byte   $0C
        .byte   $4F
        lda     #$00
        sta     L0C57,x
        sta     L0C61,x
        sta     L0C6B,x
        ldy     L0D8D,x
        beq     L4C40
        iny
        bne     L4C73
L4C3B:  sta     L0D8D,x
        sec
        rts

L4C40:  lda     L0D97,x
        .byte   $9D
        .byte   $8D
L4C45:  ora     L09A0
L4C48:  cmp     L0D97,y
        bne     L4C5A
        .byte   $D9
L4C4E:  .byte   $8D
L4C4F:  .byte   $0D
L4C50:  beq     L4C5A
        lda     L0CB1,y
        bne     L4C73
        lda     L0D97,x
L4C5A:  dey
        bpl     L4C48
        ldy     #$09
L4C5F:  cmp     L0D97,y
        bne     L4C6C
        lda     #$FF
        sta     L0D8D,y
        lda     L0D97,x
L4C6C:  dey
        bpl     L4C5F
        lda     #$00
        beq     L4C3B
L4C73:  lda     L0C2F,x
        cmp     #$02
        bcs     L4C7D
        dec     L0C39,x
L4C7D:  dec     L0C2F,x
        dec     L0C2F,x
        clc
L4C84:  rts

        .byte   $9D
L4C86:  .byte   $97
        ora     a:L00A9
        sta     L0D8D,x
        rts

        .byte   $9D
        .byte   $E3
L4C90:  .byte   $0C
        jsr     L4B7E
        sta     L0CED,x
        sec
L4C98:  rts

        sta     L0CF7,x
        jsr     L4B7E
        sta     L0D01,x
        sec
L4CA3:  rts

        clc
        adc     L0D6F,x
        sta     L0D6F,x
        php
        jsr     L4B7E
        plp
L4CB0:  adc     L0D79,x
        sta     L0D79,x
        sec
        rts

        sta     L0D6F,x
        jsr     L4B7E
L4CBE:  sta     L0D79,x
        sec
        rts

        ldy     L0C25,x
        cpy     #$FE
        beq     L4CE6
L4CCA:  clc
        adc     L0CD9,x
        bpl     L4CD2
        lda     #$00
L4CD2:  cmp     #$10
        bcc     L4CE1
        lda     #$0F
        bne     L4CE1
L4CDA:  ldy     L0C25,x
        cpy     #$FE
        beq     L4CE6
L4CE1:  sta     L0CD9,x
        sec
        rts

L4CE6:  clc
        rts

L4CE8:  clc
        .byte   $7D
        .byte   $83
L4CEB:  .byte   $0D
L4CEC:  sta     L0D83,x
        sec
        rts

        sta     L0DA1,x
        rts

        ldy     L0E4C
        beq     L4D02
        eor     L0E4D
        and     #$09
        .byte   $4D
L4D00:  .byte   $4D
        .byte   $0E
L4D02:  ora     L0CCF,x
        sta     L0CCF,x
        rts

        eor     #$FF
        ldy     L0E4C
        bne     L4D17
        and     L0CC5,x
        sta     L0CC5,x
        rts

L4D17:  ora     #$F6
L4D19:  .byte   $3D
        .byte   $CF
L4D1B:  .byte   $0C
        sta     L0CCF,x
L4D1F:  rts

L4D20:  sta     L0DAB,x
        rts

        sta     L00D9
        jsr     L4B7E
        sta     L00DA
        jsr     L40D9
        beq     L4D50
        pha
        lda     L0DC9,x
        sta     (L00DD),y
        pla
        sta     L0DC9,x
        iny
        lda     L0C2F,x
        sta     (L00DD),y
        iny
L4D41:  lda     L0C39,x
L4D44:  sta     (L00DD),y
        lda     L00D9
        .byte   $9D
        .byte   $2F
L4D4A:  .byte   $0C
        lda     L00DA
        sta     L0C39,x
L4D50:  sec
L4D51:  rts

        pha
        jsr     L40D9
        beq     L4D7A
        pha
        lda     L0DD3,x
        sta     (L00DD),y
        pla
        sta     L0DD3,x
        iny
        lda     L0C2F,x
        sta     (L00DD),y
L4D68:  iny
        .byte   $BD
        .byte   $39
L4D6B:  .byte   $0C
        sta     (L00DD),y
L4D6E:  iny
        lda     L0DDD,x
        sta     (L00DD),y
        pla
        sta     L0DDD,x
        sec
        rts

L4D7A:  pla
        sec
        rts

        lda     L0DD3,x
        beq     L4D96
        jsr     L40EA
        dec     L0DDD,x
        .byte   $F0
L4D89:  asl     LB1C8
        cmp     L2F9D,x
        .byte   $0C
L4D90:  iny
        lda     (L00DD),y
        sta     L0C39,x
L4D96:  sec
        rts

        pha
        lda     (L00DD),y
        sta     L0DD3,x
        lda     L00DC
        sta     (L00DD),y
        pla
        sta     L00DC
        iny
        iny
        iny
        lda     (L00DD),y
        sta     L0DDD,x
        sec
        rts

        sta     L00D9
        jsr     L4B7E
        ldy     L0C25,x
        cpy     #$FE
        beq     L4DDA
        sta     L0E05,x
        lda     L00D9
        lsr     a
        lsr     a
        lsr     a
        sta     L0DF1,x
        lda     #$00
        sta     L0DE7,x
        sta     L0E0F,x
        lda     L00D9
        asl     a
        asl     a
        asl     a
        asl     a
        asl     a
        sta     L0DFB,x
        sec
        rts

L4DDA:  clc
        rts

        clc
        adc     L0E19,x
L4DE0:  sta     L0E19,x
        sta     L0E23,x
        sec
L4DE7:  rts

        sta     L00D9
        lda     L0E19,x
        sbc     L00D9
        jmp     L4DE0

        and     L0E19,x
        jmp     L4DE0

        ora     L0E19,x
        .byte   $4C
        .byte   $E0
L4DFD:  eor     L195D
        asl     LE04C
        eor     LA818
        lda     L0E19,x
        cpy     #$04
        beq     L4E2A
        cpy     #$02
        beq     L4E2C
        cpy     #$06
        beq     L4E28
        cpy     #$07
        beq     L4E27
        cpy     #$05
        beq     L4E29
        cpy     #$03
        .byte   $F0
L4E20:  asl     a
        cpy     #$01
        beq     L4E2D
        sec
        rts

L4E27:  lsr     a
L4E28:  lsr     a
L4E29:  lsr     a
L4E2A:  lsr     a
L4E2B:  lsr     a
L4E2C:  lsr     a
L4E2D:  lsr     a
        .byte   $4C
        .byte   $E0
L4E30:  eor     LA818
        lda     L0E19,x
        cpy     #$04
        beq     L4E57
        cpy     #$02
        beq     L4E59
        cpy     #$06
        .byte   $F0
L4E41:  .byte   $13
        .byte   $C0
L4E43:  .byte   $07
        .byte   $F0
L4E45:  asl     L05C0
        .byte   $F0
L4E49:  .byte   $0C
        cpy     #$03
        .byte   $F0
L4E4D:  asl     a
L4E4E:  .byte   $C0
L4E4F:  ora     (L00F0,x)
        php
        sec
L4E53:  rts

        asl     a
        asl     a
        asl     a
L4E57:  asl     a
        asl     a
L4E59:  asl     a
L4E5A:  asl     a
        jmp     L4DE0

        sta     L00D9
        lda     L0E19,x
        bne     L4E6A
        lda     L00D9
        jmp     L4E78

L4E6A:  sta     L00D8
L4E6C:  jsr     L4B7E
        jsr     L4B7E
        sta     L00D9
        dec     L00D8
        bne     L4E6C
L4E78:  jsr     L4B7E
        sta     L0C39,x
        lda     L00D9
L4E80:  sta     L0C2F,x
        sec
        rts

        sta     L00D9
        lda     L0E19,x
        bne     L4E91
        lda     L00D9
        jmp     L4E9F

L4E91:  sta     L00D8
L4E93:  jsr     L4B7E
        jsr     L4B7E
        sta     L00D9
        dec     L00D8
        bne     L4E93
L4E9F:  jsr     L4B7E
        sta     L0C39,x
        lda     L00D9
        sta     L0C2F,x
        inc     L0E19,x
        lda     L0E19,x
        .byte   $4C
        .byte   $E0
L4EB2:  eor     L26C9
        bcs     L4EE5
        cmp     #$06
        bcc     L4EC7
        sbc     #$06
        tay
        lda     L0E19,x
        sta     L00E0,y
        jmp     L4EE5

L4EC7:  cmp     #$05
        beq     L4EE5
        cmp     #$03
        bcs     L4EE5
        tay
        lda     L0E19,x
        cpy     #$02
        bcc     L4EDA
        jmp     L4CEC

L4EDA:  cpy     #$01
        bcc     L4EE1
        jmp     L4CBE

L4EE1:  sec
        jmp     L4CDA

L4EE5:  sec
        rts

        cmp     #$03
        bcs     L4F02
        tay
        lda     L0E19,x
        cpy     #$02
        bcc     L4EF6
        jmp     L4CE8

L4EF6:  cpy     #$01
        bcc     L4EFE
        clc
        jmp     L4CB0

L4EFE:  sec
        .byte   $4C
L4F00:  .byte   $C3
        .byte   $4C
L4F02:  sec
        rts

        jsr     L4F4D
        jmp     L4DE0

        jsr     L4F4D
        sta     L00D9
        lda     L0E19,x
        sbc     L00D9
        sta     L0E23,x
        sec
        rts

        jsr     L4F4D
        beq     L4F3B
        bne     L4F33
L4F20:  jsr     L4F4D
        bne     L4F3B
        beq     L4F33
        jsr     L4F4D
        bpl     L4F3B
        bmi     L4F33
        jsr     L4F4D
        bmi     L4F3B
L4F33:  jsr     L4B7E
        jsr     L4B7E
        sec
        rts

L4F3B:  jsr     L4B7E
        sta     L00D9
        .byte   $20
        .byte   $7E
L4F42:  .byte   $4B
L4F43:  .byte   $9D
L4F44:  .byte   $39
        .byte   $0C
L4F46:  .byte   $A5
L4F47:  cmp     L2F9D,y
L4F4A:  .byte   $0C
        sec
L4F4C:  rts

L4F4D:  .byte   $84
L4F4E:  cmp     L26C9,y
        .byte   $B0
L4F52:  .byte   $3B
L4F53:  .byte   $C9
L4F54:  asl     L00B0
        .byte   $22
        cmp     #$05
L4F59:  beq     L4F84
        cmp     #$03
        bcs     L4F8E
        cmp     #$02
        bcc     L4F69
        ldy     L00D9
        lda     L0D83,x
        rts

L4F69:  cmp     #$01
        bcc     L4F73
        ldy     L00D9
        lda     L0D79,x
        rts

L4F73:  ldy     L00D9
        lda     L0CD9,x
        rts

        sbc     #$06
        tay
        lda     L00E0,y
        pha
        ldy     L00D9
        pla
        rts

L4F84:  ldy     #$0A
        lda     L2800,y
        pha
        ldy     L00D9
        pla
        rts

L4F8E:  ldy     L00D9
        lda     L0E23,x
L4F93:  rts

        lda     L0E42
        and     #$01
        tay
        lda     #$00
        sta     L0E40,y
        lda     L0CB1,x
        and     #$FC
        ora     #$02
        sta     L0CB1,x
        sta     L0E40
        ldy     #$02
        sty     L0E42
L4FB1:  rts

        lda     L0E42
        and     #$01
        tay
        lda     #$00
        sta     L0E40,y
        lda     L0CB1,x
        and     #$FC
        sta     L0CB1,x
        ldy     #$00
        sty     L0E42
        sta     L0E40
        rts

        ldy     #$01
        sty     L0E42
        ora     L0CB1,x
        sta     L0CB1,x
        sta     L0E40,y
        rts

        lda     #$00
        sta     L0DE7,x
        sta     L0E0F,x
        sta     L0DFB,x
        lda     #$D0
        sta     L0E05,x
        lda     #$02
        sta     L0DF1,x
        lda     #$FE
        sta     L0C25,x
        sec
        rts

        sta     L00D9
        jsr     L4B7E
        sta     L0C39,x
        lda     L00D9
        sta     L0C2F,x
        sec
        rts

L5008:  brk
        .byte   $10
L500A:  plp
        plp
L500C:  brk
        brk
L500E:  asl     a
        asl     a:L0000
        brk
        brk
        .byte   $02
L5015:  brk
        .byte   $05
L5017:  .byte   $02
        brk
        brk
        .byte   $02
        brk
        inc     a:L0002,x
        brk
L5020:  .byte   $02
        brk
        sbc     a:L0000,x
        brk
        ora     (L0000,x)
        .byte   $02
        .byte   $02
        brk
        inc     a:L0002,x
        .byte   $02
        .byte   $02
        brk
        inc     a:L0002,x
        .byte   $02
        .byte   $02
        brk
        inc     a:L0002,x
        .byte   $02
        .byte   $02
        brk
        inc     a:L0002,x
        .byte   $02
        .byte   $02
        brk
        inc     a:L0002,x
        .byte   $02
        .byte   $02
        brk
        inc     a:L0002,x
        .byte   $02
        .byte   $02
        brk
L504F:  inc     a:L0002,x
        .byte   $02
        .byte   $02
        brk
        inc     a:L0002,x
        .byte   $02
        .byte   $02
        brk
        inc     a:L0002,x
        .byte   $02
        .byte   $02
        brk
        inc     a:L0002,x
        .byte   $02
        .byte   $02
        brk
        inc     a:L0002,x
        .byte   $02
        .byte   $02
        brk
        inc     a:L0002,x
        .byte   $02
        .byte   $02
        brk
        inc     a:L0002,x
        .byte   $02
        .byte   $02
        brk
        inc     a:L0002,x
        .byte   $02
        .byte   $02
        brk
        inc     a:L0002,x
        .byte   $02
        .byte   $02
        brk
        inc     a:L0002,x
        .byte   $02
        .byte   $02
        brk
        inc     a:L0001,x
        .byte   $02
        brk
L5090:  brk
        brk
        php
        .byte   $04
        php
        .byte   $FC
L5096:  php
        .byte   $FC
        jsr     LFEFC
        brk
        php
        asl     a
        .byte   $50
L509F:  .byte   $FF
        inc     L0800,x
        brk
        php
        ora     (L0018,x)
        .byte   $02
        php
        ora     (L00FE,x)
        brk
        php
        .byte   $03
        php
        sbc     L0508,y
        php
        .byte   $FC
        php
        ora     L0008
        sbc     L0508,y
        php
        .byte   $FC
        php
        ora     L0008
        .byte   $FA
        php
        ora     L0008
        .byte   $FC
        php
        ora     L0008
        .byte   $FA
        php
        ora     L0008
        .byte   $FA
        inc     L0800,x
        php
        jsr     L20FE
        brk
        ora     (L0080,x)
        inc     L0800,x
        asl     a
        .byte   $D0
L50DB:  .byte   $FF
        .byte   $FE
        brk
L50DE:  brk
L50DF:  brk
        iny
        cmp     L00C8,x
        cmp     #$74
        ldx     LB3C3,y
        ldy     L26A9
        ldy     #$28
        .byte   $97
        ldy     LAA8E
        stx     L001A
        .byte   $7F
        sed
        .byte   $77
        .byte   $3C
        adc     (L00E0),y
        ror     a
        cpx     #$64
        .byte   $37
        .byte   $5F
        dec     LD259,x
        .byte   $54
        .byte   $0F
        bvc     L5096
        .byte   $4B
        .byte   $53
        .byte   $47
        eor     (L0043),y
        txa
        .byte   $3F
        sed
        .byte   $3B
        txs
        sec
        adc     L6D35
        .byte   $32
        tya
        .byte   $2F
        .byte   $EC
        .byte   $2C
L5118:  ror     L002A
        .byte   $04
        plp
        cmp     L0025
        ldx     L0023
        lda     L0021
        cmp     (L001F,x)
        sbc     L4A1D,y
        .byte   $1C
        .byte   $B3
        .byte   $1A
        .byte   $33
        ora     L17C8,y
        .byte   $72
        asl     L002F,x
        ora     L00FF,x
        .byte   $13
        .byte   $DF
        .byte   $12
        .byte   $CF
        ora     (L00CF),y
        bpl     L5118
        .byte   $0F
        sbc     L210E,y
        asl     L0D56
        stx     L000C,y
        sbc     (L000B,x)
        rol     L000B,x
        sty     L000A,x
        .byte   $FC
        ora     #$6C
        ora     #$E4
        php
        .byte   $64
        php
        .byte   $EB
        .byte   $07
        adc     L0D07,y
        .byte   $07
        .byte   $A7
        asl     L0047
        asl     L00ED
        ora     L0097
        ora     L0047
        ora     L00FA
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
        bvc     L5175
        jsr     LF303
L5175:  .byte   $02
        iny
        .byte   $02
        ldy     #$02
        .byte   $7A
        .byte   $02
        lsr     L0002,x
        .byte   $34
        .byte   $02
        .byte   $14
        .byte   $02
        inc     L0001,x
        cmp     LBE01,y
        ora     (L00A5,x)
        ora     (L008D,x)
        ora     (L0076,x)
        ora     (L0061,x)
        ora     (L004C,x)
        ora     (L0039,x)
        ora     (L0027,x)
        ora     (L0016,x)
        ora     (L0006,x)
        ora     (L00F7,x)
        brk
        sbc     #$00
        .byte   $DC
        brk
        .byte   $CF
        brk
L51A2:  brk
L51A3:  brk
        brk
        asl     L0F00,x
        .byte   $80
        .byte   $07
        cpy     #$03
        brk
        asl     a
        brk
        ora     L0080
        .byte   $02
        brk
        asl     L00E0
        ora     (L00F0,x)
        brk
        sei
        brk
        .byte   $3C
        brk
        rti

        ora     (L00A0,x)
        brk
        brk
        .byte   $03
L51C2:  brk
        .byte   $FF
        .byte   $80
        rti

        jsr     L2040
        bpl     L520B
        bpl     L51D5
        .byte   $04
        .byte   $02
        php
        .byte   $04
        .byte   $20
L51D2:  brk
        brk
        brk
L51D5:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
L5207:  .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
L520B:  .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        .byte   $80
        jsr     L2020
        jsr     L2020
        .byte   $1F
        ora     L161A,x
        .byte   $12
        .byte   $0C
        asl     L0003
L5220:  ora     (L0000,x)
        jsr     L2020
        ora     L0C16,x
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
        and     L002D,x
        bit     L0018
        .byte   $0C
        .byte   $04
        ora     (L0000,x)
L5242:  rti

        rti

        rti

L5245:  .byte   $3B
        .byte   $2D
L5247:  clc
        .byte   $04
        brk
        brk
L524B:  brk
        brk
        brk
        brk
        brk
        brk
        brk
L5252:  .byte   $03
        brk
L5254:  brk
        php
L5256:  php
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
L526F:  brk
        .byte   $3C
        brk
        brk
        ora     (L0002,x)
        .byte   $03
        .byte   $04
        ora     L0007
        asl     L0007
        php
        ora     #$0A
        .byte   $0B
        .byte   $0C
        ora     L0F0E
        bpl     L5296
        .byte   $12
        .byte   $13
        .byte   $14
        ora     L0016,x
        .byte   $17
        clc
L528C:  .byte   $2C
L528D:  rti

L528E:  brk
L528F:  brk
        .byte   $04
        brk
        php
        brk
        .byte   $0B
        brk
L5296:  asl     L1200
        brk
        asl     L0000,x
        .byte   $1A
        brk
        ora     L2000,x
        brk
        .byte   $23
        brk
        rol     L0000
        and     #$00
        bit     L2F00
        brk
        bmi     L52AE
L52AE:  .byte   $32
        brk
        .byte   $34
        brk
        and     L0000,x
        .byte   $37
        brk
        and     L3B00,y
        brk
        and     L3E00,x
        brk
        .byte   $3F
        brk
L52C0:  brk
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
        and     L3D3D,x
        and     L0808,x
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
        ora     L3F3F,x
        ora     L1D1D,x
        ora     L201D,x
        jsr     L2020
        plp
        plp
        plp
        plp
        plp
        brk
        ora     (L0002,x)
        .byte   $03
        .byte   $04
        ora     L0006
L5320:  .byte   $07
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
L5341:  .byte   $04
        brk
        .byte   $02
        .byte   $04
L5345:  brk
        .byte   $02
        .byte   $04
        .byte   $07
L5349:  asl     L0007
        asl     L0007
        asl     L0006
        .byte   $07
        asl     L0007
        asl     L0007
L5354:  .byte   $04
L5355:  asl     L0000
        .byte   $02
        .byte   $02
L5359:  iny
        cli
        sbc     L3258,x
        eor     L5952,y
        iny
        cli
        sbc     L3258,x
        eor     L5952,y
        .byte   $9C
        eor     L5CC5,y
        sec
        .byte   $5F
        lda     L0061
        .byte   $73
        adc     L0099
        .byte   $67
        and     (L0074,x)
        .byte   $BF
        .byte   $74
        sbc     L7374,x
        adc     L005E,x
        adc     (L001A),y
        .byte   $72
        ror     L0072,x
        cpy     L0073
        ora     LAC6B
        .byte   $6B
        .byte   $67
        jmp     (L6B08)

        .byte   $3F
L538E:  ror     a
L538F:  .byte   $62
L5390:  ror     a
        .byte   $83
        ror     a
        tya
        ror     a
        cpy     #$6A
        inc     L006A
        .byte   $CF
        adc     L00FE,x
        adc     L002F,x
        ror     L00B9,x
        adc     #$EB
        adc     #$15
        ror     a
        bit     LDD6D
L53A8:  adc     L6E8E
        bit     L006F
        .byte   $A3
        .byte   $6F
        .byte   $22
        bvs     L5431
        bvs     L53A8
        bvs     L53ED
        adc     (L006D),y
        .byte   $54
        dec     L2656
        .byte   $57
        ldy     L0055
        eor     L0056,x
        .byte   $8F
        .byte   $54
        cmp     L2754,x
        eor     L0054,x
        .byte   $57
        sty     LEE57
        .byte   $57
        bvc     L5427
        rts

        cli
        ror     a
        cli
        .byte   $7C
        cli
        .byte   $74
        cli
        ldx     L0058
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
L53ED:  brk
        brk
        .byte   $0C
        brk
        ora     a:L0000
        brk
        .byte   $0F
        brk
        bpl     L53F9
L53F9:  ora     (L0000),y
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
        asl     L1F00,x
        brk
        brk
        brk
        and     (L0000,x)
        .byte   $22
        brk
        brk
        brk
        .byte   $24
L5420:  brk
        and     L0000
        brk
        brk
        .byte   $27
        brk
L5427:  plp
        brk
        brk
        brk
        rol     a
        brk
        .byte   $2B
        brk
        brk
        brk
L5431:  and     L2E00
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
L5441:  brk
        brk
        rol     L0000,x
L5445:  brk
        brk
L5447:  sec
        brk
L5449:  brk
        brk
        .byte   $3A
L544C:  brk
        brk
        brk
        .byte   $3C
        brk
        brk
        brk
L5453:  brk
        brk
        brk
        brk
        brk
        brk
L5459:  brk
L545A:  brk
L545B:  brk
L545C:  brk
L545D:  brk
L545E:  brk
        .byte   $02
        plp
        php
        brk
        .byte   $02
        .byte   $FC
        php
        sed
        .byte   $02
        bvs     L546B
        .byte   $12
L546B:  brk
        brk
        .byte   $87
        .byte   $5F
        .byte   $54
        stx     L0067
        .byte   $54
        bcc     L5475
L5475:  .byte   $82
        brk
        txa
        brk
        brk
        asl     a
        brk
        brk
        .byte   $02
        bmi     L5482
L5480:  brk
        .byte   $02
L5482:  sed
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
        bcc     L5497
L5497:  .byte   $82
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
        beq     L54B2
        .byte   $02
        .byte   $B0
L54B2:  .byte   $FF
        .byte   $02
        jsr     L0200
        .byte   $B0
L54B8:  .byte   $FF
        .byte   $02
        jsr     L0200
        .byte   $90
L54BE:  .byte   $FF
        .byte   $02
        bvc     L54C2
L54C2:  .byte   $02
        rts

        .byte   $FF
        .byte   $02
        bvc     L54C8
L54C8:  .byte   $02
        .byte   $70
L54CA:  .byte   $FF
        .byte   $02
        rti

        brk
        .byte   $02
        .byte   $70
L54D0:  .byte   $FF
        .byte   $02
        bvc     L54D4
L54D4:  .byte   $02
        .byte   $70
L54D6:  .byte   $FF
        .byte   $02
        bvc     L54DA
L54DA:  .byte   $02
        .byte   $70
L54DC:  .byte   $FF
        .byte   $87
        .byte   $9F
        .byte   $54
        stx     L00AD
        .byte   $54
        bcc     L54E5
L54E5:  .byte   $82
        brk
        txa
        ldy     #$00
        bpl     L54EC
L54EC:  brk
        .byte   $02
        plp
        .byte   $12
        brk
        .byte   $02
        .byte   $FC
        .byte   $04
        sed
        asl     L00FC
        .byte   $02
        beq     L54FC
        .byte   $02
        rts

L54FC:  brk
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
L550B:  .byte   $FF
        .byte   $02
        .byte   $80
        brk
        .byte   $02
        cpy     #$FF
        .byte   $02
        ldy     #$00
        .byte   $02
        .byte   $B0
L5517:  .byte   $FF
        .byte   $02
        cpy     #$00
        .byte   $02
        .byte   $90
L551D:  .byte   $FF
        .byte   $02
        bpl     L5522
        .byte   $02
L5522:  rts

        .byte   $FF
        .byte   $02
        bvs     L5528
        .byte   $87
L5528:  sbc     L8654
        .byte   $F7
        .byte   $54
        bcc     L552F
L552F:  .byte   $82
        brk
        txa
        ldy     #$00
        bpl     L5536
L5536:  brk
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
L5541:  asl     a
        brk
        .byte   $02
        .byte   $04
        .byte   $06
L5546:  brk
        .byte   $02
        .byte   $04
        asl     L0000
        .byte   $02
L554C:  .byte   $04
L554D:  .byte   $04
L554E:  brk
L554F:  .byte   $02
L5550:  .byte   $04
        php
        brk
        .byte   $02
L5554:  bmi     L5559
        .byte   $02
        brk
        brk
L5559:  .byte   $02
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
        bvs     L5568
L5568:  .byte   $02
L5569:  bvc     L5569
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
        bcc     L5577
L5577:  .byte   $02
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
L5584:  bcs     L5584
        .byte   $02
        brk
        brk
        .byte   $04
        bvs     L558C
L558C:  .byte   $02
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
        bcc     L55A1
L55A1:  .byte   $02
        brk
        brk
        .byte   $87
        .byte   $37
        eor     L0086,x
        .byte   $53
        eor     L0090,x
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
        bmi     L55DA
        asl     L0000
        brk
L55DA:  .byte   $02
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
        bvs     L55E9
L55E9:  .byte   $02
L55EA:  bvc     L55EA
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
        bcc     L55F8
L55F8:  .byte   $02
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
L5605:  bcs     L5605
        .byte   $02
        brk
        brk
        .byte   $04
        bvs     L560D
L560D:  .byte   $02
        rti

        .byte   $FF
        .byte   $02
        bvs     L5613
L5613:  .byte   $02
        rts

        brk
        .byte   $02
        beq     L5619
L5619:  .byte   $02
L561A:  bcc     L561A
        .byte   $02
        cpx     #$00
        .byte   $02
        brk
        brk
        .byte   $02
        bne     L5625
L5625:  .byte   $02
L5626:  beq     L5626
        .byte   $02
        bne     L562C
        .byte   $02
L562C:  bcs     L562C
        .byte   $02
        brk
        brk
        .byte   $02
        cpy     #$00
        .byte   $02
        bpl     L5638
        .byte   $02
L5638:  cpy     #$FE
        .byte   $02
        brk
        brk
        .byte   $02
        bpl     L5641
        .byte   $02
L5641:  cpx     #$01
        .byte   $02
        brk
        brk
        .byte   $02
        cpx     #$FD
        .byte   $02
        bmi     L564F
L564C:  .byte   $02
        brk
        brk
L564F:  .byte   $02
        jsr     L0201
        brk
        brk
        .byte   $87
        ldy     L0055,x
        stx     L00D4
        eor     L0090,x
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
        asl     L00FC
        .byte   $02
        beq     L5675
        asl     a:L0000
L5675:  .byte   $87
        adc     L0056
        stx     L006F
        lsr     L0090,x
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
        bvc     L56AB
        .byte   $02
        .byte   $90
L56A6:  .byte   $FF
        .byte   $02
        ldy     #$FF
        .byte   $02
L56AB:  cpy     #$FF
        .byte   $02
        ldy     #$FF
        .byte   $04
        .byte   $B0
L56B2:  .byte   $FF
        .byte   $02
        ldy     #$FF
        .byte   $02
        rti

        .byte   $03
        .byte   $02
        bne     L56BC
L56BC:  .byte   $02
        jsr     L0201
        beq     L56C2
L56C2:  .byte   $02
        bne     L56C5
L56C5:  .byte   $02
        bvc     L56C9
        .byte   $02
L56C9:  bmi     L56CC
        .byte   $02
L56CC:  bvs     L56CF
        .byte   $87
L56CF:  .byte   $89
        lsr     L0086,x
        lda     (L0056,x)
        bcc     L56D6
L56D6:  .byte   $82
        brk
        txa
        ldy     #$00
        bpl     L56DD
L56DD:  brk
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
        bvc     L5700
        .byte   $04
        brk
        brk
        .byte   $02
        .byte   $90
L56FE:  .byte   $FF
        .byte   $02
L5700:  ldy     #$FF
        .byte   $02
        cpy     #$FF
        .byte   $02
        ldy     #$FF
        .byte   $04
        .byte   $B0
L570A:  .byte   $FF
        .byte   $02
        ldy     #$FF
        .byte   $02
        rti

        .byte   $03
        .byte   $02
        bne     L5714
L5714:  .byte   $02
        jsr     L0201
        beq     L571A
L571A:  .byte   $02
        bne     L571D
L571D:  .byte   $02
        bvc     L5721
L5720:  .byte   $02
L5721:  bmi     L5724
        .byte   $02
L5724:  bvs     L5727
        .byte   $87
L5727:  dec     L8656,x
        inc     L0056,x
        bcc     L572E
L572E:  .byte   $82
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
        asl     L0204
        bvs     L5744
        .byte   $02
L5740:  bne     L5740
        .byte   $02
        .byte   $90
L5744:  brk
        .byte   $02
        bvc     L5748
L5748:  .byte   $02
L5749:  bne     L5749
        .byte   $04
        bvs     L574E
L574E:  .byte   $02
L574F:  .byte   $80
        inc     LB002,x
        brk
        .byte   $87
        rol     L0057,x
        stx     L003C
        .byte   $57
        bcc     L575C
L575C:  .byte   $82
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
        bne     L577A
L577A:  .byte   $02
        bpl     L577E
        .byte   $02
L577E:  .byte   $80
        brk
        .byte   $02
        bvs     L5783
L5783:  .byte   $02
        bmi     L5787
        .byte   $02
L5787:  beq     L5789
L5789:  .byte   $02
        rti

        ora     (L0087,x)
        .byte   $64
        .byte   $57
        stx     L0074
        .byte   $57
        bcc     L5794
L5794:  .byte   $82
        brk
        txa
        ldy     #$00
        .byte   $07
        brk
        brk
        .byte   $02
L579D:  .byte   $14
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
        bne     L57C2
        .byte   $02
        brk
        brk
        .byte   $02
L57BF:  beq     L57BF
        .byte   $02
L57C2:  brk
        brk
        .byte   $02
L57C5:  bne     L57C5
        .byte   $02
        brk
        brk
        .byte   $02
        bcs     L57CE
        .byte   $02
L57CE:  brk
        brk
        .byte   $02
        cpx     #$FE
        .byte   $02
        brk
        brk
        .byte   $02
        .byte   $10
L57D8:  .byte   $FF
        .byte   $02
        brk
        brk
        .byte   $02
        rts

        ora     (L0002,x)
        brk
        brk
        .byte   $02
        cpx     #$FE
        .byte   $02
        brk
        brk
        .byte   $02
L57E9:  bcs     L57E9
        .byte   $02
        brk
        brk
        .byte   $87
        .byte   $9C
        .byte   $57
        stx     L00B8
        .byte   $57
        bcc     L57F6
L57F6:  .byte   $82
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
        bne     L5824
        php
        brk
        brk
        .byte   $02
L5821:  beq     L5821
        .byte   $02
L5824:  brk
        brk
        .byte   $02
L5827:  bne     L5827
        .byte   $02
        brk
        brk
        .byte   $02
        bcs     L5830
        .byte   $02
L5830:  brk
        brk
        .byte   $02
        cpx     #$FE
        .byte   $02
        brk
        brk
        .byte   $02
        .byte   $10
L583A:  .byte   $FF
        .byte   $02
        brk
        brk
        .byte   $02
        rts

        ora     (L0002,x)
        brk
        brk
        .byte   $02
L5845:  cpx     #$FE
        .byte   $02
        brk
        brk
        .byte   $02
L584B:  bcs     L584B
        .byte   $02
        brk
        brk
        .byte   $87
        inc     L8657,x
        .byte   $1A
        cli
        bcc     L5858
L5858:  .byte   $82
        brk
        txa
        ldy     #$00
        ora     L0000,x
        brk
        .byte   $82
        asl     a
        .byte   $B2
        .byte   $07
        bcs     L5868
        .byte   $2C
        asl     a
L5868:  brk
        brk
        .byte   $82
        asl     a
        .byte   $B2
        .byte   $07
        bcs     L5872
        and     #$0A
L5872:  brk
        brk
        .byte   $B2
        .byte   $07
        lda     #$01
        bcs     L5881
        brk
        brk
        .byte   $AB
        brk
        bcs     L5886
        .byte   $B0
L5881:  .byte   $07
        .byte   $02
        .byte   $3C
        .byte   $02
        brk
L5886:  .byte   $02
        cpx     L0002
        .byte   $FC
        .byte   $04
        sed
        .byte   $04
        .byte   $FC
        .byte   $02
        bvc     L5893
        .byte   $02
        .byte   $70
L5893:  inc     LD002,x
        .byte   $FF
        .byte   $02
        .byte   $F0
L5899:  .byte   $FF
        .byte   $02
        cpx     #$FF
        .byte   $02
        brk
        brk
        .byte   $02
        cpx     #$FF
        .byte   $02
        .byte   $F0
L58A5:  .byte   $FF
        .byte   $87
        .byte   $82
        cli
        stx     L008E
        cli
        bcc     L58AE
L58AE:  .byte   $82
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
        cpy     L009E
        brk
        .byte   $02
        bcc     L58CC
        ldx     a:L0000,y
        .byte   $87
        tsx
        cli
        .byte   $86
L58CC:  .byte   $C2
        cli
        bcc     L58D0
L58D0:  .byte   $82
        brk
        txa
        ldy     #$00
        rts

        .byte   $87
        .byte   $62
        eor     L6686,y
        eor     L0090,y
        .byte   $82
        brk
        txa
        ldy     #$00
        adc     LA08A,x
        brk
        adc     LE499,x
        cli
        brk
        brk
        bmi     L58EF
L58EF:  .byte   $02
        .byte   $3C
        asl     L0200,x
        cpy     L006E
        brk
        .byte   $02
        brk
        asl     L00BE
        brk
        brk
        .byte   $87
        sbc     L8658
        .byte   $F7
        cli
        bcc     L5905
L5905:  .byte   $82
        brk
        txa
        ldy     #$00
        rts

        .byte   $87
        .byte   $7C
        eor     L8386,y
        eor     L0090,y
        .byte   $82
        brk
        txa
        ldy     #$00
        adc     LA08A,x
        brk
        adc     L1999,x
        .byte   $59
L5920:  brk
        brk
        lsr     L0200,x
        .byte   $3C
        asl     L0200,x
        cpy     L000C
        brk
        .byte   $02
        bpl     L5934
        dey
        brk
        brk
        .byte   $87
        .byte   $22
L5934:  eor     L2C86,y
        eor     L0090,y
        .byte   $82
        brk
        txa
        ldy     #$00
        eor     L0000
L5941:  brk
L5942:  sty     L0200
        .byte   $3C
        rol     L0000
        .byte   $02
L5949:  cpy     L000C
        brk
L594C:  .byte   $02
        cpy     #$03
        ldx     a:L0000,y
L5952:  .byte   $87
        .byte   $42
        eor     L4C86,y
        eor     L0090,y
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
        bcc     L5970
        .byte   $FC
        brk
        brk
        .byte   $87
        .byte   $62
        .byte   $59
        .byte   $86
L5970:  ror     L0059
        bcc     L5974
L5974:  .byte   $82
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
        ora     L0002
        bpl     L598B
        .byte   $FC
        brk
        brk
        .byte   $FF
        .byte   $FF
L598B:  asl     L0087
        .byte   $7C
        eor     L8386,y
        eor     L0090,y
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
        .byte   $20
L59A1:  stx     $4302
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
        sty     L0044
        sty     L0043
        sty     L0044
        .byte   $04
        lsr     L0084
        .byte   $44
        .byte   $04
        .byte   $43
        sty     L0041
        .byte   $04
        .byte   $43
        .byte   $03
        .byte   $44
        .byte   $14
        brk
        .byte   $04
        .byte   $44
        .byte   $02
        eor     (L0013,x)
        .byte   $42
        .byte   $14
        brk
        .byte   $04
        .byte   $42
        .byte   $02
        eor     (L0013,x)
        .byte   $42
        .byte   $13
        .byte   $42
        .byte   $02
        eor     (L0084,x)
        .byte   $42
        sty     L0041
        sty     L0042
        .byte   $04
        .byte   $44
        sty     L0042
        sty     L0041
        sty     L003F
        .byte   $04
        sta     (L0000,x)
        inc     L843D,x
        .byte   $3F
        sty     L0081
        brk
        inc     L843D,x
        .byte   $3F
        .byte   $04
        sta     (L0000,x)
        inc     L8441,x
        .byte   $3F
        sty     L0081
        brk
        .byte   $FE
        .byte   $3D
L5A00:  sty     L003C
        sty     L0081
        brk
        asl     a:L008F
        .byte   $80
        brk
        .byte   $2B
        stx     L4802
        .byte   $14
        pha
        .byte   $14
        lsr     L0014
        lsr     L0014
        .byte   $44
        .byte   $14
        .byte   $44
        .byte   $14
        lsr     L0014
        lsr     L0014
        .byte   $8F
        brk
        pha
        .byte   $14
        pha
        .byte   $14
        lsr     L0014
        lsr     L0014
        .byte   $44
        .byte   $14
        .byte   $44
        .byte   $14
        .byte   $43
        .byte   $14
        .byte   $43
        .byte   $14
        eor     (L0013,x)
        brk
        .byte   $42
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     L3C84,x
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     L3C84,x
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3D
        .byte   $84
L5A49:  .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     L3C84,x
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        .byte   $14
L5A57:  .byte   $3C
        sty     L003A
        .byte   $14
        sec
        .byte   $14
        sec
        .byte   $14
        .byte   $3A
        sty     L0038
        .byte   $14
        .byte   $37
        .byte   $14
        .byte   $37
        .byte   $14
        sec
        sty     L0037
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
        and     L3C84,x
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     L3C84,x
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     L3C84,x
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     L3C84,x
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3C
        sty     L003A
        .byte   $14
        sec
        .byte   $14
        sec
        .byte   $14
        .byte   $3A
        sty     L0038
        .byte   $14
        .byte   $37
        .byte   $14
        .byte   $37
        .byte   $14
        sec
        sty     L0037
        .byte   $14
        sec
        .byte   $14
        sec
        .byte   $14
        .byte   $3A
        sty     L0038
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3C
        sty     L003A
        .byte   $14
        sec
        .byte   $14
        sec
        .byte   $14
        .byte   $3A
        sty     L0038
        .byte   $14
        .byte   $37
        .byte   $14
        .byte   $37
        .byte   $14
        sec
        sty     L0037
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
        and     L3C09,x
        ora     #$3C
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     L3C09,x
        ora     #$3C
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     L3C09,x
        ora     #$3C
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     L3C09,x
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
        and     L3C09,x
        ora     #$3A
        ora     #$3C
        ora     #$3C
        .byte   $14
        .byte   $3C
        .byte   $14
        .byte   $3D
L5B5A:  ora     #$3C
        ora     #$3A
        ora     #$3C
        ora     #$3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     L3C09,x
        ora     #$3A
        ora     #$3C
        ora     #$3C
        .byte   $14
        .byte   $3C
        .byte   $14
        and     L3C09,x
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
L5B99:  and     L0009,x
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
        bmi     L5B99
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
        lsr     L0004
        .byte   $43
        .byte   $13
        eor     (L0013,x)
        .byte   $3F
        .byte   $13
        .byte   $3F
        .byte   $13
        eor     (L0013,x)
        .byte   $43
        .byte   $13
        lsr     L0004
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
        lsr     L0013
        lsr     L0013
        eor     #$13
        eor     #$13
        pha
        .byte   $04
        pha
        .byte   $03
        lsr     L0004
        pha
        .byte   $04
        pha
        .byte   $03
        lsr     L0004
        .byte   $44
        .byte   $13
        .byte   $44
        .byte   $13
        pha
        .byte   $13
        pha
        .byte   $13
        lsr     L0004
        lsr     L0003
        eor     L0004
        lsr     L0004
        lsr     L0003
        .byte   $43
        .byte   $04
        .byte   $3F
        .byte   $13
        brk
        .byte   $04
        .byte   $3F
        .byte   $04
        eor     (L0013,x)
        .byte   $43
        .byte   $13
        lsr     L0004
        .byte   $44
        .byte   $03
L5C80:  .byte   $43
        ora     #$44
        ora     #$46
        ora     #$44
        ora     #$43
        ora     #$46
        ora     #$44
        .byte   $13
        stx     L4802
        .byte   $43
        .byte   $44
        .byte   $04
        .byte   $3F
        .byte   $13
        .byte   $3F
        .byte   $13
        eor     #$43
        lsr     L0004
        .byte   $43
        .byte   $13
        eor     (L0013,x)
        .byte   $3F
        .byte   $13
        .byte   $3F
        .byte   $13
        eor     (L0013,x)
        .byte   $43
        .byte   $13
        lsr     L0004
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
        sta     L59A1,y
        brk
        brk
L5CC5:  .byte   $82
        .byte   $03
        .byte   $80
        .byte   $80
        .byte   $20
L5CCA:  stx     a:L0002
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
        sty     L0081
        brk
        inc     L8438,x
        .byte   $3A
        .byte   $04
        sta     (L0000,x)
        inc     L843C,x
        .byte   $3A
        sty     L0081
        brk
        inc     L8438,x
        .byte   $37
        sty     L0081
        brk
        asl     a:L008F
        .byte   $80
        brk
        .byte   $2B
        stx     L3502
        .byte   $13
        .byte   $33
        .byte   $13
        and     (L0013),y
        .byte   $33
        .byte   $13
        .byte   $8F
        brk
        and     L0013,x
        .byte   $33
        .byte   $13
        and     (L0013),y
        bmi     L5D55
        bmi     L5D57
        brk
        .byte   $42
        stx     L3303
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
L5D55:  .byte   $03
        .byte   $33
L5D57:  .byte   $14
        .byte   $33
        .byte   $14
        .byte   $33
        .byte   $14
        brk
        .byte   $04
        stx     L3305
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
        stx     L3305
        .byte   $13
        .byte   $33
L5D79:  .byte   $13
        .byte   $33
        .byte   $13
L5D7C:  .byte   $33
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
        stx     L2C02
        .byte   $07
        bmi     L5D99
        .byte   $33
        .byte   $07
        sec
        .byte   $07
        .byte   $33
        .byte   $07
        .byte   $30
L5D99:  .byte   $07
        bit     L3007
        .byte   $07
        .byte   $33
        .byte   $07
        sec
        .byte   $07
        .byte   $33
        .byte   $07
        bmi     L5DAD
        .byte   $8F
        brk
        stx     L2B03
        .byte   $07
        .byte   $31
L5DAD:  .byte   $07
        .byte   $33
        .byte   $07
        .byte   $37
        .byte   $07
        .byte   $33
        .byte   $07
        and     (L0007),y
        bit     L3007
        .byte   $07
        .byte   $33
        .byte   $07
        sec
        .byte   $07
        .byte   $33
        .byte   $07
        bmi     L5DC9
        .byte   $8F
        brk
        stx     L2B02
        .byte   $07
        .byte   $31
L5DC9:  .byte   $07
        .byte   $33
        .byte   $07
        .byte   $37
        .byte   $07
        .byte   $33
        .byte   $07
        and     (L0007),y
        .byte   $2B
        .byte   $07
        and     (L0007),y
        .byte   $33
        .byte   $07
        .byte   $37
        .byte   $07
        .byte   $33
        .byte   $07
        and     (L0007),y
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
        bmi     L5D7C
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
L5E00:  .byte   $04
        and     L0004,x
        brk
        .byte   $04
        and     L0004,x
        brk
        .byte   $04
        and     L0004,x
        brk
        .byte   $04
        and     L0004,x
        brk
        .byte   $04
        and     (L0004),y
        brk
        .byte   $04
        and     (L0004),y
        brk
        .byte   $04
        and     (L0004),y
        brk
        .byte   $04
        and     (L0004),y
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
        and     (L0004),y
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
        and     L0004,x
        brk
        .byte   $04
        and     L0004,x
        brk
        .byte   $04
        and     L0004,x
        brk
L5E4E:  .byte   $04
        and     L0004,x
        brk
        .byte   $04
        and     (L0004),y
        brk
        .byte   $04
        and     (L0004),y
        brk
        .byte   $04
        and     (L0004),y
        brk
        .byte   $04
        and     (L0004),y
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
        bmi     L5E79
        brk
        .byte   $04
        bmi     L5E7D
L5E79:  brk
        .byte   $04
        bmi     L5E81
L5E7D:  brk
        .byte   $04
        bmi     L5E85
L5E81:  brk
        .byte   $04
        and     L0004,x
L5E85:  brk
        .byte   $04
        and     L0004,x
        brk
        .byte   $04
        and     L0004,x
        brk
        .byte   $04
        and     L0004,x
        brk
        .byte   $04
        and     (L0004),y
        brk
        .byte   $04
        and     (L0004),y
        brk
        .byte   $04
        and     (L0004),y
        brk
        .byte   $04
        and     (L0004),y
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
        and     (L0004),y
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
        and     L0004,x
        brk
        .byte   $04
        and     L0004,x
        brk
        .byte   $04
        and     L0004,x
        brk
        .byte   $04
        and     L0004,x
        brk
        .byte   $04
        and     (L0004),y
        brk
        .byte   $04
        and     (L0004),y
        brk
        .byte   $04
        and     (L0004),y
        brk
        .byte   $04
        and     (L0004),y
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
        and     (L0004),y
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
        and     L0004,x
        brk
        .byte   $04
        and     L0004,x
        brk
        .byte   $04
        and     L0004,x
        brk
        .byte   $04
        and     L0004,x
        brk
        .byte   $04
        and     (L0004),y
        brk
        .byte   $04
        and     (L0004),y
        brk
        .byte   $04
        and     (L0004),y
        brk
        .byte   $04
        and     (L0004),y
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
        and     (L0004),y
        bmi     L5F42
        brk
        .byte   $02
        sty     L0000
        sta     L5CCA,y
        brk
        brk
        .byte   $82
        .byte   $03
        .byte   $80
        .byte   $80
        .byte   $20
L5F3D:  stx     L2902
        .byte   $03
        sec
L5F42:  .byte   $14
        brk
        .byte   $04
        bit     L0003
        sec
        .byte   $03
        and     #$03
        sec
        .byte   $13
        bit     L0003
        sec
        .byte   $03
        and     #$03
        sec
        .byte   $03
        bit     L0003
        sec
        .byte   $03
        and     #$03
        sec
        .byte   $14
        brk
L5F5E:  .byte   $04
        bit     L0003
        sec
        .byte   $03
        .byte   $27
        .byte   $03
        rol     L0014,x
        brk
        .byte   $04
        .byte   $22
        .byte   $03
        rol     L0003,x
        .byte   $27
        .byte   $03
        rol     L0013,x
        .byte   $22
        .byte   $03
        rol     L0003,x
        .byte   $27
        .byte   $03
        rol     L0003,x
        .byte   $22
        .byte   $03
        rol     L0003,x
        sta     (L0000,x)
        inc     L0300,x
        sta     (L0000,x)
        inc     L0300,x
        sta     (L0000,x)
        inc     L0300,x
        sta     (L0000,x)
        inc     L0300,x
        sta     (L0000,x)
        asl     a:L008F
        .byte   $80
        brk
        .byte   $2B
        stx     L3102
        .byte   $13
        bmi     L5FB2
        rol     L3013
        .byte   $13
        .byte   $8F
        brk
        and     (L0013),y
        bmi     L5FBC
        rol     L2E13
        .byte   $13
        bit     a:L0013
        .byte   $03
        .byte   $1D
L5FB2:  .byte   $13
        brk
        .byte   $03
        bmi     L5FBA
        brk
        .byte   $03
        .byte   $30
L5FBA:  .byte   $03
        brk
L5FBC:  .byte   $03
        bmi     L5FC2
        brk
        .byte   $03
        .byte   $30
L5FC2:  .byte   $03
        brk
        .byte   $03
        and     (L0003),y
        brk
        .byte   $03
        bmi     L5FCE
        brk
        .byte   $03
        .byte   $31
L5FCE:  .byte   $03
        brk
        .byte   $03
        bmi     L5FE7
        bmi     L5FE9
        bmi     L5FEB
        brk
        .byte   $04
        stx     L3002
        .byte   $13
        bmi     L5FF2
        bmi     L5FF4
        bmi     L5FF6
        .byte   $8F
        brk
        .byte   $8E
        .byte   $03
L5FE7:  and     (L0013),y
L5FE9:  and     (L0013),y
L5FEB:  bmi     L6000
        bmi     L6002
        .byte   $8F
        brk
        .byte   $31
L5FF2:  .byte   $13
        .byte   $31
L5FF4:  .byte   $13
        .byte   $30
L5FF6:  .byte   $14
        bmi     L600D
        bmi     L600F
        brk
        .byte   $04
        stx     L3002
L6000:  .byte   $13
        .byte   $30
L6002:  .byte   $13
        bmi     L6018
        bmi     L601B
        bmi     L601D
        .byte   $8F
        brk
        .byte   $8E
        .byte   $03
L600D:  and     (L0013),y
L600F:  and     (L0013),y
        bmi     L6026
        bmi     L6029
        bmi     L602B
        .byte   $8F
L6018:  brk
        and     (L0013),y
L601B:  and     (L0013),y
L601D:  bmi     L6033
        bmi     L6035
        bmi     L6037
        brk
        .byte   $04
        .byte   $8E
L6026:  .byte   $02
        .byte   $2C
        .byte   $13
L6029:  .byte   $2C
        .byte   $13
L602B:  bit     L2C13
        .byte   $13
        .byte   $8F
        brk
        .byte   $8E
        .byte   $03
L6033:  .byte   $27
        .byte   $13
L6035:  .byte   $27
        .byte   $13
L6037:  .byte   $2C
L6038:  .byte   $13
        bit     L8F13
        brk
        .byte   $27
        .byte   $13
        .byte   $27
L6040:  .byte   $13
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
        bit     L2C14
        .byte   $14
        bit     a:L0014
L6054:  .byte   $04
        brk
L6056:  .byte   $02
        .byte   $80
        .byte   $80
        bmi     L5FE9
        .byte   $02
        bit     L3004
        .byte   $04
        .byte   $27
        .byte   $04
        bmi     L6068
        bit     L3004
        .byte   $04
L6068:  .byte   $27
        .byte   $04
        bmi     L6070
        rol     L3104
        .byte   $04
L6070:  and     #$04
        and     (L0004),y
        rol     L3104
        .byte   $04
        and     #$04
        and     (L0004),y
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
L6080:  bit     L2B04
        .byte   $04
L6084:  .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
        bit     L2B04
        .byte   $04
        bit     L3004
        .byte   $04
L6090:  and     #$04
        bmi     L6098
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
L6098:  bit     L3004
        .byte   $04
        .byte   $8F
        brk
        .byte   $2C
        .byte   $04
L60A0:  bmi     *+6
        .byte   $27
        .byte   $04
        bmi     L60AA
        bit     L3004
        .byte   $04
L60AA:  .byte   $27
        .byte   $04
        bmi     L60B2
        .byte   $2E
        .byte   $04
L60B0:  and     (L0004),y
L60B2:  and     #$04
        and     (L0004),y
        rol     L3104
        .byte   $04
        and     #$04
        and     (L0004),y
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
        bit     L3004
        .byte   $04
        .byte   $27
        .byte   $04
        bmi     L60DA
        bit     L3004
        .byte   $04
L60DA:  .byte   $27
        .byte   $04
        bmi     L60E2
        and     #$04
        .byte   $2C
        .byte   $04
L60E2:  bit     L0004
        bit     L2904
        .byte   $04
        bit     L2404
        .byte   $04
        bit     L2E04
        .byte   $04
        and     (L0004),y
        and     #$04
        and     (L0004),y
        rol     L3104
        .byte   $04
        and     #$04
        and     (L0004),y
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
        bit     L2B04
        .byte   $04
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
        bit     L2B04
        .byte   $04
        bit     L3004
        .byte   $04
        and     #$04
        bmi     L611A
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
L611A:  bit     L3004
        .byte   $04
        bit     L3004
        .byte   $04
        .byte   $27
        .byte   $04
        bmi     L612A
        bit     L3004
        .byte   $04
L612A:  .byte   $27
        .byte   $04
        bmi     L6132
        rol     L3104
        .byte   $04
L6132:  and     #$04
        and     (L0004),y
        rol     L3104
        .byte   $04
        and     #$04
        and     (L0004),y
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
        bit     L2B04
        .byte   $04
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
        bit     L2B04
        .byte   $04
        bit     L3004
        .byte   $04
        and     #$04
        bmi     L615A
        .byte   $27
        .byte   $04
L6158:  .byte   $2B
        .byte   $04
L615A:  bit     L3004
        .byte   $04
        bit     L3004
        .byte   $04
        .byte   $27
        .byte   $04
        bmi     L616A
        bit     L3004
        .byte   $04
L616A:  .byte   $27
        .byte   $04
        bmi     L6172
        rol     L3104
        .byte   $04
L6172:  and     #$04
        and     (L0004),y
        rol     L3104
        .byte   $04
        and     #$04
        and     (L0004),y
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
        bit     L2B04
        .byte   $04
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
        bit     L2B04
        .byte   $04
        bit     L3004
        .byte   $04
        and     #$04
        bmi     L619A
        .byte   $27
        .byte   $04
        .byte   $2B
        .byte   $04
L619A:  bit     a:L0003
        .byte   $02
        sty     L0000
        sta     L5F3D,y
        brk
        brk
        .byte   $80
        .byte   $80
        bit     L0782
L61AA:  stx     L4802
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
        sty     L0046
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
        bmi     L61E4
        brk
        .byte   $04
        .byte   $8F
        brk
L61E4:  pha
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
        sty     L0046
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
        sty     L0046
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
        bmi     L625A
        brk
        .byte   $04
        pha
        .byte   $09
L625A:  brk
        ora     #$48
        ora     #$00
        ora     #$49
        sty     L004B
        ora     #$00
        ora     #$4D
        sty     L004B
        ora     #$00
        ora     #$49
        sty     L0048
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$48
        sty     L0046
        ora     #$00
        ora     #$44
        ora     #$00
        ora     #$44
        ora     #$00
        ora     #$46
        sty     L0048
        ora     #$00
        ora     #$48
        ora     #$00
        ora     #$48
        ora     #$00
        ora     #$49
        sty     L004B
        ora     #$00
        ora     #$4D
        sty     L004B
        ora     #$00
        ora     #$49
        sty     L0048
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$48
        sty     L0046
L62B3:  ora     #$00
        ora     #$44
        .byte   $04
        brk
        .byte   $04
        bmi     L62C0
        brk
        .byte   $04
        pha
        .byte   $09
L62C0:  brk
        ora     #$48
        ora     #$00
        ora     #$49
        sty     L004B
        ora     #$00
        ora     #$4D
        sty     L004B
        ora     #$00
        ora     #$49
        sty     L0048
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$48
        sty     L0046
        ora     #$00
        ora     #$44
        ora     #$00
        ora     #$44
        ora     #$00
        ora     #$46
        sty     L0048
        ora     #$00
        ora     #$48
        ora     #$00
        ora     #$48
        ora     #$00
        ora     #$49
        sty     L004B
        ora     #$00
        ora     #$4D
        sty     L004B
        ora     #$00
        ora     #$49
        sty     L0048
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$46
        ora     #$00
        ora     #$44
        sty     L0043
        ora     #$00
        ora     #$41
        .byte   $04
        brk
        .byte   $04
        bmi     L6326
        brk
        .byte   $04
        .byte   $8E
        .byte   $02
L6326:  pha
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
        sty     L0046
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
        bmi     L635E
        brk
        .byte   $04
        .byte   $8F
        brk
L635E:  pha
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
        sty     L0046
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
        sty     L0046
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
        bmi     L63D4
        brk
        .byte   $04
        pha
        .byte   $07
L63D4:  pha
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
        lsr     L0007
        .byte   $44
        .byte   $07
        .byte   $43
        .byte   $07
        .byte   $44
        .byte   $07
        rti

        .byte   $07
        eor     (L0007,x)
        .byte   $43
        .byte   $07
        .byte   $44
        .byte   $07
        lsr     L0007
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
        bvc     L6425
        .byte   $4F
        .byte   $07
        eor     L4B07
        .byte   $07
        .byte   $49
L6425:  .byte   $07
        pha
        .byte   $07
        lsr     L0007
        .byte   $44
        .byte   $07
        .byte   $43
        .byte   $07
        .byte   $44
        .byte   $07
        lsr     L0007
        pha
        .byte   $07
        lsr     L0007
        .byte   $44
        .byte   $07
        .byte   $43
        .byte   $07
        lsr     L0007
        .byte   $44
        .byte   $07
        eor     (L0007,x)
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
        eor     (L0007,x)
        .byte   $43
        .byte   $07
        .byte   $44
        .byte   $07
        lsr     L0007
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
        lsr     L0007
        .byte   $44
        .byte   $07
        lsr     L0007
        .byte   $44
        .byte   $07
        .byte   $43
        .byte   $07
        .byte   $44
        .byte   $07
        rti

        .byte   $07
        eor     (L0007,x)
        .byte   $43
        .byte   $07
        .byte   $44
        .byte   $07
        lsr     L0007
        pha
        .byte   $07
        eor     #$07
        eor     L5207
        .byte   $07
        bvc     L6487
        .byte   $4F
        .byte   $07
        eor     L4B07
        .byte   $07
        .byte   $4D
L6487:  .byte   $07
        .byte   $4B
        .byte   $07
        eor     #$07
        pha
        .byte   $07
        lsr     L0007
        .byte   $44
        .byte   $07
        lsr     L0007
        .byte   $44
        .byte   $07
        .byte   $43
        .byte   $07
        .byte   $44
        .byte   $07
        .byte   $43
        .byte   $07
        eor     (L0007,x)
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
        lsr     L0087
        .byte   $43
        .byte   $07
        .byte   $43
        .byte   $07
        lsr     L0087
        .byte   $43
        .byte   $07
        .byte   $43
        .byte   $07
        eor     #$87
        lsr     L0007
        lsr     L0007
        eor     #$87
        lsr     L0007
        lsr     L0007
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
        eor     a:L0004
        .byte   $04
        brk
        .byte   $03
        lsr     L0004
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
        eor     (L0003,x)
        brk
        .byte   $03
        eor     #$43
        lsr     L0004
        .byte   $42
        .byte   $03
        brk
        .byte   $03
        pha
        .byte   $43
        .byte   $44
        .byte   $04
        eor     (L0004,x)
        brk
        .byte   $04
        .byte   $41
L6505:  .byte   $04
        brk
L6507:  .byte   $04
        .byte   $46
L6509:  .byte   $43
        .byte   $43
        .byte   $04
        rti

        .byte   $04
        .byte   $43
        .byte   $04
        lsr     L0004
        .byte   $43
        .byte   $04
        pha
        .byte   $43
        .byte   $44
        .byte   $04
        eor     (L0004,x)
        brk
        .byte   $04
        eor     (L0004,x)
        brk
        .byte   $04
        .byte   $49
L6521:  .byte   $43
        .byte   $46
L6523:  .byte   $04
        .byte   $42
L6525:  .byte   $04
        lsr     L0004
        eor     #$04
        lsr     L0004
        pha
L652D:  .byte   $04
        .byte   $44
        .byte   $04
        eor     (L0004,x)
        .byte   $44
        .byte   $04
        rti

        .byte   $04
        .byte   $43
        .byte   $04
        lsr     L0004
        .byte   $43
        .byte   $04
        .byte   $41
L653D:  .byte   $04
L653E:  .byte   $44
L653F:  .byte   $04
L6540:  pha
        .byte   $04
        .byte   $44
        .byte   $04
        lsr     L0004
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
        eor     (L0004,x)
        .byte   $44
        .byte   $04
        rti

        .byte   $04
        .byte   $43
        .byte   $04
        lsr     L0004
        rti

        .byte   $04
        eor     (L0004,x)
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
        eor     a:L0004
        .byte   $04
        brk
L656D:  .byte   $42
        sta     L61AA,y
        brk
        brk
        .byte   $80
        .byte   $80
        bit     L0382
L6578:  stx     a:L0002
        .byte   $04
        .byte   $3C
L657D:  .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        and     a:L0004,x
        .byte   $04
        and     a:L0004,x
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
        bit     a:L0004
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
        and     a:L0004,x
        .byte   $04
        and     a:L0004,x
        .byte   $04
        and     a:L0004,x
        .byte   $04
        and     a:L0004,x
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
        and     a:L0004,x
        .byte   $04
        and     a:L0004,x
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
        bit     a:L0004
        .byte   $04
        stx     a:L0002
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
        bit     a:L0004
        .byte   $04
        .byte   $8F
        brk
        stx     a:L0002
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
        .byte   $3C
        .byte   $04
        brk
        .byte   $04
L662C:  and     a:L0004,x
        .byte   $04
        and     a:L0004,x
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
        bit     a:L0004
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
        and     a:L0004,x
        .byte   $04
        and     a:L0004,x
        .byte   $04
        and     a:L0004,x
        .byte   $04
        and     a:L0004,x
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
        and     a:L0004,x
        .byte   $04
        and     a:L0004,x
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
        bit     a:L0004
        .byte   $04
        brk
        .byte   $01
L6686:  stx     L2C03
        .byte   $04
        brk
        .byte   $04
        bit     a:L0004
        .byte   $04
        bit     a:L0004
        .byte   $04
        rol     a:L0004
        .byte   $04
        .byte   $8F
        brk
        bit     a:L0004
        .byte   $04
        brk
        .byte   $42
        bit     a:L0004
        .byte   $04
        bit     a:L0004
        .byte   $04
        bit     a:L0004
        .byte   $04
        rol     a:L0004
        .byte   $04
        bit     a:L0004
        .byte   $04
        bit     a:L0004
        .byte   $04
        bit     a:L0004
        .byte   $04
        bit     a:L0004
        .byte   $04
        rol     a:L0004
        .byte   $04
        rol     a:L0004
        .byte   $04
        rol     a:L0004
        .byte   $04
        rol     a:L0004
        .byte   $04
        bit     a:L0004
        .byte   $04
        bit     a:L0004
        .byte   $04
        rol     a:L0004
        .byte   $04
        brk
        .byte   $03
        and     (L0004),y
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
        and     L0004,x
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
L6720:  and     a:L0004,x
        .byte   $04
        and     a:L0004,x
        .byte   $04
        and     a:L0004,x
        .byte   $04
        and     a:L0004,x
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
        .byte   $04
        and     a:L0004,x
        .byte   $04
        and     a:L0004,x
        .byte   $04
        and     a:L0004,x
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
        sta     L6578,y
        brk
        brk
        .byte   $80
        .byte   $80
        bit     L0382
L679E:  stx     L2902
        .byte   $04
        sec
        .byte   $04
        bit     L0004
        sec
        .byte   $04
        .byte   $2B
        .byte   $04
        .byte   $3A
        .byte   $04
        and     L0004
        .byte   $3A
        .byte   $04
        bit     L0004
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
        bit     L0004
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
        and     L0004
        .byte   $3A
        .byte   $04
        bit     L0004
        .byte   $34
        .byte   $04
        .byte   $1F
        .byte   $04
        .byte   $34
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     L0004
        sec
        .byte   $04
        .byte   $2B
        .byte   $04
        .byte   $3A
        .byte   $04
        and     L0004
        .byte   $3A
        .byte   $04
        bit     L0004
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
        stx     L2902
        .byte   $04
        sec
        .byte   $04
        bit     L0004
        sec
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     L0004
        sec
        .byte   $04
        bit     L0004
        .byte   $34
        .byte   $04
        .byte   $1F
        .byte   $04
        .byte   $34
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     L0004
        sec
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     L0004
        sec
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     L0004
        sec
        .byte   $04
        bit     L0004
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
        stx     L2902
        .byte   $04
        sec
        .byte   $04
        bit     L0004
        sec
        .byte   $04
        .byte   $2B
        .byte   $04
        .byte   $3A
        .byte   $04
        and     L0004
        .byte   $3A
        .byte   $04
        bit     L0004
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
        bit     L0004
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
        and     L0004
        .byte   $3A
        .byte   $04
        bit     L0004
        .byte   $34
        .byte   $04
        .byte   $1F
        .byte   $04
        .byte   $34
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     L0004
        sec
        .byte   $04
        .byte   $2B
        .byte   $04
        .byte   $3A
        .byte   $04
        and     L0004
        .byte   $3A
        .byte   $04
        bit     L0004
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
        ora     (L008E,x)
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
        rol     a:L0004
        .byte   $04
        brk
        .byte   $03
        and     (L0004),y
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
        and     L0004,x
        brk
        .byte   $04
        brk
        .byte   $03
        bmi     L6924
        brk
        .byte   $04
        brk
        .byte   $03
L6924:  and     #$04
        brk
        .byte   $04
        brk
        .byte   $42
        and     #$04
        sec
        .byte   $04
        bit     L0004
        sec
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     L0004
        sec
        .byte   $04
        rol     a
        .byte   $04
        .byte   $3A
        .byte   $04
        and     L0004
        .byte   $3A
        .byte   $04
        rol     a
        .byte   $04
L6944:  .byte   $3A
        .byte   $04
        and     L0004
        .byte   $3A
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     L0004
        sec
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     L0004
        sec
        .byte   $04
        bit     L0004
        .byte   $34
        .byte   $04
        .byte   $1F
        .byte   $04
        .byte   $34
        .byte   $04
        bit     L0004
        .byte   $34
        .byte   $04
        .byte   $1F
        .byte   $04
        .byte   $34
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     L0004
        sec
        .byte   $04
        and     #$04
        sec
        .byte   $04
        bit     L0004
        sec
        .byte   $04
        rol     a
        .byte   $04
        .byte   $3A
        .byte   $04
        and     L0004
        .byte   $3A
        .byte   $04
        rol     a
        .byte   $04
        .byte   $3A
        .byte   $04
        and     L0004
        .byte   $3A
        .byte   $04
        stx     L2903
        .byte   $04
        sec
        .byte   $04
        bit     L0004
        sec
        .byte   $04
        bit     L0004
        .byte   $34
        .byte   $04
        .byte   $1F
        .byte   $04
        .byte   $34
        .byte   $04
        .byte   $8F
        brk
L699E:  and     #$04
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
        ora     a:L0003,x
        .byte   $03
        sta     L679E,y
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
        and     L0017,x
        .byte   $37
        .byte   $17
        .byte   $3C
        .byte   $03
        and     L0007,x
        .byte   $3A
        .byte   $17
        and     L3E17,y
        .byte   $03
        sta     (L0000,x)
        inc     L173A,x
        rol     L3C17,x
        .byte   $17
        sta     (L0000,x)
        sbc     L1740,x
        rol     L8117,x
        brk
        sbc     L173C,x
        eor     (L0003,x)
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
        and     L0003,y
        .byte   $03
        .byte   $3A
        .byte   $03
        sta     (L0000,x)
        inc     L1737,x
        .byte   $3A
        .byte   $17
        and     L8117,y
        brk
        sbc     L173C,x
        .byte   $3A
        .byte   $17
        sta     (L0000,x)
        sbc     L1737,x
        and     L0003,y
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
        inc     L1700,x
        brk
        .byte   $17
        brk
        .byte   $17
        sta     (L0000,x)
        sbc     L1730,x
        .byte   $32
        .byte   $17
        sta     (L0000,x)
        sbc     L1734,x
        and     L0003,x
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
        eor     L4B07
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
        lsr     L0007
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
        lsr     L0007
        pha
        .byte   $07
        lsr     L0007
        .byte   $44
        .byte   $07
        lsr     L0007
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
        bit     L2B13
        .byte   $13
        and     #$13
        .byte   $27
        .byte   $13
        bit     L2013
        .byte   $13
        brk
        .byte   $04
        brk
        brk
        .byte   $80
        pha
        and     (L0082,x)
        .byte   $03
        and     L3C19,y
        ora     L08A4,y
        .byte   $07
        eor     (L0014,x)
        rti

        ora     L1943,y
        lsr     L0017
        .byte   $43
        .byte   $17
        lsr     L0017
        lsr     a
        .byte   $17
        eor     L0017
        pha
        .byte   $17
        jmp     L4617

        .byte   $17
        lsr     a
        .byte   $17
        eor     a:L0002
        brk
        .byte   $80
        pha
        and     (L0000,x)
        .byte   $04
        .byte   $82
        .byte   $03
        ldy     L0008
        .byte   $07
        and     L3C14,y
        ora     L1940,y
        .byte   $43
        .byte   $17
        rti

        .byte   $17
        .byte   $3C
        .byte   $17
        lsr     L0017
        eor     (L0017,x)
        rol     L3C17,x
        .byte   $17
        rti

        .byte   $17
        .byte   $43
        .byte   $17
        eor     L0002
        brk
        brk
        .byte   $80
        pha
        and     (L0000,x)
        .byte   $04
        .byte   $82
        .byte   $03
        ldy     L0008
        .byte   $07
        and     (L0014,x)
        bit     L0019
        plp
        ora     L171C,y
        .byte   $1F
        stx     L001F
        .byte   $17
        and     (L0086,x)
        and     (L0017,x)
        .byte   $22
        .byte   $17
        bit     L0017
        and     #$02
        brk
        brk
L6B08:  .byte   $80
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
        lsr     L0006
        pha
        .byte   $07
        lsr     L0004
        .byte   $43
        .byte   $14
L6B20:  .byte   $44
        .byte   $14
        .byte   $44
        .byte   $13
        .byte   $44
        .byte   $04
        .byte   $43
        asl     L0044
        .byte   $07
        .byte   $43
        .byte   $04
        rti

        .byte   $14
        eor     (L0014,x)
        eor     (L0013,x)
        eor     (L0004,x)
        .byte   $43
        asl     L0044
        .byte   $07
        lsr     L0004
        .byte   $43
        .byte   $14
        .byte   $44
        .byte   $14
        .byte   $44
        .byte   $13
        .byte   $44
        .byte   $04
        lsr     L0006
        pha
        .byte   $07
        eor     #$04
        lsr     L0014
        pha
        .byte   $14
        pha
        .byte   $13
        pha
        .byte   $04
        eor     #$06
        pha
        .byte   $07
        lsr     L0004
        eor     #$14
        lsr     L0014
        lsr     L0013
        lsr     L0004
        pha
        asl     L0046
        .byte   $07
        .byte   $44
        .byte   $04
        rti

        .byte   $14
        eor     (L0014,x)
        eor     (L0013,x)
        eor     (L0084,x)
        .byte   $43
        .byte   $14
        .byte   $43
        .byte   $13
        .byte   $43
        sty     L0044
        .byte   $14
        .byte   $44
        .byte   $13
        .byte   $44
        sty     L0046
        .byte   $14
        lsr     L0013
        lsr     L0084
        pha
        .byte   $14
        pha
        .byte   $13
        pha
        sty     L0046
        .byte   $14
        lsr     L0013
        .byte   $43
        sty     L0044
        .byte   $14
        .byte   $44
        .byte   $13
        .byte   $44
        sty     L0043
        .byte   $14
        .byte   $43
        .byte   $13
        rti

        sty     L0041
        .byte   $13
        brk
        .byte   $03
        .byte   $44
        .byte   $07
        .byte   $43
        .byte   $07
        eor     (L0007,x)
        rti

        .byte   $07
        and     L3C07,x
        .byte   $07
        eor     a:L0004
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
        and     a:L0014,x
        .byte   $04
        and     a:L0014,x
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
        and     a:L0014,x
        .byte   $04
        and     a:L0014,x
        .byte   $04
        .byte   $3F
        .byte   $14
        brk
        .byte   $04
        .byte   $3F
        .byte   $14
        brk
        .byte   $04
        eor     (L0014,x)
        brk
        .byte   $04
        eor     (L0014,x)
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
        eor     (L0014,x)
        brk
        .byte   $04
        eor     (L0014,x)
        brk
        .byte   $04
        and     a:L0014,x
        .byte   $04
        and     a:L0014,x
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
        and     a:L0014,x
        .byte   $04
        and     a:L0014,x
        .byte   $04
        .byte   $3F
        .byte   $14
        brk
        .byte   $04
        .byte   $3F
        .byte   $14
        brk
        .byte   $04
        eor     (L0014,x)
        brk
        .byte   $04
        eor     (L0014,x)
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
        eor     (L0014,x)
L6C3D:  brk
        .byte   $04
        eor     (L0014,x)
        brk
        .byte   $04
        and     a:L0014,x
        .byte   $04
        and     a:L0014,x
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
        lsr     L0007
        .byte   $44
        .byte   $07
        .byte   $43
        .byte   $07
        eor     (L0007,x)
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
        and     #$29
        .byte   $04
        sec
        .byte   $14
        bit     L0004
        sec
        .byte   $14
        and     #$04
        sec
        .byte   $14
        bit     L0004
        sec
        .byte   $14
        .byte   $2B
        .byte   $04
        .byte   $3A
        .byte   $14
        and     L0004
        .byte   $3A
        .byte   $14
        plp
        .byte   $04
        .byte   $3A
        .byte   $14
        bit     L0004
        .byte   $3A
        .byte   $14
        and     #$04
        sec
        .byte   $14
        bit     L0004
        sec
        .byte   $14
        .byte   $2B
        .byte   $04
        .byte   $3A
        .byte   $14
        and     L0004
        .byte   $3A
        .byte   $14
        bit     L3C04
        .byte   $14
        .byte   $27
        .byte   $04
        .byte   $3C
        .byte   $14
        rol     L3D04
        .byte   $14
        and     #$04
        and     L2914,x
        .byte   $04
        sec
        .byte   $14
        bit     L0004
        sec
        .byte   $14
        .byte   $22
        .byte   $04
        and     L2914,x
        .byte   $04
        and     L2B14,x
        .byte   $04
        .byte   $3A
        .byte   $14
        and     L0004
        .byte   $3A
        .byte   $14
        plp
        .byte   $04
        .byte   $3A
        .byte   $14
        bit     L0004
        .byte   $3A
        .byte   $14
        .byte   $29
L6CCD:  .byte   $04
        sec
        .byte   $14
        bit     L0004
        sec
        .byte   $14
        .byte   $2B
        .byte   $04
        .byte   $3A
        .byte   $14
        and     L0004
        .byte   $3A
        .byte   $14
        bit     L3C04
        .byte   $14
        .byte   $27
        .byte   $04
        .byte   $3C
        .byte   $14
        rol     L3D04
        .byte   $14
        and     #$04
        and     L2914,x
        .byte   $04
        sec
        .byte   $14
        bit     L0004
        sec
        .byte   $14
        .byte   $22
        .byte   $04
        and     L2914,x
        .byte   $04
        and     L2B14,x
        .byte   $04
        .byte   $3A
        .byte   $14
L6D00:  and     L0004
        .byte   $3A
        .byte   $14
        plp
        .byte   $04
        .byte   $3A
        .byte   $14
        bit     L0004
        .byte   $3A
        .byte   $14
        and     #$07
        .byte   $2B
        .byte   $07
        bit     L2E07
        .byte   $07
        bmi     L6D1D
        and     (L0007),y
        .byte   $34
        .byte   $07
        and     L0007,x
        .byte   $37
L6D1D:  .byte   $07
        sec
        .byte   $07
        .byte   $3A
        .byte   $07
        .byte   $3C
        .byte   $07
        brk
L6D25:  .byte   $02
        and     #$04
        brk
        .byte   $04
        brk
        brk
        .byte   $80
        .byte   $14
        rol     L0382
        ldy     L0010
        ora     L0046
L6D35:  .byte   $14
        lsr     L0014
        lsr     L0014
        lsr     L0009
        lsr     L0009
        lsr     L0014
        lsr     L0014
        lsr     L0014
        lsr     L0009
        lsr     L0009
        lsr     L0014
        lsr     L0014
        lsr     L0014
        lsr     L0009
        lsr     L0009
        lsr     L0014
        lsr     L0014
        lsr     L0014
        lsr     L0009
        lsr     L0009
        .byte   $47
L6D5D:  ldy     L0046
        .byte   $14
        lsr     L0014
        lsr     L0014
        lsr     L0014
        lsr     L0014
        lsr     L0014
        lsr     L0009
L6D6C:  .byte   $46
L6D6D:  ora     #$47
L6D6F:  ldy     L0046
        .byte   $14
L6D72:  lsr     L0014
        lsr     L0014
        .byte   $47
        ldy     L0046
        .byte   $14
        .byte   $47
        ldy     L0046
        .byte   $14
        .byte   $47
        ldy     L0046
        .byte   $14
        .byte   $47
        ldy     L0046
        .byte   $14
        lsr     L0084
        .byte   $44
        .byte   $14
        .byte   $42
        .byte   $14
        eor     (L0014,x)
L6D8E:  .byte   $3F
        .byte   $13
        .byte   $4B
        .byte   $03
        lsr     L0002
        lsr     L0084
        .byte   $44
        .byte   $14
        .byte   $42
        .byte   $14
        eor     (L0014,x)
        .byte   $3F
        .byte   $14
        .byte   $82
        ora     L0046
        .byte   $14
        lsr     L0014
        lsr     L0014
        ldy     L0010
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
        lsr     L0003
L6DC5:  .byte   $4B
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
        lsr     L0013
        .byte   $3F
        .byte   $13
        brk
        brk
        .byte   $80
        .byte   $14
        rol     L0382
        ldy     L0010
        ora     L0000
        .byte   $02
        .byte   $42
        .byte   $14
        .byte   $42
        .byte   $14
        .byte   $42
        .byte   $14
L6DED:  .byte   $42
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
        ldy     L0036
        .byte   $14
        rol     L0014,x
        rol     L0014,x
        rol     L0014,x
        rol     L0014,x
        rol     L0014,x
        rol     L0009,x
        rol     L0009,x
        sec
        ldy     L0036
        .byte   $14
        rol     L0014,x
        rol     L0014,x
        sec
        ldy     L0036
        .byte   $14
        sec
        ldy     L0036
        .byte   $14
        sec
        ldy     L0036
        .byte   $14
        sec
        ldy     L0036
        .byte   $14
        .byte   $33
        sty     L0035
        .byte   $14
        rol     L0014,x
        sec
        .byte   $14
        .byte   $3A
        .byte   $13
        .byte   $3B
        .byte   $03
        rol     L3602,x
        sty     L0035
        .byte   $14
        .byte   $3B
        .byte   $04
        sec
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $82
        ora     L003F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
L6E4E:  .byte   $14
        ldy     L0010
        .byte   $03
        rol     L3F09,x
        ora     #$3F
L6E57:  .byte   $14
        rol     L3F09,x
        ora     #$3F
        .byte   $14
        rol     L3F09,x
        ora     #$3F
        .byte   $14
        rol     L3F09,x
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
        ora     L0444
        eor     (L0004,x)
        .byte   $42
        .byte   $04
        .byte   $44
L6E7D:  .byte   $04
        .byte   $3F
        .byte   $04
        .byte   $3B
        .byte   $04
        .byte   $3A
        .byte   $04
        rol     L0004,x
        and     L0013,x
        rol     L3613,x
        .byte   $13
        brk
        brk
L6E8E:  .byte   $80
        .byte   $14
        rol     L0382
        ldy     L0010
        ora     L0000
        ora     (L0000,x)
        .byte   $02
        rol     L0014,x
        rol     L0014,x
        rol     L0014,x
        rol     L0009,x
        rol     L0009,x
        .byte   $82
        ora     L0432
        .byte   $33
        .byte   $04
        rol     a
        .byte   $04
        rol     L2704
        .byte   $04
        rol     a
        .byte   $04
        rol     L3304
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
        rol     L0004
        .byte   $27
        .byte   $04
        and     #$04
        rol     a
        .byte   $04
        rol     a
        .byte   $04
        .byte   $2F
        .byte   $04
        rol     L2604
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
        bit     L2E04
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
        rol     L0004
        .byte   $27
        .byte   $04
        and     #$04
        rol     a
        .byte   $04
        bit     L2E04
        .byte   $04
        .byte   $32
        .byte   $04
        .byte   $33
        .byte   $04
L6F00:  and     L0004,x
        rol     L0004,x
        sec
        .byte   $04
        .byte   $3A
        .byte   $04
        .byte   $3B
        .byte   $04
        rol     L2F04,x
L6F0D:  .byte   $04
        bit     L2E04
        .byte   $04
        and     #$04
        rol     a
        .byte   $04
        rol     L0004
        .byte   $27
        .byte   $04
        .byte   $23
        .byte   $04
        .byte   $22
        .byte   $13
        .byte   $22
        .byte   $13
L6F20:  .byte   $27
        .byte   $13
        brk
        brk
        .byte   $80
        .byte   $14
        rol     L0D82
        .byte   $3F
        .byte   $14
        .byte   $3F
        ora     #$3F
        ora     #$3F
        .byte   $14
        .byte   $3F
        .byte   $14
        rol     L3F84,x
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        ora     #$3F
        .byte   $09
L6F41:  .byte   $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        rol     L3F84,x
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $42
        sty     L003F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        ora     #$3F
        ora     #$3E
        sty     L003F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        ora     #$3F
        ora     #$44
        sty     L003F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        ora     #$3F
        ora     #$46
        sty     L003F
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        ora     #$3F
        ora     #$47
        sty     L003F
        .byte   $14
        .byte   $3F
        .byte   $14
        lsr     L0009
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
        lsr     L0014
        .byte   $42
        .byte   $14
        eor     (L0014,x)
        rol     L3F14,x
        .byte   $13
        .byte   $42
        .byte   $13
        lsr     L0013
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
        rol     L0D82
        .byte   $3A
        .byte   $14
        .byte   $3A
        ora     #$3A
        ora     #$3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3B
        sty     L003A
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
        sty     L003A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3B
        sty     L003A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        ora     #$3A
        ora     #$3B
        sty     L003A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        ora     #$3A
        ora     #$3E
        sty     L003A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        ora     #$3A
        ora     #$38
        sty     L003A
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3A
        ora     #$3A
        ora     #$38
        sty     L003A
        .byte   $14
        .byte   $3B
        .byte   $14
        eor     (L0009,x)
        .byte   $44
        ora     #$82
        .byte   $0F
        lsr     L0014
        .byte   $44
        .byte   $14
        .byte   $42
        .byte   $14
        eor     (L0014,x)
        .byte   $42
        .byte   $14
        .byte   $3F
        .byte   $14
        rol     L3B14,x
        .byte   $14
        .byte   $3A
        .byte   $13
        .byte   $3B
        .byte   $13
        rol     L3813,x
        .byte   $13
        .byte   $3A
        .byte   $13
        brk
        .byte   $44
        rol     L0009,x
        rol     L0003,x
        brk
        brk
        .byte   $80
        .byte   $14
        rol     L0D82
        .byte   $27
        .byte   $13
        rol     a
        sty     L002E
        .byte   $04
        bit     L2E03
        sty     L002C
        .byte   $04
        .byte   $27
        .byte   $13
        rol     a
        sty     L002E
        .byte   $04
        bit     L2E03
        sty     L002C
        .byte   $04
        .byte   $27
        .byte   $13
        rol     a
        sty     L002E
        .byte   $04
        .byte   $2F
        .byte   $13
        rol     L3284
        .byte   $04
        .byte   $2F
        sty     L002E
        .byte   $14
        rol     a
        .byte   $14
        .byte   $27
        .byte   $14
        rol     L0084
        .byte   $27
        .byte   $14
        rol     a
        .byte   $14
        rol     L2F14
        sty     L0032
        .byte   $14
        .byte   $33
        sty     L0035
        .byte   $14
        .byte   $82
        .byte   $0F
        .byte   $27
        .byte   $13
        and     #$13
        rol     a
        .byte   $13
        bit     L3613
        .byte   $13
L706F:  .byte   $33
        .byte   $13
        .byte   $32
        .byte   $13
        rol     L2713
        .byte   $13
        brk
        .byte   $44
        rol     L2E09
        .byte   $03
        brk
        brk
        .byte   $80
        .byte   $14
        rol     L0D82
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
        rol     L3E14,x
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
        and     L0014,x
        and     L0014,x
        .byte   $33
        .byte   $14
        .byte   $33
        .byte   $14
        .byte   $3F
        .byte   $14
        .byte   $3F
        .byte   $14
        rol     L3E14,x
        .byte   $14
        .byte   $3B
        .byte   $14
        .byte   $3B
        .byte   $14
        .byte   $3A
        sty     L003B
        .byte   $14
        .byte   $3A
        .byte   $14
        sec
        .byte   $14
        rol     L0084,x
        sec
        .byte   $14
        and     L0014,x
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
        rol     L3813,x
        .byte   $14
        .byte   $3A
        .byte   $14
        .byte   $3B
        .byte   $14
        .byte   $3A
        .byte   $14
        sec
        .byte   $14
        rol     L0014,x
        sec
        .byte   $14
        rol     L0014,x
        and     L0014,x
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
        rol     L3F14,x
        .byte   $03
        brk
        brk
        .byte   $80
        .byte   $14
        rol     L0D82
        brk
        ora     (L0000,x)
        ora     (L0000,x)
        ora     (L0036,x)
        sty     L0038
        .byte   $14
        rol     L0014,x
        and     L0014,x
        .byte   $33
        .byte   $14
        and     L0014,x
        and     (L0014),y
        rol     L8214
        asl     a
        rol     L0002,x
        sec
        .byte   $02
        rol     L0003,x
        and     L0003,x
        .byte   $33
        .byte   $14
        .byte   $33
        .byte   $14
        .byte   $32
        .byte   $14
        .byte   $32
        .byte   $14
        .byte   $82
        ora     L142E
        rol     L3614
        .byte   $14
        rol     L0014,x
        and     L0014,x
        and     L0014,x
        rol     L0014,x
        .byte   $3A
        .byte   $14
        rol     L0003,x
        brk
        brk
        .byte   $80
        .byte   $14
        rol     L068E
        .byte   $27
        .byte   $13
        and     L2E84
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
        bit     L2C14
        .byte   $14
        .byte   $2F
        .byte   $14
        rol     L2C14
        .byte   $14
        and     #$14
        .byte   $27
        .byte   $03
        brk
        brk
        .byte   $82
        ora     L0080
        cpy     #$26
        stx     a:L0008
        ora     (L008F,x)
        brk
L7169:  stx     L4102
        .byte   $02
        and     L3F02,x
        .byte   $02
        .byte   $3C
        .byte   $02
        and     L3904,x
        .byte   $04
        .byte   $3A
        .byte   $04
        .byte   $3C
        .byte   $04
        and     L3A04,x
        .byte   $04
        .byte   $3C
        .byte   $04
        and     L3F04,x
        .byte   $02
        and     L4102,y
        .byte   $82
        eor     (L0004,x)
        .byte   $3A
        .byte   $04
        .byte   $3C
        .byte   $04
        and     L3F04,x
        .byte   $42
        and     L3C04,x
        .byte   $04
        .byte   $3A
        .byte   $02
        and     L3A02,y
        .byte   $02
        .byte   $37
        .byte   $04
        and     L3A04,y
        .byte   $04
        .byte   $3C
        .byte   $04
        .byte   $8F
        brk
        stx     L4602
        .byte   $02
        lsr     L0014
        lsr     L0014
        eor     L0014
        lsr     L0014
        pha
        .byte   $43
        eor     L0004
        eor     (L0002,x)
        eor     #$03
        lsr     L0003
        and     L3F03,x
        .byte   $03
        eor     (L0042,x)
        brk
        .byte   $03
        lsr     L0043
        pha
        .byte   $14
        eor     #$14
        pha
        .byte   $14
        lsr     L0014
        eor     (L0014,x)
        .byte   $3F
        .byte   $43
        .byte   $42
        .byte   $04
        lsr     L0003
        pha
        .byte   $04
        lsr     L0014
        eor     (L0043,x)
        .byte   $42
        .byte   $04
        eor     (L0014,x)
        .byte   $3F
        .byte   $14
        .byte   $3C
        .byte   $14
        and     L3A14,x
        .byte   $42
        brk
        .byte   $04
        eor     (L0004,x)
        .byte   $8F
        brk
        lsr     L0043
        pha
        .byte   $14
        eor     #$14
        pha
        .byte   $14
        lsr     L0014
        eor     (L0014,x)
        .byte   $3F
        .byte   $43
        .byte   $42
        .byte   $04
        lsr     L0003
        pha
        .byte   $04
        lsr     L0014
        eor     (L0043,x)
        .byte   $42
        .byte   $04
        eor     (L0014,x)
        .byte   $3F
        .byte   $14
        .byte   $3C
        .byte   $14
        and     L3A14,x
        .byte   $42
        brk
        .byte   $03
        sta     L7169,y
        brk
        brk
        .byte   $82
        ora     L0080
        cpy     #$26
        stx     a:L0008
        ora     (L008F,x)
        brk
L7225:  stx     a:L0008
        ora     (L008F,x)
        brk
        .byte   $3A
        .byte   $13
        .byte   $3A
        .byte   $13
        .byte   $3A
        .byte   $13
        .byte   $3A
        .byte   $13
        and     L0013,x
        and     L0013,x
        and     L0013,x
        and     L0013,x
        .byte   $3A
        .byte   $13
        .byte   $3A
        .byte   $13
        rol     L0013,x
        rol     L0013,x
        and     L0013,x
        and     L0013,x
        and     L0013,x
        and     L0013,x
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
        and     L0013,x
        and     L0013,x
        and     L0013,x
        and     L0013,x
        .byte   $3A
        .byte   $13
        .byte   $3A
        .byte   $13
        .byte   $3A
        .byte   $13
        .byte   $3A
        .byte   $13
        stx     a:L0014
        ora     (L008F,x)
        brk
        sta     L7225,y
        brk
        brk
        .byte   $82
        ora     L0080
        cpy     #$26
        .byte   $22
L727C:  .byte   $04
        and     #$04
        and     L0004
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     L0004
        and     #$04
        and     (L0004,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        and     (L0004,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     L0004
        and     #$04
        .byte   $22
        .byte   $04
        rol     a
        .byte   $04
        .byte   $27
        .byte   $04
        rol     a
        .byte   $04
        and     (L0004,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        and     (L0004,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     L0004
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     L0004
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
        and     L0004
        and     #$04
        and     (L0004,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     L0004
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     L0004
        and     #$04
L72FB:  stx     L2204
        .byte   $04
        and     #$04
        and     L0004
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     L0004
        and     #$04
        and     (L0004,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        and     (L0004,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     L0004
        and     #$04
        .byte   $22
        .byte   $04
        rol     a
        .byte   $04
        .byte   $27
        .byte   $04
        rol     a
        .byte   $04
        and     (L0004,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        and     (L0004,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     L0004
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     L0004
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
        and     L0004
        and     #$04
        and     (L0004,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     L0004
        .byte   $29
L7374:  .byte   $04
        .byte   $22
        .byte   $04
        and     #$04
        and     L0004
        and     #$04
        .byte   $8F
        brk
        .byte   $22
L7380:  .byte   $04
        and     #$04
        and     L0004
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     L0004
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
        and     L0004
        and     #$04
        and     (L0004,x)
        and     #$04
        .byte   $27
        .byte   $04
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     L0004
        and     #$04
        .byte   $22
        .byte   $04
        and     #$04
        and     L0004
        and     #$04
        sta     L72FB,y
        brk
        brk
        .byte   $80
        cpy     #$26
        .byte   $87
        sed
        .byte   $73
        stx     L0006
        .byte   $74
        .byte   $9C
        brk
        .byte   $82
        brk
        txa
        .byte   $80
        stx     a:L0008
        ora     (L008F,x)
        brk
L73D9:  stx     a:L0010
        ora     (L008F,x)
        brk
        stx     a:L0014
        .byte   $04
        ora     (L0004,x)
        brk
        .byte   $04
        ora     (L0004,x)
        brk
        .byte   $04
        ora     (L0004,x)
        brk
        .byte   $04
        ora     (L0004,x)
        .byte   $8F
        brk
        sta     L73D9,y
        brk
        brk
        .byte   $02
        bit     L0002
        brk
        .byte   $02
        cpx     L0002
        .byte   $FC
        .byte   $04
        sed
        .byte   $04
        .byte   $FC
        brk
        brk
        .byte   $02
        .byte   $80
        ora     (L0002,x)
        .byte   $90
L740B:  .byte   $FF
        .byte   $02
        .byte   $D0
L740E:  .byte   $FF
        .byte   $02
        .byte   $F0
L7411:  .byte   $FF
        .byte   $02
        cpx     #$FF
        .byte   $02
        brk
        brk
        .byte   $02
        cpx     #$FF
        .byte   $02
        .byte   $F0
L741D:  .byte   $FF
        brk
        brk
        brk
        .byte   $82
        ora     L0080
        cpy     #$26
        .byte   $3F
        .byte   $03
        and     L3A02,x
        .byte   $04
        and     L3B04,x
        .byte   $04
        .byte   $3A
        ora     #$38
        ora     #$36
        .byte   $03
        and     (L0003),y
        .byte   $3A
        .byte   $04
        and     L3804,x
        .byte   $04
        .byte   $3A
        .byte   $04
        rol     L0003,x
        and     (L0003),y
L7444:  .byte   $33
        .byte   $03
        .byte   $33
        .byte   $04
        and     L0004,x
        sec
        .byte   $04
        rol     L0004,x
        and     L0004,x
        .byte   $33
        .byte   $04
        and     (L0003),y
        and     (L0003),y
        and     (L0003),y
        and     L3A03,x
        .byte   $04
        and     L3B04,x
        .byte   $04
        .byte   $3A
        ora     #$38
        ora     #$36
        .byte   $03
        and     (L0003),y
        .byte   $3A
        .byte   $04
        and     L3804,x
        .byte   $04
        .byte   $3A
        .byte   $04
        rol     L0003,x
        and     (L0003),y
        .byte   $33
        .byte   $03
        .byte   $33
        .byte   $04
        and     L0004,x
        sec
        .byte   $04
        rol     L0004,x
        and     L0004,x
        .byte   $33
        .byte   $04
        and     L3B03,x
        .byte   $03
        .byte   $3A
        ora     (L0038,x)
        .byte   $03
        and     L0004,x
        rol     L0004,x
        sec
        .byte   $03
        and     L0004,x
        rol     L0004,x
        sec
        .byte   $03
        rol     L0004,x
        and     L0004,x
        .byte   $33
        .byte   $03
        .byte   $33
        .byte   $04
        .byte   $33
        .byte   $04
        sec
        .byte   $44
        rol     L0009,x
        and     L0004,x
        rol     L0004,x
        sec
        .byte   $03
        and     L0004,x
        rol     L0004,x
        sec
        .byte   $03
        rol     L0004,x
        and     L0004,x
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
L74C6:  stx     a:L0003
        ora     (L008F,x)
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
        stx     a:L0003
        ora     (L008F,x)
        brk
        brk
        .byte   $02
        and     L0001,x
        .byte   $3B
        .byte   $12
        .byte   $3B
        .byte   $12
        .byte   $3B
        .byte   $12
        .byte   $3A
        .byte   $03
        and     L3D04,x
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
        sta     L74C6,y
        brk
        brk
        .byte   $82
        ora     L0080
        cpy     #$26
        brk
        .byte   $42
L7504:  rol     a
        .byte   $13
        and     L0013
        rol     a
        .byte   $13
        rol     a
        .byte   $13
        rol     a
        .byte   $13
        and     L0013
        asl     L2213,x
        .byte   $13
        .byte   $23
        .byte   $13
        .byte   $23
        .byte   $13
        jsr     L2013
        .byte   $13
        and     L0013
        and     L0013
        and     L0013
        brk
        .byte   $03
        rol     a
        .byte   $13
        and     L0013
        rol     a
        .byte   $13
        rol     a
        .byte   $13
        rol     a
        .byte   $13
        and     L0013
        asl     L2213,x
        .byte   $13
        .byte   $23
        .byte   $13
        .byte   $23
        .byte   $13
        bit     L0013
        bit     L0013
        and     L0013
        and     L0013
L7540:  .byte   $22
L7541:  .byte   $01
L7542:  .byte   $22
L7543:  .byte   $13
        .byte   $22
L7545:  .byte   $04
L7546:  .byte   $2E
L7547:  .byte   $04
        .byte   $22
L7549:  .byte   $13
        .byte   $22
L754B:  .byte   $04
L754C:  .byte   $2E
        .byte   $04
L754E:  .byte   $22
L754F:  .byte   $13
        .byte   $2E
L7551:  .byte   $04
L7552:  .byte   $22
L7553:  .byte   $04
L7554:  .byte   $27
L7555:  .byte   $13
L7556:  .byte   $27
        .byte   $13
        .byte   $22
        .byte   $44
        rol     L2209
        .byte   $04
L755E:  rol     L2204
        .byte   $03
        .byte   $22
        .byte   $04
        rol     L2204
        .byte   $13
        rol     L2204
        .byte   $04
        .byte   $27
        .byte   $13
        brk
        .byte   $42
        sta     L7504,y
        .byte   $80
        cpy     #$26
        .byte   $87
        sed
        .byte   $73
        stx     L0006
        .byte   $74
        .byte   $9C
        brk
        .byte   $82
        brk
        txa
        .byte   $80
        brk
        .byte   $42
L7584:  stx     a:L0003
        .byte   $04
        ora     (L0004,x)
        brk
        .byte   $04
        ora     (L0004,x)
        brk
        .byte   $04
        ora     (L0004,x)
        brk
        .byte   $04
        ora     (L0004,x)
        .byte   $8F
        brk
        brk
        .byte   $04
        ora     (L0004,x)
        brk
        .byte   $04
        ora     (L0004,x)
        ora     (L0004,x)
        brk
        .byte   $43
        stx     L8E02
        .byte   $03
        brk
        .byte   $04
        ora     (L0004,x)
        brk
        .byte   $04
        ora     (L0004,x)
        brk
        .byte   $04
        ora     (L0004,x)
        brk
        .byte   $04
        ora     (L0004,x)
        .byte   $8F
        brk
        brk
        .byte   $04
        ora     (L0004,x)
        brk
        .byte   $04
        ora     (L0004,x)
        ora     (L0004,x)
        brk
        .byte   $04
        brk
        .byte   $42
        .byte   $8F
        brk
        sta     L7584,y
        brk
        brk
        .byte   $80
        clv
        asl     L0D82,x
        stx     L4203
        .byte   $14
        .byte   $42
        ora     L0D42
        .byte   $42
        ora     L1742
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
        ora     L0D42
        .byte   $42
        ora     L9A80
        ora     L1742,y
        .byte   $44
        .byte   $17
        lsr     L0017
        .byte   $47
        .byte   $02
        brk
        brk
        .byte   $80
        clv
        asl     L0D82,x
        brk
        .byte   $02
        stx     L3E02
        .byte   $14
        rol     L3E0D,x
        ora     L0D3E
        rol     L3E17,x
        .byte   $17
        rol     L8F17,x
        brk
        .byte   $80
        and     #$1C
        rol     L3E14,x
        ora     L0D3E
        rol     L800D,x
        txs
        ora     L173E,y
        .byte   $3F
        .byte   $17
        and     L4717,x
        .byte   $02
        brk
        brk
        .byte   $80
        clv
        asl     L0D82,x
        brk
        ora     (L003A,x)
        .byte   $14
        .byte   $3A
        ora     L0D3A
        .byte   $3A
        ora     L173A
        sec
        .byte   $17
        rol     L0017,x
        .byte   $80
        and     #$1C
        .byte   $32
        .byte   $14
        .byte   $2F
        ora     L0D2C
        rol     a
        ora     L9A80
        ora     L1728,y
        .byte   $27
        .byte   $17
        and     L0017
        .byte   $23
        .byte   $02
        brk
        brk
L765C:  .byte   $4B
L765D:  .byte   $46
L765E:  .byte   $54
        jsr     L4C4E
        eor     (L0020,x)
        .byte   $4B
        eor     L004D
        jsr     L4544
        .byte   $53
        jsr     L4647
        eor     L4520
        .byte   $44
        jsr     L4220
        eor     (L0046,x)
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
        eor     (L0020,x)
        eor     (L0020,x)
        bvc     L76B8
        lsr     L0020,x
        .byte   $47
        jsr     LF0F1
L769E:  .byte   $F0
L769F:  asl     a:L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        rol     LF0F0
        beq     L769E
        .byte   $F0
L76AE:  beq     L76EE
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L76B8:  lsr     LF0F0
        beq     L76AE
        .byte   $F0
L76BE:  .byte   $F0
L76BF:  lsr     a:L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        ror     LF0F0
        beq     L76BE
        .byte   $F0
L76CE:  .byte   $F0
L76CF:  ror     a:L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        asl     LF0F0,x
        beq     L76CE
        .byte   $F0
L76DE:  .byte   $F0
L76DF:  rol     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        rol     LF0F0,x
        beq     L76DE
        .byte   $F0
L76EE:  .byte   $F0
L76EF:  lsr     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        lsr     LF0F0,x
        beq     L76EE
        .byte   $F0
L76FE:  .byte   $F0
L76FF:  ror     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        ror     LF0F0,x
        beq     L76FE
        .byte   $F0
L770E:  beq     L772E
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        rol     LF0F0
L771B:  beq     L770E
        .byte   $F0
L771E:  .byte   $F0
L771F:  brk
L7720:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L771B
L772B:  beq     L771E
        .byte   $F0
L772E:  .byte   $F0
L772F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L772B
L773B:  beq     L772E
        .byte   $F0
L773E:  .byte   $F0
L773F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L773B
L774B:  beq     L773E
        .byte   $F0
L774E:  .byte   $F0
L774F:  asl     a:L0000,x
        brk
        rol     a:L0000
        brk
L7757:  brk
        brk
        beq     L774B
L775B:  beq     L774E
        .byte   $F0
L775E:  .byte   $F0
L775F:  brk
        brk
        rol     a:L0000,x
        brk
        lsr     a:L005E
        brk
        beq     L775B
L776B:  beq     L775E
        .byte   $F0
L776E:  .byte   $F0
L776F:  brk
        brk
        brk
        brk
        brk
        ror     a:L0000
        brk
        brk
        beq     L776B
        .byte   $F0
L777C:  sbc     (L00F0),y
        beq     *+2
        brk
        brk
        ror     a:L0000,x
        brk
        brk
        asl     LF000,x
        .byte   $F0
L778B:  beq     *-13
        .byte   $F0
L778E:  .byte   $F0
L778F:  brk
L7790:  rol     a:L0000
        brk
        brk
        rol     a:L0000,x
        brk
        beq     L778B
L779B:  beq     L778E
        .byte   $F0
L779E:  .byte   $F0
L779F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L779B
L77AB:  beq     L779E
        .byte   $F0
L77AE:  .byte   $F0
L77AF:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L77AB
L77BB:  beq     L77AE
        .byte   $F0
L77BE:  .byte   $F0
L77BF:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L77BB
L77CB:  beq     L77BE
        .byte   $F0
L77CE:  .byte   $F0
L77CF:  brk
        brk
        brk
        brk
        asl     a:L002E,x
        brk
        brk
        brk
        beq     L77CB
L77DB:  beq     L77CE
        .byte   $F0
L77DE:  .byte   $F0
L77DF:  brk
        brk
        brk
        rol     L5E4E,x
        ror     a:L0000
        brk
        beq     L77DB
L77EB:  beq     L77DE
        .byte   $F0
L77EE:  .byte   $F0
L77EF:  brk
        brk
        ror     a:L001E,x
        brk
        rol     a:L003E
        brk
        beq     L77EB
L77FB:  beq     L77EE
        .byte   $F0
L77FE:  .byte   $F0
L77FF:  brk
        lsr     a:L005E
        ror     a:L007E
        asl     a:L002E,x
        beq     L77FB
        beq     L77FE
        .byte   $F0
L780E:  .byte   $F0
L780F:  rol     a:L004E,x
        lsr     L7E6E,x
        asl     L2E00,x
        rol     LF0F0,x
L781B:  beq     L780E
        .byte   $F0
L781E:  .byte   $F0
L781F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L781B
L782B:  beq     L781E
        .byte   $F0
L782E:  .byte   $F0
L782F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L782B
L783B:  beq     L782E
        .byte   $F0
L783E:  .byte   $F0
L783F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L783B
L784B:  beq     L783E
        .byte   $F0
L784E:  .byte   $F0
L784F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L784B
L785B:  beq     L784E
        .byte   $F0
L785E:  .byte   $F0
L785F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L785B
L786B:  beq     L785E
        .byte   $F0
L786E:  .byte   $F0
L786F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $23
        brk
        brk
        beq     L786B
L787B:  beq     L786E
        .byte   $F0
L787E:  .byte   $F0
L787F:  .byte   $3A
        and     a:L0043,x
        bvs     L7902
        jsr     L0029
        brk
        beq     L787B
L788B:  beq     L787E
        .byte   $F0
L788E:  .byte   $F0
L788F:  .byte   $3C
        .byte   $3B
        jmp     L4241

        .byte   $7C
        .byte   $72
        and     L001E
        brk
        beq     L788B
L789B:  beq     L788E
        .byte   $F0
L789E:  .byte   $F0
L789F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L789B
L78AB:  beq     L789E
        .byte   $F0
L78AE:  .byte   $F0
L78AF:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L78AB
L78BB:  beq     L78AE
        .byte   $F0
L78BE:  .byte   $F0
L78BF:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L78BB
        beq     L78BE
        .byte   $F0
L78CE:  .byte   $F0
L78CF:  asl     a:L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        rol     LF0F0,x
        .byte   $F0
L78DC:  sbc     (L00F0),y
        beq     L790E
        rol     a:L0000,x
        brk
        brk
        brk
        brk
        lsr     LF07E,x
        .byte   $F0
L78EB:  beq     *-13
        .byte   $F0
L78EE:  .byte   $F0
L78EF:  lsr     $6E5E
        brk
        brk
        brk
        brk
        rol     L6E4E
        beq     L78EB
        .byte   $F0
L78FC:  sbc     (L00F0),y
        beq     L797E
        .byte   $1E
        brk
L7902:  brk
        brk
        brk
        brk
        brk
        asl     LF03E,x
        beq     L78FC
        sbc     (L00F0),y
L790E:  .byte   $F0
L790F:  rol     a:L0000
        brk
        brk
        brk
        brk
        brk
        brk
        lsr     LF0F0,x
L791B:  beq     L790E
        .byte   $F0
L791E:  .byte   $F0
L791F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L791B
L792B:  beq     L791E
        .byte   $F0
L792E:  beq     *+2
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L792B
L793B:  beq     L792E
        .byte   $F0
L793E:  .byte   $F0
L793F:  brk
L7940:  brk
        brk
        brk
        rol     a:L004E
        brk
        brk
        brk
        beq     L793B
L794B:  beq     L793E
        .byte   $F0
L794E:  .byte   $F0
L794F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L794B
L795B:  beq     L794E
        .byte   $F0
L795E:  .byte   $F0
L795F:  brk
        brk
        ror     a:L0000
        brk
        brk
        asl     a:L0000,x
        beq     L795B
L796B:  beq     L795E
        .byte   $F0
L796E:  .byte   $F0
L796F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L796B
L797B:  beq     L796E
        .byte   $F0
L797E:  .byte   $F0
L797F:  brk
        brk
        brk
        brk
        rol     a:L005E,x
        brk
        brk
        brk
        beq     L797B
L798B:  beq     L797E
L798D:  .byte   $F0
L798E:  .byte   $F0
L798F:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L798B
L799B:  beq     L798E
L799D:  .byte   $F0
L799E:  .byte   $F0
L799F:  brk
        brk
L79A1:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L799B
L79AB:  beq     L799E
        .byte   $F0
L79AE:  .byte   $F0
L79AF:  brk
        asl     a:L0000,x
        brk
        brk
        brk
        brk
        brk
        brk
        beq     L79AB
        .byte   $F0
L79BC:  sbc     (L00F0),y
        beq     L79DE
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        rol     LF000
        .byte   $F0
L79CB:  beq     *-13
        .byte   $F0
L79CE:  .byte   $F0
L79CF:  brk
L79D0:  brk
        brk
        brk
        brk
        brk
        brk
        rol     a:L0000
        beq     L79CB
L79DB:  beq     L79CE
        .byte   $F0
L79DE:  .byte   $F0
L79DF:  brk
        brk
        brk
        rol     a:L0000,x
        rol     a:L0000
        brk
        beq     L79DB
        beq     L79DE
        .byte   $F0
L79EE:  .byte   $F0
L79EF:  brk
        brk
        rol     a:L0000,x
        brk
        brk
        brk
        brk
        lsr     LF0F0
        .byte   $F0
L79FC:  sbc     (L00F0),y
        beq     *+2
        rol     a:L0000,x
        brk
        brk
        brk
        brk
        lsr     LF000
        .byte   $F0
L7A0B:  beq     *-13
        beq     *-14
        rol     a:L0000,x
        brk
        brk
        brk
        brk
        lsr     a:L0000
        beq     L7A0B
        beq     L799D
L7A1D:  .byte   $92
        bvs     L79A1
        .byte   $03
        .byte   $FF
        .byte   $02
        sbc     L0201,x
        sbc     LFC04,x
        ora     L00FC
        .byte   $02
        sbc     LFC04,x
        .byte   $04
        .byte   $FC
        ora     (L0005,x)
        brk
        .byte   $FA
        ora     (L0001,x)
        .byte   $FF
        ora     (L00FF,x)
        .byte   $02
        sbc     LFC05,x
        .byte   $02
        sbc     L0201,x
        sbc     LFC04,x
        ora     (L0006,x)
        sta     (L0004,x)
        sbc     L000C,x
        sbc     L0201,x
L7A4E:  sbc     L000C,x
        .byte   $F4
        ora     L0CF2
        .byte   $F5
L7A55:  .byte   $0C
        .byte   $F4
        .byte   $0C
        .byte   $80
        ora     #$50
        brk
        .byte   $80
L7A5D:  ldx     #$60
        .byte   $80
        ora     #$50
        brk
        brk
        .byte   $80
        .byte   $9E
        bvs     L7A5D
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
        .byte   $FA
        bpl     L7A80
        .byte   $80
L7A80:  lda     L0000
        ora     (L0001,x)
        .byte   $80
        brk
        brk
        brk
        brk
        .byte   $80
        ora     #$50
        .byte   $7F
        ora     L0080
        ora     (L0060,x)
        .byte   $80
        tay
        rts

        .byte   $80
        ora     (L0060,x)
        .byte   $80
        brk
        .byte   $80
        .byte   $80
        lda     #$80
L7A9D:  sta     (L0003,x)
        .byte   $80
        brk
        .byte   $80
        .byte   $80
        ora     #$50
L7AA5:  .byte   $7F
        .byte   $04
        .byte   $80
        .byte   $A3
        bvs     L7AAC
        .byte   $F0
L7AAC:  ora     L00FC
        asl     LFB01
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
        ora     L0080
        ora     #$50
        .byte   $7F
        ora     L0080
        .byte   $B3
        rts

        ora     (L0001,x)
        .byte   $80
        ldx     L0080,y
        sta     (L0004,x)
        .byte   $80
        brk
L7AD1:  .byte   $80
        .byte   $80
        lda     L0040
        ora     (L0001,x)
        .byte   $80
        brk
        rti

        brk
        brk
        .byte   $80
        ora     #$50
        .byte   $80
        sty     L0070,x
        ora     (L000A,x)
L7AE4:  sbc     L0005,x
        .byte   $FC
        asl     a
        sed
        .byte   $FC
        ora     (L000C,x)
        .byte   $80
        ora     #$50
        brk
        brk
        .byte   $80
        .byte   $BB
        brk
        sta     (L0005,x)
        .byte   $80
        ora     #$50
        .byte   $7F
        ora     L0080
        ora     (L0060,x)
        .byte   $80
        cmp     (L0060,x)
        ora     (L0080,x)
        .byte   $C3
        .byte   $80
        sta     (L0005,x)
        .byte   $80
        .byte   $AD
L7B09:  rti

        sta     (L0005,x)
        .byte   $80
        ora     #$50
        brk
        .byte   $80
        .byte   $9E
        bvs     L7B09
        ora     (L0001,x)
        asl     a
        sbc     L000C,x
        .byte   $80
        brk
        bpl     L7A9D
        lda     #$10
        sta     (L0003,x)
        .byte   $80
        brk
        .byte   $10
L7B24:  .byte   $80
        cmp     #$00
        sta     (L0005,x)
        .byte   $80
        ora     #$50
        .byte   $80
        .byte   $CF
        bvc     L7B31
        .byte   $01
L7B31:  .byte   $80
        ora     #$50
        brk
        .byte   $80
        ora     (L0060,x)
        .byte   $80
L7B39:  .byte   $D2
        rts

        ora     (L0080,x)
        brk
        .byte   $80
        .byte   $80
        .byte   $D4
        .byte   $80
        ora     (L0001,x)
        .byte   $80
        brk
        .byte   $80
        brk
        .byte   $80
        .byte   $BB
        rti

        sta     (L0005,x)
        .byte   $80
L7B4E:  brk
        bpl     L7AD1
        lda     #$10
        sta     (L0003,x)
        .byte   $80
        .byte   $9E
        bvs     L7B4E
        ora     #$01
        .byte   $80
        ldx     L0010,y
        sta     (L0004,x)
        .byte   $80
L7B61:  brk
        bpl     L7AE4
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
        .byte   $80
        ora     #$50
        .byte   $80
        .byte   $DB
        bvc     L7B79
        .byte   $01
L7B79:  .byte   $80
L7B7A:  ora     #$50
        brk
        .byte   $80
        .byte   $DE
L7B7F:  rts

        ora     (L0001,x)
        .byte   $80
        brk
        .byte   $80
        .byte   $80
        sbc     (L0080,x)
        ora     (L0001,x)
        .byte   $80
        brk
        .byte   $80
        brk
        .byte   $80
        cmp     #$40
        sta     (L0005,x)
        .byte   $80
        ldx     L0010,y
        sta     (L0003,x)
        .byte   $2B
        .byte   $80
        .byte   $9C
        bvs     L7B9E
        .byte   $06
L7B9E:  ora     (L0080,x)
        .byte   $C3
        bpl     L7B24
        ora     L0080
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
        inx
        bvc     L7B39
        ora     L0080
        inc     L0160
        ora     (L0080,x)
        ora     (L0060,x)
        .byte   $80
        ora     (L0030,x)
        .byte   $80
        sbc     (L0030),y
        .byte   $80
        ora     (L0030,x)
        brk
        .byte   $80
        ora     #$50
        .byte   $80
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
        bpl     L7B61
        .byte   $04
        .byte   $80
        .byte   $A3
        bvs     L7BE6
        .byte   $4E
L7BE6:  .byte   $A7
        .byte   $5A
        .byte   $80
        .byte   $D4
        bpl     L7BED
        .byte   $01
L7BED:  .byte   $80
        brk
        .byte   $10
L7BF0:  brk
L7BF1:  .byte   $80
        ora     #$50
        brk
        .byte   $80
        .byte   $F4
        bvc     L7B7A
        ora     L0080
        .byte   $FA
        bmi     L7B7F
        .byte   $04
        .byte   $80
        .byte   $FF
        rts

        ora     (L0001,x)
        .byte   $80
        .byte   $02
        and     (L0081),y
        .byte   $03
        .byte   $80
        ora     #$50
        .byte   $80
        brk
        rti

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
        ora     #$50
        .byte   $80
        .byte   $D4
        bpl     L7C24
        .byte   $01
L7C24:  .byte   $80
        .byte   $97
        bvs     L7C2A
        .byte   $FA
        .byte   $01
L7C2A:  ora     (L000A,x)
        .byte   $80
        sbc     (L0010,x)
        ora     (L0001,x)
        .byte   $80
        brk
        bpl     L7C35
L7C35:  .byte   $80
        ora     #$50
        .byte   $80
        asl     L0051
        sta     (L0006,x)
        .byte   $80
        ora     L8131
        .byte   $03
        .byte   $80
        ora     (L0061),y
        ora     (L0001,x)
        .byte   $80
        .byte   $14
        and     (L0081),y
        .byte   $04
        .byte   $80
        ora     L8051,y
        ora     #$50
        brk
        .byte   $80
        .byte   $1A
        eor     (L0081),y
        .byte   $04
        .byte   $80
L7C59:  sbc     (L0010,x)
        ora     (L0001,x)
        .byte   $80
        .byte   $9F
        bvs     L7C59
        .byte   $FC
        ora     L0006
        sbc     L0080,x
        .byte   $1F
        eor     (L00FC),y
        ora     (L0004,x)
        inc     L0980,x
        bvc     L7BF0
        and     (L0051,x)
        sta     (L0005,x)
        .byte   $80
        .byte   $27
        and     (L0081),y
        .byte   $04
        .byte   $80
        bit     L8161
        .byte   $03
        .byte   $80
        bmi     L7CB2
        sta     (L0003,x)
        .byte   $80
        .byte   $34
        eor     (L0081),y
        ora     #$80
        ora     #$50
        .byte   $80
        sty     L0070,x
        .byte   $0C
        sed
        .byte   $80
        rol     L0171,x
        .byte   $80
        rol     L0051,x
        sta     (L0007,x)
        .byte   $03
        sta     (L0004,x)
        .byte   $80
        eor     L0031
        .byte   $80
        lsr     L0061
        sta     (L0007,x)
        .byte   $80
        lsr     L8131
        .byte   $03
        .byte   $80
        .byte   $52
        eor     (L0081),y
        ora     #$DB
        ora     (L0080,x)
        .byte   $5C
L7CB2:  adc     (L0001),y
        .byte   $80
        tya
        bvs     L7CBF
        .byte   $80
        .byte   $54
        eor     (L0081),y
        .byte   $07
        .byte   $03
        .byte   $81
L7CBF:  .byte   $04
        .byte   $80
        .byte   $63
L7CC2:  and     (L0080),y
        .byte   $64
        adc     (L0081,x)
        asl     a
        .byte   $80
        .byte   $6F
        and     (L0080),y
        .byte   $70
L7CCD:  eor     (L0081),y
        .byte   $0B
        .byte   $80
        .byte   $9F
        bvs     L7CCD
        .byte   $03
        sbc     L3F80,y
        adc     (L0080),y
        .byte   $73
        eor     (L0081),y
        .byte   $0B
        .byte   $80
        .byte   $7F
        adc     (L0081,x)
        .byte   $0B
        .byte   $80
        .byte   $8B
        and     (L0080),y
        sty     L8151
        ora     L00ED
        .byte   $14
        ora     (L0001,x)
        .byte   $80
        ora     #$50
        .byte   $80
        .byte   $5C
        adc     (L0080),y
        .byte   $93
        bvs     L7D01
        .byte   $80
        .byte   $3E
        .byte   $71
L7CFC:  .byte   $80
        .byte   $93
        bvs     L7D08
        .byte   $80
L7D01:  .byte   $8F
        eor     (L0001),y
        ora     (L00ED,x)
        .byte   $14
        .byte   $81
L7D08:  asl     L0080
        ora     #$50
        .byte   $80
        sta     L8161,y
        php
        .byte   $80
        ldx     #$31
        .byte   $80
        .byte   $A3
        adc     (L0001,x)
        .byte   $80
        lda     L0031
        .byte   $80
        .byte   $A6
L7D1D:  eor     (L0080),y
L7D1F:  ora     #$50
        .byte   $7F
        .byte   $03
        .byte   $80
        .byte   $A7
        eor     (L0001),y
        .byte   $80
        ora     #$50
        .byte   $80
        tya
        eor     (L0080),y
L7D2E:  ora     #$50
        brk
        .byte   $80
        .byte   $9B
        bvs     L7D2E
        .byte   $80
        eor     L8071,x
        sty     L0070,x
        .byte   $80
        .byte   $3F
        adc     (L0080),y
        .byte   $9F
        bvs     L7CC2
        lda     #$51
        .byte   $80
        ora     #$50
        brk
        brk
        .byte   $80
        tax
        eor     (L0001),y
        .byte   $80
        ora     #$50
        brk
        .byte   $80
        ldy     L0151
        ora     (L0080,x)
        .byte   $AF
        adc     (L0081,x)
        ora     #$80
        lda     L8031,y
        tsx
        adc     (L0001,x)
        ora     (L0080,x)
        ora     #$50
        brk
        .byte   $80
        tax
        eor     (L0001),y
        .byte   $80
        ora     #$50
        brk
        .byte   $80
        lda     L0151,x
        .byte   $ED
L7D74:  inc     L0980,x
L7D77:  bvc     *-126
        .byte   $9F
L7D7A:  bvs     L7CFC
        .byte   $5C
        adc     (L0080),y
        .byte   $93
        bvs     L7D87
        .byte   $03
        .byte   $80
        .byte   $BF
        eor     (L0081),y
L7D87:  .byte   $0B
        .byte   $80
        .byte   $CB
        adc     (L0081,x)
        .byte   $0D
        .byte   $80
L7D8E:  cmp     $EA51,y
        sta     (L0003,x)
        .byte   $14
        ora     (L0001,x)
        .byte   $E3
        ora     (L0001,x)
        .byte   $80
        ora     #$50
        .byte   $80
L7D9D:  .byte   $9B
        bvs     L7D9D
        .byte   $03
        .byte   $04
        sbc     L0980,y
        bvc     L7E26
        asl     L0080
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
        ora     L0080
        tya
        bvs     L7DCC
        .byte   $FC
        brk
        sbc     L3E80,x
        adc     (L0001),y
L7DCC:  .byte   $80
        .byte   $EF
        eor     (L007F),y
        php
        .byte   $80
        beq     L7DF5
        ora     (L0080,x)
        .byte   $F2
        adc     (L0081,x)
        asl     a
        .byte   $FA
        .byte   $07
        .byte   $80
        inc     L0121,x
L7DE0:  .byte   $80
        .byte   $EF
        eor     (L007F),y
        .byte   $07
        .byte   $80
        .byte   $5C
        adc     (L0001),y
        .byte   $80
        tya
        bvs     L7DF0
        .byte   $04
        .byte   $80
        .byte   $3E
L7DF0:  adc     (L0001),y
        .byte   $80
        .byte   $9F
        .byte   $70
L7DF5:  .byte   $80
        brk
        .byte   $52
        .byte   $7F
        php
        .byte   $80
        ora     (L0022,x)
        .byte   $80
        .byte   $02
        .byte   $62
L7E00:  sta     (L000E,x)
        .byte   $80
        ora     (L0022),y
        .byte   $80
        brk
        .byte   $52
L7E08:  .byte   $7F
        .byte   $07
        .byte   $80
        .byte   $9F
        bvs     L7D8E
        .byte   $5C
        adc     (L0001),y
        .byte   $80
        .byte   $9F
        bvs     L7E08
        ora     (L000C,x)
        sbc     L1280,y
        .byte   $52
        .byte   $7F
        php
        .byte   $80
        .byte   $13
        .byte   $22
        .byte   $80
        .byte   $14
        .byte   $62
        sta     (L000E,x)
        .byte   $80
L7E26:  .byte   $23
        .byte   $22
        .byte   $80
        .byte   $12
        .byte   $52
        .byte   $7F
        .byte   $07
        .byte   $80
        tya
        bvs     L7E38
        sbc     L0006,x
        ora     (L00FD,x)
        .byte   $FC
        .byte   $0D
        .byte   $F2
L7E38:  ora     L0080
        bit     L0062
        ora     (L007F,x)
        .byte   $03
        ora     (L0000,x)
        sta     (L0011,x)
        .byte   $EF
        .byte   $7F
        .byte   $05
L7E46:  .byte   $80
        tya
L7E48:  bvs     L7E46
        ora     L05F2
        .byte   $03
        .byte   $04
        .byte   $FC
        ora     (L0001,x)
        .byte   $FB
        .byte   $80
        rol     L0171,x
L7E57:  .byte   $80
        sec
        .byte   $62
        sta     (L000C,x)
L7E5C:  .byte   $FA
        ora     (L0006,x)
        sta     (L000B,x)
        cpx     L5C80
        adc     (L0001),y
        .byte   $80
        tya
        bvs     L7E6E
        ora     (L00FE,x)
        .byte   $04
        .byte   $F9
L7E6E:  .byte   $03
        php
        ora     (L0080,x)
L7E72:  rol     L0171,x
        .byte   $80
        .byte   $9F
        bvs     L7E72
        .byte   $80
        eor     (L0062),y
        sta     (L0016,x)
        sbc     L2CE8
        .byte   $80
        tya
        bvs     L7E8C
        .byte   $80
        .byte   $5C
        adc     (L0001),y
        .byte   $80
        .byte   $A3
        .byte   $70
L7E8C:  ora     (L00F7,x)
        .byte   $FD
L7E8F:  .byte   $03
        .byte   $04
        sbc     L80FC,y
        adc     #$72
        ora     (L0080,x)
        sty     L0070,x
        ora     L05F2
        .byte   $80
        .byte   $6B
        .byte   $62
        sbc     #$00
        clc
        ora     (L00E7,x)
        .byte   $1A
        ora     (L0001,x)
        cpx     L001D
        sta     (L0006,x)
        .byte   $FF
        .byte   $02
        ora     (L0001,x)
        .byte   $DA
L7EB1:  .byte   $80
        tya
        bvs     L7EB1
        ora     L0CF2
        .byte   $80
        .byte   $7B
        .byte   $72
        .byte   $80
        .byte   $93
        bvs     L7EC4
        .byte   $07
        .byte   $FC
        .byte   $80
        .byte   $3E
        .byte   $71
L7EC4:  .byte   $80
        .byte   $93
        bvs     L7E48
        rol     L0171,x
        .byte   $80
        .byte   $7C
        .byte   $72
L7ECE:  .byte   $80
        .byte   $93
        bvs     L7ED7
        .byte   $FC
        asl     L0001
        .byte   $80
        .byte   $6B
L7ED7:  .byte   $62
L7ED8:  .byte   $80
        tya
        bvs     L7E5C
        .byte   $54
        .byte   $62
        and     #$01
        dec     L002B,x
        sta     (L0009,x)
L7EE4:  .byte   $FF
        .byte   $02
        sta     (L0003,x)
        iny
        .byte   $80
        .byte   $9B
        bvs     L7EE4
        ora     (L0005,x)
        .byte   $FC
        .byte   $80
        sta     L8072
        .byte   $5C
        adc     (L0001),y
        .byte   $80
        sty     L0070,x
        .byte   $80
        eor     L8071,x
        .byte   $97
        .byte   $70
L7F00:  .byte   $02
        .byte   $FA
        .byte   $0C
        sbc     L0DFC,y
        .byte   $F2
        php
        .byte   $80
        stx     L8072
        .byte   $93
        bvs     L7E8F
        .byte   $3E
L7F10:  adc     (L0001),y
        .byte   $80
        .byte   $54
        .byte   $62
        .byte   $7F
        ora     (L0080),y
        sty     L0070,x
L7F1A:  .byte   $80
        .byte   $8F
        .byte   $72
        .byte   $80
        .byte   $9B
        bvs     L7F1A
        ora     L05F2
        .byte   $07
        sbc     L0005,x
        .byte   $FC
        asl     a
        sbc     L0002,x
        sbc     L3E80,x
        adc     (L0001),y
        .byte   $80
        .byte   $94
L7F32:  bvs     *+3
        asl     a
        sbc     LFB01,x
L7F38:  .byte   $07
        sbc     L5480,y
        .byte   $62
        .byte   $80
        sty     L0070,x
L7F40:  .byte   $02
        sbc     LA75F,x
        .byte   $5A
        lda     #$01
        .byte   $80
        bcc     L7FAC
        .byte   $80
        tya
        bvs     L7ECE
        bcc     L7FB2
        .byte   $80
        tya
        .byte   $70
L7F53:  .byte   $FF
L7F54:  .byte   $02
        .byte   $80
        sta     (L0072),y
        ora     (L0080,x)
        .byte   $9C
        bvs     L7F5E
        .byte   $02
L7F5E:  sed
        .byte   $FC
        .byte   $80
        .byte   $5C
        adc     (L0001),y
        .byte   $80
        sty     L0070,x
        .byte   $02
        sbc     LFD0C,x
        .byte   $01
L7F6C:  .byte   $02
        sed
        .byte   $FC
        .byte   $0C
        sbc     LF506,y
        bpl     L7F76
        .byte   $F7
L7F76:  sbc     L9380,y
        .byte   $72
        .byte   $80
        .byte   $9C
L7F7C:  bvs     L7F7F
        .byte   $02
L7F7F:  sbc     L01FC,y
        asl     a
        .byte   $04
        ora     (L00F4,x)
        .byte   $80
        sty     L0072,x
        .byte   $80
        .byte   $93
        .byte   $70
L7F8C:  php
        .byte   $04
        sed
        .byte   $80
        sta     (L0072),y
        .byte   $04
        .byte   $80
        .byte   $A3
L7F95:  bvs     L7F98
        .byte   $F0
L7F98:  .byte   $0C
        sed
        .byte   $07
        sbc     L0001,x
        asl     a
        sbc     L0601,x
        ora     (L00F0,x)
        .byte   $0C
        .byte   $F4
        ora     L0007
        .byte   $F4
        ora     L0000
        .byte   $FA
        .byte   $80
L7FAC:  rol     L8071,x
        .byte   $93
        bvs     L7F32
L7FB2:  stx     L0072,y
        .byte   $80
        .byte   $A3
        bvs     L7F38
        .byte   $97
        .byte   $72
        sta     (L0003,x)
        .byte   $80
        .byte   $9E
        bvs     L7F40
        .byte   $9B
        .byte   $72
        sta     (L0004,x)
        .byte   $80
        sty     L0070,x
        .byte   $80
        ldy     #$72
        sta     (L0004,x)
        .byte   $80
        sty     L0070,x
        ora     L0000
        .byte   $FA
        .byte   $0B
        .byte   $FB
        .byte   $FA
        .byte   $0B
        sbc     L0010,x
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
L8000:  sei
L8001:  .byte   $4C
L8002:  php
L8003:  .byte   $80
        asl     a:L00D7
        .byte   $80
        cld
        ldx     #$FF
        txs
        .byte   $A9
L800D:  brk
        .byte   $8D
        .byte   $0F
L8010:  plp
        sta     L281F
L8014:  clc
        adc     #$01
        cmp     #$07
        bne     L8014
        sta     L280F
        sta     L281F
        lda     #$00
        .byte   $A0
L8024:  .byte   $07
L8025:  sta     L2800,y
        sta     L2810,y
        dey
        bpl     L8025
        lda     #$00
        .byte   $A2
L8031:  brk
L8032:  .byte   $95
L8033:  brk
L8034:  sta     L0100,x
        sta     L0200,x
        sta     L0300,x
        sta     L0400,x
        .byte   $9D
        brk
L8042:  .byte   $05
L8043:  sta     L0600,x
        sta     L0700,x
        sta     L0800,x
        sta     L0900,x
        .byte   $9D
        brk
L8051:  asl     a
        sta     L0B00,x
        sta     L0C00,x
        sta     L0D00,x
        sta     L0E00,x
        .byte   $9D
        brk
L8060:  .byte   $0F
        .byte   $9D
L8062:  brk
L8063:  bpl     L8002
        brk
        ora     (L009D),y
        brk
        .byte   $12
        sta     L1300,x
        sta     L1400,x
        .byte   $9D
L8071:  brk
L8072:  .byte   $15
L8073:  sta     L1600,x
        sta     L1700,x
        sta     L1800,x
        sta     L1900,x
        sta     L1A00,x
        sta     L1B00,x
        sta     L1C00,x
        sta     L1D00,x
        sta     L1E00,x
        sta     L1F00,x
        sta     L2000,x
        sta     L3000
        inx
        bne     L8032
        sta     L280B
        bit     L2808
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
        sta     L3000
        inx
        bne     L80AA
L80D9:  inc     L0000,x
        beq     L80E2
        lda     L0000,x
        jmp     L8BFC

L80E2:  inx
        bne     L80D9
        sta     L3000
        ldx     #$FF
        txs
        lda     #$00
        sta     L00AF
        .byte   $85
L80F0:  lda     $AE85
L80F3:  inc     L00AE
        ldy     #$00
L80F7:  .byte   $B1
L80F8:  lda     L03F0
        .byte   $20
L80FC:  .byte   $CE
        .byte   $8B
L80FE:  ldx     #$00
L8100:  sec
L8101:  txa
L8102:  rol     a
L8103:  tax
        sta     (L00AD),y
        eor     (L00AD),y
        beq     L810E
        jsr     L8BCE
        sec
L810E:  bcc     L8101
        ldx     #$FF
        clc
L8113:  txa
L8114:  rol     a
        tax
        .byte   $91
L8117:  lda     LAD51
        beq     L8120
        jsr     L8BCE
        clc
L8120:  bcs     L8113
        sta     L3000
        iny
        bne     L80F7
L8128:  lda     (L00AD),y
        clc
        adc     #$01
        sta     (L00AD),y
        .byte   $F0
L8130:  .byte   $03
L8131:  jsr     L8BCE
        iny
        bne     L8128
        sta     L3000
        lda     L00AE
        cmp     #$20
        bcc     L80F3
L8140:  jsr     L9290
        lda     #$00
        sta     L00B0
        sta     L005E
        lda     L00AF
        and     #$03
        beq     L817C
        and     #$02
L8151:  beq     L815C
        .byte   $A9
L8154:  .byte   $2F
        sta     L005E
        lda     #$03
        clv
        bvc     L815E
L815C:  lda     #$02
L815E:  ldy     #$00
        .byte   $20
L8161:  ldy     LA58C,x
        .byte   $AF
        and     #$01
        beq     L8172
        lda     #$0F
        sta     L005E
        lda     #$01
        clv
        bvc     L8174
L8172:  lda     #$00
L8174:  ldy     #$00
        jsr     L8CBC
        clv
        bvc     L817E
L817C:  inc     L00B0
L817E:  lda     #$17
        ldy     #$00
        jsr     L8CBC
        lda     #$24
        ldy     #$00
        jsr     L8CBC
        ldx     #$0F
        lda     #$FF
L8190:  sta     L2000,x
        dex
        bpl     L8190
        lda     #$00
        sta     L2000
        inc     L00B0
        jmp     L822E

        lda     L005E
        beq     L81C5
        and     #$10
        bne     L81AD
        lda     #$A8
        clv
        bvc     L81AF
L81AD:  lda     #$00
L81AF:  dec     L005E
        bne     L81B5
        lda     #$00
L81B5:  sta     L2800
        sta     L2801
        lda     L005E
        cmp     #$1F
        bne     L81C5
        lda     #$13
        sta     L005E
L81C5:  lda     L00B5
        and     #$08
        beq     L81D5
        lda     #$00
        sta     L2800
        sta     L2801
        dec     L00B0
L81D5:  jmp     L822E

        lda     #$00
        sta     L2800
        sta     L2801
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
        sty     L0002
        ldy     #$12
        sty     L0003
        .byte   $20
L8214:  .byte   $64
        .byte   $92
        lda     L00AF
        ora     #$04
        sta     L00AF
        lda     #$04
        ldy     #$00
        jsr     L8CBC
L8223:  jsr     LD5C2
        lda     L00AF
        and     #$0C
        bne     L822E
        inc     L00B0
L822E:  lda     L00B2
        sta     L00B6
        sta     L280B
        ldx     L2808
        stx     L00B2
        eor     #$FF
        and     L00B2
        sta     L00B4
        lda     L00B3
        sta     L00B7
        sta     L281B
        ldx     L2818
        stx     L00B3
        eor     #$FF
        and     L00B3
        sta     L00B5
        ldx     #$07
L8254:  lda     L00B3
        and     L82F2,x
        bne     L8261
        lda     #$00
        sta     L00B8,x
        beq     L827C
L8261:  inc     L00B8,x
        lda     L00B8,x
        cmp     L82FA,x
        bcc     L8271
        lda     L00B5
        ora     L82F2,x
        sta     L00B5
L8271:  lda     L00B5
        and     L82F2,x
        beq     L827C
        lda     #$00
        sta     L00B8,x
L827C:  dex
        bpl     L8254
L827F:  sta     L280B
        bit     L2808
        bvc     L827F
L8287:  lda     L00AC
        bne     L8293
        sta     L280B
        bit     L2808
        bvs     L8287
L8293:  lda     #$00
        sta     L00AC
        lda     L00B2
        bmi     L829F
L829B:  sei
L829C:  jmp     L829C

L829F:  sta     L3000
        lda     L00B5
        and     #$01
        beq     L82B5
        lda     L00B0
        clc
        adc     #$01
        cmp     #$17
        bcc     L82B3
        lda     #$03
L82B3:  sta     L00B0
L82B5:  lda     L00B0
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
        sta     (L00D7,x)
        sta     (L0001,x)
        .byte   $83
        and     (L0083,x)
        .byte   $5C
        .byte   $83
        txa
        .byte   $83
        lda     (L0083),y
        rol     L0084
        and     L6084,x
        sty     L00BE
        sty     L00DC
        sty     L000F
        sta     L0055
        sta     L0067
        sta     L0093
        sta     L00A7
        sta     L0036
        stx     L0056
        stx     L00E9
        stx     L0056
        stx     L000E
        .byte   $8B
        .byte   $5B
        .byte   $8B
L82F2:  ora     (L0002,x)
        .byte   $04
        php
        bpl     L8318
        rti

        .byte   $80
L82FA:  .byte   $3C
        asl     L1E1E,x
        .byte   $1E
L82FF:  asl     L1E1E,x
        sei
L8303:  jsr     L9290
        jsr     LE649
        lda     #$00
        sta     L005E
        sta     L005F
        jsr     L8618
        lda     #$16
        ldy     #$00
        .byte   $20
        .byte   $BC
L8318:  sty     L17A9
        ldy     #$00
        jsr     L8CBC
        inc     L00B0
        lda     L00B2
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
        lda     L00B3
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
        sta     L005E
        sta     L005F
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
        sta     L20B1
L8386:  inc     L00B0
        jmp     L822E

        lda     L00B3
        and     #$84
        cmp     #$84
        bne     L83AF
        lda     L00B5
        and     #$10
        beq     L83AF
        lda     #$29
        ldy     #$00
L839D:  jsr     L8CBC
        lda     #$02
        jsr     LF1D4
        lda     #$2A
        ldy     #$00
        jsr     L8CBC
        jsr     LC68F
L83AF:  jmp     L822E

        lda     #$00
        sta     L00B1
        sta     L005E
        sta     L005F
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
        sta     L2030
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
        .byte   $20
L83F5:  ldy     $A98C,x
        eor     (L00A0,x)
        brk
        jsr     L8CBC
        lda     L08BC
        sta     L05C1
        sta     L06E5
        lda     LEB25
        sta     L06E7
        lda     #$00
        sta     L06E4
        sta     L06E6
        lda     #$9A
        sta     L06E8
        lda     #$97
        sta     L06E9
        jsr     L94FD
        inc     L00B0
        jmp     L822E

        lda     L08BC
        sta     L06E5
        lda     #$00
        sta     L06E4
        jsr     L952B
        lda     L06E5
L8438:  sta     L08BC
        .byte   $4C
L843C:  .byte   $2E
L843D:  .byte   $82
        lda     L08BC
L8441:  cmp     L05C1
        beq     L845C
        lda     #$01
        jsr     LEE7C
        cli
L844C:  .byte   $8D
        brk
L844E:  bmi     L83F5
        jmp     (L6DC5)

        bne     L8459
        lda     L006E
        cmp     #$FF
L8459:  bne     L844C
        sei
L845C:  inc     L00B0
        jmp     L822E

        lda     #$00
        sta     L00B1
        sta     L005E
        sta     L005F
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
        lda     L08BA
        sta     L05C0
        sta     L06E4
        lda     L08BB
        sta     L05C1
        sta     L06E5
        lda     LEB26
        sta     L06E6
        lda     LEB27
        sta     L06E7
        lda     #$5A
        sta     L06E8
        lda     #$99
        sta     L06E9
        jsr     L94FD
        inc     L00B0
        jmp     L822E

        lda     L08BA
        sta     L06E4
        lda     L08BB
        sta     L06E5
        jsr     L952B
        lda     L06E5
        sta     L08BB
        lda     L06E4
        sta     L08BA
        jmp     L822E

        lda     L08BA
        cmp     L05C0
        bne     L84ED
        lda     L08BB
        cmp     L05C1
        beq     L8503
L84ED:  lda     #$01
        jsr     LEE7C
        cli
L84F3:  sta     L3000
        lda     L006C
        cmp     L006D
        bne     L8500
        lda     L006E
        .byte   $C9
L84FF:  .byte   $FF
L8500:  bne     L84F3
        sei
L8503:  inc     L00B0
        jmp     L822E

        .byte   $80
        rti

        jsr     L0810
        .byte   $04
        .byte   $02
        ora     (L00A9,x)
        brk
        sta     L00B1
        sta     L005E
        sta     L005F
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
        sta     L05C1
        sta     L08FA
        sta     L06E4
        sta     L06E5
        sta     L06E6
        sta     L06E7
        lda     #$BA
        sta     L06E8
        lda     #$99
        sta     L06E9
        jsr     L94FD
        inc     L00B0
        jmp     L822E

        lda     L08FA
        sta     L06E5
        jsr     L952B
        lda     L06E5
        sta     L08FA
        jmp     L822E

        lda     L08FA
        and     #$07
        beq     L858F
        lda     #$39
        ldy     #$B0
        jsr     L8CBC
        lda     L08FA
        and     #$07
        jsr     LF1D4
        cli
L857F:  sta     L3000
        lda     L006C
        cmp     L006D
        bne     L858C
        lda     L006E
        cmp     #$FF
L858C:  bne     L857F
        sei
L858F:  inc     L00B0
        jmp     L822E

        lda     #$FF
        sta     L0689
        jsr     L939C
        lda     L00B5
        ora     #$04
        sta     L00B5
        lda     #$FF
        sta     L009B
        inc     L00B0
        lda     L00B5
        and     #$08
        beq     L85B6
        dec     L009B
        bpl     L85B6
        lda     #$08
        sta     L009B
L85B6:  lda     L00B5
        and     #$04
        beq     L85C8
        inc     L009B
        lda     L009B
        cmp     #$09
        bcc     L85C8
        lda     #$00
        sta     L009B
L85C8:  lda     L00B5
        and     #$10
        beq     L85D1
        jsr     L939C
L85D1:  lda     L00B5
        and     #$0C
        beq     L860C
        ldy     L009B
        lda     L860F,y
        sta     L005E
        lda     #$00
        sta     L005F
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
        lda     L0689
        clc
        adc     #$1C
        ldy     #$60
        jsr     L8CBC
L860C:  jmp     L822E

L860F:  bpl     L8690
        adc     L797E,x
        .byte   $7A
        .byte   $7B
        .byte   $7C
        .byte   $0F
L8618:  lda     #$00
        sta     L00AA
        lda     #$10
        sta     L00AB
L8620:  ldy     #$00
L8622:  lda     L005E
        sta     (L00AA),y
        iny
        lda     L005F
        sta     (L00AA),y
        iny
        bne     L8622
        inc     L00AB
        lda     L00AB
        cmp     #$20
        bcc     L8620
        rts

        jsr     L9290
        lda     #$00
        sta     L005E
        sta     L005F
        jsr     L8618
        lda     #$5A
        sta     L00AD
        lda     #$86
        sta     L00AE
        jsr     L870A
        lda     #$1B
        ldy     #$00
        .byte   $20
        .byte   $BC
L8654:  .byte   $8C
        .byte   $E6
L8656:  .byte   $B0
L8657:  .byte   $4C
L8658:  rol     L2F82
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
        sta     L00AE
L86FB:  .byte   $20
L86FC:  asl     a
        .byte   $87
        .byte   $A9
L86FF:  .byte   $22
        .byte   $A0
L8701:  brk
L8702:  .byte   $20
        .byte   $BC
L8704:  sty     LB0E6
L8707:  .byte   $4C
L8708:  .byte   $2E
        .byte   $82
L870A:  lda     #$00
        sta     L005E
L870E:  sta     L005F
        jsr     L8618
        .byte   $A9
L8714:  dey
        sta     L00AA
        lda     #$11
        sta     L00AB
        ldx     #$00
L871D:  lda     #$01
        sta     L068B
L8722:  .byte   $A0
L8723:  brk
L8724:  dec     L068B
        bne     L874F
L8729:  lda     (L00AD,x)
        sta     L005E
        .byte   $20
        .byte   $8B
L872F:  .byte   $87
        lda     (L00AD,x)
        sta     L068A
L8735:  jsr     L878B
        lda     (L00AD,x)
        .byte   $8D
L873B:  .byte   $8B
        asl     L0020
        .byte   $8B
        .byte   $87
        .byte   $A5
L8741:  lsr     LF029,x
        sta     L005F
        .byte   $A5
L8747:  lsr     L0F29,x
        sta     L005E
        clv
        bvc     L8764
L874F:  lda     L005E
        clc
        adc     L068A
        sta     L005E
        and     #$F0
        clc
        adc     L005F
        sta     L005F
        lda     L005E
        and     #$0F
        sta     L005E
L8764:  lda     L005E
        sta     (L00AA),y
        iny
        lda     L005F
        sta     (L00AA),y
        iny
        cpy     #$40
        bcc     L8724
        lda     L00AA
        clc
        adc     #$80
        sta     L00AA
        lda     L00AB
        adc     #$00
        sta     L00AB
        cmp     #$1E
        bcc     L8722
        lda     #$17
        ldy     #$00
        jsr     L8CBC
        rts

L878B:  lda     L00AD
        clc
        adc     #$01
        sta     L00AD
        bcc     L8796
        inc     L00AE
L8796:  rts

        brk
        brk
        rti

        brk
        ora     (L0020,x)
        jsr     L2001
        rti

        ora     (L0020,x)
        rts

        ora     (L0020,x)
        .byte   $80
        ora     (L0020,x)
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

L8818:  sta     L06A1
        lda     #$01
        sta     L06A2
        lda     #$00
        sta     L06A3
L8825:  lda     L06A3
        beq     L8825
        lda     L06A1
        jsr     L883B
        lda     #$03
        sta     L06A2
L8835:  lda     L06A3
        bne     L8835
        rts

L883B:  sta     L0651
        tay
        cmp     #$08
        bne     L8849
        jsr     LD5C2
        clv
        bvc     L884C
L8849:  jsr     LD5B8
L884C:  lda     L889C,y
        sta     L005C
        lda     L889D,y
        sta     L005D
        lda     #$02
        sta     L0682
        lda     #$00
        sta     L0683
        sta     L0684
        sta     L00AA
        lda     #$10
        sta     L00AB
L8869:  ldy     #$00
L886B:  jsr     L88AA
        lda     L0685
        sta     (L00AA),y
        iny
        lda     L0686
        sta     (L00AA),y
        iny
        cpy     #$54
        bcc     L886B
        lda     L00AA
        clc
        adc     #$80
        sta     L00AA
        lda     L00AB
        adc     #$00
        sta     L00AB
        cmp     #$1F
        bcc     L8869
        lda     L0651
        cmp     #$05
        bcs     L889B
        lda     #$36
        jsr     LD670
L889B:  rts

L889C:  .byte   $7C
L889D:  eor     (L007C),y
        eor     (L007C),y
        eor     (L0022),y
        .byte   $57
        .byte   $1C
        .byte   $7A
        cmp     (L005C,x)
        ror     L0062
L88AA:  ldx     #$00
        lda     L0682
        bne     L88BC
        dec     L0684
        bne     L88BB
        lda     #$02
        sta     L0682
L88BB:  rts

L88BC:  cmp     #$01
        bne     L88DA
L88C0:  clc
        lda     L0685
        adc     #$01
        sta     L0685
        bcc     L88CE
        inc     L0686
L88CE:  dec     L0683
        bne     L88D8
        lda     #$02
        sta     L0682
L88D8:  bne     L8945
L88DA:  lda     (L005C,x)
        sta     L0687
        bpl     L88E5
        lda     #$FF
        bne     L88E7
L88E5:  lda     #$00
L88E7:  sta     L0688
        jsr     L8946
        lda     L0687
        cmp     #$80
        bne     L8907
        lda     (L005C,x)
        sta     L0685
        jsr     L8946
        lda     (L005C,x)
        .byte   $8D
L88FF:  stx     L0006
        jsr     L8946
        clv
        bvc     L8945
L8907:  cmp     #$81
        bne     L891E
        lda     #$01
        sta     L0682
        lda     (L005C,x)
        sta     L0683
        jsr     L8946
        jmp     L88C0

        clv
        bvc     L8945
L891E:  cmp     #$7F
        bne     L8935
        lda     #$00
        sta     L0682
        lda     (L005C,x)
        sec
        sbc     #$01
        sta     L0684
        jsr     L8946
        clv
        bvc     L8945
L8935:  clc
        adc     L0685
        sta     L0685
        lda     L0688
        adc     L0686
        sta     L0686
L8945:  rts

L8946:  lda     L005C
        clc
        adc     #$01
        sta     L005C
        bcc     L8951
        inc     L005D
L8951:  rts

L8952:  lda     #$02
        sta     L0682
        lda     #$00
        sta     L0683
        sta     L0684
        sta     L068B
        lda     #$20
        sta     L00AA
        lda     #$16
        sta     L00AB
        tya
        asl     a
        tay
        jsr     LD5B8
        lda     L89AB,y
        sta     L005C
        lda     L89AC,y
        sta     L005D
L897A:  ldy     #$00
L897C:  jsr     L88AA
        lda     L0685
        sta     (L00AA),y
        iny
        lda     L0686
        and     #$0F
        ora     #$80
        sta     (L00AA),y
        iny
        cpy     #$14
        bcc     L897C
        lda     L00AA
        clc
        adc     #$80
        sta     L00AA
        lda     L00AB
        adc     #$00
        sta     L00AB
        inc     L068B
        lda     L068B
        cmp     #$08
        bcc     L897A
        rts

L89AB:  .byte   $04
L89AC:  lsr     L003B,x
        lsr     L0083,x
        lsr     L00BF,x
        lsr     L00F7,x
        lsr     L0011,x
        .byte   $57
L89B7:  lda     #$00
        sta     L068B
        lda     L06A4
        bne     L89CC
        lda     #$22
        sta     L00AA
        lda     #$13
        sta     L00AB
        clv
        bvc     L89D4
L89CC:  lda     #$2A
        sta     L00AA
        lda     #$13
        sta     L00AB
L89D4:  jsr     LD5B8
        tya
        asl     a
        tay
        lda     L8A1D,y
        sta     L005A
        lda     L8A1E,y
        sta     L005B
L89E4:  ldy     #$00
L89E6:  lda     (L005A),y
        sta     (L00AA),y
        iny
        lda     (L005A),y
        and     #$0F
        ora     #$50
        sta     (L00AA),y
        iny
        cpy     #$08
        bcc     L89E6
        lda     L00AA
        clc
        adc     #$80
        sta     L00AA
        lda     L00AB
        adc     #$00
        sta     L00AB
        .byte   $A5
L8A06:  .byte   $5A
        clc
        adc     #$08
        sta     L005A
        lda     L005B
        adc     #$00
        sta     L005B
        inc     L068B
        .byte   $AD
        .byte   $8B
L8A17:  asl     L00C9
        asl     L0090
        iny
        rts

L8A1D:  .byte   $6D
L8A1E:  ror     L009D
        ror     L00CD
        ror     L00FD
        ror     L002D
        .byte   $67
        eor     L8D67,x
        .byte   $67
        lda     LED67,x
        .byte   $67
        ora     L4D68,x
        pla
        adc     LAD68,x
        pla
        cmp     L0D68,x
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
L8A7B:  and     L6D6F,x
        .byte   $6F
        sta     LCD6F,x
        .byte   $6F
        sbc     L2D6F,x
        bvs     L8AE5
        bvs     L8A17
        bvs     L8A49
        bvs     L8A7B
        bvs     L8AAD
        adc     (L004D),y
        adc     (L007D),y
        adc     (L00AD),y
        adc     (L00DD),y
        adc     (L000D),y
        .byte   $72
        and     L6D72,x
        .byte   $72
        sta     LCD72,x
        .byte   $72
        sbc     L2D72,x
        .byte   $73
        eor     L8D73,x
        .byte   $73
        .byte   $BD
        .byte   $73
L8AAD:  sbc     L1D73
        .byte   $74
        eor     L7D74
        .byte   $74
        lda     LDD74
        .byte   $74
        ora     L3D75
        adc     L006D,x
        adc     L009D,x
        adc     L00CD,x
        adc     L00FD,x
        adc     L002D,x
        ror     L005D,x
        ror     L008D,x
        ror     L00BD,x
        ror     L00ED,x
        ror     L001D,x
        .byte   $77
        eor     L7D77
        .byte   $77
        lda     LDD77
        .byte   $77
        ora     L3D78
        sei
        adc     L9D78
        sei
        cmp     LFD78
        sei
L8AE5:  and     L5D79
        adc     L798D,y
        lda     LED79,x
        adc     L7A1D,y
        eor     L7D7A
        .byte   $7A
        lda     LDD7A
        .byte   $7A
        ora     L3D7B
        .byte   $7B
        adc     L9D7B
        .byte   $7B
        cmp     LFD7B
        .byte   $7B
        and     L5D7C
        .byte   $7C
        sta     LBD7C
        .byte   $7C
        sbc     L207C
        eor     #$E6
        cli
        jsr     L9290
        lda     #$00
        sta     L005E
        sta     L005F
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
        sta     L009B
        lda     L00B5
        ora     #$40
        sta     L00B5
        inc     L00B0
        lda     #$00
        sta     L0005
        lda     #$13
        sta     L001C
        lda     #$24
        sta     L001B
        lda     L00B5
        and     #$80
        beq     L8B85
        lda     L009B
        sec
        sbc     #$01
        bne     L8B77
        lda     #$1C
L8B77:  sta     L009B
        sta     L001F
        ldy     #$01
        jsr     LC858
        lda     #$03
        jsr     LC8A1
L8B85:  lda     L00B5
        and     #$40
        beq     L8BA4
        lda     L009B
        clc
        adc     #$01
        cmp     #$1D
        bcc     L8B96
        lda     #$01
L8B96:  sta     L009B
        sta     L001F
        ldy     #$01
        jsr     LC858
        lda     #$03
        jsr     LC8A1
L8BA4:  lda     L00B5
        and     #$10
        beq     L8BAF
        lda     L009B
        jsr     LE659
L8BAF:  lda     L00B5
        and     #$22
        beq     L8BBA
        lda     #$00
        jsr     LE659
L8BBA:  lda     L009B
        cmp     #$05
        bcs     L8BC4
        adc     #$2C
        bne     L8BC6
L8BC4:  lda     #$31
L8BC6:  ldy     #$00
        jsr     L8CBC
        jmp     L822E

L8BCE:  lda     L00AE
        cmp     #$01
        beq     L8C52
        cmp     #$20
        bcs     L8BDD
        lda     #$01
        clv
        bvc     L8BDF
L8BDD:  lda     #$02
L8BDF:  ora     L00AF
        sta     L00AF
        rts

L8BE4:  sta     L3000
        tay
        lda     #$5A
        bne     L8C02
L8BEC:  sta     L3000
        tay
        lda     #$31
        bne     L8C02
L8BF4:  sta     L3000
        tay
        lda     #$30
        bne     L8C02
L8BFC:  sta     L3000
        tay
L8C00:  lda     #$49
L8C02:  sta     L11AC
        txa
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        ora     #$30
        cmp     #$3A
L8C0E:  bcc     L8C12
        adc     #$07
L8C12:  sta     L11A0
        txa
        and     #$0F
        ora     #$30
        cmp     #$3A
        bcc     L8C20
        adc     #$07
L8C20:  sta     L11A2
        tya
        lsr     a
L8C25:  lsr     a
        lsr     a
        lsr     a
        ora     #$30
        cmp     #$3A
        bcc     L8C30
        adc     #$07
L8C30:  sta     L11A6
        tya
        and     #$0F
        ora     #$30
        cmp     #$3A
        bcc     L8C3E
        adc     #$07
L8C3E:  sta     L11A8
        lda     #$00
        sta     L11A1
        sta     L11A3
        sta     L11A7
        sta     L11A9
        sta     L11AD
L8C52:  ldx     #$00
L8C54:  lda     L8C8C,x
        sta     L118A,x
        inx
        cpx     #$14
        bcc     L8C54
        ldx     #$0F
        lda     #$FF
L8C63:  sta     L2000,x
        dex
        bpl     L8C63
        lda     #$00
        tax
        tay
        sta     L2000
        lda     #$A8
        sta     L2800
        sta     L2801
L8C78:  sta     L3000
L8C7B:  iny
        bne     L8C7B
        inx
        bne     L8C78
        lda     #$00
        sta     L2800
        sta     L2801
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
L8CA0:  sty     L0067
L8CA2:  ldy     #$00
        sty     L00AD
        stx     L00AE
        cpx     #$60
        bne     L8CAD
        iny
L8CAD:  clc
        adc     (L00AD),y
        iny
        bne     L8CAD
        sta     L3000
        inx
        dec     L0067
        bne     L8CA2
        rts

L8CBC:  sty     L0021
        asl     a
        tay
        lda     L8CEC,y
        sta     L00A8
        lda     L8CED,y
        sta     L00A9
        .byte   $A0
L8CCB:  brk
        ldx     #$00
        lda     (L00A8),y
        sta     L00AA
        iny
        lda     (L00A8),y
        sta     L00AB
        iny
        lda     (L00A8),y
L8CDA:  sta     (L00AA,x)
        inc     L00AA
        lda     L0021
        sta     (L00AA,x)
        inc     L00AA
        iny
        lda     (L00A8),y
        cmp     #$FF
        bne     L8CDA
L8CEB:  rts

L8CEC:  .byte   $74
L8CED:  sta     L8D84
        sta     L008D,x
        .byte   $AB
        sta     L8DC2
        .byte   $D4
L8CF7:  sta     L8DE6
        sbc     (L008D),y
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
        sta     L008E,x
        ldx     L008E
        ldx     L008E,y
        dec     LDD8E
L8D1B:  stx     L8F02
        ora     L418F,y
        .byte   $8F
        .byte   $62
        .byte   $8F
        .byte   $6F
        .byte   $8F
        sei
L8D27:  .byte   $8F
        sta     (L008F,x)
        txa
        .byte   $8F
        .byte   $93
        .byte   $8F
        .byte   $9C
        .byte   $8F
        lda     L008F
        .byte   $B7
        .byte   $8F
        cld
        .byte   $8F
        ora     (L0090,x)
        rol     a
        bcc     L8D65
        bcc     L8D8D
        bcc     L8DB3
        bcc     L8DBF
        bcc     L8CCB
        .byte   $90
L8D44:  sta     L0090,x
L8D46:  ldy     L0090
        .byte   $AE
L8D49:  bcc     L8D03
        bcc     L8D0F
        bcc     L8D1B
        bcc     L8D27
        bcc     L8D46
        bcc     L8D61
        sta     (L002E),y
        sta     (L0051),y
        sta     (L0061),y
        sta     (L0071),y
        sta     (L0087),y
        sta     (L0095),y
L8D61:  sta     (L00AF),y
        sta     (L00CA),y
L8D65:  sta     (L00D1),y
L8D67:  sta     (L00D8),y
        .byte   $91
L8D6A:  .byte   $DF
        sta     (L00E6),y
        sta     (L0005),y
        .byte   $92
        jsr     L4292
L8D73:  .byte   $92
        .byte   $04
        ora     (L003B),y
        eor     (L004D,x)
        jsr     L5441
        jsr     L3034
        .byte   $42
        jsr     L4B4F
        .byte   $FF
L8D84:  .byte   $04
        ora     (L003B),y
        eor     (L004D,x)
        jsr     L5441
        .byte   $20
L8D8D:  .byte   $34
        bmi     L8DD2
        jsr     L4142
        .byte   $44
        .byte   $FF
        bit     L4311
        .byte   $4F
        jmp     L3B4F

        jsr     L413B
        eor     L4120
        .byte   $54
        jsr     L3033
        lsr     L0020
        .byte   $4F
        .byte   $4B
        .byte   $FF
        bit     L4311
        .byte   $4F
        jmp     L3B4F

        .byte   $20
L8DB3:  .byte   $3B
        eor     (L004D,x)
        jsr     L5441
        jsr     L3033
        lsr     L0020
        .byte   $42
L8DBF:  eor     (L0044,x)
        .byte   $FF
L8DC2:  .byte   $04
        .byte   $12
        .byte   $3B
        .byte   $4F
        eor     L4120
        .byte   $54
        jsr     L3534
        lsr     L0020
        .byte   $42
        eor     (L0044,x)
L8DD2:  jsr     L84FF
        .byte   $12
        .byte   $3B
        .byte   $4F
        eor     L4120
        .byte   $54
        jsr     L3533
        lsr     L0020
        .byte   $42
        eor     (L0044,x)
        .byte   $20
        .byte   $FF
L8DE6:  sty     L0014
        .byte   $53
        eor     L004C
        lsr     L0054
        eor     L0053
        .byte   $54
        .byte   $FF
        .byte   $04
        ora     L0056,x
        .byte   $42
        jmp     L4E41

        .byte   $4B
        .byte   $FF
        sty     L0015
        .byte   $53
        bvc     L8E40
        .byte   $3B
        eor     L0031
L8E02:  .byte   $FF
        .byte   $04
L8E04:  asl     L0053,x
        bvc     L8E49
        .byte   $3B
        eor     L0032
        .byte   $FF
        sty     L0016
        lsr     L003B
        eor     L0045
        .byte   $5A
        eor     L0020
        .byte   $53
        .byte   $54
        eor     L0050
        .byte   $FF
L8E1A:  .byte   $04
        .byte   $17
        lsr     L003B
        eor     L0045
        .byte   $5A
        eor     L00FF
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
L8E40:  eor     (L0059,x)
        eor     L003B
        jsr     L2032
        .byte   $4C
        .byte   $45
L8E49:  lsr     L0054
        .byte   $FF
L8E4C:  jsr     L5015
        jmp     L5941

        eor     L003B
        jsr     L2032
        .byte   $3B
        eor     #$47
        pha
        .byte   $54
        .byte   $FF
        ldy     #$15
        bvc     L8EAD
        eor     (L0059,x)
        eor     L003B
        jsr     L2032
        .byte   $44
        .byte   $4F
        .byte   $57
        lsr     L20FF
        asl     L0050,x
        jmp     L5941

        eor     L003B
        jsr     L2032
        .byte   $3B
        .byte   $4F
        .byte   $54
        eor     (L0054,x)
        eor     L002D
        .byte   $53
        .byte   $54
        eor     (L003B,x)
        .byte   $54
        .byte   $FF
L8E85:  ldy     #$16
        bvc     L8ED5
        eor     (L0059,x)
        .byte   $45
L8E8C:  .byte   $3B
        jsr     L2031
        jmp     L4645

        .byte   $54
        .byte   $FF
        jsr     L5017
        jmp     L5941

        eor     L003B
        jsr     L2031
        .byte   $3B
        eor     #$47
        pha
        .byte   $54
        .byte   $FF
        ldy     #$17
        bvc     L8EF6
        eor     (L0059,x)
        .byte   $45
L8EAD:  .byte   $3B
        jsr     L2031
        .byte   $44
        .byte   $4F
        .byte   $57
        lsr     L20FF
        clc
        bvc     L8F06
        eor     (L0059,x)
        eor     L003B
        jsr     L2031
        .byte   $3B
        .byte   $4F
        .byte   $54
        eor     (L0054,x)
        eor     L002D
        .byte   $53
        .byte   $54
        eor     (L003B,x)
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
        eor     L0053
        .byte   $54
        .byte   $FF
        stx     L001D
        bvc     L8F1C
        eor     L0053
        .byte   $53
        jsr     L4C50
        eor     (L0059,x)
        eor     L003B
        jsr     L2031
        .byte   $53
        .byte   $54
        eor     (L003B,x)
        .byte   $54
        jsr     L4F46
L8EF6:  .byte   $3B
        jsr     L454E
        cli
        .byte   $54
        jsr     L4554
        .byte   $53
L8F00:  .byte   $54
        .byte   $FF
L8F02:  .byte   $14
        .byte   $13
        .byte   $53
        .byte   $43
L8F06:  .byte   $3B
        eor     L0045
        lsr     L5020
        eor     (L0054,x)
        .byte   $54
        eor     L003B
        .byte   $4E
        .byte   $20
L8F13:  .byte   $54
L8F14:  eor     L0053
        .byte   $54
L8F17:  .byte   $53
        .byte   $FF
        .byte   $02
        .byte   $1E
        .byte   $50
L8F1C:  jmp     L5941

        eor     L003B
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
        eor     L003B
        lsr     L82FF
        asl     L4C50,x
        eor     (L0059,x)
        eor     L003B
        jsr     L2032
        .byte   $53
        .byte   $54
        eor     (L003B,x)
        .byte   $54
        jsr     L4F54
        jsr     L4843
        eor     (L004E,x)
        .byte   $47
        eor     L0020
        .byte   $43
        .byte   $4F
        jmp     L3B4F

        .byte   $FF
        asl     L4311,x
        .byte   $4F
        jmp     L3B4F

        jsr     L4554
        .byte   $53
        .byte   $54
        .byte   $FF
        cpy     #$1E
        jsr     L4857
        eor     #$54
        eor     L00FF
        .byte   $C0
L8F79:  asl     L4720,x
        .byte   $3B
        eor     L0059
        jsr     LC0FF
        asl     L2020,x
        .byte   $3B
        eor     L0044
        jsr     LC0FF
        asl     L4720,x
        .byte   $3B
        eor     L0045
        lsr     LC0FF
        asl     L4220,x
        jmp     L4555

        jsr     LC0FF
        asl     L4956,x
        .byte   $4F
        jmp     L5445

        .byte   $FF
        .byte   $14
        ora     (L0032),y
        and     L0036,x
        and     L4F43
        jmp     L3B4F

        jsr     L4554
        .byte   $53
        .byte   $54
        .byte   $53
        .byte   $FF
        asl     a
        bpl     L8FF5
        eor     L004E,x
        jsr     L454C
        lsr     L5447
        pha
        jsr     L4E45
        .byte   $43
        .byte   $4F
        .byte   $44
        eor     L0044
        jsr     L4353
        .byte   $3B
        eor     L0045
        lsr     L4420
        .byte   $3B
        eor     (L0057,x)
        .byte   $FF
        .byte   $02
        asl     L5550,x
        .byte   $53
        pha
        jsr     L4C50
        eor     (L0059,x)
        eor     L003B
        jsr     L2031
        .byte   $53
        .byte   $54
        eor     #$43
        .byte   $4B
        jsr     L454C
        lsr     L0054
        jsr     L4F54
L8FF5:  jsr     L453B
        .byte   $54
        eor     L0053
        .byte   $54
        jsr     L413B
        eor     L02FF
        asl     L2020,x
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        .byte   $20
        .byte   $20
L9013:  .byte   $20
L9014:  .byte   $20
L9015:  .byte   $20
L9016:  .byte   $20
L9017:  .byte   $20
L9018:  .byte   $20
L9019:  .byte   $20
L901A:  jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        .byte   $FF
        asl     L001E
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
        sty     L411E
        lsr     L2044
        bvc     L9093
        eor     L0053
        .byte   $53
        jsr     L4C50
        eor     (L0059,x)
        eor     L003B
        jsr     L2032
        .byte   $53
        .byte   $54
        eor     (L003B,x)
        .byte   $54
        jsr     L4F54
        jsr     L453B
        .byte   $53
        eor     L0054
        .byte   $FF
        asl     L001A
        .byte   $57
        .byte   $4F
        .byte   $3B
        .byte   $4B
        eor     #$4E
        .byte   $47
        .byte   $FF
        asl     L001A
        jsr     L2020
L9083:  jsr     L2020
        jsr     L1EFF
        ora     (L0041),y
        eor     L0044,x
        eor     #$4F
        jsr     L4554
        .byte   $53
L9093:  .byte   $54
        .byte   $FF
        asl     a
        .byte   $13
        .byte   $53
        .byte   $4F
        eor     L004E,x
        .byte   $44
        jsr     L554E
        eor     L4542
        .byte   $3B
        .byte   $FF
        rol     a
        .byte   $13
        eor     (L0055),y
        eor     #$45
        .byte   $54
        jsr     LFF20
        rol     a
        .byte   $13
        lsr     L494F
        .byte   $53
        eor     L2020,y
        .byte   $FF
        rol     a
        .byte   $13
        bvc     L910B
        .byte   $4B
        eor     L0059
        jsr     LFF31
        rol     a
        .byte   $13
        bvc     L9115
        .byte   $4B
        eor     L0059
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
        eor     (L004E,x)
        .byte   $47
        eor     L0020
        .byte   $53
        .byte   $4F
        eor     L004E,x
        .byte   $44
        jsr     L554E
        eor     L4542
        .byte   $3B
L910B:  .byte   $FF
        php
L910D:  ora     L3B50,y
        eor     L0053
        .byte   $53
        .byte   $20
        .byte   $50
L9115:  jmp     L5941

        eor     L003B
        jsr     L2032
        .byte   $53
        .byte   $54
        eor     (L003B,x)
        .byte   $54
        jsr     L4F54
        jsr     L4548
        eor     (L003B,x)
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
        eor     L004E,x
        .byte   $44
        .byte   $53
        .byte   $FF
        asl     L4311,x
        .byte   $4F
        eor     #$4E
        jsr     L504F
        .byte   $54
        eor     #$4F
        lsr     L2953
        .byte   $FF
        asl     L4711,x
        eor     (L004D,x)
        eor     L0020
        .byte   $4F
        .byte   $50
L916A:  .byte   $54
        eor     #$4F
        lsr     L2953
        .byte   $FF
        clc
        ora     (L0045),y
        eor     L003B
        .byte   $4F
        eor     L3B20
        eor     L0053
        eor     L0054
        jsr     L504F
        .byte   $54
        eor     #$4F
        lsr     LFF53
L9187:  .byte   $9E
        .byte   $17
        bvc     L91D7
        eor     L0041
        .byte   $53
        eor     L0020
        .byte   $57
        eor     (L0049,x)
        .byte   $54
        .byte   $FF
        php
        .byte   $1C
        bvc     L91D4
        eor     L0053
        .byte   $53
        jsr     L4C50
        eor     (L0059,x)
        eor     L003B
        jsr     L2032
        .byte   $53
        .byte   $54
        eor     (L003B,x)
        .byte   $54
        jsr     L4F54
        .byte   $FF
        sty     L3B1C
        eor     L0053
        .byte   $54
        .byte   $4F
        .byte   $3B
        eor     L0020
        .byte   $4F
        .byte   $3B
        eor     #$47
        eor     #$4E
        eor     (L004C,x)
        jsr     L4553
        .byte   $54
        .byte   $54
        eor     #$4E
        .byte   $47
        .byte   $FF
        .byte   $0C
        ora     (L004D),y
        .byte   $4F
        .byte   $3B
        eor     L00FF
        .byte   $0C
        ora     (L0020),y
L91D4:  jsr     L2020
L91D7:  .byte   $FF
        sty     L4D1B
        .byte   $4F
        .byte   $3B
        eor     L00FF
        sty     L201B
        jsr     L2020
        .byte   $FF
        asl     L001D
        bvc     L9225
        eor     L0053
        .byte   $53
        jsr     L4C50
        eor     (L0059,x)
        eor     L003B
        jsr     L2031
        .byte   $53
        .byte   $54
        eor     (L003B,x)
        .byte   $54
        jsr     L4F54
        jsr     L4153
        lsr     L0045,x
        .byte   $FF
        stx     L001D
        jsr     L4120
        lsr     L2044
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
        asl     L001D
        bvc     L925F
        .byte   $45
L9225:  .byte   $53
        .byte   $53
        jsr     L4C50
        eor     (L0059,x)
        eor     L003B
        jsr     L2031
        .byte   $53
        .byte   $54
        eor     (L003B,x)
        .byte   $54
        jsr     L4F54
        jsr     L4550
        .byte   $3B
        lsr     L004F
        .byte   $3B
        eor     L86FF
        ora     L2020,x
        .byte   $3B
        eor     L0053
L9249:  eor     L0054
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
        eor     L0053
        .byte   $54
        .byte   $FF
        pha
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
        sta     (L0002),y
        iny
        lda     #$00
        sta     (L0002),y
        iny
        pla
        and     #$0F
        cmp     #$0A
        bcc     L9286
        clc
        adc     #$07
L9286:  adc     #$30
        sta     (L0002),y
        iny
        lda     #$00
        sta     (L0002),y
        rts

L9290:  ldy     #$00
L9292:  lda     L929C,y
        sta     L2000,y
        iny
        bne     L9292
        rts

L929C:  brk
        adc     a:L00FF
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
        ldx     L0049,y
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
        ora     (L0001,x)
        ora     (L0001,x)
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
        cpx     L0604
        lsr     a
        stx     LB141
        dec     L0049,x
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
        dec     L00A0,x
        brk
        brk
L9380:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        dec     L0002,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L939C:  ldy     L0689
        iny
        cpy     #$06
        bcc     L93A6
        ldy     #$00
L93A6:  sty     L0689
        lda     L93C2,y
        sta     L200F
        sta     L2061
        sta     L2062
        sta     L2063
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
        lda     L00AD
        clc
        adc     #$01
        sta     L00AD
        lda     L00AE
        adc     #$00
        sta     L00AE
        pla
        rts

L93D8:  lda     L06E8
        sta     L00AD
        lda     L06E9
        sta     L00AE
        lda     #$00
        sta     L06EE
        tay
L93E8:  lda     (L00AD),y
        jsr     L93C8
        and     #$07
        beq     L940A
        tay
        lda     L9443,y
        sta     L001E
        ldy     #$00
L93F9:  lda     (L00AD),y
        jsr     L93C8
        bne     L93F9
        dec     L001E
        bpl     L93F9
        inc     L06EE
        jmp     L93E8

L940A:  dec     L06EE
        rts

L940E:  sta     L001D
        lda     L06E8
        sta     L00AD
        lda     L06E9
        sta     L00AE
        lda     L001D
        beq     L9440
        ldy     #$00
L9420:  lda     (L00AD),y
        jsr     L93C8
        and     #$07
        beq     L9442
        tay
        lda     L9443,y
        sta     L001E
        ldy     #$00
L9431:  lda     (L00AD),y
        jsr     L93C8
        bne     L9431
        dec     L001E
        bpl     L9431
        dec     L001D
        bne     L9420
L9440:  lda     #$01
L9442:  rts

L9443:  ora     (L0002,x)
        .byte   $04
        php
        bpl     L9469
        rti

        .byte   $80
L944B:  ldy     #$00
        lda     (L00AD),y
        sta     L001F
        lsr     a
        lsr     a
        lsr     a
        sta     L0021
        lda     L001F
        and     #$07
        beq     L94D6
        tay
        lda     L9443,y
        sec
        sbc     #$01
        sta     L0022
        lda     L06E4
        .byte   $85
L9469:  .byte   $1B
        lda     L06E5
        sta     L001C
        lda     L06E6
        sta     L001D
        lda     L06E7
        sta     L001E
        ldy     #$00
L947B:  dec     L0021
        bmi     L948A
        .byte   $46
L9480:  .byte   $1B
        ror     L001C
        lsr     L001D
        ror     L001E
        jmp     L947B

L948A:  lda     L0022
        and     L001C
        sta     L001C
        lda     L0022
        and     L001E
        sta     L001E
        jsr     L93C8
        jsr     L9732
        lda     L001C
        sta     L0020
        ldy     #$00
L94A2:  lda     (L00AD),y
        jsr     L93C8
        bne     L94A2
        dec     L0020
        bpl     L94A2
        lda     L001C
        cmp     L001E
        bne     L94B9
        lda     L0005
        ora     #$10
        sta     L0005
L94B9:  jsr     L9742
        lda     L0005
        and     #$EF
        sta     L0005
        lda     L0022
        sec
        sbc     L001C
        sta     L0020
        ldy     #$00
L94CB:  lda     (L00AD),y
        jsr     L93C8
        bne     L94CB
        dec     L0020
        bpl     L94CB
L94D6:  ldy     #$00
        lda     (L00AD),y
        rts

L94DB:  jsr     L940E
        beq     L94F7
        lda     #$03
        sta     L068B
L94E5:  jsr     L944B
        beq     L94F7
        lda     L068B
        clc
        adc     #$03
        sta     L068B
        cmp     #$18
        bcc     L94E5
L94F7:  lda     #$03
        sta     L068B
        rts

L94FD:  jsr     L93D8
        lda     #$00
        sta     L06EF
        sta     L00B1
        sta     L0005
        jsr     L94DB
        lda     L00B1
        jsr     L940E
        beq     L952A
        lda     #$20
        sta     L0005
        jsr     L944B
        lda     #$00
        sta     L0005
        lda     L06E8
        sta     L06EA
        lda     L06E9
        sta     L06EB
L952A:  rts

L952B:  lda     L06E4
        sta     L06E2
        lda     L06E5
        sta     L06E3
        lda     L00B5
        and     #$08
        beq     L9548
        dec     L00B1
        bpl     L9545
        lda     #$00
        sta     L00B1
L9545:  clv
        bvc     L9557
L9548:  lda     L00B5
        and     #$06
        beq     L9557
        lda     L00B1
        cmp     L06EE
        bcs     L9557
        inc     L00B1
L9557:  lda     L00B5
        and     #$1E
        beq     L95A6
        lda     #$01
        sta     L0005
        lda     L06EF
        jsr     L94DB
        lda     #$00
        sta     L0005
        lda     L00B5
        and     #$10
        beq     L9581
        lda     L05C0
        sta     L06E4
        lda     L05C1
        sta     L06E5
        lda     #$00
        sta     L00B1
L9581:  lda     L00B1
        cmp     L06EF
        bcs     L958E
        sta     L06EF
        clv
        bvc     L95A0
L958E:  lda     L06EF
        clc
        adc     #$06
        cmp     L00B1
        bcs     L95A0
        lda     L00B1
        sec
        sbc     #$06
        sta     L06EF
L95A0:  lda     L06EF
        jsr     L94DB
L95A6:  lda     L06EF
        bne     L95AF
        lda     #$3D
        bne     L95B1
L95AF:  lda     #$3C
L95B1:  ldy     #$00
        jsr     L8CBC
        lda     L06EE
        sec
        sbc     L06EF
        cmp     #$07
        bcc     L95C5
        lda     #$3E
        bne     L95C7
L95C5:  lda     #$3F
L95C7:  ldy     #$00
        jsr     L8CBC
        lda     L00B1
        jsr     L940E
        lda     L00AD
        sta     L06EA
        lda     L00AE
        sta     L06EB
        ldy     #$00
        lda     (L00AD),y
        sta     L001F
        lsr     a
        lsr     a
        lsr     a
        sta     L0021
        lda     L001F
        and     #$07
        bne     L95EF
        jmp     L96B7

L95EF:  tay
        lda     L9443,y
        sta     L001F
        sec
        sbc     #$01
        sta     L06ED
        lda     #$00
        sta     L06EC
        ldy     L0021
L9602:  dey
        bmi     L960E
        asl     L06ED
        rol     L06EC
        jmp     L9602

L960E:  lda     L0021
        and     #$0F
        asl     a
        tay
        lda     L977A,y
        sta     L001E
        lda     L977B,y
        sta     L001D
        lda     L00B5
        and     #$C0
        beq     L9654
        jsr     L96B8
        lda     L06EC
        and     L06E4
        sta     L001D
        lda     L06ED
        and     L06E5
        sta     L001E
        ldy     L0021
L9639:  dey
        bmi     L9643
        lsr     L001D
        ror     L001E
        jmp     L9639

L9643:  ldy     #$00
L9645:  lda     (L00AD),y
        jsr     L93C8
        bne     L9645
        dec     L001E
        bpl     L9645
        lda     (L00AD),y
        beq     L960E
L9654:  lda     L00B5
        and     #$DE
        beq     L96B7
        lda     L00B1
        sec
        sbc     L06EF
        clc
        adc     #$01
        sta     L068B
        asl     a
        adc     L068B
        sta     L068B
        lda     L06E4
        sta     L05C2
        lda     L06E5
        sta     L05C3
        lda     L06E2
        sta     L06E4
        lda     L06E3
        sta     L06E5
        lda     L06EA
        sta     L00AD
        lda     L06EB
        sta     L00AE
        lda     #$01
        sta     L0005
        jsr     L944B
        lda     L05C2
        sta     L06E4
        lda     L05C3
        sta     L06E5
        lda     L06EA
        sta     L00AD
        lda     L06EB
        sta     L00AE
        lda     #$20
        sta     L0005
        jsr     L944B
        lda     #$00
        sta     L0005
L96B7:  rts

L96B8:  and     #$80
        beq     L96F5
        lda     L06EC
        and     L06E4
        bne     L96E1
        lda     L06ED
        and     L06E5
        bne     L96E1
        lda     L06E4
        ora     L06EC
        sta     L06E4
        lda     L06E5
        ora     L06ED
        sta     L06E5
        clv
        bvc     L96F2
L96E1:  lda     L06E5
        sec
        sbc     L001E
        sta     L06E5
        lda     L06E4
        sbc     L001D
        sta     L06E4
L96F2:  clv
        bvc     L9731
L96F5:  lda     L06E4
        and     L06EC
        cmp     L06EC
        bne     L9720
        lda     L06E5
        and     L06ED
        cmp     L06ED
        bne     L9720
        lda     L06E5
        eor     L06ED
        sta     L06E5
        lda     L06E4
        eor     L06EC
        sta     L06E4
        clv
        bvc     L9731
L9720:  lda     L06E5
        clc
        adc     L001E
        sta     L06E5
        lda     L06E4
        adc     L001D
        sta     L06E4
L9731:  rts

L9732:  lda     L068B
        lsr     a
        ora     #$10
        sta     L00AB
        lda     #$08
        ror     a
        sta     L00AA
        jmp     L9752

L9742:  lda     L068B
        clc
        adc     #$01
        lsr     a
        ora     #$10
        sta     L00AB
        lda     #$0C
        ror     a
        sta     L00AA
L9752:  ldy     #$00
        ldx     #$00
L9756:  lda     (L00AD),y
        beq     L9779
        lda     L0005
        and     #$01
        beq     L9769
        lda     #$00
        sta     (L00AA,x)
        inc     L00AA
        clv
        bvc     L9771
L9769:  lda     (L00AD),y
        sta     (L00AA,x)
        inc     L00AA
        lda     L0005
L9771:  sta     (L00AA,x)
        inc     L00AA
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
        and     (L0020),y
        .byte   $43
        .byte   $4F
        eor     #$4E
        jsr     L3120
        jsr     L3B43
        eor     L0044
        eor     #$54
        brk
        .byte   $32
        jsr     L4F43
        eor     #$4E
        .byte   $53
        jsr     L2031
        .byte   $43
        .byte   $3B
        eor     L0044
        eor     #$54
        brk
        .byte   $33
        jsr     L4F43
        eor     #$4E
        .byte   $53
        jsr     L2031
        .byte   $43
        .byte   $3B
        eor     L0044
        eor     #$54
        brk
        .byte   $34
        jsr     L4F43
        eor     #$4E
        .byte   $53
        jsr     L2031
        .byte   $43
        .byte   $3B
        eor     L0044
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
        and     (L0020),y
        .byte   $43
        .byte   $4F
        eor     #$4E
        jsr     L4F43
        eor     L004E,x
        .byte   $54
        .byte   $53
        jsr     L5341
        jsr     L2031
        .byte   $43
        .byte   $4F
        eor     #$4E
        brk
        and     (L0020),y
        .byte   $43
        .byte   $4F
        eor     #$4E
        jsr     L4F43
        eor     L004E,x
        .byte   $54
        .byte   $53
        jsr     L5341
        jsr     L2034
        .byte   $43
        .byte   $4F
        eor     #$4E
        .byte   $53
        brk
        and     (L0020),y
        .byte   $43
        .byte   $4F
        eor     #$4E
        jsr     L4F43
        eor     L004E,x
        .byte   $54
        .byte   $53
        jsr     L5341
        jsr     L2035
        .byte   $43
        .byte   $4F
        eor     #$4E
L9848:  .byte   $53
        brk
        and     (L0020),y
        .byte   $43
        .byte   $4F
        eor     #$4E
        jsr     L4F43
        eor     L004E,x
        .byte   $54
        .byte   $53
        jsr     L5341
        jsr     L2036
        .byte   $43
        .byte   $4F
        eor     #$4E
        .byte   $53
        brk
        and     (L004C,x)
        eor     L0046
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
        and     (L0020),y
        .byte   $43
        .byte   $4F
        eor     #$4E
        jsr     L4F43
        eor     L004E,x
        .byte   $54
        .byte   $53
        jsr     L5341
        jsr     L2031
        .byte   $43
        .byte   $4F
        eor     #$4E
        brk
        and     (L0020),y
        .byte   $43
        .byte   $4F
        eor     #$4E
        jsr     L4F43
        eor     L004E,x
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
        lsr     L5355
        jsr     L4441
        .byte   $44
        eor     L003B
        brk
        lsr     L204F
        .byte   $42
        .byte   $4F
        lsr     L5355
        .byte   $20
        .byte   $41
L98C1:  .byte   $44
        .byte   $44
        eor     L003B
        brk
        .byte   $32
        jsr     L4F43
        eor     #$4E
        .byte   $53
        jsr     L4947
        lsr     L0045,x
        .byte   $53
        jsr     L2031
        eor     L0058
        .byte   $54
        .byte   $3B
        eor     (L0020,x)
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
        eor     L0058
        .byte   $54
        .byte   $3B
        eor     (L0020,x)
        .byte   $43
        .byte   $4F
        eor     #$4E
        brk
        .byte   $34
        jsr     L4F43
        eor     #$4E
L9902:  .byte   $53
        jsr     L4947
        lsr     L0045,x
        .byte   $53
        jsr     L2032
        eor     L0058
        .byte   $54
        .byte   $3B
        eor     (L0020,x)
        .byte   $43
        .byte   $4F
        eor     #$4E
        .byte   $53
        brk
        and     L0020,x
        .byte   $43
        .byte   $4F
        eor     #$4E
        .byte   $53
        jsr     L4947
        lsr     L0045,x
        .byte   $53
        jsr     L2031
        eor     L0058
        .byte   $54
        .byte   $3B
        eor     (L0020,x)
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
        eor     L0058
        .byte   $54
        .byte   $3B
        eor     (L0020,x)
        .byte   $43
        .byte   $4F
        eor     #$4E
        brk
        brk
        lsr     L003B
        eor     L0045
        jsr     L4C50
        eor     (L0059,x)
        brk
        brk
        .byte   $02
        .byte   $44
        eor     #$46
        lsr     L0049
        .byte   $43
        eor     L004C,x
        .byte   $54
        eor     L4500,y
        eor     (L0053,x)
        eor     L4D00,y
        eor     L0044
        eor     #$55
        eor     L4800
        eor     (L003B,x)
        .byte   $44
        brk
        pha
        eor     (L003B,x)
        .byte   $44
        eor     L0053
        .byte   $54
        brk
        ora     (L0041),y
        .byte   $54
        .byte   $54
        .byte   $3B
        eor     (L0043,x)
        .byte   $54
        jsr     L554D
        .byte   $53
        eor     #$43
        brk
        lsr     a:L004F
        eor     L5345,y
        brk
        adc     L5541,y
        .byte   $54
        .byte   $4F
        jsr     L4948
        .byte   $47
        pha
        and     L4353
        .byte   $4F
        .byte   $3B
        eor     L002D
        .byte   $54
        eor     (L0042,x)
        jmp     L2045

        .byte   $3B
        eor     L0053
        eor     L0054
        brk
        lsr     a:L004F
        eor     L5345,y
        brk
        brk
        ora     (L003B,x)
        eor     L0053
        eor     L0054
        jsr     L4948
        .byte   $47
        pha
        and     L4353
        .byte   $4F
        .byte   $3B
        eor     L0020
        .byte   $54
        eor     (L0042,x)
        jmp     L0045

        lsr     a:L004F
        eor     L5345,y
        brk
        ora     (L0053),y
        eor     L0054
        jsr     L504F
        .byte   $54
        eor     #$4F
        lsr     L2053
        .byte   $54
        .byte   $4F
        jsr     L4146
        .byte   $43
        .byte   $54
        .byte   $4F
        .byte   $3B
        eor     L4420,y
        eor     L0046
        eor     (L0055,x)
        jmp     L5354

        brk
        lsr     a:L004F
        eor     L5345,y
        brk
        ora     #$49
        lsr     L5449
        eor     #$41
        jmp     L5A49

        eor     L0020
        eor     L0045
        .byte   $3B
        .byte   $4F
        eor     L2020
        and     L202D
        .byte   $42
        eor     L0057
        eor     (L003B,x)
        eor     L0000
        lsr     a:L004F
        eor     L5345,y
        bit     L0020
        .byte   $54
        pha
        eor     #$53
        jsr     L4957
        jmp     L204C

        eor     L003B
        eor     (L0053,x)
        eor     L0020
        .byte   $53
        .byte   $54
        eor     (L0054,x)
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
        lda     L0009
        beq     L9A48
        lda     #$00
        sta     L0009
        lda     L08BC
        and     #$E0
        cmp     #$E0
        bne     L9A63
        lda     #$02
        sta     a:L00C1
L9A63:  lda     L0008
        beq     L9A80
        lda     L0055
        cmp     L0054
        bne     L9A80
        lda     L006E
        cmp     #$FF
        bne     L9A80
        lda     L006D
        cmp     L006C
        bne     L9A80
        lda     L0058
        bpl     L9A80
        jmp     L829B

L9A80:  lda     L0058
        and     #$0C
        cmp     #$0C
        beq     L9A90
        lda     #$01
        sta     L0015
        lda     #$10
        sta     L0016
L9A90:  lda     L0058
        and     #$04
        beq     L9AAA
        dec     L0015
        bpl     L9A48
        lda     L0016
        sta     L0015
        cmp     #$03
        bcc     L9AA6
        sbc     #$02
        bne     L9AA8
L9AA6:  lda     #$01
L9AA8:  sta     L0016
L9AAA:  jsr     LD6DB
        jsr     LC247
        lda     L06A2
        bne     L9B2A
        lda     L0043
        bne     L9B24
        lda     L06A5
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
        lda     L0035
        bne     L9B00
        ldx     #$00
        .byte   $20
        .byte   $2E
L9AFF:  .byte   $A0
L9B00:  lda     L0036
        bne     L9B09
        ldx     #$01
        jsr     LA02E
L9B09:  lda     L0035
        bne     L9B12
        ldx     #$00
        jsr     L9BD0
L9B12:  lda     L0036
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

L9B2D:  lda     L0029,x
        and     #$FD
        cpx     #$00
        beq     L9B3C
        ldy     L0619
        cpy     #$03
        bcs     L9B40
L9B3C:  ldy     L0008
        beq     L9B41
L9B40:  rts

L9B41:  tay
        lda     L0027,x
        sta     L001B
        and     #$08
        beq     L9B5B
        lda     L0622,x
        clc
        adc     #$01
        sta     L0622,x
        cmp     #$0B
        bcc     L9B60
        tya
        ora     #$08
        tay
L9B5B:  lda     #$00
        sta     L0622,x
L9B60:  lda     L001B
        and     #$04
        beq     L9B77
        lda     L0624,x
        clc
        adc     #$01
        sta     L0624,x
        cmp     #$0B
        bcc     L9B7C
        tya
        ora     #$04
        tay
L9B77:  lda     #$00
        sta     L0624,x
L9B7C:  lda     L001B
        and     #$01
        beq     L9B93
        lda     L0626,x
        clc
        adc     #$01
        sta     L0626,x
        cmp     #$1D
        bcc     L9B98
        tya
        ora     #$01
        tay
L9B93:  lda     #$00
        sta     L0626,x
L9B98:  lda     L001B
        and     #$0E
        cmp     #$02
        bne     L9BC9
        lda     L062A,x
        clc
        adc     #$01
        sta     L062A,x
        cmp     L062C,x
        bcc     L9BC7
        tya
        ora     #$02
        sta     L001B
        lda     L062C,x
        cmp     #$02
        bcc     L9BBD
        dec     L062C,x
L9BBD:  jsr     LB5A4
        ldy     L001B
L9BC2:  lda     #$00
        sta     L062A,x
L9BC7:  tya
        rts

L9BC9:  lda     #$06
        sta     L062C,x
        bne     L9BC2
L9BD0:  ldy     L0008
        beq     L9BD9
        cpy     #$FC
        beq     L9BD9
L9BD8:  rts

L9BD9:  lda     L0095,x
        bne     L9BD8
        lda     L0077,x
        beq     L9BE8
        lda     L008B,x
        bne     L9BE9
        jmp     LB2D2

L9BE8:  rts

L9BE9:  jsr     L9B2D
        sta     L0020
        dec     L0091,x
        bne     L9BF9
        ora     #$02
        sta     L0020
        jsr     LB5A4
L9BF9:  lda     L0020
        and     #$0F
        beq     L9BD8
        jsr     L9DFA
        jsr     L9EC0
        lda     L0020
        and     #$08
        beq     L9C19
        dec     L0089,x
        jsr     L9F2A
        bcs     L9C19
        lda     #$09
        sta     L0622,x
        inc     L0089,x
L9C19:  lda     L0020
        and     #$04
        beq     L9C2D
        inc     L0089,x
        jsr     L9F2A
        bcs     L9C2D
        lda     #$09
        sta     L0624,x
        dec     L0089,x
L9C2D:  lda     L0020
        and     #$01
        beq     L9C50
        lda     L008F,x
        sta     L001F
        clc
        adc     #$01
        and     #$03
        sta     L008F,x
        jsr     L9F2A
        bcs     L9C50
        dec     L0089,x
        jsr     L9F2A
        bcs     L9C50
        inc     L0089,x
        lda     L001F
        sta     L008F,x
L9C50:  lda     L0020
        and     #$02
        beq     L9C8C
        inc     L0087,x
        jsr     L9F2A
        bcs     L9C8C
        dec     L0087,x
        jsr     L9EE8
        jsr     LB4F1
        lda     #$00
        sta     L008B,x
        lda     L0087,x
        cmp     #$06
        bcs     L9C78
        stx     L064D
        jsr     L9CF3
        jmp     L9C8F

L9C78:  lda     #$12
        jsr     LE659
        lda     L0099
        clc
        adc     #$01
        sta     L0093,x
        jmp     L9C8F

        lda     #$07
        sta     L062C,x
L9C8C:  jsr     L9EE8
L9C8F:  jsr     L9E8F
L9C92:  ldy     #$00
        sty     L0005
        lda     #$07
        sta     L001B
L9C9A:  ldx     #$08
L9C9C:  lda     L0110,y
        cmp     L0148,y
        bne     L9CB8
        iny
        dex
        bne     L9C9C
L9CA8:  lda     L009D
        clc
        adc     #$80
        sta     L009D
        bcc     L9CB3
        inc     L009E
L9CB3:  dec     L001B
        bne     L9C9A
        rts

L9CB8:  sty     L001D
        stx     L001C
L9CBC:  sty     L001E
L9CBE:  iny
        dex
        beq     L9CCC
        lda     L0110,y
        cmp     L0148,y
        beq     L9CBE
        bne     L9CBC
L9CCC:  lda     #$48
        clc
        adc     L001D
        sta     L0000
        lda     #$01
        sta     L0001
        lda     L001D
        and     #$07
        asl     a
        adc     L009D
        sta     L0002
        lda     L009E
        adc     #$00
        sta     L0003
        lda     L001E
        sec
        sbc     L001D
        adc     #$00
        jsr     LD5E4
        jmp     L9CA8

L9CF3:  stx     L064D
        lda     L069B,x
        beq     L9D0A
        lda     #$18
        sta     L069F,x
        lda     #$00
        sta     L069B,x
        lda     #$04
        sta     L0035,x
        rts

L9D0A:  lda     #$00
        bit     L000B
L9D0E:  bpl     L9D1A
        sta     L0077
        sta     L0078
        lda     #$0C
        sta     L004E
        sta     L004F
L9D1A:  lda     #$00
        sta     L0077,x
        lda     #$0C
        sta     L004E,x
        cpx     #$01
        bne     L9D36
        lda     #$00
        sta     L00A1
        sta     L00A2
        sta     L00A3
        sta     L00A4
        sta     L00A5
        sta     L00A6
        sta     L00A7
L9D36:  lda     #$07
        cpx     #$00
        bne     L9D42
        sta     L0670
        clv
        bvc     L9D45
L9D42:  sta     L0672
L9D45:  lda     L0618
        sta     L0050
        lda     L0008
        bne     L9D51
        jsr     LF105
L9D51:  lda     L0077
        ora     L0078
        bne     L9D5F
        lda     #$09
        jsr     LE659
        clv
        bvc     L9D66
L9D5F:  lda     #$00
        sta     L0619
        sta     L000B
L9D66:  lda     #$01
        sta     L06C6
        .byte   $AE
L9D6C:  eor     L8A06
        asl     a
        tay
        lda     #$00
        sta     L0030,y
        .byte   $99
        .byte   $31
L9D78:  brk
        .byte   $AE
        .byte   $4D
L9D7B:  asl     L0020
        .byte   $D3
        ldy     L46A9,x
        clc
        adc     L064D
        jsr     LD670
        lda     #$0B
        jsr     LE659
        rts

L9D8E:  ldx     #$00
        iny
        iny
        lda     #$0C
        sta     L001B
L9D96:  php
        sei
        lda     L6000
        lda     L7546
        lda     L6090
        lda     L7542
        lda     L7543
        lda     L7554
        lda     L60B0
        plp
        lda     (L001F),y
        cmp     #$80
        bcs     L9DF1
        sta     L001C
        and     #$F0
        bne     L9DD8
        lda     L001C
        bne     L9DC4
        sta     L0100,x
        clv
        bvc     L9DD5
L9DC4:  cmp     #$08
        bne     L9DCD
        lda     L6523
        bne     L9DD0
L9DCD:  lda     L6521
L9DD0:  sta     L0100,x
        lda     #$F0
L9DD5:  clv
        bvc     L9DEC
L9DD8:  lda     L001C
        and     #$0F
        clc
        adc     L6505
        sta     L0100,x
        lda     L001C
        beq     L9DEC
        and     #$70
        clc
        adc     #$70
L9DEC:  inx
        sta     L0100,x
        inx
L9DF1:  iny
        dec     L001B
        bne     L9D96
        txa
        lsr     a
        tax
        rts

L9DFA:  stx     L001E
        bit     L000B
        bpl     L9E02
        ldx     #$02
L9E02:  lda     L9E8C,x
        sta     L001C
        lda     L9E83,x
        sta     L009E
        ldx     L001E
        lda     L0087,x
        sec
        sbc     #$01
        sta     L0099
        asl     a
        asl     a
        asl     a
        asl     a
        sta     L001B
        bcc     L9E1F
        inc     L001C
L9E1F:  lda     L0089,x
        sec
        sbc     #$02
        bpl     L9E28
        lda     #$00
L9E28:  sta     L009A
        asl     a
        sta     L001F
        lsr     a
        ora     L001B
        sta     L001B
        sta     L009B
        lda     L001C
        sta     L009C
        lda     L0099
        lsr     a
        clc
        adc     L009E
        sta     L009E
        lda     L0099
        lsr     a
        lda     #$00
        ror     a
        adc     L9E80,x
        bcc     L9E4D
        inc     L009E
L9E4D:  clc
        adc     L001F
        sta     L009D
        bcc     L9E56
        inc     L009E
L9E56:  ldx     #$00
        ldy     #$00
L9E5A:  lda     (L001B),y
        sta     L0110,x
        sta     L0148,x
        inc     L001B
        bne     L9E68
        inc     L001C
L9E68:  inx
        txa
        and     #$07
        bne     L9E79
        lda     L001B
        clc
        adc     #$08
        sta     L001B
        bcc     L9E79
        inc     L001C
L9E79:  cpx     #$38
        bcc     L9E5A
        ldx     L001E
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
L9E8F:  lda     L009B
        sta     L001B
        lda     L009C
        sta     L001C
        stx     L001E
        ldx     #$00
        ldy     #$00
L9E9D:  lda     L0148,x
        sta     (L001B),y
        inc     L001B
        bne     L9EA8
        inc     L001C
L9EA8:  inx
        txa
        and     #$07
        bne     L9EB9
        lda     L001B
        clc
        adc     #$08
        sta     L001B
        bcc     L9EB9
        inc     L001C
L9EB9:  cpx     #$38
        bcc     L9E9D
        ldx     L001E
        rts

L9EC0:  jsr     L9F6C
L9EC3:  asl     L001B
        bcc     L9ECC
        lda     #$00
        sta     L0148,x
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
        lda     L001C
        sta     L001B
L9EE2:  jmp     L9EC3

L9EE5:  ldx     L001D
        rts

L9EE8:  jsr     L9F6C
        lda     L001E
        stx     L001E
        ldx     L001D
        asl     a
        asl     a
        ora     L008F,x
        asl     a
        asl     a
        ldx     L001E
        sta     L001E
L9EFB:  asl     L001B
        bcc     L9F0E
        sty     L0059
        ldy     L001E
        lda     L9FAE,y
        sta     L0148,x
        iny
        sty     L001E
        ldy     L0059
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
        lda     L001C
        sta     L001B
L9F24:  jmp     L9EFB

L9F27:  ldx     L001D
        rts

L9F2A:  jsr     L9F6C
        lda     #$FF
        sta     L000A
L9F31:  asl     L001B
        bcc     L9F3C
        lda     L0148,x
        beq     L9F3C
        stx     L000A
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
        lda     L001C
        sta     L001B
L9F52:  jmp     L9F31

L9F55:  ldx     L001D
        lda     L000A
        bpl     L9F5E
        sec
        bcs     L9F6B
L9F5E:  lsr     a
        lsr     a
        lsr     a
        clc
        adc     L0099
        sbc     #$1A
        eor     #$FF
        sta     L000A
        clc
L9F6B:  rts

L9F6C:  lda     L008B,x
        sta     L001E
        asl     a
        asl     a
        ora     L008F,x
        asl     a
        tay
        php
        sei
        lda     L6000
        lda     L7549
        lda     L60A0
        lda     L7543
        lda     L7543
        lda     L7542
        lda     L7554
        lda     L60B0
        plp
        lda     L4000,y
        sta     L001B
        lda     L4001,y
        sta     L001C
        lda     L0087,x
        sec
        sbc     L0099
        asl     a
        asl     a
        asl     a
        adc     L0089,x
        sec
        sbc     L009A
        stx     L001D
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
        ora     (L0012),y
        .byte   $13
        .byte   $14
        .byte   $14
        ora     L0010,x
        ora     (L0011),y
        .byte   $12
        .byte   $13
        .byte   $14
        .byte   $14
        ora     L0020,x
        plp
        .byte   $22
L9FD1:  and     L0023
        .byte   $27
        .byte   $22
        and     L0023
        jsr     L2226
        .byte   $23
        jsr     L2529
        .byte   $3A
        and     L3B3C,x
        .byte   $3A
        and     L3B3C,x
        .byte   $3A
        and     L3B3C,x
        .byte   $3A
        and     L3B3C,x
        rti

        eor     (L004D,x)
        eor     L004A
        .byte   $42
        .byte   $44
        eor     L0043
        jmp     L4241

        .byte   $43
        .byte   $44
        rti

        .byte   $4B
        .byte   $5A
        eor     (L0052),y
        eor     L0053,x
        .byte   $54
        .byte   $5C
        .byte   $52
        .byte   $53
        bvc     LA05A
        .byte   $5B
        bvc     LA069
        .byte   $54
        eor     L006A,x
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
        .byte   $6C
        .byte   $6D
LA01D:  adc     L0070
        adc     L727C,x
        .byte   $73
        .byte   $7A
        .byte   $7B
        adc     L0070,x
        adc     L727C,x
        .byte   $73
        .byte   $7A
        .byte   $7B
        .byte   $75
LA02E:  lda     L0677,x
        beq     LA03D
        dec     L0677,x
        bne     LA03D
        lda     #$00
        jsr     LA26F
LA03D:  lda     L0679,x
        beq     LA04C
        dec     L0679,x
        bne     LA04C
        lda     #$00
        jsr     LA26F
LA04C:  lda     L0093,x
        bne     LA051
        rts

LA051:  lda     L0095,x
        beq     LA05F
        sec
        sbc     #$01
        sta     L0095,x
LA05A:  cmp     #$01
        beq     LA05F
        rts

LA05F:  stx     L0020
        bit     L000B
        bpl     LA07B
        txa
        eor     #$01
        tax
LA069:  lda     L008B,x
        beq     LA079
        jsr     L9DFA
        jsr     L9EC0
        jsr     L9E8F
        jsr     L9C92
LA079:  ldx     L0020
LA07B:  lda     L0093,x
        asl     a
        asl     a
        asl     a
        asl     a
        sta     L001F
        bit     L000B
        bpl     LA089
        ldx     #$00
LA089:  .byte   $BD
LA08A:  sty     L699E
        brk
        ldx     L0020
        sta     L0020
        lda     #$00
        sta     L0021
        lda     #$1A
        sec
        sbc     L0093,x
        cmp     #$08
        bcc     LA0A1
        lda     #$08
LA0A1:  sta     L0022
LA0A3:  ldy     #$0C
LA0A5:  lda     (L001F),y
        beq     LA0F7
        dey
        bne     LA0A5
        tya
        and     #$F0
        tay
        lda     #$F1
        sta     (L001F),y
        iny
        iny
        lda     L0095,x
        bne     LA0DE
        lda     #$0C
        sta     L0095,x
        jsr     LA37D
        jsr     LA3B3
        lda     L0677,x
        bne     LA0D6
        lda     #$00
        sta     L0679,x
        lda     #$2D
        sta     L0677,x
        jsr     LA213
LA0D6:  stx     L0021
        jsr     LA43A
        ldx     L0021
        rts

LA0DE:  jsr     LA347
        lda     L0008
        bne     LA0EC
        sty     L0021
        jsr     LA6D0
        ldy     L0021
LA0EC:  lda     L0020
        lsr     a
        lda     L001F
        ror     a
        sta     L0021
        jmp     LA131

LA0F7:  lda     L001F
        clc
        adc     #$10
        sta     L001F
        .byte   $90
LA0FF:  .byte   $02
        inc     L0020
        dec     L0022
        bne     LA0A3
        txa
        asl     a
        tay
        lda     L0031,y
        ora     L0030,y
        cmp     #$30
        bne     LA11F
        txa
        bne     LA11C
        jsr     LB83F
        clv
        bvc     LA11F
LA11C:  jsr     LB86F
LA11F:  lda     #$00
        sta     L0093,x
        sta     L0097,x
        lda     L0008
        cmp     #$FC
        bne     LA12E
        jsr     LC916
LA12E:  jmp     LA162

LA131:  lda     #$00
        sta     L0095,x
        lda     L0021
        beq     LA162
        asl     a
        and     #$F0
        sta     L0021
        sta     L001F
        lda     L0020
        and     #$FE
        adc     #$00
        sta     L0020
        sta     L0022
LA14A:  jsr     LA17B
        lda     L0020
        lsr     a
        lda     L001F
        ror     a
        cmp     #$38
        bcs     LA14A
        stx     L0021
        jsr     LA43A
        ldx     L0021
        lda     #$01
        sta     L0097,x
LA162:  bit     L000B
        bpl     LA17A
        txa
        eor     #$01
        tax
        lda     L008B,x
        beq     LA17A
        jsr     L9DFA
        jsr     L9EE8
        jsr     L9E8F
        jsr     L9C92
LA17A:  rts

LA17B:  lda     L001F
        sec
        sbc     #$10
        sta     L001F
        bcs     LA186
        dec     L0020
LA186:  ldy     #$02
        lda     (L001F),y
        iny
        ora     (L001F),y
        iny
        ora     (L001F),y
        iny
        ora     (L001F),y
        iny
        ora     (L001F),y
        iny
        ora     (L001F),y
        iny
        ora     (L001F),y
        iny
        ora     (L001F),y
        iny
        ora     (L001F),y
        iny
        ora     (L001F),y
        iny
        ora     (L001F),y
        iny
        ora     (L001F),y
        beq     LA212
        cmp     #$F0
        beq     LA212
        ldy     #$00
        lda     #$F1
        sta     (L001F),y
        iny
        lda     (L001F),y
        sta     (L0021),y
        iny
        lda     (L001F),y
        sta     (L0021),y
        iny
        lda     (L001F),y
        sta     (L0021),y
        iny
        lda     (L001F),y
        sta     (L0021),y
        iny
        lda     (L001F),y
        sta     (L0021),y
        iny
        lda     (L001F),y
        sta     (L0021),y
        iny
        lda     (L001F),y
        sta     (L0021),y
        iny
        lda     (L001F),y
        sta     (L0021),y
        iny
        lda     (L001F),y
        sta     (L0021),y
        iny
        lda     (L001F),y
        sta     (L0021),y
        iny
        lda     (L001F),y
        sta     (L0021),y
        iny
        lda     (L001F),y
        sta     (L0021),y
        iny
        lda     (L001F),y
        sta     (L0021),y
        iny
        lda     (L001F),y
        sta     (L0021),y
        iny
        lda     (L001F),y
        sta     (L0021),y
        ldy     #$02
        jsr     LA347
        lda     L0021
        sec
        sbc     #$10
        sta     L0021
        bcs     LA212
        dec     L0022
LA212:  rts

LA213:  lda     #$01
        sta     L001E
LA217:  dec     L0022
        beq     LA234
        lda     L001F
        clc
        adc     #$10
        sta     L001F
        bcc     LA226
        inc     L0020
LA226:  ldy     #$0C
LA228:  lda     (L001F),y
        beq     LA217
        dey
        bne     LA228
        inc     L001E
        jmp     LA217

LA234:  ldy     L001E
        lda     LA26B,y
        sta     L0677,x
        lda     L001E
        jsr     LA26F
        lda     L001E
        cmp     #$04
        bne     LA24C
        lda     #$0F
        sta     L067B,x
LA24C:  lda     L0008
        bne     LA26A
        lda     L001E
        sec
        sbc     #$01
        and     #$03
        asl     a
        tay
        lda     LA2C0,y
        sta     L001B
        lda     LA2C1,y
        sta     L001C
        lda     #$00
        sta     L001D
        jmp     LB53F

LA26A:  rts

LA26B:  and     L4B3C
        .byte   $90
LA26F:  stx     L001D
        sta     L001E
        asl     a
        asl     a
        adc     L001E
        asl     a
        asl     a
        asl     a
        tax
        php
        sei
        lda     L6000
        lda     L754E
        lda     L60B0
        lda     L7542
        lda     L7543
        lda     L7556
        lda     L60B0
        plp
        lda     L001D
        asl     a
        tay
        lda     LA2C8,y
        sta     L0002
        lda     LA2C9,y
        sta     L0003
        ldy     #$00
LA2A3:  lda     L657D,x
        sta     (L0002),y
        inx
        iny
        cpy     #$14
        bne     LA2B9
        lda     L0002
        clc
        adc     #$6C
        sta     L0002
        bcc     LA2B9
        inc     L0003
LA2B9:  cpy     #$28
        bcc     LA2A3
        ldx     L001D
        rts

LA2C0:  brk
LA2C1:  ora     L0001
        ora     L0004
        brk
        ora     #$00
LA2C8:  dey
LA2C9:  .byte   $1C
        clv
        .byte   $1C
LA2CC:  .byte   $94
LA2CD:  .byte   $1C
        cpy     L001C
LA2D0:  stx     L001D
        lda     L001D
        asl     a
        tay
        lda     LA2CC,y
        sta     L0002
        lda     LA2CD,y
        sta     L0003
        php
        sei
        lda     L6000
        lda     L7542
        lda     L6080
        lda     L7540
        lda     L7556
        lda     L60B0
        plp
        lda     #$00
        sta     L001E
        lda     #$03
        sta     L001F
LA2FD:  lda     L068D,x
        and     #$0F
        sta     L0020
        beq     LA30A
        lda     #$01
        sta     L001E
LA30A:  lda     L001E
        beq     LA337
        lda     L0020
        asl     a
        asl     a
        sta     L0020
        tay
        lda     L653D,y
        ldy     #$00
        sta     (L0002),y
        ldy     L0020
        lda     L653E,y
        ldy     #$01
        sta     (L0002),y
        ldy     L0020
        lda     L653F,y
        ldy     #$80
        sta     (L0002),y
        ldy     L0020
        lda     L6540,y
        ldy     #$81
        sta     (L0002),y
LA337:  lda     L0002
        clc
        adc     #$02
        sta     L0002
        inx
        inx
        dec     L001F
        bpl     LA2FD
        ldx     L001D
        rts

LA347:  lda     #$F0
        bit     L000B
        bpl     LA34F
        lda     #$00
LA34F:  sta     (L001F),y
        iny
        lda     #$00
        sta     (L001F),y
        iny
        sta     (L001F),y
        iny
        sta     (L001F),y
        iny
        sta     (L001F),y
        iny
        sta     (L001F),y
        iny
        sta     (L001F),y
        iny
        sta     (L001F),y
        iny
        sta     (L001F),y
        iny
        sta     (L001F),y
        iny
        sta     (L001F),y
        lda     #$F0
        bit     L000B
        bpl     LA379
        lda     #$00
LA379:  iny
        sta     (L001F),y
        rts

LA37D:  lda     #$F0
        bit     L000B
        bpl     LA385
        lda     #$08
LA385:  sta     (L001F),y
        iny
        lda     #$08
        sta     (L001F),y
        iny
        sta     (L001F),y
        iny
        sta     (L001F),y
        iny
        sta     (L001F),y
        iny
        sta     (L001F),y
        iny
        sta     (L001F),y
        iny
        sta     (L001F),y
        iny
        sta     (L001F),y
        iny
        sta     (L001F),y
        iny
        sta     (L001F),y
        lda     #$F0
        bit     L000B
        bpl     LA3AF
        lda     #$08
LA3AF:  iny
        sta     (L001F),y
        rts

LA3B3:  txa
        pha
        lda     L001F
        clc
        adc     #$10
        sta     L001D
        lda     L0020
        adc     #$00
        sta     L001E
        ldy     #$00
        lda     #$F1
        sta     (L001D),y
        iny
LA3C9:  lda     (L001D),y
        tax
        and     #$F0
        sta     L001B
        beq     LA3E1
        txa
        cmp     #$80
        bcs     LA3E1
        and     #$0F
        tax
        lda     LA41A,x
        ora     L001B
        sta     (L001D),y
LA3E1:  iny
        cpy     #$10
        bcc     LA3C9
        lda     L001F
        sec
        sbc     #$10
        sta     L001D
        lda     L0020
        sbc     #$00
        sta     L001E
        ldy     #$00
        lda     #$F1
        sta     (L001D),y
        iny
LA3FA:  lda     (L001D),y
        tax
        and     #$F0
        sta     L001B
        beq     LA412
        txa
        cmp     #$80
        bcs     LA412
        and     #$0F
        tax
        lda     LA42A,x
        ora     L001B
        sta     (L001D),y
LA412:  iny
        cpy     #$10
        bcc     LA3FA
        pla
        tax
        rts

LA41A:  brk
        ora     (L0002,x)
        .byte   $03
        .byte   $03
        asl     L0A01
        php
        ora     L020A
        brk
        ora     L0E0E
LA42A:  brk
        ora     (L0002,x)
        asl     L0505
        asl     L000C
        ora     (L000B,x)
        brk
        .byte   $0B
        .byte   $0C
        .byte   $02
        .byte   $0E
        .byte   $0E
LA43A:  lda     #$00
        sta     L001F
        lda     L0020
        and     #$FE
        sta     L0020
        bit     L000B
        bpl     LA44A
        ldx     #$02
LA44A:  lda     L9E86,x
        sta     L009D
        lda     L9E89,x
        sta     L009E
        ldy     #$60
LA456:  lda     (L001F),y
        cmp     #$F1
        bne     LA47B
        lda     #$F0
        sta     (L001F),y
        sty     L001E
        jsr     L9D8E
        ldy     L001E
        lda     #$00
        sta     L0000
        lda     #$01
        sta     L0001
        lda     L009D
        sta     L0002
        lda     L009E
        sta     L0003
        txa
        jsr     LD633
LA47B:  lda     L009D
        clc
        adc     #$80
        sta     L009D
        lda     L009E
        adc     #$00
        sta     L009E
        tya
        clc
        adc     #$10
        tay
        bcc     LA491
        inc     L0020
LA491:  lda     L0020
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

LA4AE:  lda     L000F
        and     #$01
        bne     LA4BF
        dec     L066E
        lda     L066E
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
        stx     L001B
        clc
        adc     L001B
        jsr     LD670
        lda     L0618
        sta     L0050
        rts

LA4E0:  ldx     #$00
LA4E2:  stx     L0650
        lda     L000F
        and     #$3F
        bne     LA4EE
        jsr     LA52D
LA4EE:  ldx     L0650
        lda     L004E,x
        beq     LA527
        lda     L0618
        cmp     L0050
        beq     LA515
        sta     L0050
        lda     L004E,x
        cmp     #$09
        bcc     LA507
        jsr     LA4C3
LA507:  ldy     #$09
        lda     L004E
        beq     LA50F
        sty     L004E
LA50F:  lda     L004F
        .byte   $F0
LA512:  .byte   $02
        sty     L004F
LA515:  lda     a:L00C1
        beq     LA527
        lda     L004E,x
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

LA52D:  ldy     L004E,x
        cpy     #$01
        bcc     LA5AC
        dey
        sty     L004E,x
        stx     L064D
        cpy     #$09
        bne     LA540
        jsr     LA4C3
LA540:  ldx     L064D
        lda     L004E,x
        cmp     #$0A
        bcs     LA5AC
        cpx     #$00
        bne     LA551
        lda     #$92
        bne     LA553
LA551:  lda     #$C2
LA553:  sta     L0002
        lda     #$1B
        sta     L0003
        ldy     #$00
        clc
        lda     L004E,x
        adc     #$30
        sta     (L0002),y
        iny
        lda     #$90
        sta     (L0002),y
        txa
        clc
        adc     #$3B
        jsr     LD670
        lda     L004E,x
        bne     LA5AC
        clc
        txa
        adc     #$4A
        jsr     LD670
        jsr     LBCD3
        jsr     LAFF4
        jsr     LEA15
        lda     L0663,x
        bmi     LA58A
        jsr     LE77E
LA58A:  lda     L0077
LA58C:  ora     L0078
        bne     LA5AC
        lda     L004E
        ora     L004F
        bne     LA5AC
        lda     L0663
        and     L0664
        bpl     LA5AC
        lda     #$00
        sta     L066D
        sta     a:L00C2
        sta     a:L00C3
        jmp     LA5AD

LA5AC:  rts

LA5AD:  lda     L066D
        bne     LA5B8
        jsr     LF11B
        clv
        bvc     LA5DA
LA5B8:  lda     #$20
        sta     L065B
        sta     L065C
        sta     L065D
        sta     L065E
        sta     L065F
        sta     L0660
        sta     L0661
        sta     L0662
        lda     #$80
        sta     L0663
        sta     L0664
LA5DA:  lda     L066D
        clc
        adc     #$01
        and     #$03
        sta     L066D
        lda     #$07
        sta     L0007
        lda     #$0A
        jsr     L8818
        lda     #$F8
        sta     L0008
        lda     #$9C
        sta     L0002
        lda     #$15
        sta     L0003
        lda     #$96
        sta     L066E
        lda     #$31
        sta     L001F
        lda     #$30
        sta     L0020
        ldx     #$00
LA609:  lda     #$B0
        sta     L0005
        txa
        lsr     a
        sta     L001D
        lda     L0663
        bpl     LA624
        cmp     #$80
        beq     LA624
        eor     #$FF
        cmp     L001D
        bne     LA624
        lda     #$E0
        sta     L0005
LA624:  lda     L0664
        bpl     LA637
        cmp     #$80
        beq     LA637
        eor     #$FF
        cmp     L001D
        bne     LA637
        lda     #$F0
        sta     L0005
LA637:  jsr     LA6A7
        lda     #$00
        sta     L001D
        lda     #$05
        sta     L001E
LA642:  lda     L0979,x
        cmp     #$30
        beq     LA64D
        dec     L001D
        bmi     LA657
LA64D:  bit     L001D
        bmi     LA657
        cpy     #$12
        bcs     LA657
        lda     #$00
LA657:  sta     (L0002),y
        iny
        lda     L0005
        sta     (L0002),y
        iny
        inx
        dec     L001E
        bpl     LA642
        iny
        iny
        txa
        lsr     a
        sec
        sbc     #$03
        tax
        lda     #$02
        sta     L001E
LA670:  lda     L09D9,x
        sta     (L0002),y
        iny
        lda     L0005
        sta     (L0002),y
        iny
        inx
        dec     L001E
        bpl     LA670
        txa
        asl     a
        tax
        lda     L0002
        clc
        adc     #$80
        sta     L0002
        lda     L0003
        adc     #$00
        sta     L0003
        lda     L001F
        clc
        adc     #$01
        cmp     #$3A
        bcc     LA69D
        inc     L0020
        lda     #$30
LA69D:  sta     L001F
        cpx     #$60
        bcs     LA6A6
        jmp     LA609

LA6A6:  rts

LA6A7:  ldy     #$00
        lda     L0020
        cmp     #$30
        bne     LA6B1
        lda     #$00
LA6B1:  sta     (L0002),y
        iny
        lda     L0005
        sta     (L0002),y
        iny
        lda     L001F
        sta     (L0002),y
        iny
        lda     L0005
        sta     (L0002),y
        iny
        lda     #$2E
        sta     (L0002),y
        iny
        lda     L0005
        sta     (L0002),y
        iny
        iny
        iny
        rts

LA6D0:  jsr     LA7C9
        lda     #$30
        sta     L001B
        lda     #$01
        sta     L007B,x
        txa
        asl     a
        asl     a
        tay
        lda     L060F,y
        clc
        adc     #$01
        cmp     #$3A
        bcc     LA6EC
        sbc     #$0A
        sec
LA6EC:  sta     L060F,y
        lda     L060E,y
        adc     #$00
        cmp     #$3A
        bcc     LA6FB
        sbc     #$0A
        sec
LA6FB:  sta     L060E,y
        lda     L060D,y
        adc     #$00
        cmp     #$3A
        bcc     LA70A
        sbc     #$0A
        sec
LA70A:  sta     L060D,y
        lda     L060C,y
        adc     #$00
        cmp     #$3A
        bcc     LA718
        lda     #$39
LA718:  sta     L060C,y
        tya
        lsr     a
        tay
        sty     L001B
        lda     #$0F
        jsr     LA7AD
        lda     L0649,x
        cmp     L06AF
        bcc     LA732
        lda     #$0F
        sta     L0615,y
LA732:  lda     L0615,y
        sta     L06B0
        cmp     #$0F
        bcs     LA768
        lda     L0649,x
        clc
        adc     #$01
        cmp     #$78
        bcc     LA748
        lda     #$78
LA748:  sta     L0649,x
        ldy     #$00
LA74D:  tya
        jsr     LA7AD
        lda     L0649,x
        cmp     L06AF
        bne     LA763
        sty     L001E
        tya
        ldy     L001B
        .byte   $99
LA75F:  ora     L0006,x
        ldy     L001E
LA763:  iny
        cpy     #$10
        bcc     LA74D
LA768:  lda     #$16
        jmp     LE659

LA76D:  ora     (L0004,x)
        ora     #$0E
        .byte   $12
        .byte   $1B
        bit     L002C
        and     L003E,x
        .byte   $47
        bvc     LA7D3
        .byte   $62
        .byte   $6B
        .byte   $73
        ora     (L0004,x)
        php
        .byte   $0C
        ora     (L0015),y
        ora     L2C22,y
        .byte   $34
        .byte   $43
        eor     L6056
        adc     #$6E
        ora     (L0004,x)
        .byte   $07
        .byte   $0B
        .byte   $0F
        .byte   $13
        .byte   $17
        jsr     L2F28
        .byte   $3A
        .byte   $44
        lsr     L6158
        adc     #$01
        .byte   $03
        asl     L0009
        .byte   $0C
        .byte   $0F
        .byte   $12
        .byte   $1A
        bit     L002A
        .byte   $32
        .byte   $3C
        lsr     L0050
        .byte   $5A
        .byte   $64
LA7AD:  sta     L064D
        tya
        pha
        lda     L08BB
        and     #$03
        asl     a
        asl     a
        asl     a
        asl     a
        clc
        adc     L064D
        tay
        lda     LA76D,y
        sta     L06AF
        pla
        tay
        rts

LA7C9:  lda     L069B,x
        beq     LA7CF
        rts

LA7CF:  txa
        lsr     a
        bcs     LA7D7
LA7D3:  lda     #$C0
        bne     LA7D9
LA7D7:  lda     #$D0
LA7D9:  sta     L0005
        txa
        asl     a
        tay
        lda     L0031,y
        cmp     #$30
        bne     LA7FA
        lda     L0030,y
        cmp     #$30
        beq     LA7F7
        sec
        sbc     #$01
        sta     L0030,y
        lda     #$39
        sta     L0031,y
LA7F7:  clv
        bvc     LA800
LA7FA:  sec
        sbc     #$01
        sta     L0031,y
LA800:  lda     L0077,x
        bne     LA805
        rts

LA805:  cpx     #$00
        bne     LA80E
        lda     #$E0
        clv
        bvc     LA810
LA80E:  lda     #$F0
LA810:  sta     L0005
        txa
        asl     a
        tay
        sta     L0034
        asl     a
LA818:  adc     L0034
        sta     L0034
        asl     L0034
        clc
        lda     #$22
        adc     L0034
        sta     L0002
        lda     #$17
        sta     L0003
        lda     L0030,y
        jsr     LD64A
        lda     #$24
        adc     L0034
        sta     L0002
        lda     L0031,y
        jsr     LD64A
        lda     L0030,y
        cmp     #$30
        bne     LA863
        lda     L0031,y
        cmp     #$36
        bcs     LA863
        sec
        sbc     #$30
        cpx     #$00
        bne     LA85B
        sta     L0670
        lda     #$1E
        sta     L0671
        clv
        bvc     LA863
LA85B:  sta     L0672
        lda     #$1E
        sta     L0673
LA863:  rts

LA864:  lda     #$FC
        sta     L0008
        lda     #$00
        sta     L000B
        sta     L0045
        lda     #$0F
        sta     L002F
        lda     #$30
        sta     L0657
        lda     #$31
        sta     L0658
        lda     #$01
        jsr     LE659
        jsr     LAA4B
        lda     #$09
        sta     L0615
        lda     #$0A
        sta     L0681
        rts

LA88F:  lda     #$F0
        sta     L0008
        lda     #$00
        sta     L000B
        lda     #$01
        jsr     LE659
        lda     #$03
        sta     L0007
        lda     L0045
        asl     a
        jsr     L8818
        lda     #$00
        tax
        lda     #$01
        sta     L0077
        lda     #$1E
        sta     L002F
        jsr     LADAD
        lda     #$03
        sta     L008F
        lda     #$00
        sta     L0077
        sta     L067F
        lda     #$08
        sta     L0087
        lda     #$07
        sta     L0089
        lda     #$02
        sta     L008B
        sta     L067E
        lda     #$37
        jsr     LD670
        lda     #$09
        jsr     LD670
        lda     #$01
        sta     L0079
        sta     L007B
        sta     L0080
        sta     L0078
        jsr     LB605
        jsr     LBC16
        rts

LA8E9:  ldy     L0046
        beq     LA8F0
        jmp     LA945

LA8F0:  lda     L000B
        sta     L064F
        lda     #$EC
        sta     L0008
        lda     #$00
        sta     L0650
        sta     L0655
        sta     L0656
        sta     L000B
        lda     #$03
        sta     L0007
        lda     L0045
        asl     a
        jsr     L8818
        lda     #$00
        tax
        lda     #$01
        sta     L0077
        lda     #$1E
        sta     L002F
        jsr     LADAD
        lda     #$00
        sta     L0077
        lda     #$02
        sta     L008F
        sta     L067F
        lda     #$11
        sta     L0087
        lda     #$08
        sta     L0089
        lda     #$02
        sta     L008B
        sta     L067E
        lda     #$37
        jsr     LD670
        lda     #$01
        sta     L0078
        jsr     LBC16
        rts

LA945:  lda     #$00
LA947:  sta     L0008
        sta     L0044
        sta     L064B
        ldy     L0046
        sty     L06A7
        lda     LAB31,y
        sta     L002F
        clc
        adc     #$31
        sta     L0658
        lda     #$30
        sta     L0657
        lda     L0046
        sta     L0045
        ldx     #$05
        lda     #$30
LA96B:  sta     L0600,x
        sta     L0606,x
        sta     L060C,x
        sta     L0612,x
        dex
        bpl     LA96B
        lda     #$00
        sta     L0614
        .byte   $8D
LA980:  asl     L0006,x
        sta     L0615
        sta     L0617
        sta     L0649
        sta     L064A
        jsr     LAA4B
        jsr     LB69C
        lda     L0077
        beq     LA99D
        ldx     #$00
        jsr     LA9AB
LA99D:  lda     L0078
        beq     LA9A6
        ldx     #$01
        jsr     LA9AB
LA9A6:  lda     #$F7
        sta     L0008
        rts

LA9AB:  lda     L002F
        cmp     #$03
        bcc     LA9D1
        ldy     #$32
        lda     #$0A
        sta     L0649,x
        sta     L0079,x
        cpx     #$00
        bne     LA9C9
        sty     L0601
        lda     #$02
        sta     L0615
        clv
        bvc     LA9D1
LA9C9:  sty     L0607
        lda     #$02
        sta     L0617
LA9D1:  lda     L002F
        cmp     #$06
        bcc     LA9F7
        ldy     #$34
        lda     #$14
        sta     L0649,x
        sta     L0079,x
        cpx     #$00
        bne     LA9EF
        sty     L0601
        lda     #$04
        sta     L0615
        clv
        bvc     LA9F7
LA9EF:  sty     L0607
        lda     #$04
        sta     L0617
LA9F7:  stx     L064E
        jsr     LB605
        ldx     L064E
        rts

LAA01:  cpx     #$00
        bne     LAA29
        lda     L0615
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
LAA1A:  sta     L0615
        jsr     LA7AD
        lda     L06AF
        sta     L0649
        clv
        bvc     LAA4A
LAA29:  lda     L0617
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
LAA3E:  sta     L0617
        jsr     LA7AD
        lda     L06AF
        sta     L064A
LAA4A:  rts

LAA4B:  lda     L0045
        clc
        adc     #$03
        sta     L0007
        jsr     LABC0
        sei
        lda     #$00
        sta     L06C7
        sta     L06C8
        sta     L06C9
        sta     L06CA
        cli
        ldx     #$78
LAA67:  sta     L0000,x
        inx
        cpx     #$AC
        bne     LAA67
        lda     #$01
        sta     L0077
        sta     L0079
        sta     L007B
        ldx     L000B
        beq     LAA80
        sta     L0078
        sta     L007A
        sta     L007C
LAA80:  lda     #$01
        sta     L007F
        lda     L0619
        cmp     #$02
        bcc     LAA8B
LAA8B:  jsr     LB605
LAA8E:  lda     L0017
        sta     L0083
        sta     L0085
        sta     L0081
        lda     L0018
        sta     L0084
        sta     L0086
        sta     L0082
        jsr     LADC6
        lda     #$00
        sta     L0035
        sta     L0095
        sta     L0096
        .byte   $85
LAAAA:  .byte   $93
        sta     L0094
        sta     L063C
        sta     L063D
        sta     L063F
        sta     L0640
        lda     L0008
        bne     LAACA
        lda     L000B
        cmp     #$01
        bne     LAACA
        jsr     LAE06
        lda     #$00
        sta     L0036
LAACA:  ldx     #$00
        stx     L0029
        stx     L002A
        lda     L0008
        bne     LAAD8
        lda     #$F7
        sta     L0008
LAAD8:  ldx     #$00
        jsr     LADAD
        ldx     #$01
        jsr     LADAD
        lda     L000B
        beq     LAB00
        lda     L0077
        bne     LAAF3
        lda     L004E
        bne     LAAF3
        ldx     #$00
        jsr     LAFF4
LAAF3:  lda     L0078
        bne     LAB00
        lda     L004F
        bne     LAB00
        ldx     #$01
        jsr     LAFF4
LAB00:  lda     #$2C
        sta     L0002
        lda     #$1D
        sta     L0003
        ldy     #$00
        lda     L0657
        cmp     #$30
        beq     LAB19
        sta     (L0002),y
        iny
        lda     #$A0
        sta     (L0002),y
        iny
LAB19:  lda     L0658
        sta     (L0002),y
        iny
        lda     #$A0
        sta     (L0002),y
        lda     L0078
        bne     LAB30
        lda     L004F
        bne     LAB30
        lda     #$28
        jsr     LD670
LAB30:  rts

LAB31:  brk
        .byte   $03
        .byte   $06
LAB34:  lda     L002F
        clc
        adc     #$01
        cmp     #$1B
        bcc     LAB3F
        lda     #$0F
LAB3F:  sta     L002F
        lda     #$07
        sta     L0670
        sta     L0672
        inc     L0658
        lda     L0658
        cmp     #$3A
        bne     LAB6A
        lda     #$30
        sta     L0658
        inc     L0657
        lda     L0657
        cmp     #$3A
        bne     LAB6A
        lda     #$39
        sta     L0657
        sta     L0658
LAB6A:  inc     L0044
        lda     L0044
        cmp     #$03
        bcc     LAB91
        lda     #$00
        sta     L0044
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
        sta     L0007
        jsr     LABC0
LAB91:  ldx     #$00
        lda     L004E,x
        bne     LAB9A
        jsr     LBCD3
LAB9A:  ldx     #$01
        lda     L004E,x
        bne     LABA3
        jsr     LBCD3
LABA3:  lda     L0077
        beq     LABAC
        lda     #$09
        jsr     LD670
LABAC:  lda     L0078
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
        sta     L0080
        lda     L0077
        beq     LABDE
        lda     #$09
        sta     L0079
        sta     L007B
        sta     L007F
        jsr     LD670
LABDE:  lda     L0078
        beq     LABEB
        lda     #$0A
        sta     L007A
        sta     L007C
        clv
        bvc     LABED
LABEB:  lda     #$28
LABED:  jsr     LD670
        lda     #$00
        sta     L00A1
        sta     L00A2
        sta     L00A3
        sta     L00A4
        sta     L00A5
        sta     L00A6
        sta     L00A7
        lda     L0663
        bmi     LAC0A
        lda     #$52
        jsr     LD670
LAC0A:  lda     L0664
        bmi     LAC14
        lda     #$53
        jsr     LD670
LAC14:  jsr     LB605
        jsr     LBC16
        rts

LAC1B:  stx     L001B
        jsr     LAC8A
        lda     #$07
        cpx     #$00
        bne     LAC2C
        sta     L0670
        clv
        bvc     LAC2F
LAC2C:  sta     L0672
LAC2F:  ldy     #$05
LAC31:  cpx     #$00
        bne     LAC4C
        lda     #$30
        sta     L0600,y
        cpy     #$04
        bcs     LAC41
        sta     L060C,y
LAC41:  lda     #$00
        sta     L0614
        sta     L0615
        clv
        bvc     LAC60
LAC4C:  lda     #$30
        sta     L0606,y
        cpy     #$04
        bcs     LAC58
        sta     L0610,y
LAC58:  lda     #$00
        sta     L0616
        sta     L0617
LAC60:  dey
        bpl     LAC31
        lda     #$00
        sta     L0649,x
        cpx     #$00
        .byte   $D0
LAC6B:  ora     L00A5
        sei
        clv
        bvc     LAC73
        lda     L0077
LAC73:  beq     LAC7A
        lda     #$01
        clv
        bvc     LAC7C
LAC7A:  lda     #$00
LAC7C:  sta     L000B
        sta     L0619
        jsr     LA9AB
        jsr     LADAD
        rts

LAC88:  ora     #$0A
LAC8A:  lda     #$30
        sta     L0077,x
        sta     L0079,x
        sta     L007B,x
        sei
        lda     #$00
        sta     L06C7,x
        sta     L06C9,x
        cli
        lda     #$00
        sta     L064D
        lda     L069B,x
        bne     LACE6
        lda     LBA76,x
        tay
        lda     L0077,y
        bne     LACB5
        jsr     LB81C
        clv
        bvc     LACE6
LACB5:  tya
        asl     a
        tay
        lda     L0030,y
        cmp     #$30
        bne     LACD2
        lda     L0031,y
        cmp     #$35
        bcs     LACD2
        lda     #$04
        sta     L0035,x
        lda     #$4C
        sta     L069F,x
        sta     L064D
LACD2:  tya
        lsr     a
        tay
        lda     L0035,y
        beq     LACE6
        lda     #$04
        sta     L0035,x
        lda     #$4C
        sta     L069F,x
        sta     L064D
LACE6:  lda     L064D
        bne     LAD47
        lda     #$00
        sta     L0035,x
        txa
        asl     a
        tax
        ldy     L002F
        lda     LB7AA,y
        sta     L0030,x
        lda     LB7C5,y
        sta     L0031,x
        lda     LB7E0,y
        cpx     #$00
        bne     LAD1C
        sta     L06BB
        lda     L0615
        asl     a
        asl     a
        asl     a
        clc
        adc     L06BB
        tay
        lda     LC028,y
        sta     L06BB
        clv
        bvc     LAD30
LAD1C:  sta     L06BC
        lda     L0617
        asl     a
        asl     a
        asl     a
        clc
        adc     L06BC
        tay
        lda     LC028,y
        sta     L06BC
LAD30:  ldx     L001B
        lda     L069B,x
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

LAD4E:  stx     L001B
        .byte   $A9
LAD51:  ora     (L009D,x)
        .byte   $9B
        asl     L0018
        txa
        adc     #$4A
        jsr     LD670
        jsr     LAC8A
        jmp     LADAD

LAD62:  stx     L001B
        clc
        txa
        adc     #$4A
LAD68:  jsr     LD670
LAD6B:  lda     #$00
        sta     L06B5,x
        sta     L06B7,x
        stx     L06A4
        ldy     #$00
        jsr     L89B7
        jsr     LAC8A
        jsr     LAA01
        lda     #$00
        sta     L064E
        txa
        tay
        ldx     LBA76,y
        lda     L0077,x
        beq     LAD94
        lda     #$01
        sta     L064E
LAD94:  lda     L064E
        sta     L0619
        sta     L000B
        ldx     L001B
        lda     #$07
        cpx     #$00
        bne     LADAA
        sta     L0670
        clv
        bvc     LADAD
LADAA:  sta     L0672
LADAD:  jsr     LAFE8
        lda     #$00
        sta     L008D,x
        sta     L008B,x
        sta     L0029,x
        lda     L0077,x
        beq     LADC2
        lda     LAC88,x
        jsr     LD670
LADC2:  cpx     #$00
        bne     LAE06
LADC6:  lda     #$00
        sta     L001F
        lda     #$02
        sta     L0020
        lda     #$1C
        sta     L001D
LADD2:  lda     L001D
        cmp     #$03
        bcs     LADDC
        ldx     #$20
        bne     LADE6
LADDC:  ldx     L000B
        bmi     LADE4
        ldx     #$00
        beq     LADE6
LADE4:  ldx     #$10
LADE6:  ldy     #$00
LADE8:  lda     LAEC3,x
        sta     (L001F),y
        inx
        iny
        cpy     #$10
        bcc     LADE8
        lda     L001F
        clc
        adc     #$10
        sta     L001F
        bcc     LADFE
        inc     L0020
LADFE:  dec     L001D
        bne     LADD2
        ldx     #$00
        beq     LAE44
LAE06:  lda     #$00
        sta     L001F
        lda     #$04
        sta     L0020
LAE0E:  lda     #$1C
        sta     L001D
LAE12:  lda     L001D
        cmp     #$03
        bcs     LAE1C
        ldx     #$20
        bne     LAE26
LAE1C:  ldx     L000B
        bmi     LAE24
        ldx     #$00
        beq     LAE26
LAE24:  ldx     #$10
LAE26:  ldy     #$00
LAE28:  lda     LAEC3,x
        sta     (L001F),y
        inx
        iny
        cpy     #$10
        bcc     LAE28
        lda     L001F
        clc
        adc     #$10
        sta     L001F
        bcc     LAE3E
        inc     L0020
LAE3E:  dec     L001D
        bne     LAE12
        ldx     #$01
LAE44:  lda     L0077,x
        bne     LAE49
        rts

LAE49:  lda     L069B,x
        beq     LAE4F
        rts

LAE4F:  ldy     L002F
        lda     LB0DB,y
        sta     L063B
        beq     LAE5B
        lda     #$01
LAE5B:  sta     L063C,x
        lda     LB100,y
        sta     L063E
        beq     LAE68
        lda     #$01
LAE68:  sta     L063F,x
        lda     LB0BC,y
        sta     L061C
        bne     LAE74
        rts

LAE74:  cmp     #$08
        bcc     LAE7B
        jmp     LAEF3

LAE7B:  sec
        sbc     #$01
        lsr     a
        sta     L0022
        lda     #$00
        ror     a
        adc     #$9C
        sta     L0021
        lda     L0022
        adc     #$76
        sta     L0022
LAE8E:  php
        sei
        lda     L6000
        lda     L754C
        lda     L6090
        lda     L7541
        lda     L7551
        lda     L6090
        plp
        inc     L0079,x
        lda     #$12
        sta     L0093,x
        lda     #$20
        sta     L001F
        lda     L9E8C,x
        clc
        adc     #$01
        sta     L0020
LAEB5:  ldy     #$00
LAEB7:  lda     (L0021),y
        sta     (L001F),y
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
        sta     L001D
        lda     #$09
        sta     L001E
        lda     #$40
        sta     L001F
        lda     L9E8C,x
        clc
        adc     #$01
        sta     L0020
        ldy     #$00
LAF0D:  lda     #$F1
        sta     (L001F),y
        lda     L001F
        adc     #$10
        sta     L001F
        cmp     #$A0
        bcc     LAF0D
        inc     L0079,x
        lda     #$14
        sta     L0093,x
        lda     #$43
        sta     L001F
        lda     L9E8C,x
        clc
        adc     #$01
        sta     L0020
        txa
        pha
        ldx     #$00
        lda     #$1E
        sta     L005E
LAF35:  ldy     #$00
        lda     (L001D),y
        and     #$1F
        sta     L0021
        asl     a
        adc     L0021
        adc     #$97
        sta     L0021
        lda     #$AF
        adc     #$00
        sta     L0022
        lda     (L0021),y
        pha
LAF4D:  pla
        asl     a
        pha
        bcc     LAF56
        lda     L005E
        sta     (L001F),y
LAF56:  iny
        tya
        and     #$03
        bne     LAF63
        lda     L001F
        clc
        adc     #$0C
        sta     L001F
LAF63:  tya
        and     #$07
        bne     LAF79
        lda     L0021
        clc
        adc     #$01
        sta     L0021
        lda     L0022
        adc     #$00
        sta     L0022
        pla
        lda     (L0021,x)
        pha
LAF79:  cpy     #$18
        bcc     LAF4D
        pla
        inc     L001D
        lda     L005E
        clc
        adc     #$10
        sta     L005E
        lda     L001F
        sec
        sbc     #$45
        sta     L001F
        cmp     #$4A
        bcc     LAF35
        pla
        tax
        jmp     LA43A

        asl     a
        lsr     a
        lsr     a
        .byte   $04
        ldx     L0CAA
        ldx     L0EAC
        dey
        stx     LAA0C
        ldy     L8C0E
        stx     L8C0E
        dey
        asl     LAE8E
        asl     a
        ldx     L0EAA
        .byte   $44
        lsr     L2202
        ldy     L000A
        ldy     L08AA
        dey
        stx     LEA0A
        tax
        asl     LAAAA
        .byte   $04
        tax
        ldy     L000E
        ldx     L0488
        tax
        inc     L000E
        ldx     L06CA
        sty     L002C
        asl     L4444
        asl     a
        tax
        ldx     LAA0A
        ldy     L000A
        tax
        nop
        asl     a
        ldy     L00AA
        asl     a
        ldy     L0044
        asl     L8E24
LAFE8:  lda     #$00
        sta     L0005
        lda     L0077,x
        beq     LAFF3
        jsr     LAFF4
LAFF3:  rts

LAFF4:  lda     #$00
        sta     L0005
        txa
        asl     a
        tay
LAFFB:  lda     LE756,y
        beq     LB039
        sta     L001D
LB002:  lda     LE757,y
        sta     L001E
        lda     LE74E,y
        sta     L001F
        lda     LE74F,y
        sta     L0020
LB011:  lda     #$62
        sta     L0000
        lda     #$E7
LB017:  .byte   $85
LB018:  .byte   $01
LB019:  lda     L001F
        sta     L0002
        clc
        adc     #$80
        sta     L001F
        lda     L0020
        sta     L0003
        adc     #$00
        sta     L0020
        lda     L001E
        jsr     LD5CC
        dec     L001D
        bne     LB011
        iny
        iny
        iny
        iny
        bne     LAFFB
LB039:  rts

        tay
        stx     L001D
        ldx     L001D
        inc     L0079,x
        lda     LB0B5,y
        sta     L0093,x
LB046:  stx     L001D
        asl     a
        asl     a
        asl     a
        asl     a
        sta     L001F
        lda     L9E8C,x
        adc     #$00
        sta     L0020
        lda     L0081
        sta     L0017
        lda     L0082
        sta     L0018
LB05D:  lda     #$00
        tay
        sta     L001C
        lda     #$F1
        sta     (L001F),y
        iny
        iny
        ldx     #$17
LB06A:  lda     (L001F),y
        bne     LB07B
        lda     L281A
        and     #$70
        beq     LB079
        inc     L001C
        ora     #$0E
LB079:  sta     (L001F),y
LB07B:  iny
        tya
        and     #$0F
        bne     LB06A
        lda     L001C
        cmp     #$07
        bcc     LB094
        lda     L281A
        and     #$07
        clc
        adc     #$04
        tay
        lda     #$00
        sta     (L001F),y
LB094:  lda     L001F
        clc
        adc     #$10
        sta     L001F
        bcc     LB09F
        inc     L0020
LB09F:  lda     L0020
        lsr     a
        lda     L001F
        ror     a
        cmp     #$D0
        bcc     LB05D
        ldx     L001D
        jmp     LA43A

        bmi     LB0E0
        and     (L0032),y
        .byte   $32
        and     L0030,x
LB0B5:  bmi     LB0CF
        asl     L0014,x
        .byte   $12
        beq     LB0CB
LB0BC:  brk
        brk
        brk
        ora     (L0002,x)
        .byte   $03
        brk
        brk
        brk
        brk
        brk
        brk
        ora     L0006
        .byte   $07
LB0CB:  php
        .byte   $0B
        .byte   $0E
        .byte   $01
LB0CF:  .byte   $02
        .byte   $03
        ora     (L0002,x)
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
LB0E6:  brk
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
        ora     L0009
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
        lda     L281A
        and     #$07
        beq     LB12E
        inc     L001C
LB12E:  rts

LB12F:  txa
        tay
        bit     L000B
        bpl     LB137
        ldy     #$02
LB137:  lda     L9E8C,y
        sta     L0003
        lda     L9E86,y
        sta     L009D
LB141:  lda     L9E89,y
        sta     L009E
        jsr     LCA1A
        lda     #$D0
        sta     L001B
        ldx     #$03
LB14F:  lda     L05C0,x
        cmp     L001B
        bcs     LB158
        sta     L001B
LB158:  inx
        cpx     #$0D
        bcc     LB14F
        lda     L001B
        cmp     #$80
        bcs     LB164
        rts

LB164:  lda     L280A
        and     #$0F
        clc
        adc     #$03
        .byte   $C9
LB16D:  ora     $0290
        sbc     #$08
LB172:  tax
        sta     L001B
        lda     L05C0,x
        sta     L001C
        ldy     #$03
LB17C:  cpy     L001B
        beq     LB187
        lda     L05C0,y
        cmp     L001C
        bcs     LB194
LB187:  iny
        cpy     #$0D
        bcc     LB17C
        cpx     #$0C
        bne     LB193
        dex
        bne     LB194
LB193:  inx
LB194:  lda     L05C0,x
        sec
        sbc     #$08
        sta     L001C
        asl     a
        sta     L0002
        bcc     LB1A3
        inc     L0003
LB1A3:  txa
        clc
        adc     L0002
        sta     L0002
        lda     #$09
        ldy     #$00
        sta     (L0002),y
        php
        sei
        lda     L6000
        lda     L754B
        lda     L6090
        lda     L7542
        lda     L7543
        lda     L7554
        lda     L60A0
        plp
        .byte   $AD
LB1C8:  and     (L0065,x)
        sta     L0100
        lda     #$00
        sta     L001E
        lda     L001C
        sec
        sbc     #$30
        asl     a
        rol     L001E
        asl     a
        rol     L001E
        asl     a
        rol     L001E
        asl     a
        rol     L001E
        adc     L009D
        sta     L0002
        lda     L001E
        adc     L009E
        sta     L0003
        txa
        asl     a
        adc     L0002
        sec
        sbc     #$06
        sta     L0002
        lda     #$01
        sta     L0001
        lda     #$00
        sta     L0000
        lda     #$F0
        sta     L0101
        lda     #$01
        jsr     LD633
        lda     #$17
        jsr     LE659
        rts

LB20D:  lda     L9E8C,x
        sta     L0020
        lda     #$60
        sta     L001F
LB216:  lda     L001F
        clc
        adc     #$10
        sta     L001F
        bcc     LB221
        inc     L0020
LB221:  ldy     #$03
        lda     (L001F),y
        iny
        ora     (L001F),y
        iny
        ora     (L001F),y
        iny
        ora     (L001F),y
        iny
        ora     (L001F),y
        iny
        ora     (L001F),y
        iny
        ora     (L001F),y
        iny
        ora     (L001F),y
        iny
        ora     (L001F),y
        iny
        ora     (L001F),y
        beq     LB216
        lda     L0020
        lsr     a
        lda     L001F
        ror     a
        .byte   $C9
LB249:  .byte   $80
        bcc     LB294
        cmp     #$D0
        bcs     LB28A
LB250:  lda     L001F
        sec
        sbc     #$10
        sta     L0021
        lda     L0020
        sbc     #$00
        sta     L0022
        ldy     #$00
        lda     #$F1
        sta     (L0021),y
        iny
LB264:  lda     (L001F),y
        sta     (L0021),y
        iny
        cpy     #$10
        bcc     LB264
        lda     L0020
        lsr     a
        lda     L001F
        ror     a
        cmp     #$C8
        bcs     LB285
        lda     L001F
        adc     #$10
        sta     L001F
        lda     L0020
        adc     #$00
        sta     L0020
        bne     LB250
LB285:  ldy     #$02
        jsr     LA347
LB28A:  lda     #$18
        jsr     LE659
        lda     #$19
        jmp     LB046

LB294:  rts

LB295:  sta     L001C
        ldy     #$00
LB299:  lsr     L001C
        bcc     LB2A4
        tya
        clc
        adc     L001B
        bcs     LB2B2
        tay
LB2A4:  lda     L001C
        beq     LB2AE
        asl     L001B
        bcc     LB299
        bcs     LB2B2
LB2AE:  cpy     #$FA
        bcc     LB2B4
LB2B2:  ldy     #$FA
LB2B4:  lda     #$00
        sta     L001B
        sta     L001C
        tya
LB2BB:  cmp     #$64
        bcc     LB2C5
        sbc     #$64
        inc     L001B
        bne     LB2BB
LB2C5:  cmp     #$0A
        bcc     LB2CF
        sbc     #$0A
        inc     L001C
        bne     LB2C5
LB2CF:  sta     L001D
        rts

LB2D2:  lda     L0097,x
        bne     LB30E
        lda     L063C,x
        beq     LB2F2
        clc
        adc     #$01
        sta     L063C,x
        cmp     L063B
        bcc     LB2F2
        lda     #$01
        sta     L063C,x
        txa
        pha
        jsr     LB12F
        pla
        tax
LB2F2:  lda     L063F,x
        beq     LB30E
        clc
        adc     #$01
        sta     L063F,x
        cmp     L063E
        bcc     LB30E
        lda     #$01
        sta     L063F,x
        txa
        pha
        jsr     LB20D
        pla
        tax
LB30E:  lda     #$14
        sta     L0091,x
        sta     L062C,x
        lda     L000B
        bpl     LB320
        lda     LB458,x
        ldy     #$01
        bne     LB325
LB320:  lda     LB45A,x
        ldy     #$04
LB325:  sty     L0087,x
        sta     L0089,x
        lda     #$00
        sta     L008F,x
        lda     L008D,x
        pha
        sta     L008B,x
        jsr     L9DFA
        lda     L000B
        bpl     LB341
        lda     L009D
        clc
        adc     LB45C,x
        sta     L009D
LB341:  jsr     L9EC0
        stx     L001B
        txa
        asl     a
        adc     #$83
        tax
LB34B:  jsr     LB4AC
        and     #$07
        beq     LB34B
        ldx     L001B
        sta     L008B,x
        sta     L008D,x
        jsr     L9EE8
        jsr     L9E8F
        stx     L0020
        jsr     L9C92
        ldx     L0020
        lda     L9E8C,x
        sta     L0003
        lda     LB45A,x
        clc
        adc     #$40
        sta     L0002
        ldy     #$00
        lda     (L0002),y
        bne     LB37C
        lda     #$F0
        sta     (L0002),y
LB37C:  iny
        cpy     #$03
        .byte   $90
LB380:  .byte   $F3
        ldy     #$10
LB383:  lda     (L0002),y
        bne     LB38B
        lda     #$F0
        sta     (L0002),y
LB38B:  iny
        cpy     #$13
        bcc     LB383
        lda     #$04
        sta     L0087,x
        ldy     L000B
        bpl     LB39D
        lda     LB458,x
        bne     LB39F
LB39D:  lda     #$07
LB39F:  sta     L0089,x
        pla
        sta     L008B,x
        jsr     L9DFA
        jsr     L9EE8
        jsr     L9E8F
        stx     L0020
        jsr     L9C92
        ldx     L0020
        lda     L008B,x
        beq     LB3C9
        lda     L0008
        cmp     #$FC
        bne     LB3C4
        jsr     LC916
        .byte   $4C
        dex
LB3C3:  .byte   $B3
LB3C4:  lda     L0619
        beq     LB3CA
LB3C9:  rts

LB3CA:  lda     L0077
        beq     LB3C9
        lda     L004F
        bne     LB3C9
        lda     L0664
        bpl     LB3C9
        ldx     L008B
        lda     L00A0,x
        cmp     #$7F
        bcs     LB3C9
        and     #$07
        tay
        lda     L6525,y
        sta     L0100
        lda     L008B
        asl     a
        asl     a
        asl     a
        asl     a
        adc     #$70
        sta     L0101
        lda     #$1C
        sta     L0003
        ldy     L008B
        lda     L00A0,y
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        eor     #$FF
        sec
        adc     L0003
        sta     L0003
        lda     L00A0,y
        and     #$08
        beq     LB410
        lda     #$80
LB410:  sta     L001B
        lda     L008B
        asl     a
        adc     #$38
        sec
        sbc     L001B
        sta     L0002
        lda     L0003
        sbc     #$00
        sta     L0003
        ldy     #$00
        lda     L0100
        sta     (L0002),y
        iny
        lda     L0101
        sta     (L0002),y
        ldx     L008B
        lda     L00A0,x
        cmp     #$07
        bcc     LB453
        and     #$07
        bne     LB453
        lda     L0002
        clc
        adc     #$80
        sta     L0002
        bcc     LB446
        inc     L0003
LB446:  ldy     #$00
        lda     L652D
        sta     (L0002),y
        iny
        lda     L0101
        sta     (L0002),y
LB453:  inc     L00A0,x
        inc     L00A0,x
        rts

LB458:  .byte   $03
        .byte   $09
LB45A:  brk
        .byte   $0D
LB45C:  .byte   $EE
        .byte   $12
LB45E:  lda     L000B
        bpl     LB469
        lda     LB458,x
        ldy     #$01
        bne     LB46E
LB469:  lda     LB45A,x
        ldy     #$04
LB46E:  sty     L0087,x
        sta     L0089,x
        lda     #$00
        sta     L008F,x
        stx     L001B
        txa
        asl     a
        adc     #$83
        tax
LB47D:  jsr     LB4AC
        and     #$07
        beq     LB47D
        ldx     L001B
        sta     L008B,x
        sta     L008D,x
        jsr     L9DFA
        lda     L000B
        bpl     LB499
        lda     L009D
        clc
        adc     LB45C,x
        sta     L009D
LB499:  jsr     L9EE8
        jsr     L9E8F
        stx     L0020
        jsr     L9C92
        ldx     L0020
        lda     #$00
        sta     L008B,x
        rts

        rts

LB4AC:  jsr     LB4B2
        jsr     LB4B2
LB4B2:  lda     L0000,x
        eor     L0001,x
        bne     LB4BC
        cmp     L0001,x
        beq     LB4BE
LB4BC:  asl     a
        asl     a
LB4BE:  rol     L0000,x
        rol     L0001,x
        lda     L0000,x
        rts

LB4C5:  lda     L062C,x
        cmp     #$02
        bcs     LB4F0
        lda     L001D
        adc     L001D
        cmp     #$0A
        bcc     LB4D6
        sbc     #$0A
LB4D6:  sta     L001D
        lda     L001C
        adc     L001C
        cmp     #$0A
        bcc     LB4E2
        sbc     #$0A
LB4E2:  sta     L001C
        lda     L001B
        adc     L001B
        cmp     #$0A
        bcc     LB4EE
        sbc     #$0A
LB4EE:  sta     L001B
LB4F0:  rts

LB4F1:  txa
        asl     a
        tay
        lda     L0615,y
        clc
        adc     #$01
        bit     L000B
        bpl     LB501
        clc
        adc     #$03
LB501:  sta     L001B
        lda     L0614,y
        cmp     #$01
        bcc     LB510
        lda     L001B
        adc     #$09
        sta     L001B
LB510:  lda     L001B
        clc
        adc     L000A
        jsr     LB295
        jsr     LB4C5
        lda     #$00
        sta     L068D,x
        lda     L001B
        sta     L068F,x
        lda     L001C
        sta     L0691,x
        lda     L001D
        sta     L0693,x
        lda     L0008
        bne     LB536
        jsr     LB53F
LB536:  jsr     LA2D0
        lda     #$1E
        sta     L0679,x
        rts

LB53F:  txa
        sta     L001E
        asl     a
        adc     L001E
        asl     a
        tay
        lda     L001D
        clc
        adc     L0605,y
        cmp     #$3A
        bcc     LB554
        sbc     #$0A
        sec
LB554:  sta     L0605,y
        lda     L0604,y
        adc     L001C
        cmp     #$3A
        bcc     LB563
        sbc     #$0A
        sec
LB563:  sta     L0604,y
        lda     L0603,y
        adc     L001B
        cmp     #$3A
        bcc     LB572
        sbc     #$0A
        sec
LB572:  sta     L0603,y
        lda     L0602,y
        adc     #$00
        cmp     #$3A
        bcc     LB581
        sbc     #$0A
        sec
LB581:  sta     L0602,y
        lda     L0601,y
        adc     #$00
        cmp     #$3A
        bcc     LB590
        sbc     #$0A
        sec
LB590:  sta     L0601,y
        lda     L0600,y
        adc     #$00
        cmp     #$3A
        bcc     LB59E
        sbc     #$0A
LB59E:  sta     L0600,y
        inc     L0079,x
        rts

LB5A4:  txa
        asl     a
        tay
        lda     L0615,y
        sta     L0091,x
        tay
        lda     L08BB
        and     #$03
        asl     a
        asl     a
        asl     a
        asl     a
        sta     L064D
        tya
        clc
        adc     L064D
        tay
        lda     LB5C5,y
        sta     L0091,x
        rts

LB5C5:  asl     L1419,x
        bpl     LB5D6
        .byte   $0B
        asl     a
        ora     #$08
        .byte   $07
        asl     L0005
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
        asl     L0005
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
        asl     L0005
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
        asl     L0005
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $04
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
LB605:  ldx     #$07
LB607:  lda     L0079,x
        beq     LB666
        lda     #$00
        sta     L0079,x
        stx     L001D
        txa
        asl     a
        tay
        lda     LB672,y
        sta     L0000
        sta     L001B
        lda     LB673,y
        sta     L0001
        sta     L001C
        bit     L000B
        bpl     LB634
        lda     L0008
        bmi     LB634
        cpy     #$08
        bcc     LB634
        cpy     #$0C
        bcs     LB634
        ldy     #$10
LB634:  lda     LB682,y
        sta     L0002
        lda     LB683,y
        sta     L0003
        sty     L001F
        ldy     L001D
        lda     LB66A,y
        sta     L001E
        ldy     #$00
LB649:  lda     (L001B),y
        cmp     #$30
        bne     LB65A
        inc     L0000
        dec     L001E
        iny
        lda     L001E
        cmp     #$02
        bcs     LB649
LB65A:  lda     LB694,x
        sta     L0005
        lda     L001E
        jsr     LD5CC
        ldx     L001D
LB666:  dex
        bpl     LB607
        rts

LB66A:  asl     L0006
        .byte   $04
        .byte   $04
        .byte   $02
        .byte   $02
        asl     L0006
LB672:  brk
LB673:  asl     L0006
        asl     L000C
        asl     L0010
        asl     L0014
        asl     L0016
        asl     L0079
        ora     #$79
        .byte   $09
LB682:  .byte   $92
LB683:  ora     L1DC2,x
        .byte   $12
        asl     L1E42,x
        bit     L2C1E
        asl     L1C24,x
        bit     L001C
        php
        .byte   $16
LB694:  cpx     #$F0
        cpx     #$F0
        cpx     #$F0
        ldy     #$A0
LB69C:  lda     #$03
        sta     L002B
        lda     #$00
        sta     L002E
        lda     #$16
        sta     L002D
        ldx     L002F
        lda     LB6B0,x
        sta     L002C
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
        ora     L1F1E,x
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
LB6CE:  lda     L002B
        cmp     #$03
LB6D2:  bne     LB729
        ldy     L002E
        jsr     L8952
        lda     L0011
        bne     LB729
        lda     L002E
        bne     LB6F3
        lda     L0077
        beq     LB6EA
        ldx     #$00
        jsr     LB45E
LB6EA:  lda     L0078
        beq     LB6F3
        ldx     #$01
        jsr     LB45E
LB6F3:  inc     L002E
        lda     L002E
        cmp     #$06
        bne     LB729
        lda     #$05
        sta     L002E
        lda     #$01
        sta     L002B
        lda     L002C
        jsr     LD670
        lda     L002C
        cmp     #$0C
        bne     LB729
        ldx     L002F
        lda     LB7AA,x
        sta     L17A2
        lda     #$B0
        sta     L17A3
        lda     LB7C5,x
        sec
        sbc     #$01
        sta     L17A4
        lda     #$B0
        sta     L17A5
LB729:  lda     L002B
        cmp     #$01
        beq     LB730
        rts

LB730:  lda     L0029
        ora     L002A
        and     #$01
        beq     LB73C
        lda     #$01
        sta     L002D
LB73C:  lda     L0012
        bne     LB7A9
        dec     L002D
        lda     L002D
        bne     LB7A9
        lda     #$0B
        jsr     LD670
        lda     #$0E
        jsr     LD670
        lda     #$00
        sta     L0008
        sta     L002B
        ldx     L002F
        lda     LB7AA,x
        sta     L0030
        sta     L0032
        lda     LB7C5,x
        sta     L0031
        sta     L0033
        lda     LB7E0,x
        sta     L06BB
        sta     L06BC
        lda     L0615
        asl     a
        asl     a
        asl     a
        clc
        adc     L06BB
        tay
        lda     LC028,y
        sta     L06BB
        lda     L0617
        asl     a
        asl     a
        asl     a
        clc
        adc     L06BC
        tay
        lda     LC028,y
        sta     L06BC
        jsr     LB7FB
        ldx     #$00
        lda     L0077,x
        beq     LB79D
        jsr     LA7C9
LB79D:  ldx     #$01
        lda     L0077,x
        beq     LB7A6
        jsr     LA7C9
LB7A6:  jsr     LB81C
LB7A9:  rts

LB7AA:  bmi     LB7DD
        and     (L0031),y
        and     (L0031),y
        and     (L0031),y
        and     (L0031),y
        and     (L0031),y
        and     (L0031),y
        and     (L0031),y
        and     (L0031),y
        and     (L0031),y
        and     (L0031),y
        and     (L0031),y
        and     (L0031),y
        .byte   $31
LB7C5:  rol     L0031,x
        .byte   $33
        and     (L0034),y
        .byte   $37
        .byte   $33
        rol     L0039,x
        .byte   $33
        rol     L0039,x
        .byte   $33
        rol     L0039,x
        .byte   $33
        rol     L0039,x
        .byte   $33
        rol     L0039,x
        .byte   $33
        rol     L0039,x
LB7DD:  .byte   $33
        rol     L0039,x
LB7E0:  brk
        ora     (L0002,x)
        ora     (L0003,x)
        ora     L0002
        .byte   $04
        asl     L0002
        .byte   $04
        asl     L0002
        .byte   $04
        asl     L0002
        .byte   $04
        asl     L0002
        .byte   $04
        asl     L0002
        .byte   $04
        asl     L0002
        .byte   $04
        .byte   $06
LB7FB:  lda     #$00
        sta     L06B5
        sta     L06B6
        sta     L06B7
        sta     L06B8
        ldy     #$00
        sty     L06A4
        jsr     L89B7
        ldy     #$01
        sty     L06A4
        ldy     #$00
        jsr     L89B7
        rts

LB81C:  lda     L002F
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
        sta     L003A
        lda     #$63
        sta     L0039
        lda     #$88
        sta     L003D
        lda     #$12
        sta     L003E
        ldy     L002F
        lda     LB7AA,y
        sta     L0030
        lda     LB7C5,y
        sta     L0031
        lda     #$1A
        jsr     LE659
        lda     #$01
        sta     L0035
        sta     L0037
        lda     #$78
        sta     L0041
        sta     L0670
        bne     LB89D
LB86F:  lda     #$04
        sta     L003C
        lda     #$63
        sta     L003B
        lda     #$B8
        sta     L003F
        lda     #$12
        sta     L0040
        ldy     L002F
        lda     LB7AA,y
        sta     L0032
        lda     LB7C5,y
        sta     L0033
        lda     #$1A
        jsr     LE659
        lda     #$01
        sta     L0036
        sta     L0037
        lda     #$78
        sta     L0672
        sta     L0042
LB89D:  ldy     LBA76,x
        lda     L0077,y
        bne     LB8AD
        lda     #$09
        jsr     LE659
        clv
        bvc     LB8B7
LB8AD:  lda     L0035,y
        beq     LB8B7
        lda     #$09
        jsr     LE659
LB8B7:  lda     #$0C
        jmp     LE659

LB8BC:  lda     L0035,x
        bne     LB8C1
        rts

LB8C1:  lda     L0035,x
        cmp     #$01
        bne     LB93C
        lda     L0041,x
        cmp     #$78
        bne     LB8ED
        ldy     LBA76,x
        lda     L0077,y
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
LB8ED:  dec     L0041,x
        bne     LB93C
        ldy     LBA76,x
        lda     L0077,y
        bne     LB902
        lda     #$03
        sta     L0035,x
        lda     #$1E
LB8FF:  clv
        bvc     LB921
LB902:  lda     L0035,x
        cmp     L0035,y
        bcc     LB91B
        jsr     LBCD3
        lda     LBA7A,x
        jsr     LD670
        lda     #$02
        sta     L0035,x
        lda     #$C8
        clv
        bvc     LB921
LB91B:  lda     #$03
        sta     L0035,x
        lda     #$1E
LB921:  sta     L0041,x
        lda     #$00
        sta     L068D,x
        sta     L068F,x
        sta     L0691,x
        sta     L0693,x
        sta     L0695,x
        sta     L0697,x
        lda     #$05
        jsr     LA26F
LB93C:  lda     L0035,x
        cmp     #$02
        bne     LB9A3
        lda     #$00
        sta     L001B
        sta     L001D
        lda     #$01
        sta     L001C
        jsr     LB53F
        lda     L0691,x
        clc
        adc     #$01
        cmp     #$0A
        bcc     LB95B
        lda     #$00
LB95B:  sta     L0691,x
        lda     L068F,x
        adc     #$00
        cmp     #$0A
        bcc     LB969
        lda     #$00
LB969:  sta     L068F,x
        lda     L068D,x
        adc     #$00
        cmp     #$0A
        bcc     LB977
        lda     #$00
LB977:  sta     L068D,x
        jsr     LA2D0
        dec     L0041,x
        bne     LB9A3
        lda     LBA7E,x
        jsr     LD670
        lda     #$03
        sta     L0035,x
        lda     #$1E
        sta     L0041,x
        lda     #$00
        sta     L068D,x
        sta     L068F,x
        sta     L0691,x
        sta     L0693,x
        sta     L0695,x
        sta     L0697,x
LB9A3:  lda     L0035,x
        cmp     #$03
        bne     LB9E7
        lda     L0041,x
        cmp     #$1E
        bne     LB9CD
        ldy     LBA76,x
        lda     L0077,y
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
LB9CD:  lda     L0041,x
        bne     LB9DA
        lda     L000F
        and     #$03
        bne     LB9DA
        jsr     LBAA9
LB9DA:  lda     L0041,x
        beq     LB9E7
        dec     L0041,x
        bne     LB9E7
        lda     #$05
        jsr     LA26F
LB9E7:  lda     L0035,x
        cmp     #$04
        bne     LBA40
        ldy     LBA76,x
        lda     L0077,y
        bne     LBA13
        lda     L0044
        cmp     #$02
        bne     LBA01
        jsr     LBA80
        clv
        bvc     LBA10
LBA01:  lda     #$1E
        sta     L0043
        lda     #$09
        jsr     LE659
        lda     #$00
        sta     L0035
        sta     L0036
LBA10:  clv
        bvc     LBA40
LBA13:  lda     L0035,y
        cmp     #$04
        bne     LBA38
        lda     L0044
        cmp     #$02
        bne     LBA26
        jsr     LBA80
        clv
        bvc     LBA35
LBA26:  lda     #$1E
        sta     L0043
        lda     #$09
        jsr     LE659
        lda     #$00
        sta     L0035
        sta     L0036
LBA35:  clv
        bvc     LBA40
LBA38:  txa
        clc
        adc     L069F,x
        jsr     LD670
LBA40:  lda     L0035,x
        cmp     #$05
        bne     LBA75
        dec     L069D,x
        lda     L069D,x
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
LBA64:  lda     L069D,x
        bne     LBA75
        lda     #$00
        sta     L0035,x
        lda     #$01
        sta     L069B,x
        jmp     LAD4E

LBA75:  rts

LBA76:  ora     (L0000,x)
LBA78:  .byte   $22
        .byte   $23
LBA7A:  bit     L0025
LBA7C:  rol     L0027
LBA7E:  eor     L0056,x
LBA80:  lda     #$01
        sta     L06A5
        lda     #$00
        sta     L06B1
        sta     L06B2
        sta     L06B3
        lda     L06A7
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
        lda     L0039,y
        sta     L001D
        lda     L003A,y
        sta     L001E
        ldy     #$00
        tya
LBAB9:  ora     (L001D),y
        iny
        cpy     #$0A
        bcc     LBAB9
        cmp     #$00
        bne     LBB3A
        php
        sei
        lda     L6000
        lda     L7547
        lda     L60B0
        lda     L7541
        lda     L7543
        lda     L7555
        lda     L6090
        plp
        lda     L6505
        sta     L0100
        lda     #$F0
        sta     L0101
        sta     L0113
        lda     L6509
        sta     L0112
        ldy     #$00
LBAF2:  lda     L6507
        sta     L0102,y
        iny
        lda     #$F0
        sta     L0102,y
        iny
        cpy     #$10
        bcc     LBAF2
        txa
        asl     a
        tax
        lda     #$00
        sta     L0000
        lda     #$01
        sta     L0001
        lda     L003D,x
        sta     L0002
        lda     L003E,x
        sta     L0003
        lda     #$0A
        jsr     LD633
        lda     L0039,x
        clc
        adc     #$10
        sta     L0039,x
        bcc     LBB26
        inc     L003A,x
LBB26:  lda     L003D,x
        clc
        adc     #$80
        sta     L003D,x
        bcc     LBB31
        inc     L003E,x
LBB31:  txa
        lsr     a
        tax
        jsr     LBB90
        clv
        bvc     LBB8A
LBB3A:  lda     #$04
        sta     L0035,x
        lda     #$2D
        sta     L0677,x
        lda     #$00
        sta     L0679,x
        lda     LBA76,x
        tay
        lda     L0077,y
        beq     LBB7F
        lda     L0035,y
        bne     LBB7F
        tya
        asl     a
        tay
        lda     L0030,y
        cmp     #$30
        bne     LBB73
        lda     L0031,y
        cmp     #$35
        bcs     LBB73
        lda     #$04
        sta     L0035,x
        lda     #$4C
        sta     L069F,x
        jmp     LBB8A

LBB73:  jsr     LBCD3
        lda     #$05
        sta     L0035,x
        lda     #$7D
        sta     L069D,x
LBB7F:  lda     L0035,x
        cmp     #$04
        bne     LBB8A
        lda     #$4C
        sta     L069F,x
LBB8A:  lda     #$1B
        jsr     LE659
        rts

LBB90:  lda     L0697,x
        clc
        adc     #$01
        cmp     #$0A
        bcc     LBB9C
        lda     #$00
LBB9C:  sta     L0697,x
        sta     L001C
        lda     L0695,x
        adc     #$00
        cmp     #$0A
        bcc     LBBAC
        lda     #$00
LBBAC:  sta     L0695,x
        sta     L001B
        lda     #$00
        sta     L001D
        jsr     LB53F
        lda     #$19
        jsr     LE659
        sed
        lda     L0691,x
        clc
        adc     L0697,x
        cmp     #$0A
        bcc     LBBCC
        and     #$0F
        sec
LBBCC:  sta     L0691,x
        lda     L068F,x
        adc     L0695,x
        cmp     #$0A
        bcc     LBBDC
        and     #$0F
        sec
LBBDC:  sta     L068F,x
        lda     L068D,x
        adc     #$00
        cmp     #$0A
        bcc     LBBEB
        and     #$0F
        sec
LBBEB:  sta     L068D,x
        cld
        jmp     LA2D0

LBBF2:  lda     L0043
        cmp     #$0A
        bcc     LBBFD
        dec     L0043
        clv
        bvc     LBC15
LBBFD:  ldy     L002E
        jsr     L8952
        lda     L0011
        bne     LBC15
        dec     L002E
        lda     L002E
        cmp     #$00
        bne     LBC15
        lda     #$00
        sta     L0043
        jsr     LAB34
LBC15:  rts

LBC16:  lda     #$20
        sta     L00AD
        lda     #$1E
        sta     L00AE
        ldy     #$00
        lda     L08BC
        and     #$E0
        cmp     #$E0
        bne     LBC36
LBC29:  lda     LBC7A,y
        sta     (L00AD),y
        iny
        cpy     #$14
        bcc     LBC29
        clv
        bvc     LBC6B
LBC36:  lda     LBC6C,y
        sta     (L00AD),y
        iny
        cpy     #$0E
        bcc     LBC36
        iny
        iny
        lda     L0618
        sta     (L00AD),y
        iny
        lda     #$A0
        sta     (L00AD),y
        iny
        txa
        pha
        lda     a:L00C0
        and     #$03
        beq     LBC69
        asl     a
        asl     a
        adc     a:L00C3
        adc     a:L00C4
        tax
        lda     LBC8E,x
        sta     (L00AD),y
        iny
        lda     #$A0
        sta     (L00AD),y
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
LBC7A:  lsr     L00A0
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
        ora     L201B,y
        jsr     L1D18
        .byte   $1C
LBC9E:  lda     L069B,x
        bne     LBCA4
        rts

LBCA4:  lda     LBA76,x
LBCA7:  tay
        lda     L0035,y
        beq     LBCB0
        jmp     LBCC0

LBCB0:  lda     L0077,y
        bne     LBCBF
        txa
        clc
        adc     #$18
        jsr     LD670
        jmp     LBCC0

LBCBF:  rts

LBCC0:  lda     #$00
        sta     L069B,x
        sta     L0095,x
        sta     L0093,x
        lda     #$04
        sta     L0035,x
        lda     #$18
        sta     L069F,x
        rts

LBCD3:  stx     L05C0
        txa
        asl     a
        asl     a
        asl     a
        adc     L05C0
        adc     L05C0
        tax
        ldy     #$00
LBCE3:  lda     LBD24,x
        sta     L0002
        inx
        lda     LBD24,x
        sta     L0003
        inx
        lda     #$0A
        sta     L0000
        lda     #$BD
        sta     L0001
        lda     #$50
        sta     L0005
        lda     #$0F
        .byte   $20
        .byte   $CC
LBCFF:  cmp     L00C8,x
        tya
        cmp     #$05
        bne     LBCE3
        ldx     L05C0
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
LBD29:  ora     (L0080),y
        ora     (L0000),y
        .byte   $12
        rol     L0010,x
        ldx     L0010,y
        rol     L0011,x
        ldx     L0011,y
        rol     L0012,x
LBD38:  lda     L06B1
        bne     LBD6D
        lda     L0029
        ora     L002A
        and     #$01
        beq     LBD6D
        inc     L06B3
        lda     L06B3
        cmp     #$02
        bcc     LBD6D
        lda     #$01
        sta     L06B1
        sta     L06B2
        lda     #$00
        sta     L06C0
        sta     L06C1
        lda     L000F
        and     #$03
        bne     LBD6D
        lda     #$01
        sta     L06C0
        sta     L06C1
LBD6D:  inc     L06A6
        lda     L06A6
        cmp     #$05
        bcs     LBD78
        rts

LBD78:  lda     #$00
        .byte   $8D
        .byte   $A6
LBD7C:  asl     L00AD
        lda     L0006
LBD80:  bne     LBD83
        rts

LBD83:  lda     #$00
        sta     L06BF
        lda     #$00
        sta     L06A4
        lda     L0077
        bne     LBD94
        jmp     LBE3B

LBD94:  php
        sei
        lda     L6000
        lda     L7545
        lda     L60B0
        lda     L7543
        lda     L7543
        lda     L7543
        lda     L7541
        lda     L7540
        lda     L7552
        lda     L60B0
        plp
        ldy     L06A5
        lda     L06A7
        bne     LBDC3
        lda     L7DE0,y
        clv
        bvc     LBDD0
LBDC3:  cmp     #$01
        bne     LBDCD
        lda     L7E5C,y
        clv
        bvc     LBDD0
LBDCD:  lda     L7D1D,y
LBDD0:  sta     L064D
        lda     L06B1
        cmp     #$01
        bne     LBDFE
        lda     L064D
        cmp     #$0B
        bne     LBDE9
        lda     #$02
        sta     L06B1
        clv
        bvc     LBDFE
LBDE9:  cmp     #$1D
        bne     LBDF5
        lda     #$02
        sta     L06B1
        clv
        bvc     LBDFE
LBDF5:  cmp     #$29
        bne     LBDFE
        lda     #$02
        sta     L06B1
LBDFE:  lda     L06B1
LBE01:  cmp     #$02
        bcc     LBE34
        lda     L06C0
        bne     LBE1F
        ldy     L06B1
        cpy     #$0E
        bne     LBE16
        lda     #$01
        sta     L06BF
LBE16:  lda     L7F6C,y
        inc     L06B1
        clv
        bvc     LBE31
LBE1F:  ldy     L06B1
        cpy     #$17
        bne     LBE2B
        lda     #$01
        sta     L06BF
LBE2B:  lda     L7F54,y
        inc     L06B1
LBE31:  clv
        bvc     LBE37
LBE34:  lda     L064D
LBE37:  tay
        jsr     L89B7
LBE3B:  lda     #$01
        sta     L06A4
        lda     L0078
        bne     LBE47
        jmp     LBEEB

LBE47:  php
        sei
        lda     L6000
        lda     L7549
        lda     L6080
        lda     L7540
        lda     L755E
        lda     L6090
        plp
        ldy     L06A5
        lda     L06A7
        bne     LBE6A
        lda     L7DE0,y
        clv
        bvc     LBE80
LBE6A:  cmp     #$01
        bne     LBE74
        lda     L7ED8,y
        clv
        bvc     LBE80
LBE74:  tya
        cmp     #$AC
        bcc     LBE7C
        clc
        adc     #$0C
LBE7C:  tay
        lda     L7D1D,y
LBE80:  sta     L064D
        lda     L06B2
        cmp     #$01
        bne     LBEAE
        lda     L064D
        cmp     #$0B
        bne     LBE96
        lda     #$02
        sta     L06B2
LBE96:  lda     L064D
        cmp     #$1D
        bne     LBEA2
        lda     #$02
        sta     L06B2
LBEA2:  lda     L064D
        cmp     #$29
        bne     LBEAE
        lda     #$02
        sta     L06B2
LBEAE:  lda     L06B2
        cmp     #$02
        bcc     LBEE4
        lda     L06C1
        bne     LBECF
        ldy     L06B2
        cpy     #$0E
        bne     LBEC6
        lda     #$01
        sta     L06BF
LBEC6:  lda     L7F7C,y
        inc     L06B2
        clv
        bvc     LBEE1
LBECF:  ldy     L06B2
        cpy     #$17
        bne     LBEDB
        lda     #$01
        sta     L06BF
LBEDB:  lda     L7F8C,y
        inc     L06B2
LBEE1:  clv
        bvc     LBEE7
LBEE4:  lda     L064D
LBEE7:  tay
        jsr     L89B7
LBEEB:  lda     L06BF
        bne     LBF18
        inc     L06A5
        lda     L06A7
        bne     LBF00
        lda     L06A5
        cmp     #$7C
        clv
        bvc     LBF11
LBF00:  cmp     #$01
        bne     LBF0C
        lda     L06A5
        cmp     #$7C
        clv
        bvc     LBF11
LBF0C:  lda     L06A5
        cmp     #$B6
LBF11:  bcc     LBF18
        lda     #$01
        sta     L06BF
LBF18:  lda     L06BF
        beq     LBF40
        lda     #$00
        sta     L06A5
        lda     #$1E
        sta     L0043
        lda     #$00
        jsr     LE659
        lda     #$00
        sta     L0035
        sta     L0036
        inc     L06A7
        lda     L06A7
        cmp     #$03
        bcc     LBF40
        lda     #$00
        sta     L06A7
LBF40:  rts

LBF41:  lda     L069B,x
        beq     LBF47
        rts

LBF47:  lda     L0008
        bne     LBF87
        lda     L0077,x
        beq     LBF87
        lda     L0035,x
        bne     LBF87
        lda     L000F
        and     #$7F
        bne     LBF87
        lda     L06B5,x
        bne     LBF87
        inc     L06B7,x
        lda     L06B7,x
        cmp     L06BB,x
        bcc     LBF87
        txa
        asl     a
        tay
        lda     L0030,y
        cmp     #$30
        bne     LBF87
        lda     L0031,y
        cmp     #$32
        bcc     LBF87
        lda     #$01
        sta     L06B5,x
        lda     #$00
        sta     L06B9,x
        sta     L06BD,x
LBF87:  rts

LBF88:  lda     L06B5,x
        bne     LBF8E
        rts

LBF8E:  inc     L06BD,x
        lda     L06BD,x
        cmp     #$07
        bcs     LBF99
        rts

LBF99:  lda     #$00
        sta     L06BD,x
        lda     L06B9,x
        cmp     #$44
        beq     LBFF4
        cpx     #$00
        bne     LBFAE
        lda     #$00
        clv
        bvc     LBFB0
LBFAE:  lda     #$01
LBFB0:  sta     L06A4
        inc     L06B9,x
        lda     L06B9,x
        tay
        lda     LC0A8,y
        tay
        jsr     L89B7
        lda     L06B9,x
        cmp     #$63
        bne     LBFD2
        lda     #$00
        sta     L06B5,x
        lda     #$F0
        sta     L06BB,x
LBFD2:  lda     L06B9,x
        cmp     #$8B
        bne     LBFE3
        lda     #$00
        sta     L06B5,x
        lda     #$F0
        sta     L06BB,x
LBFE3:  lda     L06B9,x
        cmp     #$B3
        bne     LBFF4
        lda     #$00
        sta     L06B5,x
        lda     #$F0
        sta     L06BB,x
LBFF4:  lda     L0077,x
        bne     LC017
        cpx     #$00
        bne     LC00B
        lda     L06B9,x
        cmp     #$64
        bcs     LC008
        lda     #$64
        sta     L06B9,x
LC008:  clv
        bvc     LC017
LC00B:  lda     L06B9,x
        cmp     #$8C
        bcs     LC017
        lda     #$8C
        sta     L06B9,x
LC017:  lda     L0035,x
        beq     LC027
        lda     L06B9,x
        cmp     #$46
        bcs     LC027
        lda     #$46
        sta     L06B9,x
LC027:  rts

LC028:  .byte   $2F
        .byte   $7C
        .byte   $9B
        .byte   $AB
        dex
        cmp     L00F8,y
        bit     L0060
        sei
        sty     L009C
        tay
        cpy     #$00
        and     (L0058,x)
        ror     L8F79
        txs
        bcs     LC040
LC040:  .byte   $1A
        .byte   $44
        eor     L005E,x
        .byte   $6F
        .byte   $77
        dey
        brk
        .byte   $12
        bmi     LC087
        .byte   $42
        lsr     L6054
        brk
        asl     L002A,x
        .byte   $32
        rol     L003E,x
        .byte   $42
        lsr     a
        brk
        .byte   $13
        .byte   $22
        plp
        .byte   $2B
        and     (L0034),y
        .byte   $3A
        brk
        .byte   $13
        .byte   $22
        plp
        .byte   $2B
        and     (L0034),y
        .byte   $3A
        brk
        .byte   $12
        asl     L2623,x
        .byte   $2B
        and     a:L0032
        .byte   $12
        asl     L2623,x
        .byte   $2B
        and     a:L0032
        bpl     LC094
        asl     L2420,x
        rol     L002A
        brk
        bpl     LC09C
        asl     L2420,x
        rol     L002A
LC087:  brk
        .byte   $0F
        asl     L0019,x
        .byte   $1B
        asl     L221F,x
        brk
        .byte   $0F
        asl     L0019,x
        .byte   $1B
LC094:  asl     L221F,x
        brk
        .byte   $0F
        asl     L0019,x
        .byte   $1B
LC09C:  asl     L221F,x
        brk
        .byte   $0F
        asl     L0019,x
        .byte   $1B
        asl     L221F,x
        brk
LC0A8:  brk
        ora     (L0002,x)
        .byte   $03
        .byte   $04
        ora     L0015
        .byte   $14
        .byte   $0B
        asl     L290B
        and     #$3C
        and     #$29
        and     #$3C
        and     #$29
        and     #$29
        eor     L0045
        and     L3D3C,x
        eor     L003D
        eor     L003D
        eor     L003D
        eor     L0029
        and     #$29
        .byte   $3C
        and     #$29
        and     #$3C
        and     #$29
        eor     L0046
        lsr     L0046
        lsr     L0046
        lsr     L0046
        eor     L003D
        eor     L003D
        eor     L003D
        eor     L003D
        eor     L003D
        eor     L003D
        eor     L0046
        lsr     L0046
        lsr     L0046
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
LC0FF:  ora     L0004
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
        ror     L706F
        .byte   $6F
        ror     L706F
        .byte   $6F
        ror     L706F
        adc     (L0071),y
        .byte   $72
        adc     (L0073),y
        .byte   $74
        adc     L0005,x
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
        ror     L706F
        .byte   $6F
        ror     L706F
        .byte   $6F
        ror     L706F
        adc     (L0071),y
        .byte   $72
        adc     (L0076),y
        .byte   $77
        sei
        ora     L0004
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
        lda     L067D
        beq     LC196
        lda     L000F
        and     #$3F
        bne     LC193
        dec     L067D
        lda     L067D
        bne     LC193
        jmp     LC1BA

LC193:  clv
        bvc     LC1AB
LC196:  lda     L0014
        cmp     #$04
        bne     LC1AB
        lda     L0013
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
        sta     L067D
        beq     LC1BA
LC1B9:  rts

LC1BA:  lda     L0008
        cmp     #$FB
        bne     LC1C6
        jmp     LA88F

        clv
        bvc     LC1C9
LC1C6:  jmp     LA864

LC1C9:  lda     L0619
        cmp     #$03
        bcc     LC227
        inx
        lda     L0077,x
        beq     LC227
LC1D5:  jsr     LD552
        jsr     LC228
        cmp     #$00
        bne     LC1E8
        lda     L000F
        bne     LC1FD
        dec     L0681
        bne     LC1FD
LC1E8:  lda     #$00
        sta     L0077
        sta     L0078
        sta     L0677
        sta     L0678
        sta     L0679
        sta     L067A
        jmp     LCA8C

LC1FD:  ldy     #$00
        lda     L000F
        and     #$07
        bne     LC213
        lda     L0630
        sec
        sbc     L0089,x
        beq     LC213
        ldy     #$04
        bcs     LC213
        ldy     #$08
LC213:  lda     L000F
        and     #$07
        bne     LC225
        lda     L0631
        sec
        sbc     L008F,x
        beq     LC225
        tya
        ora     #$01
        tay
LC225:  sty     L0029,x
LC227:  rts

LC228:  lda     L066F
        beq     LC235
        dec     L066F
        lda     #$00
        clv
        bvc     LC246
LC235:  lda     L0027
        and     #$08
        beq     LC246
        lda     L0028
        and     #$04
        beq     LC246
        lda     #$28
        sta     L066F
LC246:  rts

LC247:  ldx     #$00
        lda     L0008
        .byte   $C9
LC24C:  brk
        bne     LC251
        ldx     #$01
LC251:  lda     L0008
        cmp     #$F7
        bne     LC259
        ldx     #$01
LC259:  cpx     #$01
        beq     LC260
        jmp     LC2EA

LC260:  lda     L000F
        and     #$7F
        bne     LC2A5
        ldx     #$00
LC268:  lda     L0077,x
        bne     LC2A0
        lda     L004E,x
        bne     LC2A0
        stx     L001B
        lda     #$01
        sec
        sbc     L064B
        sta     L064B
        bne     LC298
        lda     a:L00C1
        bne     LC28D
        clc
        lda     #$40
        adc     L001B
        jsr     LD670
        clv
        bvc     LC295
LC28D:  clc
        lda     #$44
        adc     L001B
        jsr     LD670
LC295:  clv
        bvc     LC2A0
LC298:  clc
        lda     #$42
        adc     L001B
        jsr     LD670
LC2A0:  inx
        cpx     #$02
        bcc     LC268
LC2A5:  ldx     #$00
LC2A7:  lda     L0663,x
        bmi     LC2D9
        jsr     LE7E4
        lda     L0663,x
        bpl     LC2D9
        jsr     LAFF4
        lda     L0077
        ora     L0078
        bne     LC2D9
        lda     L004E
        ora     L004F
        bne     LC2D9
        ldy     LBA76,x
        lda     L0663,y
        bpl     LC2D9
        lda     #$00
        sta     L066D
        sta     a:L00C2
        sta     a:L00C3
        jmp     LA5AD

LC2D9:  inx
        cpx     #$02
        bcc     LC2A7
        jsr     LC2EB
        lda     L004E
        ora     L004F
        beq     LC2EA
        jsr     LA4E0
LC2EA:  rts

LC2EB:  ldx     #$00
LC2ED:  lda     L0077,x
        bne     LC30A
        lda     L0663,x
        bpl     LC30A
        lda     L004E,x
        cmp     #$0A
        bcs     LC30A
        lda     a:L00C1
        beq     LC30A
        lda     L0029,x
        and     #$01
        beq     LC30A
        jsr     LC310
LC30A:  inx
        cpx     #$02
        bcc     LC2ED
        rts

LC310:  lda     #$16
        jsr     LE659
        lda     L0618
        sec
        sbc     LCB3E
        cmp     #$30
        bcs     LC325
        lda     #$14
        jmp     LE659

LC325:  sta     L0618
        sei
        lda     a:L00C1
        sec
        sbc     LCB3E
        sta     a:L00C1
        cli
        jsr     LBC16
        lda     #$00
        sta     L000B
        sta     L0619
        lda     L0077
        beq     LC34D
        lda     L0078
LC344:  beq     LC34D
        lda     #$01
        sta     L000B
        sta     L0619
LC34D:  stx     L001C
        lda     #$48
        clc
        adc     L001C
        jsr     LD670
        jsr     LBCD3
        lda     L004E,x
        bne     LC382
        txa
        eor     #$01
        tay
        lda     L002F,y
        cmp     #$06
        bcc     LC36D
        lda     #$02
        bne     LC377
LC36D:  cmp     #$03
        bcc     LC375
        lda     #$01
        bne     LC377
LC375:  lda     #$00
LC377:  sta     L0075,x
        jsr     LAC1B
        jsr     LAFF4
        clv
        bvc     LC390
LC382:  lda     #$03
        sta     L0075,x
        lda     #$00
        sta     L004E,x
        jsr     LAD62
        jsr     LAFF4
LC390:  rts

LC391:  lda     L0014
        cmp     #$01
        bcc     LC3E4
        lda     L0645
        cmp     #$14
        bne     LC3A4
        jsr     LCC7C
        jsr     LCD50
LC3A4:  inc     L0644
        lda     L0644
        cmp     #$08
        bcc     LC3E4
        lda     #$00
        sta     L0644
        lda     L0645
        cmp     #$14
        beq     LC3E4
        lda     L0645
        asl     a
        tay
        lda     LCF9E,y
        sta     L0047
        lda     LCF9F,y
        sta     L0048
        ldy     #$00
LC3CB:  lda     (L0047),y
        sta     L2000,y
        iny
        cpy     #$8F
        bcc     LC3CB
        inc     L0645
        lda     L0645
        cmp     #$0A
        bne     LC3E4
        lda     #$14
        sta     L0645
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
        sta     L067F
LC3FB:  dec     L067E
        lda     L067E
        cmp     #$00
        beq     LC408
        jmp     LC453

LC408:  ldx     #$00
        lda     #$1D
        sta     L067E
        inc     L067F
        ldy     L067F
        cpy     #$27
        bcc     LC41C
        jmp     LC436

LC41C:  ldy     L067F
        lda     LC471,y
        bne     LC427
        jmp     LC453

LC427:  jsr     L9DFA
        jsr     L9EC0
        ldy     L067F
        lda     LC471,y
        jsr     LC4E9
LC436:  ldy     L067F
        lda     LC471,y
        bne     LC441
        jmp     LC453

LC441:  ldy     L067F
        lda     LC471,y
        jsr     LC528
        ldy     L067F
        lda     LC471,y
        jsr     LC543
LC453:  ldy     L067F
        lda     LC4AD,y
        cmp     #$00
        beq     LC460
        jsr     LD670
LC460:  lda     L067F
        cmp     #$3B
        bcc     LC470
        lda     #$00
        sta     L0077
        sta     L0078
        jsr     LA5AD
LC470:  rts

LC471:  brk
        brk
        ora     (L0000,x)
        brk
        brk
        ora     (L0002,x)
        brk
        brk
        .byte   $02
        brk
        ora     (L0002,x)
        brk
        brk
        brk
        brk
        ora     (L0002,x)
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
LC4AD:  bit     L2C2C
        bit     L2C2C
        and     L2D2D
        and     L2D2D
        and     L2E2E
        rol     L2E2E
        rol     L2E2E
        rol     L2F2F
        .byte   $2F
        .byte   $2F
        .byte   $2F
        .byte   $2F
        .byte   $2F
        .byte   $2F
        and     (L0031),y
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
        and     L0035,x
        and     L0035,x
        and     L0035,x
        and     L0035,x
        and     L0035,x
LC4E9:  cmp     #$08
        bne     LC4EF
        dec     L0089
LC4EF:  cmp     #$04
        bne     LC4FC
        inc     L0089
        jsr     L9F2A
        bcs     LC4FC
        dec     L0089
LC4FC:  cmp     #$02
        bne     LC509
        inc     L0087
        jsr     L9F2A
        bcs     LC509
        dec     L0087
LC509:  cmp     #$01
        bne     LC521
        lda     L008F
        sta     L001B
        clc
        adc     #$01
        and     #$03
        sta     L008F
        jsr     L9F2A
        bcs     LC521
        lda     L001B
        sta     L008F
LC521:  jsr     L9EE8
        jsr     L9E8F
        rts

LC528:  cmp     #$10
        bne     LC542
        lda     #$90
        sta     L001F
        lda     #$03
        sta     L0020
        ldy     #$03
        lda     #$08
LC538:  sta     (L001F),y
        iny
        cpy     #$0D
        bcc     LC538
        jsr     LA3B3
LC542:  rts

LC543:  cmp     #$20
        bne     LC560
        lda     #$19
        sta     L0093
        lda     #$00
        sta     L0095
        ldx     #$00
        jsr     LA02E
        lda     #$01
        sta     L0095
        ldx     #$00
        jsr     LA02E
        jsr     LA02E
LC560:  jsr     LC66B
        rts

LC564:  lda     L0008
        cmp     #$EC
        beq     LC56B
        rts

LC56B:  lda     L000F
        and     #$1F
        bne     LC586
        lda     #$01
        sec
        sbc     L0650
        sta     L0650
        bne     LC581
        lda     #$0B
        clv
        .byte   $50
LC580:  .byte   $02
LC581:  lda     #$37
        jsr     LD670
LC586:  lda     L0029
        ora     L002A
        and     #$01
        beq     LC5AF
        lda     L0655
        bne     LC5AC
        inc     L0656
        lda     L0656
        cmp     #$03
        bcc     LC5A7
        lda     #$01
        sta     L067E
        lda     #$24
        sta     L067F
LC5A7:  lda     #$01
        sta     L0655
LC5AC:  clv
        bvc     LC5B4
LC5AF:  lda     #$00
        sta     L0655
LC5B4:  dec     L067E
        lda     L067E
        cmp     #$00
        beq     LC5C1
        jmp     LC60E

LC5C1:  ldx     #$00
        lda     #$1D
        sta     L067E
        inc     L067F
        ldy     L067F
        cpy     #$15
        bcc     LC5D5
        jmp     LC5EF

LC5D5:  ldy     L067F
        lda     LC61E,y
        bne     LC5E0
        jmp     LC60E

LC5E0:  jsr     L9DFA
        jsr     L9EC0
        ldy     L067F
        lda     LC61E,y
        jsr     LC4E9
LC5EF:  ldy     L067F
        lda     LC61E,y
        jsr     LC528
        ldy     L067F
        lda     LC61E,y
        jsr     LC543
        ldy     L067F
        lda     LC645,y
        cmp     #$00
        beq     LC60E
        jsr     LD670
LC60E:  lda     L067F
        cmp     #$25
        bcc     LC61D
        lda     L064F
        sta     L000B
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
LC645:  lsr     L4E4E
        lsr     L4E4E
        lsr     L4E4E
        lsr     L4E4E
        lsr     L4E4E
        lsr     L4E4E
        lsr     L4E4E
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $33
        .byte   $34
        .byte   $34
        .byte   $34
        .byte   $34
        and     L0035,x
        and     L0035,x
        and     L0035,x
        and     L0035,x
LC66B:  lda     #$00
        sta     L001B
        lda     #$02
        sta     L001C
        ldy     #$60
        ldx     #$00
LC677:  lda     #$F1
        sta     (L001B),y
        tya
        clc
        adc     #$10
        tay
LC680:  bcc     LC684
        inc     L001C
LC684:  inx
        cpx     #$14
        bcc     LC677
        ldx     #$00
        jsr     LA43A
        rts

LC68F:  lda     #$B0
        sta     L0005
        lda     #$5D
        jsr     LD670
        lda     #$10
        sta     L001B
        lda     #$11
        sta     L001C
        ldx     #$00
LC6A2:  lda     L08AA,x
        sta     L001E
        lda     L08AB,x
        sta     L001F
        ldy     #$02
        jsr     LC858
        lda     #$01
        jsr     LC8A1
        lda     L001B
        clc
        adc     #$80
        sta     L001B
        lda     L001C
        adc     #$00
        sta     L001C
        inx
        inx
        cpx     #$0E
        bcc     LC6A2
        lda     #$90
        sta     L001B
        lda     #$14
        sta     L001C
        ldx     #$14
LC6D3:  lda     L08AA,x
        sta     L001F
        lda     L08AB,x
        sta     L001E
        lda     L08AC,x
        sta     L001D
        ldy     #$03
        jsr     LC858
        lda     #$00
        jsr     LC8A1
        lda     L001B
        clc
        adc     #$80
        sta     L001B
        lda     L001C
        adc     #$00
        sta     L001C
        inx
        inx
        inx
        cpx     #$1D
        bcc     LC6D3
        lda     #$10
        sta     L001B
        lda     #$16
        sta     L001C
        lda     #$00
        sta     L06E0
        sta     L06E1
        ldx     #$06
LC712:  lda     L06E0
        clc
        adc     L08AA,x
        sta     L06E0
        lda     L06E1
        adc     L08AB,x
        sta     L06E1
        bcc     LC731
        lda     #$FF
        sta     L06E1
        sta     L06E0
        bne     LC737
LC731:  inx
        inx
        cpx     #$0E
        bcc     LC712
LC737:  lda     L06E0
        ora     L06E1
        bne     LC744
        lda     #$01
        sta     L06E0
LC744:  jsr     LC779
        lda     #$2A
        sta     L001B
        lda     #$11
        sta     L001C
        ldx     #$1E
LC751:  lda     L08AA,x
        sta     L001E
        lda     L08AB,x
        sta     L001F
        ldy     #$02
        jsr     LC858
        lda     #$01
        jsr     LC8A1
        lda     L001B
        clc
        adc     #$80
        sta     L001B
        lda     L001C
        adc     #$00
        sta     L001C
        inx
        inx
        cpx     #$50
        bcc     LC751
        rts

LC779:  lda     L08C6
        asl     a
        sta     L06DC
        lda     L08C5
        rol     a
        sta     L06DD
        lda     L08C4
        rol     a
        sta     L06DE
        lda     #$00
        rol     a
        sta     L06DF
        lda     L06DC
        clc
        adc     L08C3
        sta     L06DC
        lda     L06DD
        adc     L08C2
        sta     L06DD
        lda     L06DE
        adc     L08C1
        sta     L06DE
        lda     L06DF
        adc     #$00
        sta     L06DF
        jsr     LC8D0
        lda     L06DC
        sta     L001E
        lda     L06DD
        sta     L001F
        ldy     #$02
        jsr     LC858
        lda     #$03
        jsr     LC8A1
        lda     L06DE
        sta     L001F
        sta     L06DD
        lda     L06DF
        sta     L0020
        sta     L06DE
        lda     #$00
        sta     L06DF
        sta     L06DC
        lsr     L06DE
        ror     L06DD
        ror     L06DC
        lsr     L06DE
        ror     L06DD
        ror     L06DC
        lda     #$00
        sta     L0021
        asl     L001F
        rol     L0020
        rol     L0021
        asl     L001F
        rol     L0020
        rol     L0021
        lda     L06DC
        sec
        sbc     L001F
        sta     L06DC
        lda     L06DD
        sbc     L0020
        sta     L06DD
        lda     L06DE
        sbc     L0021
        sta     L06DE
        lda     L06DF
        sbc     #$00
        sta     L06DF
        jsr     LC8D0
        lda     L06DC
        cmp     #$3C
        bcc     LC836
        lda     #$3B
LC836:  sta     L001F
        ldy     #$01
        jsr     LC858
        lda     L001B
        clc
        adc     #$04
        sta     L001B
        lda     #$3A
        ldy     #$00
        sta     (L001B),y
        iny
        lda     #$B0
        sta     (L001B),y
        inc     L001B
        inc     L001B
        lda     #$03
        jmp     LC8A1

LC858:  txa
        pha
        lda     #$00
        sta     L06D7
        sta     L06D8
        sta     L06D9
        sta     L06DA
        ldx     LC89D,y
        sed
LC86C:  asl     L001D
        rol     L001E
        rol     L001F
        lda     L06DA
        adc     L06DA
        sta     L06DA
        lda     L06D9
        adc     L06D9
        sta     L06D9
        lda     L06D8
        adc     L06D8
        sta     L06D8
        lda     L06D7
        adc     L06D7
        sta     L06D7
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
LC8A8:  lda     L06D7,x
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        ora     #$30
        sta     (L001B),y
        iny
        lda     L0005
        sta     (L001B),y
        iny
        lda     L06D7,x
        and     #$0F
        ora     #$30
        sta     (L001B),y
        iny
        lda     L0005
        sta     (L001B),y
        iny
        inx
        cpx     #$04
        bcc     LC8A8
        pla
        tax
        rts

LC8D0:  ldy     #$10
LC8D2:  asl     L06DC
        rol     L06DD
        rol     L06DE
        rol     L06DF
        bcc     LC8F5
        lda     L06DE
        sbc     L06E0
        sta     L06DE
        lda     L06DF
        sbc     L06E1
        sta     L06DF
        jmp     LC90F

LC8F5:  lda     L06DE
        cmp     L06E0
        lda     L06DF
        .byte   $ED
LC8FF:  sbc     (L0006,x)
        bcc     LC912
        sta     L06DF
        lda     L06DE
        sbc     L06E0
        sta     L06DE
LC90F:  inc     L06DC
LC912:  dey
        bne     LC8D2
        rts

LC916:  jsr     LCA1A
        lda     #$00
        sta     L0021
        sta     L0022
        ldx     #$02
LC921:  ldy     L001B
        jsr     LC96D
        lda     L001B
        clc
        adc     #$04
        tay
        jsr     LC96D
        lda     L001B
        clc
        adc     #$08
        tay
        jsr     LC96D
        lda     L001B
        clc
        adc     #$0C
        tay
        jsr     LC96D
        inx
        cpx     #$0E
        bcc     LC921
        ldx     L001F
        ldy     L001D
        lda     L0021
        clc
        adc     #$0C
        cmp     L0022
        bcs     LC957
        ldx     L0020
        ldy     L001E
LC957:  stx     L0631
        lda     L001B
        cmp     #$10
        bne     LC969
        cpx     #$01
        beq     LC968
        cpx     #$03
        bne     LC969
LC968:  dey
LC969:  sty     L0630
        rts

LC96D:  lda     LCBFD,y
        cmp     #$80
        beq     LC97D
        clc
        adc     L05C0,x
        cmp     L05C1,x
        bne     LC9B4
LC97D:  lda     LCBFE,y
        cmp     #$80
        beq     LC98D
        clc
        adc     L05C0,x
        cmp     L05C2,x
        bne     LC9B4
LC98D:  lda     LCBFF,y
        cmp     #$80
        beq     LC99D
        clc
        adc     L05C0,x
        cmp     L05C3,x
        bne     LC9B4
LC99D:  lda     L05C0,x
        clc
        adc     LCBFC,y
        cmp     L0021
        bcc     LC9B3
        sta     L0021
        stx     L001D
        tya
        lsr     a
        lsr     a
        and     #$03
        sta     L001F
LC9B3:  rts

LC9B4:  lda     L05C0,x
        sta     L001C
        lda     LCBFD,y
        cmp     #$80
        beq     LC9D2
        cpx     #$0C
        bcs     LCA19
        adc     L001C
        sec
        sbc     L05C1,x
        bcc     LC9D2
        eor     #$FF
        adc     L001C
        sta     L001C
LC9D2:  lda     LCBFE,y
        cmp     #$80
        beq     LC9EB
        cpx     #$0C
        bcs     LCA19
        adc     L001C
        sec
        sbc     L05C2,x
        bcc     LC9EB
        eor     #$FF
        adc     L001C
        sta     L001C
LC9EB:  lda     LCBFF,y
        cmp     #$80
        beq     LCA04
        cpx     #$0C
        bcs     LCA19
        adc     L001C
        sec
        sbc     L05C3,x
        bcc     LCA04
        eor     #$FF
        adc     L001C
        sta     L001C
LCA04:  lda     L001C
        clc
        adc     LCBFC,y
        cmp     L0022
        bcc     LCA19
        sta     L0022
        stx     L001E
        tya
        lsr     a
        lsr     a
        and     #$03
        sta     L0020
LCA19:  rts

LCA1A:  lda     L008B,x
        asl     a
        asl     a
        asl     a
        asl     a
        sta     L001B
        lda     #$50
        sta     L001F
        bit     L000B
        bpl     LCA2C
        ldx     #$02
LCA2C:  lda     L9E8C,x
        sta     L0020
        ldx     #$00
        ldy     #$00
        sty     L05D0
LCA38:  lda     L0020
        sta     L001E
        lda     L001F
        sta     L001D
LCA40:  lda     L001D
        clc
        adc     #$10
        sta     L001D
        bcc     LCA4B
        inc     L001E
LCA4B:  lda     (L001D),y
        beq     LCA40
        lda     L001E
        lsr     a
        lda     L001D
        ror     a
        and     #$F8
        sta     L05C0,x
        inc     L001F
        inx
        cpx     #$10
        bcc     LCA38
        rts

LCA62:  lda     L06A8
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
        sta     L067D
        lda     #$08
        sta     L0007
        lda     #$0C
        jsr     L8818
        lda     #$54
        jmp     LD670

LCA8C:  jsr     LE649
        inc     L06A8
        lda     L08BB
        and     #$04
        beq     LCAA5
        lda     L06A8
        and     #$03
        bne     LCAA5
        lda     #$0A
        jsr     LE659
LCAA5:  lda     #$FB
        sta     L0008
LCAA9:  lda     #$02
        sta     L0007
        sta     L06AC
        lda     #$F0
        sta     L06BB
        sta     L06BC
        lda     #$00
        sta     L06B5
        sta     L06B6
        sta     L067D
        sta     L0644
        sta     L0645
        sta     L0646
        sta     L0647
        sta     L06AB
        sta     L0659
        sta     L065A
        sta     L0637
        sta     L0013
        sta     L0014
        sta     L0009
        sta     L0093
        sta     L0094
        sta     L0095
        sta     L0096
        sta     L004E
        sta     L004F
        lda     #$08
        jsr     L8818
        rts

LCAF3:  lda     L0618
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
        sta     L0046
        jsr     LE659
        lda     #$14
        sta     L06B4
        lda     #$06
        sta     L0007
        lda     #$06
        jsr     L8818
        lda     #$3E
        ldy     #$01
        jsr     LCBC0
        ldy     L0619
        lda     LCB3A,y
        sta     L000B
        sta     L0091
        lda     #$02
        jsr     LE659
        lda     #$3F
        jsr     LD670
        rts

LCB3A:  brk
        ora     (L00FF,x)
        .byte   $FF
LCB3E:  ora     (L0002,x)
        .byte   $02
        .byte   $01
LCB42:  lda     L0008
        cmp     #$FE
        beq     LCB49
        rts

LCB49:  lda     L000F
        and     #$3F
        bne     LCB5A
        dec     L06B4
        bne     LCB5A
        lda     #$01
        sta     L0029
        sta     L002A
LCB5A:  lda     L0029
        ldy     L0619
        cpy     #$01
        bne     LCB65
        lda     L002A
LCB65:  and     #$0E
        beq     LCB71
        jsr     LCB98
        lda     #$15
        jsr     LE659
LCB71:  lda     L0029
        ldy     L0619
        cpy     #$01
        bne     LCB7C
        lda     L002A
LCB7C:  and     #$01
        bne     LCB81
        rts

LCB81:  lda     L0046
        sta     L0075
        ldy     L000B
        beq     LCB90
        sta     L0076
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
        lda     L0046
        clc
        adc     #$01
        cmp     #$03
        bne     LCBAE
        lda     #$02
LCBAE:  sta     L0046
        jmp     LCBBE

LCBB3:  lda     L0046
        cmp     #$00
        beq     LCBBE
        sec
        sbc     #$01
        sta     L0046
LCBBE:  lda     #$01
LCBC0:  sta     L001D
        pha
        lda     L0046
        asl     a
        tay
        lda     LCBF6,y
        sta     L0002
        lda     LCBF7,y
        sta     L0003
        lda     #$B0
        sta     L0005
        pla
        beq     LCBDA
        lda     #$3E
LCBDA:  jsr     LD64A
        lda     LCBFC,y
        sta     L0002
        lda     LCBFD,y
        sta     L0003
        lda     L001D
        beq     LCBED
        lda     #$3F
LCBED:  jsr     LD64A
        rts

        rol     L3F3E,x
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
LCC00:  lsr     a
        .byte   $12
        brk
        .byte   $04
        asl     L1006
        .byte   $03
        .byte   $03
        .byte   $03
        ora     L0005
        brk
        brk
        brk
        brk
        sbc     (L0080),y
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
LCC40:  inc     L80F0,x
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
LCC7C:  inc     L06A9
        lda     L06A9
        cmp     #$07
        beq     LCC87
        rts

LCC87:  lda     #$00
        sta     L06A9
        lda     #$00
        sta     L0019
        lda     L0647
        and     #$01
        beq     LCC9B
        lda     #$01
        sta     L0019
LCC9B:  lda     L06AD
        bne     LCCEF
        lda     L0647
        asl     a
        tay
        lda     LCE4E,y
        sta     L0047
        lda     LCE4F,y
        sta     L0048
        lda     L0646
        asl     a
        asl     a
        asl     a
        asl     a
        tax
        ldy     #$00
LCCB9:  lda     L0019
        bne     LCCC3
        lda     LCEFE,x
        clv
        bvc     LCCD4
LCCC3:  stx     L064D
        lda     LCE62,x
        clc
        adc     L0659
        tax
        lda     LCEE2,x
        ldx     L064D
LCCD4:  sta     (L0047),y
        inx
        iny
        cpy     #$0F
        bne     LCCB9
        lda     L0019
        beq     LCCEF
        lda     L0659
        clc
        adc     #$07
        cmp     #$1C
        bcc     LCCEC
        lda     #$00
LCCEC:  sta     L0659
LCCEF:  inc     L0646
        lda     L0019
        bne     LCD24
        lda     L0646
        cmp     #$0A
        bne     LCD21
        lda     #$00
LCCFF:  sta     L0646
        sta     L06AD
        inc     L0647
        lda     L0647
        cmp     #$04
        bne     LCD14
        lda     #$00
        sta     L0647
LCD14:  lda     L0647
        cmp     L06AC
        bne     LCD21
        lda     #$01
        sta     L06AD
LCD21:  clv
        bvc     LCD4F
LCD24:  lda     L0646
        cmp     #$08
        bne     LCD4F
        lda     #$00
        sta     L0646
        sta     L06AD
        inc     L0647
        lda     L0647
        cmp     #$04
        bne     LCD42
        lda     #$00
        sta     L0647
LCD42:  lda     L0647
        cmp     L06AC
        bne     LCD4F
        lda     #$01
        sta     L06AD
LCD4F:  rts

LCD50:  inc     L06AA
        lda     L06AA
        cmp     #$05
        beq     LCD5B
        rts

LCD5B:  lda     #$00
        sta     L06AA
        lda     #$00
        sta     L0019
        lda     L06AC
        and     #$01
        beq     LCD6F
        lda     #$01
        sta     L0019
LCD6F:  lda     L06AE
LCD72:  bne     LCDC3
        lda     L06AC
        asl     a
        tay
        lda     LCE56,y
        sta     L0047
        lda     LCE57,y
        sta     L0048
        lda     L06AB
        asl     a
        asl     a
        asl     a
        asl     a
        tax
        ldy     #$00
LCD8D:  lda     L0019
        bne     LCD97
        lda     LCEFE,x
        clv
        bvc     LCDA8
LCD97:  stx     L064D
        lda     LCE62,x
        clc
        adc     L0659
        tax
        lda     LCEE2,x
        ldx     L064D
LCDA8:  sta     (L0047),y
        inx
        iny
        cpy     #$0F
        bne     LCD8D
        lda     L0019
        beq     LCDC3
        lda     L0659
        clc
        adc     #$07
        cmp     #$1C
        bcc     LCDC0
        lda     #$00
LCDC0:  sta     L0659
LCDC3:  inc     L06AB
        lda     L0019
        bne     LCE0D
        lda     L06AB
        cmp     #$0A
        bne     LCE0A
        lda     #$00
        sta     L06AB
        sta     L06AE
        inc     L06AC
        lda     L0008
        cmp     #$F8
        beq     LCDF1
        lda     L06AC
        cmp     #$04
        bne     LCDEE
        lda     #$00
        sta     L06AC
LCDEE:  clv
        bvc     LCDFD
LCDF1:  lda     L06AC
        cmp     #$06
        bne     LCDFD
        lda     #$00
        sta     L06AC
LCDFD:  lda     L06AC
        cmp     L0647
        bne     LCE0A
        lda     #$01
        sta     L06AE
LCE0A:  clv
        bvc     LCE4D
LCE0D:  lda     L06AB
        cmp     #$08
        bne     LCE4D
        lda     #$00
        sta     L06AB
        sta     L06AE
        inc     L06AC
        lda     L0008
        cmp     #$F8
        beq     LCE34
        lda     L06AC
        cmp     #$04
        bne     LCE31
        lda     #$00
        sta     L06AC
LCE31:  clv
        bvc     LCE40
LCE34:  lda     L06AC
        cmp     #$06
        bne     LCE40
        lda     #$00
        sta     L06AC
LCE40:  lda     L06AC
        cmp     L0647
        bne     LCE4D
        lda     #$01
        sta     L06AE
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
        ora     (L0002,x)
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
        ora     L0006
        brk
        brk
        brk
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
        ora     L0006
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     (L0002,x)
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
        ora     (L0002,x)
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
        ora     (L0002,x)
        .byte   $03
        ora     L0006
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        sbc     L62B3,x
        brk
        .byte   $C3
        .byte   $D3
        .byte   $F2
        inc     L62B3,x
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
        cmp     (L00F2),y
        cmp     (L0082),y
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
        cpx     L0302
        lsr     a
        stx     L0741
        .byte   $80
        rts

        .byte   $0B
        .byte   $D2
        .byte   $0F
        .byte   $B7
        .byte   $0F
        ldy     #$E0
        cpx     L0204
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
LD002:  brk
        .byte   $04
        .byte   $41
LD005:  ora     (L0002,x)
LD007:  .byte   $03
        .byte   $07
        .byte   $0B
        .byte   $0F
        .byte   $0F
        .byte   $73
        .byte   $93
        .byte   $B7
        .byte   $D2
        cpx     a:L004A
        .byte   $0F
        ldy     #$E0
        cpx     L0204
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
        ora     (L0010,x)
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
        cpx     L0202
        lsr     a
        stx     L0341
        .byte   $80
        rts

        .byte   $07
        .byte   $D2
        .byte   $0B
        .byte   $93
        .byte   $0B
        ldy     #$E0
        cpx     L0204
        lsr     a
        stx     L6F41
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
        ora     (L0002,x)
        .byte   $03
        .byte   $07
        .byte   $0B
        .byte   $0B
        .byte   $4F
        .byte   $6F
        .byte   $93
        .byte   $D2
        cpx     a:L004A
        .byte   $0B
        ldy     #$E0
        cpx     L0204
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
        ora     (L0010,x)
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
        cpx     L0201
        lsr     a
        stx     L0720
        .byte   $80
        rts

        .byte   $07
        .byte   $D2
        .byte   $07
        .byte   $8F
        .byte   $07
        ldy     #$E0
        cpx     L0204
        lsr     a
        stx     L6B20
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
        ora     (L0002,x)
        .byte   $03
        .byte   $07
        .byte   $07
        .byte   $07
        .byte   $2B
        .byte   $6B
        .byte   $8F
        .byte   $D2
        cpx     a:L004A
        .byte   $07
        ldy     #$E0
        cpx     L0204
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
        ora     (L0010,x)
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
        cpx     L0202
        lsr     a
        stx     L0320
        .byte   $80
        rts

        .byte   $03
        .byte   $D2
        .byte   $03
        .byte   $6B
        .byte   $03
        ldy     #$E0
        cpx     L0204
        lsr     a
        stx     L6720
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
        ora     (L0002,x)
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $03
        .byte   $07
        .byte   $67
        .byte   $6B
        .byte   $D2
        cpx     a:L004A
        .byte   $03
        ldy     #$E0
        cpx     L0204
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
        ora     (L0010,x)
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
        cpx     L0202
        lsr     a
        stx     L0220
        .byte   $80
        rts

        .byte   $02
        .byte   $D2
        .byte   $02
        .byte   $67
        .byte   $02
        ldy     #$E0
        cpx     L0204
        lsr     a
        stx     L4320
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
        ora     (L0002,x)
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $02
        .byte   $03
        .byte   $43
        .byte   $67
        .byte   $D2
        cpx     a:L004A
        .byte   $02
        ldy     #$E0
        cpx     L0204
LD259:  lsr     a
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
        ora     (L0010,x)
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
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        brk
        brk
        ldy     #$00
        cpx     L0102
        lsr     a
        stx     L0120
        .byte   $80
        rts

        ora     (L00D2,x)
        ora     (L0063,x)
        ora     (L00A0,x)
        cpx     #$EC
        .byte   $04
        .byte   $02
        lsr     a
        stx     L0320
        .byte   $80
        rts

        rti

        .byte   $D2
        .byte   $02
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        brk
        .byte   $04
        .byte   $20
LD2D5:  brk
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        .byte   $02
        .byte   $03
        .byte   $63
        .byte   $D2
        cpx     a:L004A
        ora     (L00A0,x)
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
        ora     (L0010,x)
        bpl     LD304
        .byte   $01
LD304:  ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        brk
        brk
        ldy     #$00
        cpx     L0102
        lsr     a
        stx     L0120
        .byte   $80
        rts

        ora     (L00D2,x)
        ora     (L0023,x)
        ora     (L00A0,x)
        cpx     #$EC
        .byte   $04
        .byte   $02
        lsr     a
        stx     L0220
        .byte   $80
        rts

        rti

        .byte   $D2
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0000,x)
        .byte   $04
        .byte   $20
LD365:  brk
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0002,x)
        .byte   $23
        .byte   $D2
        cpx     a:L004A
        ora     (L00A0,x)
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
        ora     (L0010,x)
        bpl     LD394
        .byte   $01
LD394:  ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        ora     (L0001,x)
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
        cpx     a:L0002
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
        cpx     L0204
        lsr     a
        stx     L0120
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
        ora     (L0002,x)
        .byte   $D2
        cpx     a:L004A
        brk
        ldy     #$E0
        cpx     L0204
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
        ora     (L0010,x)
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
        cpx     a:L0002
        lsr     a
        stx     a:L0020
        .byte   $80
        rts

        brk
        .byte   $D2
        brk
        and     (L0000,x)
        ldy     #$E0
        cpx     L0204
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
LD480:  brk
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
        and     (L00D2,x)
LD490:  cpx     a:L004A
        brk
        ldy     #$E0
        cpx     L0204
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
        ora     (L0010,x)
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
        cpx     a:L0002
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
        cpx     L0204
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
        cpx     a:L004A
        brk
        ldy     #$E0
        cpx     L0204
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
        ora     (L0010,x)
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
LD552:  lda     a:L00C1
        beq     LD55A
        jsr     LD55B
LD55A:  rts

LD55B:  jsr     LCAF3
        lda     L0029
        ora     L002A
        and     #$01
        bne     LD567
        rts

LD567:  lda     #$16
        jsr     LE659
        lda     L0029
        and     #$01
        beq     LD57A
        lda     #$00
        sta     L0619
        clv
        bvc     LD57F
LD57A:  lda     #$01
        sta     L0619
LD57F:  lda     #$00
        sta     L0077
        sta     L0078
        ldy     L0619
        lda     L0618
        sec
        sbc     LCB3E,y
        cmp     #$30
        bcs     LD598
        lda     #$14
        jmp     LE659

LD598:  sta     L0618
        sei
        lda     a:L00C1
        sec
        sbc     LCB3E,y
        sta     a:L00C1
        cli
        lda     LCB3A,y
        sta     L000B
        lda     L004E
        ora     L004F
        bne     LD5B5
        jmp     LCB05

LD5B5:  jmp     LA945

LD5B8:  php
        sei
        lda     L6000
        lda     L6080
        plp
        rts

LD5C2:  php
        sei
        lda     L6000
        lda     L6090
        plp
        rts

LD5CC:  sta     L0004
        sty     L0006
        ldy     #$00
LD5D2:  lda     (L0000),y
        sta     (L0002),y
        inc     L0002
        lda     L0005
        sta     (L0002),y
        iny
        cpy     L0004
        bcc     LD5D2
        ldy     L0006
        rts

LD5E4:  sta     L0004
        sty     L0006
        php
        sei
        lda     L6000
        lda     L754F
        lda     L60B0
        lda     L7540
        lda     L7541
        lda     L7551
        lda     L6090
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
        adc     L6505
LD614:  sta     (L0002),y
        inc     L0002
        lda     (L0000),y
        beq     LD629
        cmp     #$F0
        bcc     LD624
        lda     #$00
        beq     LD629
LD624:  .byte   $29
LD625:  bvs     *+26
        adc     #$70
LD629:  sta     (L0002),y
        iny
        cpy     L0004
        bcc     LD602
        ldy     L0006
        rts

LD633:  sta     L0004
        sty     L0006
        ldy     #$00
LD639:  lda     (L0000),y
        sta     (L0002),y
        iny
        lda     (L0000),y
        sta     (L0002),y
        iny
        dec     L0004
        bne     LD639
        ldy     L0006
        rts

LD64A:  sta     L0004
        sty     L0006
        ldy     #$00
        lda     L0004
        sta     (L0002),y
        iny
        lda     L0005
        sta     (L0002),y
        ldy     L0006
        rts

LD65C:  ldy     #$00
        lda     (L0000),y
LD660:  sta     (L0002),y
        inc     L0002
        lda     L0005
        sta     (L0002),y
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
        lda     L754F
        lda     L6090
        lda     L7541
        lda     L7543
        lda     L7552
        lda     L6090
        plp
        lda     L4040,y
LD68D:  sta     L0000
        lda     L4041,y
        sta     L0001
        ldy     #$00
LD696:  lda     (L0000),y
        beq     LD6B9
        sta     L0002
        iny
        lda     (L0000),y
        sta     L0003
        iny
        lda     (L0000),y
        sta     L0005
        tya
        sec
        adc     L0000
        sta     L0000
        lda     L0001
        adc     #$00
        sta     L0001
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
        sta     L001C
        lda     #$00
        sta     L001B
        lda     #$00
        tax
        tay
LD6CE:  sta     (L001B),y
        iny
        bne     LD6CE
        inc     L001C
        inx
        cpx     #$10
        bne     LD6CE
        rts

LD6DB:  lda     L0025
        sta     L0023
        lda     L0026
        sta     L0024
        sta     L281B
        lda     L2818
        sta     L0025
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        sta     L0026
        lda     L0027
        eor     #$FF
        and     L0025
        sta     L0029
        lda     L0028
        eor     #$FF
        and     L0026
        sta     L002A
        lda     L0023
        ora     L0025
        sta     L0027
        lda     L0024
        ora     L0026
        sta     L0028
        rts

        pha
        txa
        pha
        tya
        pha
        .byte   $AD
LD714:  brk
        rti

        sta     L000D
        cld
        sta     L280B
        lda     L2808
        sta     L0700
        bpl     LD745
        and     #$40
        bne     LD742
        inc     L00AC
        inc     L0009
        inc     L0013
        bne     LD732
        inc     L0014
LD732:  inc     L000F
        bne     LD738
        inc     L0010
LD738:  lda     L000F
        and     #$07
        sta     L0012
        and     #$03
        sta     L0011
LD742:  jmp     LD7D4

LD745:  and     #$40
        bne     LD76C
        lda     L0009
        .byte   $10
LD74C:  .byte   $03
        jmp     L829B

        sta     L3000
        inc     L0009
        jsr     LD810
        inc     L0013
        inc     L000F
        bne     LD762
        inc     L0014
        inc     L0010
LD762:  lda     L000F
        and     #$07
        sta     L0012
        and     #$03
        sta     L0011
LD76C:  lda     L08BC
        sta     a:L00C0
        jsr     LF37E
        lda     a:L00C1
        cmp     #$0A
        bcc     LD788
        lda     #$09
        sta     a:L00C1
        sta     L0051
        lda     #$39
        clv
        bvc     LD78A
LD788:  ora     #$30
LD78A:  sta     L0618
        lda     a:L00C1
        cmp     L0051
        beq     LD7A0
        sta     L0051
        bcc     LD7A0
        jsr     LBC16
        lda     #$13
        jsr     LE659
LD7A0:  lda     L0052
        eor     #$80
        and     a:L00C7
        bpl     LD7B1
        ldy     #$00
        jsr     LF14C
        jsr     LBC16
LD7B1:  lda     L0053
        eor     #$80
        and     a:L00C8
        bpl     LD7C2
        ldy     #$02
        jsr     LF14C
        jsr     LBC16
LD7C2:  lda     a:L00C7
        sta     L0052
        asl     a
        lda     a:L00C8
        sta     L0053
        ror     a
        lsr     a
        lsr     a
        and     #$30
        sta     L000E
LD7D4:  jsr     LE651
        jsr     LEB1D
        lda     L000D
        bne     LD7F6
        php
        sei
        lda     L6000
        lda     L754F
        lda     L60B0
        lda     L7542
        lda     L7543
        lda     L7553
        lda     L60B0
        plp
LD7F6:  lda     L000E
        sta     L3C00
LD7FB:  sta     L280B
        lda     L2808
        sta     L0058
        and     #$40
        beq     LD7FB
        sta     L3800
        pla
        tay
        pla
        tax
        pla
        rti

LD810:  lda     L6000
        lda     L06A2
        bne     LD81E
        jsr     LD85D
        clv
        bvc     LD85C
LD81E:  cmp     #$03
        bne     LD841
        lda     L754F
        lda     L6090
        lda     L7541
        lda     L7543
        lda     L7552
        lda     L6090
        jsr     LD8CA
        lda     #$00
        sta     L06A2
        lda     #$00
        sta     L06A3
LD841:  lda     L06A2
        cmp     #$01
        bne     LD85C
        ldy     #$00
LD84A:  lda     #$00
        sta     L2000,y
        iny
        bne     LD84A
        lda     #$01
        sta     L06A3
        lda     #$02
        sta     L06A2
LD85C:  rts

LD85D:  lda     L754F
        sta     L00B8
        lda     L6090
        sta     L00BC
        lda     L7541
        sta     L00BA
        lda     L7543
        sta     L00BB
        lda     L7553
        sta     L00B9
        lda     L6090
        sta     L00BD
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
        lda     L000F
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

LD8CA:  lda     L0007
        beq     LD8E8
        asl     a
        tay
        lda     LD8E7,y
        sta     L005A
        lda     LD8E8,y
        sta     L005B
        ldy     #$00
LD8DC:  lda     (L005A),y
        sta     L2000,y
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
        and     L0049
        .byte   $92
        ldx     L00B7,y
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
        dec     L00DB,x
        asl     L008D
        eor     #$42
        eor     #$49
        .byte   $92
        eor     (L00F4,x)
        cpx     #$00
        cpx     L00C3
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
        sty     L008E
        eor     (L00B1,x)
        dec     L0049,x
        dey
        .byte   $DB
LD938:  brk
        brk
        cpx     L00C3
        .byte   $03
        .byte   $17
        bpl     LD938
        cpx     #$8D
        .byte   $64
        ldy     L4108
        sta     (L0060,x)
        ldy     #$00
        .byte   $FF
        cpx     #$A0
        .byte   $FA
        dec     L0006,x
        eor     #$8D
        eor     (L008D,x)
        sta     L9249
        .byte   $DB
        brk
        brk
        brk
        ldy     #$E0
        cpx     L0604
        lsr     a
        stx     LB249
        dec     L0049,x
        .byte   $92
        .byte   $FF
        .byte   $80
        brk
        jsr     L6000
        .byte   $80
        ldy     #$C0
        cpx     #$00
        eor     (L006A,x)
        stx     a:L0000
        .byte   $03
        .byte   $02
        and     L00FF
        brk
        brk
        eor     (L00A0,x)
        .byte   $E0
LD980:  sbc     #$F7
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
        ora     (L0006,x)
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
        asl     L005B,x
        .byte   $BB
        .byte   $DB
        brk
        brk
        brk
LD9D6:  brk
        brk
        .byte   $17
        dec     L00A0,x
        brk
        brk
        eor     L00AC
        beq     LD9D6
        .byte   $FA
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        sty     L02D6
        brk
        brk
        and     L0049
        .byte   $92
        ldx     L00B7,y
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
        cpx     L0302
        lsr     a
        stx     L0741
        .byte   $80
        rts

        .byte   $0B
        .byte   $D2
        .byte   $0F
        .byte   $FF
        .byte   $13
        ldy     #$E0
        cpx     L0204
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
LDA4C:  ora     (L0002,x)
        .byte   $03
        .byte   $07
        .byte   $0B
        .byte   $0F
        .byte   $13
        .byte   $97
        .byte   $DB
        .byte   $FF
        .byte   $D2
        cpx     a:L004A
        .byte   $13
        ldy     #$E0
        cpx     L0204
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
        ora     (L0010,x)
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
        ora     (L0006,x)
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
        asl     L005B,x
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
        eor     L00AC
        beq     LDAD6
        .byte   $FA
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        sty     L0200
        brk
        brk
        and     L0049
        .byte   $92
        ldx     L00B7,y
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
        cpy     L4A02
        stx     L4A41
        .byte   $92
        stx     LD625
        beq     LDB0A
LDB0A:  .byte   $92
        .byte   $92
        ldx     L00DB,y
        .byte   $92
        .byte   $02
        .byte   $92
        stx     L9292
        .byte   $92
        .byte   $92
        and     L0092
        .byte   $92
        brk
        .byte   $92
        .byte   $92
        ldx     L00DB,y
        .byte   $92
        .byte   $02
        .byte   $92
        stx     L9292
        .byte   $92
        .byte   $92
        and     L0092
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
        lda     (L00E0),y
        ldx     L00DB,y
        eor     #$A0
        pla
        .byte   $DB
        .byte   $44
        lsr     a
        .byte   $92
        .byte   $02
        and     L00E0
        lda     L4A00
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        .byte   $02
        lsr     a
        lsr     a
        and     L0025
        and     L0025
LDB66:  and     L0025
        and     L0000
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        .byte   $02
        lsr     a
        lsr     a
        and     L0025
        and     L0025
        and     L0025
        and     L0025
        .byte   $FF
        brk
        brk
        eor     (L00A0,x)
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
        ora     (L0006,x)
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
        and     L00FF
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
LDBC5:  brk
        brk
        brk
        .byte   $E3
        brk
        .byte   $93
        brk
        brk
        asl     a
        .byte   $12
        asl     L005B,x
        .byte   $BB
        .byte   $DB
        brk
        brk
        brk
LDBD6:  brk
        brk
        .byte   $17
        and     L00E0
        brk
        brk
        eor     L00AC
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
        and     L0049
        .byte   $92
        ldx     L00B7,y
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LDC65
        lda     (L00DA),y
LDBFE:  cpy     L8C25
        cmp     L0009,x
        pla
        adc     L4825
        .byte   $DA
        beq     LDC0A
LDC0A:  adc     LB16D
        .byte   $DA
        adc     L6D25
        cmp     L006D,x
        adc     L6D6D
        pha
        adc     a:L006D
        adc     LB16D
        .byte   $DA
        adc     L6D25
        cmp     L006D,x
        adc     L6D6D
        pha
        adc     a:L006D
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        adc     L4800
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        adc     L4800
        brk
        brk
        brk
        .byte   $4B
        cpx     #$B6
        .byte   $DA
        eor     #$A0
        ora     L00DB
        .byte   $44
        pla
        adc     L2825
        cpx     #$AD
        brk
        sty     L8C8C
        sty     L258C
        sty     L488C
        pha
        pha
LDC65:  pha
        pha
        pha
        pha
        brk
        sty     L8C8C
        sty     L258C
        sty     L488C
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
        eor     (L00A0,x)
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
        adc     a:L0025
        brk
        ora     (L0006,x)
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
        asl     L005B,x
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
        eor     L00AC
        beq     LDCD6
        .byte   $FA
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        sty     L4B48
        brk
        brk
        and     L0049
        .byte   $92
        ldx     L00B7,y
        .byte   $DB
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        beq     LDD66
        dec     L00DB,x
        cpy     L6944
        .byte   $92
        eor     (L0044,x)
        sta     L498E
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
        sta     L4900
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        sta     L4900
        brk
        brk
        brk
        iny
        cpx     #$B6
        .byte   $DB
        eor     #$A0
        sty     L00DB
        .byte   $44
        .byte   $44
        sta     L2544
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
        .byte   $69
LDD6D:  .byte   $69
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
        eor     (L00A0,x)
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
        sta     a:L0093
        brk
        ora     (L0006,x)
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
        asl     L005B,x
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
        eor     L00AC
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
        and     L0049
        .byte   $92
        ldx     L00B7,y
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
        cpy     L4A02
        stx     L4A41
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
        asl     L005B,x
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
        and     L0025
        and     L0025
        and     L0025
        and     L0000
        lda     (L00E0),y
        ldx     L00DB,y
        lda     (L008D),y
        pla
        pla
        .byte   $44
        rol     L0092
        and     L0025
        cpy     a:L00F0
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        .byte   $02
        lsr     a
        lsr     a
        and     L0025
        and     L0025
LDE66:  and     L0025
        and     L0000
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        .byte   $02
        lsr     a
        lsr     a
        and     L0025
        and     L0025
        and     L0025
        and     L0025
        .byte   $FF
        brk
        brk
        eor     (L00A0,x)
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
        ora     (L0006,x)
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
        asl     L005B,x
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
        eor     L00AC
        beq     LDED6
        .byte   $FA
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        sty     L02D6
        brk
        brk
        and     L0049
        .byte   $92
        ldx     L00B7,y
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
        ora     (L0010,x)
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
        ora     (L0006,x)
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
        asl     L005B,x
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
        eor     L00AC
        beq     LDFD6
        .byte   $FA
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        sty     L0200
        brk
        brk
        and     L0049
        .byte   $92
        ldx     L00B7,y
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
        cpy     L1888
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
LE01D:  brk
LE01E:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LE04C:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        and     L00FF
        brk
        brk
        eor     (L00A0,x)
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
        ora     (L0006,x)
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
        and     L00FF
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
        asl     L005B,x
        .byte   $BB
        .byte   $DB
        brk
        brk
        brk
LE0D6:  brk
        brk
        .byte   $17
        and     L00E0
        brk
        brk
        eor     L00AC
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
        and     L0049
        .byte   $92
        ldx     L00B7,y
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

LE10C:  lda     L0641
        clc
        adc     #$01
        and     #$07
        sta     L0641
        tax
        lda     LE135,x
        sta     L20FB
        lda     L0011
        bne     LE134
        lda     L0642
        clc
        adc     #$01
        and     #$07
        sta     L0642
        tax
        lda     LE13D,x
        sta     L20F6
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
        sta     L0653
        lda     LE200,x
        sta     L0654
        lda     L0670
        beq     LE1A9
        ldx     #$00
LE15A:  txa
        asl     a
        tay
        lda     LE203,y
        sta     L005A
        lda     LE204,y
        sta     L005B
        cpx     L0670
        bne     LE17E
        lda     L0671
        and     #$03
        bne     LE178
        lda     #$FF
        clv
        bvc     LE17B
LE178:  lda     L0653
LE17B:  clv
        bvc     LE181
LE17E:  .byte   $AD
        .byte   $54
LE180:  .byte   $06
LE181:  ldy     #$00
        sta     (L005A),y
        inx
        cpx     #$06
        bne     LE15A
        dec     L0671
        lda     L0671
        bne     LE1A6
        lda     L0670
        cmp     #$01
        bne     LE1A1
        lda     #$64
        sta     L0671
        clv
        bvc     LE1A6
LE1A1:  lda     #$00
        sta     L0670
LE1A6:  clv
        bvc     LE1FC
LE1A9:  lda     L0672
        beq     LE1FC
        ldx     #$00
LE1B0:  txa
        asl     a
        tay
        lda     LE20F,y
        sta     L005A
        lda     LE210,y
        sta     L005B
        cpx     L0672
        bne     LE1D4
        lda     L0673
        and     #$03
        bne     LE1CE
        lda     #$FF
        clv
        bvc     LE1D1
LE1CE:  lda     L0653
LE1D1:  clv
        bvc     LE1D7
LE1D4:  lda     L0654
LE1D7:  ldy     #$00
        sta     (L005A),y
        inx
        cpx     #$06
        bne     LE1B0
        dec     L0673
        lda     L0673
        bne     LE1FC
        lda     L0672
        cmp     #$01
        bne     LE1F7
        lda     #$64
        sta     L0673
        clv
        bvc     LE1FC
LE1F7:  lda     #$00
        sta     L0672
LE1FC:  rts

LE1FD:  .byte   $02
        and     L0044
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
LE21B:  lda     L06C6
        beq     LE228
        jsr     LE36C
        lda     #$00
        sta     L06C6
LE228:  lda     L0008
        beq     LE22D
        rts

LE22D:  lda     L002D
        beq     LE232
        rts

LE232:  lda     L0043
        beq     LE237
        rts

LE237:  lda     L000B
        cmp     #$01
        beq     LE23E
        rts

LE23E:  clc
        lda     L069B
        adc     L069C
        beq     LE248
        rts

LE248:  lda     L000F
        and     #$0F
        beq     LE24F
        rts

LE24F:  lda     #$00
        sta     L069A
        lda     L0035
        beq     LE25B
        jmp     LE29B

LE25B:  lda     L0036
        beq     LE262
        jmp     LE29B

LE262:  lda     L0030
        cmp     L0032
        bcs     LE26D
        lda     #$01
        sta     L069A
LE26D:  lda     L0032
        cmp     L0030
        bcs     LE278
        lda     #$02
        sta     L069A
LE278:  lda     L069A
        bne     LE293
        lda     L0031
        cmp     L0033
        bcs     LE288
        lda     #$01
        sta     L069A
LE288:  lda     L0033
        cmp     L0031
        bcs     LE293
        lda     #$02
        sta     L069A
LE293:  ldx     L0045
        lda     LE200,x
        sta     L0654
LE29B:  lda     L069A
        cmp     #$00
        bne     LE2C0
        ldx     #$00
LE2A4:  txa
        asl     a
        tax
        lda     LE2FD,x
        sta     L0047
        lda     LE2FE,x
        sta     L0048
        lda     L0654
        ldy     #$00
        sta     (L0047),y
        txa
        lsr     a
        tax
        inx
        cpx     #$0A
        bcc     LE2A4
LE2C0:  lda     L069A
        cmp     #$01
        bne     LE2DE
        lda     #$80
        sta     L0654
        ldx     #$00
LE2CE:  txa
        asl     a
        tax
        lda     LE2FD,x
        sta     L0047
        lda     LE2FE,x
        jsr     LE31D
        bcc     LE2CE
LE2DE:  lda     L069A
        cmp     #$02
        bne     LE2FC
        lda     #$02
        sta     L0654
        ldx     #$00
LE2EC:  txa
        asl     a
        tax
        lda     LE30D,x
        sta     L0047
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
        rol     L2F20
        .byte   $20
LE30D:  .byte   $1A
LE30E:  jsr     L202A
        bit     L2E20
        jsr     L202F
        .byte   $1C
        jsr     L201E
        .byte   $1F
        .byte   $20
LE31D:  sta     L0048
        txa
        lsr     a
        tax
        cpx     #$02
        bcs     LE330
        lda     L0654
        ldy     #$00
        sta     (L0047),y
        clv
        bvc     LE368
LE330:  cpx     #$05
        bcc     LE340
        ldy     L0045
        lda     LE200,y
        ldy     #$00
        sta     (L0047),y
        clv
        bvc     LE368
LE340:  lda     L000F
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        and     #$03
        clc
        adc     #$02
        sta     L0653
        cpx     L0653
        bne     LE35B
        lda     L0654
        sta     L0049
        clv
        bvc     LE362
LE35B:  ldy     L0045
        lda     LE200,y
        sta     L0049
LE362:  lda     L0049
        ldy     #$00
        sta     (L0047),y
LE368:  inx
        cpx     #$08
        rts

LE36C:  txa
        pha
        ldx     L0045
        lda     LE200,x
        sta     L06C2
        ldx     #$00
LE378:  txa
        asl     a
        tax
        lda     LE2FD,x
        sta     L0047
        lda     LE2FE,x
        sta     L0048
        lda     L06C2
        ldy     #$00
        sta     (L0047),y
        txa
        lsr     a
        tax
        inx
        cpx     #$0A
        bcc     LE378
        pla
        tax
LE396:  lda     L000F
        and     #$01
        bne     LE3D1
        lda     L0077
        beq     LE3CE
        lda     LE40E
        sta     L005A
        lda     LE40F
        sta     L005B
        lda     L0615
        cmp     #$01
        bcc     LE3CE
        ldx     #$00
LE3B3:  stx     L0047
        lda     L0615
        sec
        sbc     #$01
        tay
        lda     LE404,x
        cpy     L0047
        bcs     LE3C5
        lda     #$00
LE3C5:  ldy     L0047
        sta     (L005A),y
        inx
        cpx     #$09
        bcc     LE3B3
LE3CE:  clv
        bvc     LE403
LE3D1:  lda     L0078
        beq     LE403
        lda     L0617
        cmp     #$01
        bcc     LE403
        lda     LE410
        sta     L005A
        lda     LE411
        sta     L005B
        ldx     #$00
LE3E8:  stx     L0047
        lda     L0617
        sec
        sbc     #$01
        tay
        lda     LE404,x
LE3F4:  cpy     L0047
        bcs     LE3FA
        lda     #$00
LE3FA:  ldy     L0047
        sta     (L005A),y
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
        sta     L064C
        ldx     #$00
        jsr     LE428
        rts

LE41D:  lda     #$18
        sta     L064C
        ldx     #$01
        jsr     LE428
        rts

LE428:  lda     L000F
        lsr     a
        lsr     a
        and     #$07
        tay
        lda     LE4E0,y
        sta     L0049
        ldy     L0045
        lda     LE4E8,y
        sta     L004C
        ldy     L0045
        lda     LE4EB,y
        sta     L004D
        lda     L0077,x
        beq     LE48B
        lda     L0035,x
        cmp     #$02
        bne     LE48B
        inc     L0674
        lda     L0674
        cmp     #$0C
        bcc     LE45B
        lda     #$00
        sta     L0674
LE45B:  tay
        lda     LE4D4,y
        sta     L0047
        ldx     #$00
LE463:  txa
        asl     a
        clc
        adc     L064C
        tay
        lda     LE48C,y
        sta     L005A
        lda     LE48D,y
        sta     L005B
        lda     L004C
        cpx     #$06
        bcc     LE47C
        lda     L004D
LE47C:  cpx     L0047
        bne     LE482
        lda     L0049
LE482:  ldy     #$00
        sta     (L005A),y
        inx
        cpx     #$0C
        bcc     LE463
LE48B:  rts

LE48C:  .byte   $61
LE48D:  jsr     L2062
        .byte   $63
        jsr     L2064
        adc     L0020
        pla
        .byte   $20
        .byte   $69
LE499:  jsr     L206A
        .byte   $6B
        jsr     L206C
        ror     L6F20
        .byte   $20
LE4A4:  .byte   $71
LE4A5:  jsr     $2072
        .byte   $73
        jsr     $2074
        adc     L0020,x
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
        jsr     L2044
        eor     L0020
        pha
        jsr     L2049
        lsr     a
        jsr     L204B
        jmp     L4E20

        jsr     L204F
LE4D4:  ora     L0004
        .byte   $03
        .byte   $02
        ora     (L0000,x)
        asl     L0007
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
LE4EB:  and     L0048
        .byte   $49
LE4EE:  lda     L0008
        cmp     #$FE
        bne     LE569
        lda     L000F
        lsr     a
        lsr     a
        and     #$07
        tay
        lda     LE4E0,y
        sta     L0049
        inc     L0674
        lda     L0674
        cmp     #$0C
        bcc     LE50F
        lda     #$00
        sta     L0674
LE50F:  tay
        lda     LE4D4,y
        sta     L0047
        ldx     #$00
LE517:  txa
        asl     a
        tay
        lda     LE48C,y
        sta     L005A
        lda     LE48D,y
        sta     L005B
        lda     L068C
        cmp     #$01
        bne     LE538
        lda     LE4A4,y
        sta     L005A
        lda     LE4A5,y
        sta     L005B
        clv
        bvc     LE549
LE538:  lda     L068C
        cmp     #$02
        bne     LE549
        lda     LE4BC,y
        sta     L005A
        lda     LE4BD,y
        sta     L005B
LE549:  lda     LE4E8
        cpx     #$06
        bcc     LE553
        lda     LE4EB
LE553:  ldy     L0046
        cpy     L068C
        bne     LE560
        cpx     L0047
        bne     LE560
        lda     L0049
LE560:  ldy     #$00
        sta     (L005A),y
        inx
        cpx     #$0C
        bcc     LE517
LE569:  lda     L0046
        sta     L068C
        rts

LE56F:  lda     #$00
        sta     L064C
        ldx     #$00
        jsr     LE585
        rts

LE57A:  lda     #$18
        sta     L064C
        ldx     #$01
        jsr     LE585
        rts

LE585:  lda     L000F
        lsr     a
        lsr     a
        and     #$07
        tay
        lda     LE4E0,y
        sta     L0049
        ldy     L0045
        lda     LE4E8,y
        sta     L004C
        ldy     L0045
        lda     LE4EB,y
        sta     L004D
        lda     L0077
        beq     LE61C
        lda     #$00
        sta     L004A
        sta     L004B
        lda     L0043
        beq     LE5B3
        lda     #$01
        sta     L004A
        sta     L004B
LE5B3:  lda     L067B,x
        beq     LE5BB
        dec     L067B,x
LE5BB:  lda     L067B,x
        beq     LE5C4
        lda     #$01
        sta     L004B
LE5C4:  lda     L067B,x
        cmp     #$01
        bne     LE5CF
        lda     #$01
        sta     L004A
LE5CF:  lda     L0035,x
        cmp     #$04
        bcc     LE5DB
        lda     #$01
        sta     L004A
        sta     L004B
LE5DB:  lda     L0035,x
        cmp     #$03
        bne     LE5E3
        sta     L004B
LE5E3:  lda     L004B
        beq     LE61C
        inc     L0675,x
        lda     L0675,x
        cmp     #$06
        bcc     LE5F6
        lda     #$00
        sta     L0675,x
LE5F6:  asl     a
        tay
        lda     LE61D,y
        sta     L0047
        lda     LE61E,y
        sta     L0048
        ldx     #$00
LE604:  txa
        asl     a
        clc
        adc     L064C
        tay
        lda     LE48C,y
        sta     L005A
        lda     LE48D,y
        sta     L005B
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
        ora     (L0007,x)
        brk
        .byte   $06
LE629:  lda     L004C
        cpx     #$06
        bcc     LE631
        lda     L004D
LE631:  ldy     L004A
        cpy     #$00
        bne     LE643
        cpx     L0047
        bne     LE63D
        lda     L0049
LE63D:  cpx     L0048
        bne     LE643
        lda     L0049
LE643:  ldy     #$00
        sta     (L005A),y
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
        lda     L754F
        lda     L6090
        lda     L7541
        lda     L7543
        lda     L7552
        lda     L6090
        ldy     #$18
        lda     #$30
LE680:  sta     L0600,y
        dey
        bpl     LE680
        lda     #$20
        sta     L065B
        sta     L065C
        sta     L065D
        sta     L065E
        sta     L065F
        sta     L0660
        sta     L0661
        sta     L0662
        inx
        stx     L0017
        jsr     LEECE
        jsr     LE6AD
        cli
        jmp     L9A45

LE6AD:  ldy     #$00
LE6AF:  lda     L0979,y
        cmp     #$30
        bcc     LE6F9
        cmp     #$3A
        bcs     LE6F9
        iny
        cpy     #$24
        bcc     LE6AF
        ldy     #$00
LE6C1:  lda     L0979,y
        cmp     #$30
        bne     LE6D6
        lda     L097A,y
        cmp     #$30
        bne     LE6D6
        lda     L097B,y
        cmp     #$37
        bcc     LE6F9
LE6D6:  tya
        clc
        adc     #$06
        tay
        cpy     #$24
        bcc     LE6C1
        ldy     #$00
LE6E1:  lda     L09D9,y
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
LE700:  sty     L001D
        ldx     L001D
        lda     #$03
        sta     L001B
LE708:  lda     LF2FA,y
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        ora     #$30
        sta     L0979,x
        inx
        lda     LF2FA,y
        and     #$0F
        ora     #$30
        sta     L0979,x
        inx
        iny
        dec     L001B
        bne     LE708
        lda     L001D
        lsr     a
        tax
        lda     LF2FA,y
        sta     L09D9,x
        iny
        inx
        lda     LF2FA,y
        sta     L09D9,x
        iny
        inx
        lda     LF2FA,y
        sta     L09D9,x
        iny
        inx
        cpy     #$60
        bcc     LE700
        lda     #$80
        sta     L0663
        sta     L0664
        rts

LE74E:  .byte   $82
LE74F:  ora     (L00B6),y
        ora     (L0088),y
        .byte   $12
        clv
        .byte   $12
LE756:  .byte   $02
LE757:  ora     L1102
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
LE77E:  stx     L001B
        txa
        asl     a
        asl     a
        tay
        lda     L065B,y
        ora     L065C,y
        ora     L065D,y
        beq     LE793
        .byte   $C9
LE790:  jsr     L30D0
LE793:  lda     L280A
        and     #$3C
LE798:  tax
        php
        sei
        lda     L6000
        lda     L754F
        lda     L60B0
        lda     L7540
        lda     L7542
        lda     L7554
        lda     L60A0
        plp
        lda     L765C,x
        sta     L065B,y
        lda     L765D,x
        sta     L065C,y
        lda     L765E,x
        sta     L065D,y
        ldx     L001B
        lda     #$01
        sta     L0665,x
        lda     #$00
        sta     L0667,x
        sta     L0669,x
        lda     #$50
        sta     L066B,x
        txa
        clc
        adc     #$52
        jsr     LD670
        lda     #$0D
        jsr     LE659
        rts

LE7E4:  stx     L001B
        lda     L066B,x
        beq     LE7F5
        ldy     L0012
        bne     LE7F5
        dec     L066B,x
        jsr     LE90A
LE7F5:  lda     L0669,x
        cmp     #$03
        bcs     LE801
        lda     L066B,x
        bne     LE804
LE801:  jmp     LE973

LE804:  txa
        asl     a
        asl     a
        adc     L0669,x
        tay
        lda     L0029,x
        and     #$01
        beq     LE82D
        lda     L065B,y
        cmp     #$3F
        beq     LE81D
        inc     L0669,x
        bne     LE82A
LE81D:  lda     L0669,x
        beq     LE82A
        lda     #$20
        sta     L065B,y
        dec     L0669,x
LE82A:  clv
        bvc     LE879
LE82D:  lda     L0029,x
        and     #$0C
        beq     LE84A
        lda     #$00
        sta     L0667,x
        lda     L0029,x
        and     #$04
        beq     LE844
        jmp     LE8AC

        clv
        bvc     LE847
LE844:  jmp     LE8CF

LE847:  clv
        bvc     LE879
LE84A:  lda     L0027,x
        and     #$0E
        beq     LE874
        lda     L0667,x
        clc
        adc     #$01
        sta     L0667,x
        cmp     #$0C
        bcc     LE871
        lda     #$00
        sta     L0667,x
        lda     L0027,x
        and     #$04
        beq     LE86E
        jmp     LE8AC

        clv
        bvc     LE871
LE86E:  jmp     LE8CF

LE871:  clv
        bvc     LE879
LE874:  lda     #$00
        sta     L0667,x
LE879:  lda     L0669,x
        sta     L001C
        txa
        asl     a
        tay
        lda     LE776,y
        sta     L0002
        lda     LE777,y
        sta     L0003
        tya
        asl     a
        tax
        ldy     #$00
LE890:  lda     L065B,x
        sta     (L0002),y
        inc     L0002
        cpy     L001C
        bne     LE89F
        lda     #$80
        bne     LE8A1
LE89F:  lda     #$90
LE8A1:  sta     (L0002),y
        inx
        iny
        cpy     #$03
        bcc     LE890
        ldx     L001B
        rts

LE8AC:  lda     L065B,y
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
LE8CA:  sta     L065B,y
        bne     LE8F0
LE8CF:  lda     L065B,y
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
LE8ED:  sta     L065B,y
LE8F0:  ldx     L001B
        lda     L0665,x
        beq     LE905
        lda     #$00
        sta     L0665,x
        lda     L066B,x
        clc
        adc     #$A0
        sta     L066B,x
LE905:  lda     #$15
        jmp     LE659

LE90A:  cpx     #$00
        bne     LE912
        lda     #$C0
        bne     LE914
LE912:  lda     #$D0
LE914:  sta     L0005
        txa
        asl     a
        tay
        lda     LE77A,y
        sta     L0002
        lda     LE77B,y
        sta     L0003
        ldy     #$00
        lda     L066B,x
        lsr     a
        lsr     a
        lsr     a
        cmp     #$1E
        bcc     LE938
        lda     #$33
        sta     (L0002),y
        lda     #$1E
        clv
        bvc     LE958
LE938:  cmp     #$14
        bcc     LE945
        lda     #$32
        sta     (L0002),y
        lda     #$14
        clv
        bvc     LE958
LE945:  cmp     #$0A
        bcc     LE952
        lda     #$31
        sta     (L0002),y
        lda     #$0A
        clv
        bvc     LE958
LE952:  lda     #$20
        sta     (L0002),y
        lda     #$00
LE958:  sta     L001F
        iny
        lda     L0005
        sta     (L0002),y
        iny
        lda     L066B,x
        lsr     a
        lsr     a
        lsr     a
        sec
        sbc     L001F
        ora     #$30
        sta     (L0002),y
        iny
        lda     L0005
        sta     (L0002),y
        rts

LE973:  jsr     LEAD0
        lda     L0663,x
        bpl     LE97C
        rts

LE97C:  tay
        txa
        asl     a
        asl     a
        tax
        lda     L065B,x
        cmp     #$3F
        bne     LE98D
        lda     #$20
        sta     L065B,x
LE98D:  sta     L09D9,y
        sta     L0803
        lda     L065C,x
        cmp     #$3F
        bne     LE99F
        lda     #$20
        sta     L065C,x
LE99F:  sta     L09DA,y
        sta     L0804
        lda     L065D,x
        cmp     #$3F
        bne     LE9B1
        lda     #$20
        sta     L065D,x
LE9B1:  sta     L09DB,y
        sta     L0805
        txa
        lsr     a
        lsr     a
        tay
        lda     L0663,y
        eor     #$FF
        sta     L0663,y
        eor     #$FF
        cmp     #$24
        bcs     LE9F1
        txa
        sta     L001B
        lsr     a
        adc     L001B
        tax
        ldy     #$00
LE9D2:  lda     L0600,x
        asl     a
        asl     a
        asl     a
        asl     a
        sta     L001C
        lda     L0601,x
        and     #$0F
        ora     L001C
        sta     L0800,y
        iny
        inx
        inx
        cpy     #$03
        bcc     LE9D2
        jsr     LEFA1
        ldx     L001B
LE9F1:  txa
        lsr     a
        lsr     a
        tax
        eor     #$01
        tay
        lda     L0663,y
        bpl     LEA14
        cmp     #$80
        beq     LEA14
        .byte   $DD
        .byte   $63
LEA03:  asl     L00F0
        .byte   $02
        bcs     LEA14
        sec
        .byte   $E9
LEA0A:  .byte   $03
        cmp     #$A5
        bcs     LEA11
        lda     #$80
LEA11:  sta     L0663,y
LEA14:  rts

LEA15:  bit     L000B
        bpl     LEA24
        txa
        eor     #$01
        tax
        jsr     LEA24
        txa
        eor     #$01
        tax
LEA24:  stx     L001B
        txa
        asl     a
        adc     L001B
        asl     a
        tay
        lda     L0619
        cmp     #$03
        bcc     LEA3E
        tya
        beq     LEA3E
        ldx     L001B
        lda     #$80
        sta     L0663,x
        rts

LEA3E:  ldx     #$5A
LEA40:  lda     L0605,y
        cmp     L097E,x
        lda     L0604,y
        sbc     L097D,x
        lda     L0603,y
        sbc     L097C,x
        lda     L0602,y
        sbc     L097B,x
        lda     L0601,y
        sbc     L097A,x
        lda     L0600,y
        sbc     L0979,x
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
        sta     L001C
        ldx     #$5A
        cpx     L001C
        beq     LEA9C
LEA7C:  dex
        lda     L0979,x
        sta     L097F,x
        cpx     L001C
        bne     LEA7C
        lda     L001C
        lsr     a
        sta     L001C
        ldx     #$2D
LEA8E:  dex
        lda     L09D9,x
        sta     L09DC,x
        cpx     L001C
        bne     LEA8E
        txa
        asl     a
        tax
LEA9C:  lda     L0605,y
        sta     L097E,x
        lda     L0604,y
        sta     L097D,x
        lda     L0603,y
        sta     L097C,x
        lda     L0602,y
        sta     L097B,x
        lda     L0601,y
        sta     L097A,x
        lda     L0600,y
        sta     L0979,x
        txa
        lsr     a
        ldx     L001B
        sta     L0663,x
        rts

LEAC8:  ldx     L001B
        lda     #$80
        sta     L0663,x
        rts

LEAD0:  stx     L001B
        txa
        asl     a
        adc     L001B
        asl     a
        tay
        ldx     #$5A
LEADA:  lda     L0605,y
        cmp     L097E,x
        lda     L0604,y
        sbc     L097D,x
        lda     L0603,y
        sbc     L097C,x
        lda     L0602,y
        sbc     L097B,x
        lda     L0601,y
        sbc     L097A,x
        lda     L0600,y
        sbc     L0979,x
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
        ldx     L001B
        lsr     a
        sta     L0663,x
        rts

LEB15:  ldx     L001B
        lda     #$80
        sta     L0663,x
        rts

LEB1D:  jsr     LEB28
        jsr     LEB8C
        clc
        rts

LEB25:  brk
LEB26:  .byte   $80
LEB27:  .byte   $05
LEB28:  dec     L0060
        bne     LEB5B
        lda     #$FA
        sta     L0060
        lda     L0008
        bne     LEB42
        ldx     #$00
LEB36:  lda     L0077,x
        beq     LEB3D
        jsr     LEB5C
LEB3D:  inx
        cpx     #$02
        bne     LEB36
LEB42:  ldx     #$00
        lda     L0008
        bne     LEB58
        lda     L0077
        ora     L0078
        beq     LEB58
        ldx     #$04
        lda     L0077
        and     L0078
        beq     LEB58
        ldx     #$08
LEB58:  jsr     LEB6F
LEB5B:  rts

LEB5C:  clc
        lda     L06C7,x
        adc     #$01
        cmp     #$3C
        bcc     LEB6B
        inc     L06C9,x
        lda     #$00
LEB6B:  sta     L06C7,x
        rts

LEB6F:  lda     L06CE,x
        clc
        adc     #$01
        cmp     #$3C
        bcc     LEB88
        inc     L06CD,x
        bne     LEB86
        inc     L06CC,x
        bne     LEB86
        inc     L06CB,x
LEB86:  lda     #$00
LEB88:  sta     L06CE,x
        rts

LEB8C:  lda     L0643
        beq     LEB96
        dec     L0643
        bne     LEBBF
LEB96:  jsr     LEBC0
        bcs     LEBBA
        ldx     L0055
        cpx     L0054
        beq     LEBBA
        lda     L0820,x
        inx
        pha
        lda     L0820,x
        inx
        tay
        pla
        sta     L3400
        sta     L25E0,y
        cpx     #$28
        bcc     LEBB8
        ldx     #$00
LEBB8:  stx     L0055
LEBBA:  lda     #$04
        sta     L0643
LEBBF:  rts

LEBC0:  ldy     L006E
        cpy     #$FF
        beq     LEBFC
        lda     L08FB,y
        cmp     (L0072),y
        beq     LEBE7
        inc     L006F
        lda     L006F
        cmp     #$0A
        bcc     LEBF2
        ldx     L0070
        lda     L0884,x
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        sta     L0074
        lda     #$FF
        sta     L0884,x
        bne     LEC1F
LEBE7:  dey
        sty     L006E
        cpy     #$FF
        beq     LEBFC
        lda     #$00
        sta     L006F
LEBF2:  lda     L08FB,y
        sta     L3400
        sta     (L0072),y
        sec
        rts

LEBFC:  ldx     L006D
        cpx     L006C
        bne     LEC04
        clc
        rts

LEC04:  lda     L090B,x
        sta     L0074
        jsr     LEC96
        lda     #$0F
        sta     L006E
        lda     #$00
        sta     L006F
        ldx     L006D
        inx
        cpx     #$09
        bcc     LEC1D
        ldx     #$00
LEC1D:  stx     L006D
LEC1F:  jsr     LEE3B
        cpx     #$FF
        beq     LEC45
        ldy     L0074
        lda     L0884,x
        and     #$0F
        sta     L0069
        lda     L08A2,y
        sec
        sbc     L0069
        bcs     LEC3E
        lda     L08A2,y
        ora     #$10
        sbc     L0069
LEC3E:  cmp     #$06
        bcc     LEC45
        jmp     LEC6E

LEC45:  ldy     L0071
        lda     L0884,y
        cmp     #$FF
        beq     LEC67
        and     #$0F
        sta     L0069
        lda     L0884,y
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        tax
        lda     L08A2,x
        cmp     L0069
        bne     LEC67
        jsr     LEE0E
        jmp     LEC45

LEC67:  tya
        pha
        jsr     LEE0E
        pla
        tax
LEC6E:  ldy     LED03
        lda     L08FB,y
        sta     L0884,x
        txa
        sta     L0070
        jsr     LEE23
        ldy     L0074
        lda     L08A2,y
        clc
        adc     #$01
        and     #$0F
        sta     L08A2,y
        ldy     L006E
        lda     L08FB,y
        sta     L3400
        sta     (L0072),y
        sec
        rts

LEC96:  stx     L0067
        lda     #$00
        sta     L08FB
        sta     L08FC
        sta     L08FD
        sta     L08FF
        sta     L0903
        ldy     L0074
        tya
        asl     a
        asl     a
        asl     a
        asl     a
        sta     L0068
        lda     L08A2,y
        clc
        adc     #$01
        and     #$0F
        ora     L0068
        ldx     LED03
        sta     L08FB,x
        jsr     LED09
        lda     L0067
        jsr     LEE1B
        tay
        ldx     #$00
LECCD:  lda     LECF9,x
        stx     L0067
        tax
        lda     L0914,y
        sta     L08FB,x
        jsr     LED09
        ldx     L0067
        iny
        inx
        cpx     #$0A
        bne     LECCD
        lda     L08FB
        eor     L08FC
        eor     L08FD
        eor     L08FF
        eor     L0903
        eor     #$FF
        sta     L08FB
        rts

LECF9:  .byte   $03
        ora     L0006
        .byte   $07
        ora     #$0A
        .byte   $0B
        .byte   $0C
        .byte   $0D
        .byte   $0E
LED03:  .byte   $0F
        brk
        ora     (L0002,x)
        .byte   $04
        php
LED09:  pha
        stx     L0068
        lsr     L0068
        bcc     LED18
        pla
        pha
        eor     L08FC
        sta     L08FC
LED18:  lsr     L0068
        bcc     LED24
        pla
        pha
        eor     L08FD
        sta     L08FD
LED24:  lsr     L0068
        bcc     LED30
        pla
        pha
        eor     L08FF
        sta     L08FF
LED30:  lsr     L0068
        bcc     LED3C
        pla
        pha
        eor     L0903
        sta     L0903
LED3C:  pla
        eor     L08FB
        sta     L08FB
        rts

LED44:  txa
        pha
        jsr     LEE23
LED49:  ldy     #$00
LED4B:  lda     (L0072),y
        sta     L08FB,y
        iny
        cpy     #$10
        bne     LED4B
LED55:  lda     L08FB
        eor     #$FF
        eor     L08FC
        eor     L08FD
        eor     L08FF
        eor     L0903
        .byte   $8D
LED67:  .byte   $FB
        php
        .byte   $A0
LED6A:  brk
LED6B:  lda     LECF9,y
        tax
        lda     L08FB,x
        sta     L096E,y
        jsr     LED09
        iny
LED79:  cpy     #$0B
        bne     LED6B
        lda     L08FB
        ora     L08FC
        ora     L08FD
        ora     L08FF
        ora     L0903
        beq     LEDEA
        lda     L08FB
        beq     LEDF7
        lda     #$01
        sta     L0068
LED97:  lda     #$00
        sta     L0067
        lda     L0903
        and     L0068
        beq     LEDA8
        lda     #$08
        ora     L0067
        sta     L0067
LEDA8:  lda     L08FF
        and     L0068
        beq     LEDB5
        lda     #$04
        ora     L0067
        sta     L0067
LEDB5:  lda     L08FD
        and     L0068
        beq     LEDC2
        lda     #$02
        ora     L0067
        sta     L0067
LEDC2:  lda     L08FC
        and     L0068
        beq     LEDCF
        lda     #$01
        ora     L0067
        sta     L0067
LEDCF:  lda     L08FB
        and     L0068
        beq     LEDE6
        ldx     L0067
        lda     LEDFE,x
        bmi     LEDF3
        tax
        lda     L096E,x
        eor     L0068
        sta     L096E,x
LEDE6:  asl     L0068
        bcc     LED97
LEDEA:  pla
        tax
        lda     L0978
        sta     L0884,x
        rts

LEDF3:  lda     L0067
        beq     LEDE6
LEDF7:  lda     #$FF
        sta     L0978
        bne     LEDEA
LEDFE:  .byte   $FF
        inc     a:L00FD,x
        .byte   $FC
        ora     (L0002,x)
        .byte   $03
        .byte   $FB
        .byte   $04
        ora     L0006
        .byte   $07
        php
        ora     #$0A
LEE0E:  inc     L0071
        lda     L0071
        cmp     #$1E
        bcc     LEE1A
        lda     #$00
        sta     L0071
LEE1A:  rts

LEE1B:  asl     a
        sta     L006A
        asl     a
        asl     a
        adc     L006A
        rts

LEE23:  ldx     #$00
        stx     L006A
        asl     a
        asl     a
        asl     a
        rol     L006A
        asl     a
        rol     L006A
        clc
        adc     #$00
        sta     L0072
        lda     L006A
        adc     #$24
        sta     L0073
        rts

LEE3B:  ldx     #$1D
        lda     #$FF
        sta     L0069
LEE41:  lda     L0884,x
        cmp     #$FF
        beq     LEE76
        sta     L0068
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        cmp     L0074
        bne     LEE76
        ldy     L0069
        cpy     #$FF
        .byte   $F0
LEE57:  .byte   $1C
        lda     L0068
        and     #$0F
        sta     L0068
        lda     L0884,y
        and     #$0F
        sec
        sbc     L0068
        bcs     LEE70
        eor     #$FF
        cmp     #$08
        bcs     LEE74
        bcc     LEE76
LEE70:  cmp     #$08
        bcs     LEE76
LEE74:  stx     L0069
LEE76:  dex
        bpl     LEE41
        ldx     L0069
        rts

LEE7C:  sta     L0066
        txa
        pha
        tya
        pha
        ldx     L006D
        cpx     L006C
        beq     LEE9E
LEE88:  lda     L090B,x
        cmp     L0066
        bne     LEE93
        cpx     L006D
        bne     LEEAE
LEE93:  inx
        cpx     #$09
        bcc     LEE9A
        ldx     #$00
LEE9A:  cpx     L006C
        bne     LEE88
LEE9E:  lda     L0066
        sta     L090B,x
        txa
        inx
        cpx     #$09
        bcc     LEEAB
        ldx     #$00
LEEAB:  stx     L006C
        tax
LEEAE:  lda     L0066
        jsr     LEE1B
        tay
        txa
        jsr     LEE1B
        tax
        lda     #$09
        sta     L0066
LEEBD:  lda     L08AA,y
        sta     L0914,x
        inx
        iny
        dec     L0066
        bpl     LEEBD
        pla
        tay
        pla
        tax
        rts

LEECE:  ldx     #$1F
LEED0:  lda     L25DF,x
        sta     L0847,x
        dex
        bne     LEED0
        jsr     LF044
        lda     #$FF
        sta     L006E
        ldx     #$08
LEEE2:  sta     L08A2,x
        dex
        bpl     LEEE2
        ldx     #$4F
        lda     #$00
LEEEC:  sta     L08AA,x
        dex
        bpl     LEEEC
        lda     LEB25
        sta     L08BC
        lda     LEB26
        sta     L08BA
        lda     LEB27
        sta     L08BB
        lda     #$00
        tax
        sta     L006C
        sta     L006D
        sta     L006F
        sta     L0071
LEF0F:  jsr     LED44
        cmp     #$FF
        beq     LEF5A
        sta     L0067
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        sta     L0068
        tay
        lda     L0067
        and     #$0F
        sta     L0067
        lda     L08A2,y
        cmp     #$FF
        beq     LEF3D
        sec
        sbc     L0067
        bcs     LEF39
        eor     #$FF
        cmp     #$08
        bcs     LEF5A
        bcc     LEF3D
LEF39:  cmp     #$08
        bcc     LEF5A
LEF3D:  lda     L0067
        sta     L08A2,y
        stx     L0067
        lda     L0068
        jsr     LEE1B
        tax
        ldy     #$00
LEF4C:  lda     L096E,y
        sta     L08AA,x
        iny
        inx
        cpy     #$0A
        bne     LEF4C
        ldx     L0067
LEF5A:  inx
        cpx     #$1E
        bne     LEF0F
        ldy     #$00
        ldx     #$14
LEF63:  lda     L08AA,x
        sta     L06CB,y
        inx
        iny
        lda     L08AA,x
        sta     L06CB,y
        inx
        iny
        lda     L08AA,x
        sta     L06CB,y
        inx
        iny
        lda     #$00
        sta     L06CB,y
        iny
        cpy     #$0C
        bcc     LEF63
        lda     #$00
        sta     L0054
        sta     L0055
        lda     L08BA
        bpl     LEFA0
        lda     L08B8
        ora     L08B9
        bne     LEFA0
        jsr     LF277
        lda     #$01
        jsr     LEE7C
LEFA0:  rts

LEFA1:  lda     L0803
        jsr     LF0ED
        sta     L0803
        lda     L0804
        jsr     LF0ED
        asl     a
        asl     a
        asl     a
        asl     a
        rol     L0803
        asl     a
        rol     L0803
        sta     L0804
        lda     L0805
        jsr     LF0ED
        ora     L0804
        sta     L0804
        lda     #$00
        sta     L0061
        ldy     #$19
LEFD0:  sty     L0062
        ldx     L0061
        jsr     LF010
        bcs     LEFDD
        lda     L0062
        sta     L0061
LEFDD:  lda     L0062
        sec
        sbc     #$05
        tay
        bpl     LEFD0
        ldx     L0061
        jsr     LF02B
        bcc     LF00F
        lda     L08B9
        bne     LF000
        lda     #$C8
        cmp     L08B8
        bcc     LF000
        sta     L08B8
        lda     #$01
        jsr     LEE7C
LF000:  ldx     #$00
        ldy     L0061
LF004:  lda     L0800,x
        jsr     LF1B8
        inx
        cpx     #$05
        bne     LF004
LF00F:  rts

LF010:  lda     L0848,y
        cmp     L0848,x
        bne     LF02A
        inx
        iny
        lda     L0848,y
        cmp     L0848,x
        bne     LF02A
        inx
        iny
        lda     L0848,y
        .byte   $DD
        pha
LF029:  php
LF02A:  rts

LF02B:  lda     L0800
        cmp     L0848,x
        bne     LF043
        inx
        lda     L0801
        cmp     L0848,x
        bne     LF043
        inx
        .byte   $AD
LF03E:  .byte   $02
        php
        cmp     L0848,x
LF043:  rts

LF044:  ldy     #$1E
LF046:  lda     L0847,y
        sta     L0865,y
        dey
        bne     LF046
        lda     #$00
        sta     L0669
        lda     #$06
        sta     L0063
LF058:  lda     #$00
        sta     L0061
        clc
        adc     #$19
        tay
LF060:  ldx     L0061
        sty     L0062
        lda     L0866,x
        cmp     L0866,y
        bne     LF07E
        inx
        iny
        lda     L0866,x
        cmp     L0866,y
        bne     LF07E
        inx
        iny
        lda     L0866,x
        cmp     L0866,y
LF07E:  bcs     LF084
        lda     L0062
        sta     L0061
LF084:  lda     L0062
        sec
        sbc     #$05
        tay
        bne     LF060
        lda     #$03
        sta     L0064
        ldx     L0061
        ldy     L0669
LF095:  lda     L0866,x
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        ora     #$30
        sta     L0979,y
        iny
        lda     L0866,x
        and     #$0F
        ora     #$30
        sta     L0979,y
        lda     #$00
        sta     L0866,x
        iny
        inx
        dec     L0064
        bne     LF095
        lda     L0669
        sty     L0669
        lsr     a
        tay
        lda     L0867,x
        jsr     LF0F9
        sta     L09DB,y
        lda     L0867,x
        lsr     L0866,x
        ror     a
        lsr     L0866,x
        ror     a
        lsr     a
        lsr     a
        lsr     a
        jsr     LF0F9
        sta     L09DA,y
        lda     L0866,x
        jsr     LF0F9
        sta     L09D9,y
        dec     L0063
        beq     LF0EC
        jmp     LF058

LF0EC:  rts

LF0ED:  cmp     #$5F
        .byte   $B0
LF0F0:  .byte   $05
LF0F1:  sec
        sbc     #$41
        bcs     LF0F8
        lda     #$1F
LF0F8:  rts

LF0F9:  and     #$1F
        clc
        adc     #$41
        cmp     #$5F
        bcc     LF104
        lda     #$20
LF104:  rts

LF105:  lda     L0075,x
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
LF11F:  lda     L06CE,y
        cmp     #$1E
        lda     L06CD,y
        adc     #$00
        sta     L08AC,x
        lda     L06CC,y
        adc     #$00
        sta     L08AB,x
        lda     L06CB,y
        adc     #$00
        sta     L08AA,x
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

LF14C:  lda     L08AA,y
        clc
        adc     #$01
        sta     L08AA,y
        bcc     LF15F
        lda     L08AB,y
        adc     #$00
        sta     L08AB,y
LF15F:  rts

LF160:  txa
        pha
        sty     L0065
        ldx     #$00
        lda     #$0A
LF168:  cmp     L0065
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
        sty     L0063
        lda     L06C9,x
        sta     L0062
        lda     L06C7,x
        cmp     #$1E
        bcc     LF196
        rol     L0062
        cmp     #$2D
        clv
        bvc     LF19A
LF196:  rol     L0062
        cmp     #$0F
LF19A:  rol     L0062
        asl     L0062
        lda     L0062
        cmp     #$2E
        bcc     LF1AE
        cmp     #$60
        bcc     LF1AC
        lda     #$30
        bne     LF1AE
LF1AC:  lda     #$2E
LF1AE:  clc
        adc     L0063
        tay
        jsr     LF14C
        jmp     LF160

LF1B8:  stx     L0066
        sta     L0848,y
        ldx     L0054
        sta     L0820,x
        inx
        tya
        sta     L0820,x
        inx
        cpx     #$28
        bcc     LF1CE
        ldx     #$00
LF1CE:  stx     L0054
        iny
        ldx     L0066
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
LF1E7:  sta     L08AA,x
        sta     L0914,x
        inx
        cpx     #$0E
        bcc     LF1E7
LF1F2:  lda     L08AA,x
        sta     L0914,x
        inx
        cpx     #$14
        bcc     LF1F2
        lda     #$00
LF1FF:  sta     L08AA,x
        sta     L0914,x
        inx
        cpx     #$50
        bcc     LF1FF
        ldx     #$00
LF20C:  lda     #$FF
        sta     L08A2,x
        stx     L0074
        jsr     LEC96
        lda     L0074
        jsr     LEE23
        ldx     L0074
        ldy     #$00
LF21F:  lda     L08FB,y
        sta     L3400
        sta     (L0072),y
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
        sta     L3400
        sta     (L0072),y
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
        sta     L08BC
        lda     LEB26
        sta     L08BA
        lda     LEB27
        sta     L08BB
LF26C:  pla
        and     #$05
        beq     LF276
        lda     #$01
        jsr     LEE7C
LF276:  rts

LF277:  lda     #$07
        sta     L08B9
        lda     #$D0
        sta     L08B8
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
        sta     L0061
        lda     LF2FA,x
        inx
        jsr     LF0ED
        asl     a
        asl     a
        asl     a
        asl     a
        rol     L0061
        asl     a
        rol     L0061
        sta     L0062
        lda     LF2FA,x
        inx
        jsr     LF0ED
        ora     L0062
        sta     L0062
        lda     L0061
        jsr     LF2CF
        lda     L0062
        jsr     LF2CF
        cpy     #$1E
        bne     LF285
        rts

LF2CF:  sta     L3400
        sta     L25E0,y
        sta     L0848,y
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
        sta     L3000
        rts

LF2FA:  ora     (L0000,x)
        brk
        .byte   $54
        eor     L0054
        brk
        sta     L0000,x
LF303:  .byte   $52
        eor     #$53
        brk
        bcc     LF309
LF309:  .byte   $54
        eor     L0054
        brk
        sta     L0000
        .byte   $52
        eor     #$53
        brk
        .byte   $80
        brk
        .byte   $54
        eor     L0054
        brk
        adc     L0000,x
        .byte   $52
        eor     #$53
        brk
        bvs     LF321
LF321:  .byte   $4B
        lsr     L0054
        brk
        adc     L0000
        lsr     L414C
        brk
        rts

        brk
        .byte   $4B
        eor     L004D
        brk
        eor     L0000,x
        .byte   $44
        eor     L0053
        brk
        bvc     LF339
LF339:  .byte   $47
        lsr     L004D
        brk
        eor     L0000
        eor     L0044
        jsr     L4000
        brk
        .byte   $42
        eor     (L0046,x)
        brk
        and     L0000,x
        lsr     a
        eor     a:L0052
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
        and     (L0039),y
        sec
        sec
        jsr     L5441
        eor     (L0052,x)
        eor     #$20
        .byte   $47
        eor     (L004D,x)
        eor     L0053
        bit     L4920
        lsr     L2E43
LF37E:  ldy     #$00
        ldx     #$01
LF382:  lda     L0700
        cpx     #$01
        beq     LF38A
        lsr     a
LF38A:  lsr     a
        lda     L00C5,x
        and     #$1F
        bcc     LF3A8
        beq     LF3A3
        cmp     #$1B
        bcs     LF3A1
        pha
        lda     L00C9
        and     #$07
        cmp     #$07
        pla
        bcc     LF3A3
LF3A1:  sbc     #$01
LF3A3:  sta     L00C5,x
        jmp     LF3E1

LF3A8:  cmp     #$1B
        bcs     LF3B5
        lda     L00C5,x
        adc     #$20
        bcc     LF3A3
        beq     LF3B5
        clc
LF3B5:  lda     #$1F
LF3B7:  sta     L00C5,x
        bcs     LF3E1
        iny
        txa
        beq     LF3CB
        lda     L00C0
        and     #$0C
        lsr     a
        lsr     a
        beq     LF3D3
        adc     #$02
        bne     LF3D3
LF3CB:  lda     L00C0
        and     #$10
        beq     LF3D3
        lda     #$01
LF3D3:  sec
        pha
        adc     L00C2
        sta     L00C2
        pla
        sec
        adc     L00C4
        sta     L00C4
        inc     L00C7,x
LF3E1:  dex
        bpl     LF382
        tya
        beq     LF428
        lda     L00C0
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        eor     #$07
        beq     LF424
        tay
        lda     L00C2
LF3F5:  sec
LF3F6:  sbc     LF407,y
        bmi     LF40F
        sta     L00C2
        inc     L00C3
        cpy     #$04
        bne     LF3F5
        inc     L00C3
        bcs     LF3F6
LF407:  .byte   $7F
        .byte   $7F
        .byte   $03
        ora     L0004
        .byte   $04
        .byte   $02
        .byte   $7F
LF40F:  lda     L00C0
        and     #$03
        eor     #$FF
        clc
        adc     L00C4
        bcs     LF422
        adc     L00C3
        bmi     LF428
        sta     L00C3
        lda     #$00
LF422:  inc     L00C1
LF424:  sta     L00C4
        bne     LF40F
LF428:  inc     L00C9
        lda     L00C9
        lsr     a
        bcs     LF45C
        lda     L00C7
        ora     L00C8
        beq     LF45C
        cmp     #$10
        bcc     LF44C
        ldx     #$01
LF43B:  lda     L00C7,x
        beq     LF447
        cmp     #$10
        bcc     LF447
        adc     #$EF
        sta     L00C7,x
LF447:  dex
        bpl     LF43B
        bmi     LF45C
LF44C:  ldx     #$01
LF44E:  lda     L00C7,x
        beq     LF459
        clc
        adc     #$EF
        sta     L00C7,x
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
LF506:  brk
LF507:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LF845:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LF854:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LFA70:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFB01:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFC04:  brk
LFC05:  brk
        brk
        brk
        brk
LFC09:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFD01:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFD0C:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LFE40:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFE54:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFEFC:  brk
        brk
        brk
        brk
LFF00:  brk
LFF01:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
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
LFF29:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFF31:  brk
LFF32:  brk
LFF33:  brk
        brk
        brk
        brk
        brk
        brk
        brk
LFF3A:  brk
LFF3B:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LFF45:  brk
        brk
LFF47:  brk
        brk
        brk
        brk
        brk
LFF4C:  brk
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
