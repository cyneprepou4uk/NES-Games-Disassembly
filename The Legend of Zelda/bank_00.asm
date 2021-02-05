.segment "BANK_00"
.include "bank_ram.inc"
.include "bank_val.inc"
; 0x000010-0x00400F



.export sub_0x001835



; bzk garbage
- D 0 - - - 0x000010 00:8000: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000018 00:8008: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000020 00:8010: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000028 00:8018: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000030 00:8020: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000038 00:8028: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000040 00:8030: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000048 00:8038: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000050 00:8040: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000058 00:8048: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000060 00:8050: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000068 00:8058: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000070 00:8060: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000078 00:8068: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000080 00:8070: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000088 00:8078: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000090 00:8080: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000098 00:8088: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0000A0 00:8090: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0000A8 00:8098: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0000B0 00:80A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0000B8 00:80A8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0000C0 00:80B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0000C8 00:80B8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0000D0 00:80C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0000D8 00:80C8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0000E0 00:80D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0000E8 00:80D8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0000F0 00:80E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0000F8 00:80E8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000100 00:80F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000108 00:80F8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000110 00:8100: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000118 00:8108: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000120 00:8110: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000128 00:8118: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000130 00:8120: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000138 00:8128: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000140 00:8130: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000148 00:8138: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000150 00:8140: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000158 00:8148: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000160 00:8150: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000168 00:8158: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000170 00:8160: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000178 00:8168: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000180 00:8170: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000188 00:8178: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000190 00:8180: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000198 00:8188: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0001A0 00:8190: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0001A8 00:8198: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0001B0 00:81A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0001B8 00:81A8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0001C0 00:81B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0001C8 00:81B8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0001D0 00:81C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0001D8 00:81C8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0001E0 00:81D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0001E8 00:81D8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0001F0 00:81E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0001F8 00:81E8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000200 00:81F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000208 00:81F8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000210 00:8200: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000218 00:8208: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000220 00:8210: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000228 00:8218: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000230 00:8220: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000238 00:8228: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000240 00:8230: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000248 00:8238: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000250 00:8240: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000258 00:8248: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000260 00:8250: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000268 00:8258: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000270 00:8260: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000278 00:8268: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000280 00:8270: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000288 00:8278: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000290 00:8280: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000298 00:8288: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0002A0 00:8290: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0002A8 00:8298: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0002B0 00:82A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0002B8 00:82A8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0002C0 00:82B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0002C8 00:82B8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0002D0 00:82C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0002D8 00:82C8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0002E0 00:82D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0002E8 00:82D8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0002F0 00:82E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0002F8 00:82E8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000300 00:82F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000308 00:82F8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000310 00:8300: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000318 00:8308: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000320 00:8310: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000328 00:8318: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000330 00:8320: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000338 00:8328: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000340 00:8330: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000348 00:8338: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000350 00:8340: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000358 00:8348: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000360 00:8350: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000368 00:8358: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000370 00:8360: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000378 00:8368: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000380 00:8370: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000388 00:8378: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000390 00:8380: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000398 00:8388: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0003A0 00:8390: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0003A8 00:8398: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0003B0 00:83A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0003B8 00:83A8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0003C0 00:83B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0003C8 00:83B8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0003D0 00:83C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0003D8 00:83C8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0003E0 00:83D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0003E8 00:83D8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0003F0 00:83E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0003F8 00:83E8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000400 00:83F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000408 00:83F8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000410 00:8400: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000418 00:8408: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000420 00:8410: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000428 00:8418: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000430 00:8420: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000438 00:8428: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000440 00:8430: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000448 00:8438: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000450 00:8440: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000458 00:8448: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000460 00:8450: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000468 00:8458: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000470 00:8460: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000478 00:8468: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000480 00:8470: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000488 00:8478: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000490 00:8480: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000498 00:8488: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0004A0 00:8490: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0004A8 00:8498: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0004B0 00:84A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0004B8 00:84A8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0004C0 00:84B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0004C8 00:84B8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0004D0 00:84C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0004D8 00:84C8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0004E0 00:84D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0004E8 00:84D8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0004F0 00:84E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0004F8 00:84E8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000500 00:84F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000508 00:84F8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000510 00:8500: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000518 00:8508: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000520 00:8510: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000528 00:8518: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000530 00:8520: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000538 00:8528: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000540 00:8530: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000548 00:8538: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000550 00:8540: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000558 00:8548: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000560 00:8550: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000568 00:8558: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000570 00:8560: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000578 00:8568: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000580 00:8570: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000588 00:8578: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000590 00:8580: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000598 00:8588: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0005A0 00:8590: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0005A8 00:8598: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0005B0 00:85A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0005B8 00:85A8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0005C0 00:85B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0005C8 00:85B8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0005D0 00:85C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0005D8 00:85C8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0005E0 00:85D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0005E8 00:85D8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0005F0 00:85E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0005F8 00:85E8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000600 00:85F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000608 00:85F8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000610 00:8600: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000618 00:8608: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000620 00:8610: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000628 00:8618: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000630 00:8620: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000638 00:8628: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000640 00:8630: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000648 00:8638: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000650 00:8640: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000658 00:8648: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000660 00:8650: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000668 00:8658: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000670 00:8660: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000678 00:8668: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000680 00:8670: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000688 00:8678: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000690 00:8680: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000698 00:8688: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0006A0 00:8690: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0006A8 00:8698: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0006B0 00:86A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0006B8 00:86A8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0006C0 00:86B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0006C8 00:86B8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0006D0 00:86C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0006D8 00:86C8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0006E0 00:86D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0006E8 00:86D8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0006F0 00:86E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0006F8 00:86E8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000700 00:86F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000708 00:86F8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000710 00:8700: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000718 00:8708: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000720 00:8710: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000728 00:8718: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000730 00:8720: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000738 00:8728: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000740 00:8730: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000748 00:8738: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000750 00:8740: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000758 00:8748: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000760 00:8750: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000768 00:8758: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000770 00:8760: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000778 00:8768: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000780 00:8770: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000788 00:8778: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000790 00:8780: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000798 00:8788: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0007A0 00:8790: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0007A8 00:8798: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0007B0 00:87A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0007B8 00:87A8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0007C0 00:87B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0007C8 00:87B8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0007D0 00:87C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0007D8 00:87C8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0007E0 00:87D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0007E8 00:87D8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0007F0 00:87E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0007F8 00:87E8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000800 00:87F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000808 00:87F8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000810 00:8800: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000818 00:8808: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000820 00:8810: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000828 00:8818: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000830 00:8820: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000838 00:8828: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000840 00:8830: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000848 00:8838: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000850 00:8840: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000858 00:8848: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000860 00:8850: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000868 00:8858: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000870 00:8860: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000878 00:8868: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000880 00:8870: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000888 00:8878: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000890 00:8880: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000898 00:8888: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0008A0 00:8890: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0008A8 00:8898: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0008B0 00:88A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0008B8 00:88A8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0008C0 00:88B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0008C8 00:88B8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0008D0 00:88C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0008D8 00:88C8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0008E0 00:88D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0008E8 00:88D8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0008F0 00:88E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0008F8 00:88E8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000900 00:88F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000908 00:88F8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000910 00:8900: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000918 00:8908: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000920 00:8910: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000928 00:8918: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000930 00:8920: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000938 00:8928: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000940 00:8930: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000948 00:8938: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000950 00:8940: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000958 00:8948: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000960 00:8950: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000968 00:8958: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000970 00:8960: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000978 00:8968: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000980 00:8970: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000988 00:8978: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000990 00:8980: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000998 00:8988: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0009A0 00:8990: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0009A8 00:8998: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0009B0 00:89A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0009B8 00:89A8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0009C0 00:89B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0009C8 00:89B8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0009D0 00:89C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0009D8 00:89C8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0009E0 00:89D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0009E8 00:89D8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0009F0 00:89E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0009F8 00:89E8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A00 00:89F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A08 00:89F8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A10 00:8A00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A18 00:8A08: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A20 00:8A10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A28 00:8A18: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A30 00:8A20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A38 00:8A28: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A40 00:8A30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A48 00:8A38: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A50 00:8A40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A58 00:8A48: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A60 00:8A50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A68 00:8A58: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A70 00:8A60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A78 00:8A68: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A80 00:8A70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A88 00:8A78: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A90 00:8A80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000A98 00:8A88: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000AA0 00:8A90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000AA8 00:8A98: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000AB0 00:8AA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000AB8 00:8AA8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000AC0 00:8AB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000AC8 00:8AB8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000AD0 00:8AC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000AD8 00:8AC8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000AE0 00:8AD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000AE8 00:8AD8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000AF0 00:8AE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000AF8 00:8AE8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B00 00:8AF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B08 00:8AF8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B10 00:8B00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B18 00:8B08: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B20 00:8B10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B28 00:8B18: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B30 00:8B20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B38 00:8B28: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B40 00:8B30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B48 00:8B38: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B50 00:8B40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B58 00:8B48: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B60 00:8B50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B68 00:8B58: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B70 00:8B60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B78 00:8B68: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B80 00:8B70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B88 00:8B78: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B90 00:8B80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000B98 00:8B88: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000BA0 00:8B90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000BA8 00:8B98: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000BB0 00:8BA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000BB8 00:8BA8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000BC0 00:8BB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000BC8 00:8BB8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000BD0 00:8BC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000BD8 00:8BC8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000BE0 00:8BD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000BE8 00:8BD8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000BF0 00:8BE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000BF8 00:8BE8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C00 00:8BF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C08 00:8BF8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C10 00:8C00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C18 00:8C08: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C20 00:8C10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C28 00:8C18: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C30 00:8C20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C38 00:8C28: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C40 00:8C30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C48 00:8C38: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C50 00:8C40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C58 00:8C48: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C60 00:8C50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C68 00:8C58: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C70 00:8C60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C78 00:8C68: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C80 00:8C70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C88 00:8C78: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C90 00:8C80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000C98 00:8C88: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000CA0 00:8C90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000CA8 00:8C98: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000CB0 00:8CA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000CB8 00:8CA8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000CC0 00:8CB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000CC8 00:8CB8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000CD0 00:8CC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000CD8 00:8CC8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000CE0 00:8CD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000CE8 00:8CD8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000CF0 00:8CE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000CF8 00:8CE8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000D00 00:8CF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000D08 00:8CF8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000D10 00:8D00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000D18 00:8D08: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000D20 00:8D10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000D28 00:8D18: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000D30 00:8D20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000D38 00:8D28: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000D40 00:8D30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000D48 00:8D38: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000D50 00:8D40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000D58 00:8D48: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000D60 00:8D50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x000D68 00:8D58: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



tbl_8D60_offset:
- - - - - - 0x000D70 00:8D60: 7D        .byte off_8DDD - tbl_8D60_offset   ; 
- D 0 - - - 0x000D71 00:8D61: B5        .byte off_8E15 - tbl_8D60_offset   ; 
- D 0 - - - 0x000D72 00:8D62: 6E        .byte off_8DCE - tbl_8D60_offset   ; 
- D 0 - - - 0x000D73 00:8D63: 67        .byte off_8DC7 - tbl_8D60_offset   ; 
- - - - - - 0x000D74 00:8D64: 7D        .byte off_8DDD - tbl_8D60_offset   ; 
- D 0 - - - 0x000D75 00:8D65: AD        .byte off_8E0D - tbl_8D60_offset   ; 
- - - - - - 0x000D76 00:8D66: 64        .byte off_8DC4 - tbl_8D60_offset   ; 
- - - - - - 0x000D77 00:8D67: 64        .byte off_8DC4 - tbl_8D60_offset   ; 
- D 0 - - - 0x000D78 00:8D68: 75        .byte off_8DD5 - tbl_8D60_offset   ; 
- D 0 - - - 0x000D79 00:8D69: 7D        .byte off_8DDD - tbl_8D60_offset   ; 
- D 0 - - - 0x000D7A 00:8D6A: 85        .byte off_8DE5 - tbl_8D60_offset   ; 
- D 0 - - - 0x000D7B 00:8D6B: 95        .byte off_8DF5 - tbl_8D60_offset   ; 
- D 0 - - - 0x000D7C 00:8D6C: 7D        .byte off_8DDD - tbl_8D60_offset   ; 
- D 0 - - - 0x000D7D 00:8D6D: 8D        .byte off_8DED - tbl_8D60_offset   ; 
- D 0 - - - 0x000D7E 00:8D6E: 95        .byte off_8DF5 - tbl_8D60_offset   ; 
- D 0 - - - 0x000D7F 00:8D6F: 9D        .byte off_8DFD - tbl_8D60_offset   ; 
- D 0 - - - 0x000D80 00:8D70: A5        .byte off_8E05 - tbl_8D60_offset   ; 
- D 0 - - - 0x000D81 00:8D71: BD        .byte off_8E1D - tbl_8D60_offset   ; 
- D 0 - - - 0x000D82 00:8D72: C5        .byte off_8E25 - tbl_8D60_offset   ; 
- D 0 - - - 0x000D83 00:8D73: CD        .byte off_8E2D - tbl_8D60_offset   ; 
- D 0 - - - 0x000D84 00:8D74: D5        .byte off_8E35 - tbl_8D60_offset   ; 
- D 0 - - - 0x000D85 00:8D75: DD        .byte off_8E3D - tbl_8D60_offset   ; 
- D 0 - - - 0x000D86 00:8D76: D5        .byte off_8E35 - tbl_8D60_offset   ; 
- D 0 - - - 0x000D87 00:8D77: E5        .byte off_8E45 - tbl_8D60_offset   ; 
- D 0 - - - 0x000D88 00:8D78: ED        .byte off_8E4D - tbl_8D60_offset   ; 
- D 0 - - - 0x000D89 00:8D79: 24        .byte off_8D84 - tbl_8D60_offset   ; 
- D 0 - - - 0x000D8A 00:8D7A: 2C        .byte off_8D8C - tbl_8D60_offset   ; 
- D 0 - - - 0x000D8B 00:8D7B: 34        .byte off_8D94 - tbl_8D60_offset   ; 
- D 0 - - - 0x000D8C 00:8D7C: 3C        .byte off_8D9C - tbl_8D60_offset   ; 
- D 0 - - - 0x000D8D 00:8D7D: 44        .byte off_8DA4 - tbl_8D60_offset   ; 
- D 0 - - - 0x000D8E 00:8D7E: 34        .byte off_8D94 - tbl_8D60_offset   ; 
- D 0 - - - 0x000D8F 00:8D7F: 4C        .byte off_8DAC - tbl_8D60_offset   ; 
- D 0 - - - 0x000D90 00:8D80: 54        .byte off_8DB4 - tbl_8D60_offset   ; 
- D 0 - - - 0x000D91 00:8D81: 5C        .byte off_8DBC - tbl_8D60_offset   ; 
- D 0 - - - 0x000D92 00:8D82: 44        .byte off_8DA4 - tbl_8D60_offset   ; 
- D 0 - - - 0x000D93 00:8D83: F5        .byte off_8E55 - tbl_8D60_offset   ; 



tbl_8D84:
; offset via 0x000D70
off_8D84:   ; 24
- D 0 - - - 0x000D94 00:8D84: 20        .byte $20   ; 
- D 0 - - - 0x000D95 00:8D85: 8B 94     .word _off000_948B
- D 0 - - - 0x000D97 00:8D87: 3B        .byte $3B   ; 
- D 0 - - - 0x000D98 00:8D88: 1D        .byte $1D   ; 
- D 0 - - - 0x000D99 00:8D89: 4F        .byte $4F   ; 
- D 0 - - - 0x000D9A 00:8D8A: 80        .byte $80   ; 
- D 0 - - - 0x000D9B 00:8D8B: 01        .byte $01   ; 

off_8D8C:   ; 2C
- D 0 - - - 0x000D9C 00:8D8C: 20        .byte $20   ; 
- D 0 - - - 0x000D9D 00:8D8D: DC 94     .word _off000_94DC
- D 0 - - - 0x000D9F 00:8D8F: 27        .byte $27   ; 
- D 0 - - - 0x000DA0 00:8D90: 57        .byte $57   ; 
- D 0 - - - 0x000DA1 00:8D91: 23        .byte $23   ; 
- D 0 - - - 0x000DA2 00:8D92: 01        .byte $01   ; 
- D 0 - - - 0x000DA3 00:8D93: 80        .byte $80   ; 

off_8D94:   ; 34
- D 0 - - - 0x000DA4 00:8D94: 20        .byte $20   ; 
- D 0 - - - 0x000DA5 00:8D95: A1 95     .word _off000_95A1
- D 0 - - - 0x000DA7 00:8D97: 38        .byte $38   ; 
- D 0 - - - 0x000DA8 00:8D98: 17        .byte $17   ; 
- D 0 - - - 0x000DA9 00:8D99: B8        .byte $B8   ; 
- D 0 - - - 0x000DAA 00:8D9A: 80        .byte $80   ; 
- D 0 - - - 0x000DAB 00:8D9B: 80        .byte $80   ; 

off_8D9C:   ; 3C
- D 0 - - - 0x000DAC 00:8D9C: 20        .byte $20   ; 
- D 0 - - - 0x000DAD 00:8D9D: F1 95     .word _off000_95F1
- D 0 - - - 0x000DAF 00:8D9F: 6C        .byte $6C   ; 
- D 0 - - - 0x000DB0 00:8DA0: 26        .byte $26   ; 
- D 0 - - - 0x000DB1 00:8DA1: 68        .byte $68   ; 
- D 0 - - - 0x000DB2 00:8DA2: 80        .byte $80   ; 
- D 0 - - - 0x000DB3 00:8DA3: 80        .byte $80   ; 

off_8DA4:   ; 44
- D 0 - - - 0x000DB4 00:8DA4: 20        .byte $20   ; 
- D 0 - - - 0x000DB5 00:8DA5: 8D 96     .word _off000_968D
- D 0 - - - 0x000DB7 00:8DA7: 3E        .byte $3E   ; 
- D 0 - - - 0x000DB8 00:8DA8: 25        .byte $25   ; 
- D 0 - - - 0x000DB9 00:8DA9: 21        .byte $21   ; 
- D 0 - - - 0x000DBA 00:8DAA: 80        .byte $80   ; 
- D 0 - - - 0x000DBB 00:8DAB: 80        .byte $80   ; 

off_8DAC:   ; 4C
- D 0 - - - 0x000DBC 00:8DAC: 20        .byte $20   ; 
- D 0 - - - 0x000DBD 00:8DAD: EB 96     .word _off000_96EB
- D 0 - - - 0x000DBF 00:8DAF: 19        .byte $19   ; 
- D 0 - - - 0x000DC0 00:8DB0: 0D        .byte $0D   ; 
- D 0 - - - 0x000DC1 00:8DB1: 31        .byte $31   ; 
- D 0 - - - 0x000DC2 00:8DB2: 80        .byte $80   ; 
- D 0 - - - 0x000DC3 00:8DB3: 80        .byte $80   ; 

off_8DB4:   ; 54
- D 0 - - - 0x000DC4 00:8DB4: 20        .byte $20   ; 
- D 0 - - - 0x000DC5 00:8DB5: 20 97     .word _off000_9720
- D 0 - - - 0x000DC7 00:8DB7: 3F        .byte $3F   ; 
- D 0 - - - 0x000DC8 00:8DB8: 27        .byte $27   ; 
- D 0 - - - 0x000DC9 00:8DB9: 7C        .byte $7C   ; 
- D 0 - - - 0x000DCA 00:8DBA: 80        .byte $80   ; 
- D 0 - - - 0x000DCB 00:8DBB: 80        .byte $80   ; 

off_8DBC:   ; 5C
- D 0 - - - 0x000DCC 00:8DBC: 20        .byte $20   ; 
- D 0 - - - 0x000DCD 00:8DBD: 8F 97     .word _off000_978F
- D 0 - - - 0x000DCF 00:8DBF: 1D        .byte $1D   ; 
- D 0 - - - 0x000DD0 00:8DC0: 11        .byte $11   ; 
- D 0 - - - 0x000DD1 00:8DC1: 0D        .byte $0D   ; 
- D 0 - - - 0x000DD2 00:8DC2: 80        .byte $80   ; 
- D 0 - - - 0x000DD3 00:8DC3: 80        .byte $80   ; 

off_8DC4:   ; 64 unused?
- - - - - - 0x000DD4 00:8DC4: 10        .byte $10   ; 
- - - - - - 0x000DD5 00:8DC5: A1        .byte $A1   ; _off000_8EA1 ?
- - - - - - 0x000DD6 00:8DC6: 8E        .byte $8E   ; 

off_8DC7:   ; 67
- D 0 - - - 0x000DD7 00:8DC7: 10        .byte $10   ; 
- D 0 - - - 0x000DD8 00:8DC8: 5D 8E     .word _off000_8E5D
- D 0 - - - 0x000DDA 00:8DCA: 0D        .byte $0D   ; 
- D 0 - - - 0x000DDB 00:8DCB: 07        .byte $07   ; 
- D 0 - - - 0x000DDC 00:8DCC: 00        .byte $00   ; 
- D 0 - - - 0x000DDD 00:8DCD: 80        .byte $80   ; 

off_8DCE:   ; 6E
- D 0 - - - 0x000DDE 00:8DCE: 10        .byte $10   ; 
- D 0 - - - 0x000DDF 00:8DCF: A4 91     .word _off000_91A4
- D 0 - - - 0x000DE1 00:8DD1: 46        .byte $46   ; 
- D 0 - - - 0x000DE2 00:8DD2: 22        .byte $22   ; 
- D 0 - - - 0x000DE3 00:8DD3: 00        .byte $00   ; 
- D 0 - - - 0x000DE4 00:8DD4: 80        .byte $80   ; 

off_8DD5:   ; 75
- D 0 - - - 0x000DE5 00:8DD5: 10        .byte $10   ; 
- D 0 - - - 0x000DE6 00:8DD6: 70 8E     .word _off000_8E70
- D 0 - - - 0x000DE8 00:8DD8: 32        .byte $32   ; 
- D 0 - - - 0x000DE9 00:8DD9: 5D        .byte $5D   ; 
- D 0 - - - 0x000DEA 00:8DDA: 8E        .byte $8E   ; 
- D 0 - - - 0x000DEB 00:8DDB: 01        .byte $01   ; 
- D 0 - - - 0x000DEC 00:8DDC: 80        .byte $80   ; 

off_8DDD:   ; 7D
- D 0 - - - 0x000DED 00:8DDD: 10        .byte $10   ; 
- D 0 - - - 0x000DEE 00:8DDE: 0F 8F     .word _off000_8F0F
- D 0 - - - 0x000DF0 00:8DE0: 35        .byte $35   ; 
- D 0 - - - 0x000DF1 00:8DE1: 16        .byte $16   ; 
- D 0 - - - 0x000DF2 00:8DE2: CE        .byte $CE   ; 
- D 0 - - - 0x000DF3 00:8DE3: 01        .byte $01   ; 
- D 0 - - - 0x000DF4 00:8DE4: 80        .byte $80   ; 

off_8DE5:    ; 85
- D 0 - - - 0x000DF5 00:8DE5: 10        .byte $10   ; 
- D 0 - - - 0x000DF6 00:8DE6: 55 8F     .word _off000_8F55
- D 0 - - - 0x000DF8 00:8DE8: 60        .byte $60   ; 
- D 0 - - - 0x000DF9 00:8DE9: 26        .byte $26   ; 
- D 0 - - - 0x000DFA 00:8DEA: 88        .byte $88   ; 
- D 0 - - - 0x000DFB 00:8DEB: 01        .byte $01   ; 
- D 0 - - - 0x000DFC 00:8DEC: 80        .byte $80   ; 

off_8DED:    ; 8D
- D 0 - - - 0x000DFD 00:8DED: 10        .byte $10   ; 
- D 0 - - - 0x000DFE 00:8DEE: 32 90     .word _off000_9032
- D 0 - - - 0x000E00 00:8DF0: 59        .byte $59   ; 
- D 0 - - - 0x000E01 00:8DF1: 2D        .byte $2D   ; 
- D 0 - - - 0x000E02 00:8DF2: A4        .byte $A4   ; 
- D 0 - - - 0x000E03 00:8DF3: 01        .byte $01   ; 
- D 0 - - - 0x000E04 00:8DF4: 80        .byte $80   ; 

off_8DF5:    ; 95
- D 0 - - - 0x000E05 00:8DF5: 10        .byte $10   ; 
- D 0 - - - 0x000E06 00:8DF6: E4 8F     .word _off000_8FE4
- D 0 - - - 0x000E08 00:8DF8: 3B        .byte $3B   ; 
- D 0 - - - 0x000E09 00:8DF9: 1A        .byte $1A   ; 
- D 0 - - - 0x000E0A 00:8DFA: F2        .byte $F2   ; 
- D 0 - - - 0x000E0B 00:8DFB: 01        .byte $01   ; 
- D 0 - - - 0x000E0C 00:8DFC: 80        .byte $80   ; 

off_8DFD:    ; 9D
- D 0 - - - 0x000E0D 00:8DFD: 00        .byte $00   ; 
- D 0 - - - 0x000E0E 00:8DFE: DD 90     .word _off000_90DD
- D 0 - - - 0x000E10 00:8E00: 45        .byte $45   ; 
- D 0 - - - 0x000E11 00:8E01: 22        .byte $22   ; 
- D 0 - - - 0x000E12 00:8E02: 00        .byte $00   ; 
- D 0 - - - 0x000E13 00:8E03: 01        .byte $01   ; 
- D 0 - - - 0x000E14 00:8E04: 01        .byte $01   ; 

off_8E05:    ; A5
- D 0 - - - 0x000E15 00:8E05: 00        .byte $00   ; 
- D 0 - - - 0x000E16 00:8E06: 3A 91     .word _off000_913A
- D 0 - - - 0x000E18 00:8E08: 39        .byte $39   ; 
- D 0 - - - 0x000E19 00:8E09: 1C        .byte $1C   ; 
- D 0 - - - 0x000E1A 00:8E0A: 00        .byte $00   ; 
- D 0 - - - 0x000E1B 00:8E0B: 01        .byte $01   ; 
- D 0 - - - 0x000E1C 00:8E0C: 01        .byte $01   ; 

off_8E0D:    ; AD
- D 0 - - - 0x000E1D 00:8E0D: 10        .byte $10   ; 
- D 0 - - - 0x000E1E 00:8E0E: FD 91     .word _off000_91FD
- D 0 - - - 0x000E20 00:8E10: A5        .byte $A5   ; 
- D 0 - - - 0x000E21 00:8E11: 53        .byte $53   ; 
- D 0 - - - 0x000E22 00:8E12: CD        .byte $CD   ; 
- D 0 - - - 0x000E23 00:8E13: 80        .byte $80   ; 
- D 0 - - - 0x000E24 00:8E14: 80        .byte $80   ; 

off_8E15:    ; B5
- D 0 - - - 0x000E25 00:8E15: 10        .byte $10   ; 
- D 0 - - - 0x000E26 00:8E16: CC 92     .word _off000_92CC
- D 0 - - - 0x000E28 00:8E18: 22        .byte $22   ; 
- D 0 - - - 0x000E29 00:8E19: 10        .byte $10   ; 
- D 0 - - - 0x000E2A 00:8E1A: 00        .byte $00   ; 
- D 0 - - - 0x000E2B 00:8E1B: 80        .byte $80   ; 
- D 0 - - - 0x000E2C 00:8E1C: 01        .byte $01   ; 

off_8E1D:    ; BD
- D 0 - - - 0x000E2D 00:8E1D: 08        .byte $08   ; 
- D 0 - - - 0x000E2E 00:8E1E: F7 92     .word _off000_92F7
- D 0 - - - 0x000E30 00:8E20: 22        .byte $22   ; 
- D 0 - - - 0x000E31 00:8E21: 50        .byte $50   ; 
- D 0 - - - 0x000E32 00:8E22: 59        .byte $59   ; 
- D 0 - - - 0x000E33 00:8E23: 01        .byte $01   ; 
- D 0 - - - 0x000E34 00:8E24: 80        .byte $80   ; 

off_8E25:    ; C5
- D 0 - - - 0x000E35 00:8E25: 08        .byte $08   ; 
- D 0 - - - 0x000E36 00:8E26: F7 92     .word _off000_92F7
- D 0 - - - 0x000E38 00:8E28: 2F        .byte $2F   ; 
- D 0 - - - 0x000E39 00:8E29: 50        .byte $50   ; 
- D 0 - - - 0x000E3A 00:8E2A: 59        .byte $59   ; 
- D 0 - - - 0x000E3B 00:8E2B: 01        .byte $01   ; 
- D 0 - - - 0x000E3C 00:8E2C: 80        .byte $80   ; 

off_8E2D:    ; CD
- D 0 - - - 0x000E3D 00:8E2D: 08        .byte $08   ; 
- D 0 - - - 0x000E3E 00:8E2E: 52 93     .word _off000_9352
- D 0 - - - 0x000E40 00:8E30: 7A        .byte $7A   ; 
- D 0 - - - 0x000E41 00:8E31: 1B        .byte $1B   ; 
- D 0 - - - 0x000E42 00:8E32: C2        .byte $C2   ; 
- D 0 - - - 0x000E43 00:8E33: 80        .byte $80   ; 
- D 0 - - - 0x000E44 00:8E34: 80        .byte $80   ; 

off_8E35:    ; D5
- D 0 - - - 0x000E45 00:8E35: 08        .byte $08   ; 
- D 0 - - - 0x000E46 00:8E36: 86 93     .word _off000_9386
- D 0 - - - 0x000E48 00:8E38: 46        .byte $46   ; 
- D 0 - - - 0x000E49 00:8E39: 24        .byte $24   ; 
- D 0 - - - 0x000E4A 00:8E3A: 8E        .byte $8E   ; 
- D 0 - - - 0x000E4B 00:8E3B: 01        .byte $01   ; 
- D 0 - - - 0x000E4C 00:8E3C: 80        .byte $80   ; 

off_8E3D:    ; DD
- D 0 - - - 0x000E4D 00:8E3D: 08        .byte $08   ; 
- D 0 - - - 0x000E4E 00:8E3E: 9D 93     .word _off000_939D
- D 0 - - - 0x000E50 00:8E40: 44        .byte $44   ; 
- D 0 - - - 0x000E51 00:8E41: 23        .byte $23   ; 
- D 0 - - - 0x000E52 00:8E42: 77        .byte $77   ; 
- D 0 - - - 0x000E53 00:8E43: 01        .byte $01   ; 
- D 0 - - - 0x000E54 00:8E44: 80        .byte $80   ; 

off_8E45:    ; E5
- D 0 - - - 0x000E55 00:8E45: 08        .byte $08   ; 
- D 0 - - - 0x000E56 00:8E46: ED 93     .word _off000_93ED
- D 0 - - - 0x000E58 00:8E48: 1B        .byte $1B   ; 
- D 0 - - - 0x000E59 00:8E49: 0E        .byte $0E   ; 
- D 0 - - - 0x000E5A 00:8E4A: 27        .byte $27   ; 
- D 0 - - - 0x000E5B 00:8E4B: 01        .byte $01   ; 
- D 0 - - - 0x000E5C 00:8E4C: 80        .byte $80   ; 

off_8E4D:    ; ED
- D 0 - - - 0x000E5D 00:8E4D: 08        .byte $08   ; 
- D 0 - - - 0x000E5E 00:8E4E: 1A 94     .word _off000_941A
- D 0 - - - 0x000E60 00:8E50: 40        .byte $40   ; 
- D 0 - - - 0x000E61 00:8E51: 1A        .byte $1A   ; 
- D 0 - - - 0x000E62 00:8E52: 6B        .byte $6B   ; 
- D 0 - - - 0x000E63 00:8E53: 80        .byte $80   ; 
- D 0 - - - 0x000E64 00:8E54: 80        .byte $80   ; 

off_8E55:    ; F5
- D 0 - - - 0x000E65 00:8E55: 10        .byte $10   ; 
- D 0 - - - 0x000E66 00:8E56: C4 97     .word _off000_97C4
- D 0 - - - 0x000E68 00:8E58: 3F        .byte $3F   ; 
- D 0 - - - 0x000E69 00:8E59: 20        .byte $20   ; 
- D 0 - - - 0x000E6A 00:8E5A: 00        .byte $00   ; 
- D 0 - - - 0x000E6B 00:8E5B: 80        .byte $80   ; 
- D 0 - - - 0x000E6C 00:8E5C: 80        .byte $80   ; 



_off000_8E5D:
- D 0 - I - 0x000E6D 00:8E5D: 81        .byte $81   ; 
- D 0 - I - 0x000E6E 00:8E5E: 1E        .byte $1E   ; 
- D 0 - I - 0x000E6F 00:8E5F: 20        .byte $20   ; 
- D 0 - I - 0x000E70 00:8E60: 22        .byte $22   ; 
- D 0 - I - 0x000E71 00:8E61: 85        .byte $85   ; 
- D 0 - I - 0x000E72 00:8E62: 24        .byte $24   ; 
- D 0 - I - 0x000E73 00:8E63: 00        .byte $00   ; 
- D 0 - I - 0x000E74 00:8E64: 81        .byte $81   ; 
- D 0 - I - 0x000E75 00:8E65: 30        .byte $30   ; 
- D 0 - I - 0x000E76 00:8E66: 32        .byte $32   ; 
- D 0 - I - 0x000E77 00:8E67: 34        .byte $34   ; 
- D 0 - I - 0x000E78 00:8E68: 85        .byte $85   ; 
- D 0 - I - 0x000E79 00:8E69: 36        .byte $36   ; 
- D 0 - I - 0x000E7A 00:8E6A: 81        .byte $81   ; 
- D 0 - I - 0x000E7B 00:8E6B: 28        .byte $28   ; 
- D 0 - I - 0x000E7C 00:8E6C: 2A        .byte $2A   ; 
- D 0 - I - 0x000E7D 00:8E6D: 2C        .byte $2C   ; 
- D 0 - I - 0x000E7E 00:8E6E: 85        .byte $85   ; 
- D 0 - I - 0x000E7F 00:8E6F: 2E        .byte $2E   ; 



_off000_8E70:
- D 0 - I - 0x000E80 00:8E70: 85        .byte $85   ; 
- D 0 - I - 0x000E81 00:8E71: 32        .byte $32   ; 
- D 0 - I - 0x000E82 00:8E72: 82        .byte $82   ; 
- D 0 - I - 0x000E83 00:8E73: 08        .byte $08   ; 
- D 0 - I - 0x000E84 00:8E74: 08        .byte $08   ; 
- D 0 - I - 0x000E85 00:8E75: 32        .byte $32   ; 
- D 0 - I - 0x000E86 00:8E76: 32        .byte $32   ; 
- D 0 - I - 0x000E87 00:8E77: 32        .byte $32   ; 
- D 0 - I - 0x000E88 00:8E78: 32        .byte $32   ; 
- D 0 - I - 0x000E89 00:8E79: 32        .byte $32   ; 
- D 0 - I - 0x000E8A 00:8E7A: 08        .byte $08   ; 
- D 0 - I - 0x000E8B 00:8E7B: 2E        .byte $2E   ; 
- D 0 - I - 0x000E8C 00:8E7C: 83        .byte $83   ; 
- D 0 - I - 0x000E8D 00:8E7D: 32        .byte $32   ; 
- D 0 - I - 0x000E8E 00:8E7E: 82        .byte $82   ; 
- D 0 - I - 0x000E8F 00:8E7F: 08        .byte $08   ; 
- D 0 - I - 0x000E90 00:8E80: 08        .byte $08   ; 
- D 0 - I - 0x000E91 00:8E81: 32        .byte $32   ; 
- D 0 - I - 0x000E92 00:8E82: 32        .byte $32   ; 
- D 0 - I - 0x000E93 00:8E83: 32        .byte $32   ; 
- D 0 - I - 0x000E94 00:8E84: 32        .byte $32   ; 
- D 0 - I - 0x000E95 00:8E85: 32        .byte $32   ; 
- D 0 - I - 0x000E96 00:8E86: 08        .byte $08   ; 
- D 0 - I - 0x000E97 00:8E87: 2E        .byte $2E   ; 
- D 0 - I - 0x000E98 00:8E88: 83        .byte $83   ; 
- D 0 - I - 0x000E99 00:8E89: 32        .byte $32   ; 
- D 0 - I - 0x000E9A 00:8E8A: 82        .byte $82   ; 
- D 0 - I - 0x000E9B 00:8E8B: 08        .byte $08   ; 
- D 0 - I - 0x000E9C 00:8E8C: 08        .byte $08   ; 
- D 0 - I - 0x000E9D 00:8E8D: 32        .byte $32   ; 
- D 0 - I - 0x000E9E 00:8E8E: 32        .byte $32   ; 
- D 0 - I - 0x000E9F 00:8E8F: 32        .byte $32   ; 
- D 0 - I - 0x000EA0 00:8E90: 32        .byte $32   ; 
- D 0 - I - 0x000EA1 00:8E91: 80        .byte $80   ; 
- D 0 - I - 0x000EA2 00:8E92: 32        .byte $32   ; 
- D 0 - I - 0x000EA3 00:8E93: 08        .byte $08   ; 
- D 0 - I - 0x000EA4 00:8E94: 28        .byte $28   ; 
- D 0 - I - 0x000EA5 00:8E95: 28        .byte $28   ; 
- D 0 - I - 0x000EA6 00:8E96: 28        .byte $28   ; 
- D 0 - I - 0x000EA7 00:8E97: 08        .byte $08   ; 
- D 0 - I - 0x000EA8 00:8E98: 28        .byte $28   ; 
- D 0 - I - 0x000EA9 00:8E99: 28        .byte $28   ; 
- D 0 - I - 0x000EAA 00:8E9A: 28        .byte $28   ; 
- D 0 - I - 0x000EAB 00:8E9B: 08        .byte $08   ; 
- D 0 - I - 0x000EAC 00:8E9C: 28        .byte $28   ; 
- D 0 - I - 0x000EAD 00:8E9D: 28        .byte $28   ; 
- D 0 - I - 0x000EAE 00:8E9E: 81        .byte $81   ; 
- D 0 - I - 0x000EAF 00:8E9F: 28        .byte $28   ; 
- D 0 - I - 0x000EB0 00:8EA0: 28        .byte $28   ; 
- D 0 - I - 0x000EB1 00:8EA1: 00        .byte $00   ; 
- D 0 - I - 0x000EB2 00:8EA2: 83        .byte $83   ; 
- D 0 - I - 0x000EB3 00:8EA3: 1A        .byte $1A   ; 
- D 0 - I - 0x000EB4 00:8EA4: 82        .byte $82   ; 
- D 0 - I - 0x000EB5 00:8EA5: 1A        .byte $1A   ; 
- D 0 - I - 0x000EB6 00:8EA6: 1A        .byte $1A   ; 
- D 0 - I - 0x000EB7 00:8EA7: 1A        .byte $1A   ; 
- D 0 - I - 0x000EB8 00:8EA8: 83        .byte $83   ; 
- D 0 - I - 0x000EB9 00:8EA9: 1A        .byte $1A   ; 
- D 0 - I - 0x000EBA 00:8EAA: 82        .byte $82   ; 
- D 0 - I - 0x000EBB 00:8EAB: 1A        .byte $1A   ; 
- D 0 - I - 0x000EBC 00:8EAC: 1A        .byte $1A   ; 
- D 0 - I - 0x000EBD 00:8EAD: 1A        .byte $1A   ; 
- D 0 - I - 0x000EBE 00:8EAE: 83        .byte $83   ; 
- D 0 - I - 0x000EBF 00:8EAF: 16        .byte $16   ; 
- D 0 - I - 0x000EC0 00:8EB0: 82        .byte $82   ; 
- D 0 - I - 0x000EC1 00:8EB1: 16        .byte $16   ; 
- D 0 - I - 0x000EC2 00:8EB2: 16        .byte $16   ; 
- D 0 - I - 0x000EC3 00:8EB3: 16        .byte $16   ; 
- D 0 - I - 0x000EC4 00:8EB4: 83        .byte $83   ; 
- D 0 - I - 0x000EC5 00:8EB5: 16        .byte $16   ; 
- D 0 - I - 0x000EC6 00:8EB6: 82        .byte $82   ; 
- D 0 - I - 0x000EC7 00:8EB7: 16        .byte $16   ; 
- D 0 - I - 0x000EC8 00:8EB8: 16        .byte $16   ; 
- D 0 - I - 0x000EC9 00:8EB9: 16        .byte $16   ; 
- D 0 - I - 0x000ECA 00:8EBA: 83        .byte $83   ; 
- D 0 - I - 0x000ECB 00:8EBB: 12        .byte $12   ; 
- D 0 - I - 0x000ECC 00:8EBC: 82        .byte $82   ; 
- D 0 - I - 0x000ECD 00:8EBD: 12        .byte $12   ; 
- D 0 - I - 0x000ECE 00:8EBE: 12        .byte $12   ; 
- D 0 - I - 0x000ECF 00:8EBF: 12        .byte $12   ; 
- D 0 - I - 0x000ED0 00:8EC0: 83        .byte $83   ; 
- D 0 - I - 0x000ED1 00:8EC1: 12        .byte $12   ; 
- D 0 - I - 0x000ED2 00:8EC2: 82        .byte $82   ; 
- D 0 - I - 0x000ED3 00:8EC3: 12        .byte $12   ; 
- D 0 - I - 0x000ED4 00:8EC4: 12        .byte $12   ; 
- D 0 - I - 0x000ED5 00:8EC5: 12        .byte $12   ; 
- D 0 - I - 0x000ED6 00:8EC6: 83        .byte $83   ; 
- D 0 - I - 0x000ED7 00:8EC7: 10        .byte $10   ; 
- D 0 - I - 0x000ED8 00:8EC8: 10        .byte $10   ; 
- D 0 - I - 0x000ED9 00:8EC9: 10        .byte $10   ; 
- D 0 - I - 0x000EDA 00:8ECA: 81        .byte $81   ; 
- D 0 - I - 0x000EDB 00:8ECB: 14        .byte $14   ; 
- D 0 - I - 0x000EDC 00:8ECC: 18        .byte $18   ; 
- D 0 - I - 0x000EDD 00:8ECD: 85        .byte $85   ; 
- D 0 - I - 0x000EDE 00:8ECE: 22        .byte $22   ; 
- D 0 - I - 0x000EDF 00:8ECF: 82        .byte $82   ; 
- D 0 - I - 0x000EE0 00:8ED0: 08        .byte $08   ; 
- D 0 - I - 0x000EE1 00:8ED1: 08        .byte $08   ; 
- D 0 - I - 0x000EE2 00:8ED2: 22        .byte $22   ; 
- D 0 - I - 0x000EE3 00:8ED3: 22        .byte $22   ; 
- D 0 - I - 0x000EE4 00:8ED4: 22        .byte $22   ; 
- D 0 - I - 0x000EE5 00:8ED5: 22        .byte $22   ; 
- D 0 - I - 0x000EE6 00:8ED6: 1E        .byte $1E   ; 
- D 0 - I - 0x000EE7 00:8ED7: 08        .byte $08   ; 
- D 0 - I - 0x000EE8 00:8ED8: 1E        .byte $1E   ; 
- D 0 - I - 0x000EE9 00:8ED9: 83        .byte $83   ; 
- D 0 - I - 0x000EEA 00:8EDA: 1E        .byte $1E   ; 
- D 0 - I - 0x000EEB 00:8EDB: 08        .byte $08   ; 
- D 0 - I - 0x000EEC 00:8EDC: 82        .byte $82   ; 
- D 0 - I - 0x000EED 00:8EDD: 1E        .byte $1E   ; 
- D 0 - I - 0x000EEE 00:8EDE: 1E        .byte $1E   ; 
- D 0 - I - 0x000EEF 00:8EDF: 1E        .byte $1E   ; 
- D 0 - I - 0x000EF0 00:8EE0: 20        .byte $20   ; 
- D 0 - I - 0x000EF1 00:8EE1: 08        .byte $08   ; 
- D 0 - I - 0x000EF2 00:8EE2: 20        .byte $20   ; 
- D 0 - I - 0x000EF3 00:8EE3: 83        .byte $83   ; 
- D 0 - I - 0x000EF4 00:8EE4: 20        .byte $20   ; 
- D 0 - I - 0x000EF5 00:8EE5: 82        .byte $82   ; 
- D 0 - I - 0x000EF6 00:8EE6: 08        .byte $08   ; 
- D 0 - I - 0x000EF7 00:8EE7: 08        .byte $08   ; 
- D 0 - I - 0x000EF8 00:8EE8: 20        .byte $20   ; 
- D 0 - I - 0x000EF9 00:8EE9: 20        .byte $20   ; 
- D 0 - I - 0x000EFA 00:8EEA: 20        .byte $20   ; 
- D 0 - I - 0x000EFB 00:8EEB: 20        .byte $20   ; 
- D 0 - I - 0x000EFC 00:8EEC: 80        .byte $80   ; 
- D 0 - I - 0x000EFD 00:8EED: 20        .byte $20   ; 
- D 0 - I - 0x000EFE 00:8EEE: 08        .byte $08   ; 
- D 0 - I - 0x000EFF 00:8EEF: 18        .byte $18   ; 
- D 0 - I - 0x000F00 00:8EF0: 18        .byte $18   ; 
- D 0 - I - 0x000F01 00:8EF1: 81        .byte $81   ; 
- D 0 - I - 0x000F02 00:8EF2: 18        .byte $18   ; 
- D 0 - I - 0x000F03 00:8EF3: 80        .byte $80   ; 
- D 0 - I - 0x000F04 00:8EF4: 18        .byte $18   ; 
- D 0 - I - 0x000F05 00:8EF5: 18        .byte $18   ; 
- D 0 - I - 0x000F06 00:8EF6: 81        .byte $81   ; 
- D 0 - I - 0x000F07 00:8EF7: 18        .byte $18   ; 
- D 0 - I - 0x000F08 00:8EF8: 80        .byte $80   ; 
- D 0 - I - 0x000F09 00:8EF9: 18        .byte $18   ; 
- D 0 - I - 0x000F0A 00:8EFA: 18        .byte $18   ; 
- D 0 - I - 0x000F0B 00:8EFB: 81        .byte $81   ; 
- D 0 - I - 0x000F0C 00:8EFC: 18        .byte $18   ; 
- D 0 - I - 0x000F0D 00:8EFD: 18        .byte $18   ; 
- D 0 - I - 0x000F0E 00:8EFE: B1        .byte $B1   ; 
- D 0 - I - 0x000F0F 00:8EFF: 90        .byte $90   ; 
- D 0 - I - 0x000F10 00:8F00: 90        .byte $90   ; 
- D 0 - I - 0x000F11 00:8F01: 90        .byte $90   ; 
- D 0 - I - 0x000F12 00:8F02: B1        .byte $B1   ; 
- D 0 - I - 0x000F13 00:8F03: 90        .byte $90   ; 
- D 0 - I - 0x000F14 00:8F04: 90        .byte $90   ; 
- D 0 - I - 0x000F15 00:8F05: 90        .byte $90   ; 
- D 0 - I - 0x000F16 00:8F06: B1        .byte $B1   ; 
- D 0 - I - 0x000F17 00:8F07: 90        .byte $90   ; 
- D 0 - I - 0x000F18 00:8F08: 90        .byte $90   ; 
- D 0 - I - 0x000F19 00:8F09: 90        .byte $90   ; 
- D 0 - I - 0x000F1A 00:8F0A: D0        .byte $D0   ; 
- D 0 - I - 0x000F1B 00:8F0B: D0        .byte $D0   ; 
- D 0 - I - 0x000F1C 00:8F0C: D0        .byte $D0   ; 
- D 0 - I - 0x000F1D 00:8F0D: 50        .byte $50   ; 
- D 0 - I - 0x000F1E 00:8F0E: 50        .byte $50   ; 



_off000_8F0F:
- D 0 - I - 0x000F1F 00:8F0F: 81        .byte $81   ; 
- D 0 - I - 0x000F20 00:8F10: 32        .byte $32   ; 
- D 0 - I - 0x000F21 00:8F11: 08        .byte $08   ; 
- D 0 - I - 0x000F22 00:8F12: 84        .byte $84   ; 
- D 0 - I - 0x000F23 00:8F13: 28        .byte $28   ; 
- D 0 - I - 0x000F24 00:8F14: 80        .byte $80   ; 
- D 0 - I - 0x000F25 00:8F15: 08        .byte $08   ; 
- D 0 - I - 0x000F26 00:8F16: 32        .byte $32   ; 
- D 0 - I - 0x000F27 00:8F17: 32        .byte $32   ; 
- D 0 - I - 0x000F28 00:8F18: 36        .byte $36   ; 
- D 0 - I - 0x000F29 00:8F19: 3A        .byte $3A   ; 
- D 0 - I - 0x000F2A 00:8F1A: 3C        .byte $3C   ; 
- D 0 - I - 0x000F2B 00:8F1B: 85        .byte $85   ; 
- D 0 - I - 0x000F2C 00:8F1C: 40        .byte $40   ; 
- D 0 - I - 0x000F2D 00:8F1D: 81        .byte $81   ; 
- D 0 - I - 0x000F2E 00:8F1E: 08        .byte $08   ; 
- D 0 - I - 0x000F2F 00:8F1F: 40        .byte $40   ; 
- D 0 - I - 0x000F30 00:8F20: 82        .byte $82   ; 
- D 0 - I - 0x000F31 00:8F21: 40        .byte $40   ; 
- D 0 - I - 0x000F32 00:8F22: 06        .byte $06   ; 
- D 0 - I - 0x000F33 00:8F23: 44        .byte $44   ; 
- D 0 - I - 0x000F34 00:8F24: 00        .byte $00   ; 
- D 0 - I - 0x000F35 00:8F25: 81        .byte $81   ; 
- D 0 - I - 0x000F36 00:8F26: 22        .byte $22   ; 
- D 0 - I - 0x000F37 00:8F27: 08        .byte $08   ; 
- D 0 - I - 0x000F38 00:8F28: 82        .byte $82   ; 
- D 0 - I - 0x000F39 00:8F29: 22        .byte $22   ; 
- D 0 - I - 0x000F3A 00:8F2A: 22        .byte $22   ; 
- D 0 - I - 0x000F3B 00:8F2B: 1E        .byte $1E   ; 
- D 0 - I - 0x000F3C 00:8F2C: 81        .byte $81   ; 
- D 0 - I - 0x000F3D 00:8F2D: 22        .byte $22   ; 
- D 0 - I - 0x000F3E 00:8F2E: 80        .byte $80   ; 
- D 0 - I - 0x000F3F 00:8F2F: 08        .byte $08   ; 
- D 0 - I - 0x000F40 00:8F30: 22        .byte $22   ; 
- D 0 - I - 0x000F41 00:8F31: 22        .byte $22   ; 
- D 0 - I - 0x000F42 00:8F32: 24        .byte $24   ; 
- D 0 - I - 0x000F43 00:8F33: 28        .byte $28   ; 
- D 0 - I - 0x000F44 00:8F34: 2C        .byte $2C   ; 
- D 0 - I - 0x000F45 00:8F35: 81        .byte $81   ; 
- D 0 - I - 0x000F46 00:8F36: 2E        .byte $2E   ; 
- D 0 - I - 0x000F47 00:8F37: 80        .byte $80   ; 
- D 0 - I - 0x000F48 00:8F38: 08        .byte $08   ; 
- D 0 - I - 0x000F49 00:8F39: 32        .byte $32   ; 
- D 0 - I - 0x000F4A 00:8F3A: 32        .byte $32   ; 
- D 0 - I - 0x000F4B 00:8F3B: 36        .byte $36   ; 
- D 0 - I - 0x000F4C 00:8F3C: 3A        .byte $3A   ; 
- D 0 - I - 0x000F4D 00:8F3D: 3C        .byte $3C   ; 
- D 0 - I - 0x000F4E 00:8F3E: 83        .byte $83   ; 
- D 0 - I - 0x000F4F 00:8F3F: 40        .byte $40   ; 
- D 0 - I - 0x000F50 00:8F40: 82        .byte $82   ; 
- D 0 - I - 0x000F51 00:8F41: 2E        .byte $2E   ; 
- D 0 - I - 0x000F52 00:8F42: 32        .byte $32   ; 
- D 0 - I - 0x000F53 00:8F43: 36        .byte $36   ; 
- D 0 - I - 0x000F54 00:8F44: 83        .byte $83   ; 
- D 0 - I - 0x000F55 00:8F45: 1A        .byte $1A   ; 
- D 0 - I - 0x000F56 00:8F46: 82        .byte $82   ; 
- D 0 - I - 0x000F57 00:8F47: 1A        .byte $1A   ; 
- D 0 - I - 0x000F58 00:8F48: 1A        .byte $1A   ; 
- D 0 - I - 0x000F59 00:8F49: 16        .byte $16   ; 
- D 0 - I - 0x000F5A 00:8F4A: 83        .byte $83   ; 
- D 0 - I - 0x000F5B 00:8F4B: 1A        .byte $1A   ; 
- D 0 - I - 0x000F5C 00:8F4C: 1A        .byte $1A   ; 
- D 0 - I - 0x000F5D 00:8F4D: 16        .byte $16   ; 
- D 0 - I - 0x000F5E 00:8F4E: 82        .byte $82   ; 
- D 0 - I - 0x000F5F 00:8F4F: 16        .byte $16   ; 
- D 0 - I - 0x000F60 00:8F50: 16        .byte $16   ; 
- D 0 - I - 0x000F61 00:8F51: 12        .byte $12   ; 
- D 0 - I - 0x000F62 00:8F52: 83        .byte $83   ; 
- D 0 - I - 0x000F63 00:8F53: 16        .byte $16   ; 
- D 0 - I - 0x000F64 00:8F54: 16        .byte $16   ; 



_off000_8F55:
- D 0 - I - 0x000F65 00:8F55: 85        .byte $85   ; 
- D 0 - I - 0x000F66 00:8F56: 46        .byte $46   ; 
- D 0 - I - 0x000F67 00:8F57: 82        .byte $82   ; 
- D 0 - I - 0x000F68 00:8F58: 08        .byte $08   ; 
- D 0 - I - 0x000F69 00:8F59: 46        .byte $46   ; 
- D 0 - I - 0x000F6A 00:8F5A: 46        .byte $46   ; 
- D 0 - I - 0x000F6B 00:8F5B: 46        .byte $46   ; 
- D 0 - I - 0x000F6C 00:8F5C: 44        .byte $44   ; 
- D 0 - I - 0x000F6D 00:8F5D: 06        .byte $06   ; 
- D 0 - I - 0x000F6E 00:8F5E: 82        .byte $82   ; 
- D 0 - I - 0x000F6F 00:8F5F: 44        .byte $44   ; 
- D 0 - I - 0x000F70 00:8F60: 08        .byte $08   ; 
- D 0 - I - 0x000F71 00:8F61: 06        .byte $06   ; 
- D 0 - I - 0x000F72 00:8F62: 85        .byte $85   ; 
- D 0 - I - 0x000F73 00:8F63: 40        .byte $40   ; 
- D 0 - I - 0x000F74 00:8F64: 83        .byte $83   ; 
- D 0 - I - 0x000F75 00:8F65: 40        .byte $40   ; 
- D 0 - I - 0x000F76 00:8F66: 81        .byte $81   ; 
- D 0 - I - 0x000F77 00:8F67: 3C        .byte $3C   ; 
- D 0 - I - 0x000F78 00:8F68: 80        .byte $80   ; 
- D 0 - I - 0x000F79 00:8F69: 3C        .byte $3C   ; 
- D 0 - I - 0x000F7A 00:8F6A: 40        .byte $40   ; 
- D 0 - I - 0x000F7B 00:8F6B: 85        .byte $85   ; 
- D 0 - I - 0x000F7C 00:8F6C: 06        .byte $06   ; 
- D 0 - I - 0x000F7D 00:8F6D: 81        .byte $81   ; 
- D 0 - I - 0x000F7E 00:8F6E: 40        .byte $40   ; 
- D 0 - I - 0x000F7F 00:8F6F: 3C        .byte $3C   ; 
- D 0 - I - 0x000F80 00:8F70: 81        .byte $81   ; 
- D 0 - I - 0x000F81 00:8F71: 38        .byte $38   ; 
- D 0 - I - 0x000F82 00:8F72: 80        .byte $80   ; 
- D 0 - I - 0x000F83 00:8F73: 38        .byte $38   ; 
- D 0 - I - 0x000F84 00:8F74: 3C        .byte $3C   ; 
- D 0 - I - 0x000F85 00:8F75: 85        .byte $85   ; 
- D 0 - I - 0x000F86 00:8F76: 40        .byte $40   ; 
- D 0 - I - 0x000F87 00:8F77: 81        .byte $81   ; 
- D 0 - I - 0x000F88 00:8F78: 3C        .byte $3C   ; 
- D 0 - I - 0x000F89 00:8F79: 38        .byte $38   ; 
- D 0 - I - 0x000F8A 00:8F7A: 00        .byte $00   ; 
- D 0 - I - 0x000F8B 00:8F7B: 81        .byte $81   ; 
- D 0 - I - 0x000F8C 00:8F7C: 38        .byte $38   ; 
- D 0 - I - 0x000F8D 00:8F7D: 80        .byte $80   ; 
- D 0 - I - 0x000F8E 00:8F7E: 08        .byte $08   ; 
- D 0 - I - 0x000F8F 00:8F7F: 2A        .byte $2A   ; 
- D 0 - I - 0x000F90 00:8F80: 2A        .byte $2A   ; 
- D 0 - I - 0x000F91 00:8F81: 2E        .byte $2E   ; 
- D 0 - I - 0x000F92 00:8F82: 32        .byte $32   ; 
- D 0 - I - 0x000F93 00:8F83: 36        .byte $36   ; 
- D 0 - I - 0x000F94 00:8F84: 82        .byte $82   ; 
- D 0 - I - 0x000F95 00:8F85: 38        .byte $38   ; 
- D 0 - I - 0x000F96 00:8F86: 08        .byte $08   ; 
- D 0 - I - 0x000F97 00:8F87: 38        .byte $38   ; 
- D 0 - I - 0x000F98 00:8F88: 38        .byte $38   ; 
- D 0 - I - 0x000F99 00:8F89: 36        .byte $36   ; 
- D 0 - I - 0x000F9A 00:8F8A: 32        .byte $32   ; 
- D 0 - I - 0x000F9B 00:8F8B: 38        .byte $38   ; 
- D 0 - I - 0x000F9C 00:8F8C: 08        .byte $08   ; 
- D 0 - I - 0x000F9D 00:8F8D: 2E        .byte $2E   ; 
- D 0 - I - 0x000F9E 00:8F8E: 2E        .byte $2E   ; 
- D 0 - I - 0x000F9F 00:8F8F: 2E        .byte $2E   ; 
- D 0 - I - 0x000FA0 00:8F90: 2A        .byte $2A   ; 
- D 0 - I - 0x000FA1 00:8F91: 2E        .byte $2E   ; 
- D 0 - I - 0x000FA2 00:8F92: 08        .byte $08   ; 
- D 0 - I - 0x000FA3 00:8F93: 2E        .byte $2E   ; 
- D 0 - I - 0x000FA4 00:8F94: 2E        .byte $2E   ; 
- D 0 - I - 0x000FA5 00:8F95: 2A        .byte $2A   ; 
- D 0 - I - 0x000FA6 00:8F96: 2E        .byte $2E   ; 
- D 0 - I - 0x000FA7 00:8F97: 81        .byte $81   ; 
- D 0 - I - 0x000FA8 00:8F98: 2A        .byte $2A   ; 
- D 0 - I - 0x000FA9 00:8F99: 80        .byte $80   ; 
- D 0 - I - 0x000FAA 00:8F9A: 2A        .byte $2A   ; 
- D 0 - I - 0x000FAB 00:8F9B: 28        .byte $28   ; 
- D 0 - I - 0x000FAC 00:8F9C: 81        .byte $81   ; 
- D 0 - I - 0x000FAD 00:8F9D: 2A        .byte $2A   ; 
- D 0 - I - 0x000FAE 00:8F9E: 80        .byte $80   ; 
- D 0 - I - 0x000FAF 00:8F9F: 2A        .byte $2A   ; 
- D 0 - I - 0x000FB0 00:8FA0: 2E        .byte $2E   ; 
- D 0 - I - 0x000FB1 00:8FA1: 83        .byte $83   ; 
- D 0 - I - 0x000FB2 00:8FA2: 32        .byte $32   ; 
- D 0 - I - 0x000FB3 00:8FA3: 81        .byte $81   ; 
- D 0 - I - 0x000FB4 00:8FA4: 2E        .byte $2E   ; 
- D 0 - I - 0x000FB5 00:8FA5: 2A        .byte $2A   ; 
- D 0 - I - 0x000FB6 00:8FA6: 81        .byte $81   ; 
- D 0 - I - 0x000FB7 00:8FA7: 28        .byte $28   ; 
- D 0 - I - 0x000FB8 00:8FA8: 80        .byte $80   ; 
- D 0 - I - 0x000FB9 00:8FA9: 28        .byte $28   ; 
- D 0 - I - 0x000FBA 00:8FAA: 24        .byte $24   ; 
- D 0 - I - 0x000FBB 00:8FAB: 81        .byte $81   ; 
- D 0 - I - 0x000FBC 00:8FAC: 28        .byte $28   ; 
- D 0 - I - 0x000FBD 00:8FAD: 80        .byte $80   ; 
- D 0 - I - 0x000FBE 00:8FAE: 28        .byte $28   ; 
- D 0 - I - 0x000FBF 00:8FAF: 2A        .byte $2A   ; 
- D 0 - I - 0x000FC0 00:8FB0: 83        .byte $83   ; 
- D 0 - I - 0x000FC1 00:8FB1: 2E        .byte $2E   ; 
- D 0 - I - 0x000FC2 00:8FB2: 81        .byte $81   ; 
- D 0 - I - 0x000FC3 00:8FB3: 2A        .byte $2A   ; 
- D 0 - I - 0x000FC4 00:8FB4: 28        .byte $28   ; 
- D 0 - I - 0x000FC5 00:8FB5: 83        .byte $83   ; 
- D 0 - I - 0x000FC6 00:8FB6: 12        .byte $12   ; 
- D 0 - I - 0x000FC7 00:8FB7: 82        .byte $82   ; 
- D 0 - I - 0x000FC8 00:8FB8: 12        .byte $12   ; 
- D 0 - I - 0x000FC9 00:8FB9: 12        .byte $12   ; 
- D 0 - I - 0x000FCA 00:8FBA: 0E        .byte $0E   ; 
- D 0 - I - 0x000FCB 00:8FBB: 83        .byte $83   ; 
- D 0 - I - 0x000FCC 00:8FBC: 12        .byte $12   ; 
- D 0 - I - 0x000FCD 00:8FBD: 12        .byte $12   ; 
- D 0 - I - 0x000FCE 00:8FBE: 20        .byte $20   ; 
- D 0 - I - 0x000FCF 00:8FBF: 82        .byte $82   ; 
- D 0 - I - 0x000FD0 00:8FC0: 20        .byte $20   ; 
- D 0 - I - 0x000FD1 00:8FC1: 20        .byte $20   ; 
- D 0 - I - 0x000FD2 00:8FC2: 1E        .byte $1E   ; 
- D 0 - I - 0x000FD3 00:8FC3: 83        .byte $83   ; 
- D 0 - I - 0x000FD4 00:8FC4: 20        .byte $20   ; 
- D 0 - I - 0x000FD5 00:8FC5: 20        .byte $20   ; 
- D 0 - I - 0x000FD6 00:8FC6: 1C        .byte $1C   ; 
- D 0 - I - 0x000FD7 00:8FC7: 82        .byte $82   ; 
- D 0 - I - 0x000FD8 00:8FC8: 1C        .byte $1C   ; 
- D 0 - I - 0x000FD9 00:8FC9: 1C        .byte $1C   ; 
- D 0 - I - 0x000FDA 00:8FCA: 1A        .byte $1A   ; 
- D 0 - I - 0x000FDB 00:8FCB: 83        .byte $83   ; 
- D 0 - I - 0x000FDC 00:8FCC: 1C        .byte $1C   ; 
- D 0 - I - 0x000FDD 00:8FCD: 82        .byte $82   ; 
- D 0 - I - 0x000FDE 00:8FCE: 1C        .byte $1C   ; 
- D 0 - I - 0x000FDF 00:8FCF: 1C        .byte $1C   ; 
- D 0 - I - 0x000FE0 00:8FD0: 1C        .byte $1C   ; 
- D 0 - I - 0x000FE1 00:8FD1: 83        .byte $83   ; 
- D 0 - I - 0x000FE2 00:8FD2: 1A        .byte $1A   ; 
- D 0 - I - 0x000FE3 00:8FD3: 82        .byte $82   ; 
- D 0 - I - 0x000FE4 00:8FD4: 1A        .byte $1A   ; 
- D 0 - I - 0x000FE5 00:8FD5: 1A        .byte $1A   ; 
- D 0 - I - 0x000FE6 00:8FD6: 16        .byte $16   ; 
- D 0 - I - 0x000FE7 00:8FD7: 83        .byte $83   ; 
- D 0 - I - 0x000FE8 00:8FD8: 1A        .byte $1A   ; 
- D 0 - I - 0x000FE9 00:8FD9: 82        .byte $82   ; 
- D 0 - I - 0x000FEA 00:8FDA: 1A        .byte $1A   ; 
- D 0 - I - 0x000FEB 00:8FDB: 1A        .byte $1A   ; 
- D 0 - I - 0x000FEC 00:8FDC: 1A        .byte $1A   ; 
- D 0 - I - 0x000FED 00:8FDD: D0        .byte $D0   ; 
- D 0 - I - 0x000FEE 00:8FDE: 90        .byte $90   ; 
- D 0 - I - 0x000FEF 00:8FDF: 90        .byte $90   ; 
- D 0 - I - 0x000FF0 00:8FE0: 90        .byte $90   ; 
- D 0 - I - 0x000FF1 00:8FE1: D0        .byte $D0   ; 
- D 0 - I - 0x000FF2 00:8FE2: D0        .byte $D0   ; 
- D 0 - I - 0x000FF3 00:8FE3: 00        .byte $00   ; 



_off000_8FE4:
- D 0 - I - 0x000FF4 00:8FE4: 81        .byte $81   ; 
- D 0 - I - 0x000FF5 00:8FE5: 36        .byte $36   ; 
- D 0 - I - 0x000FF6 00:8FE6: 80        .byte $80   ; 
- D 0 - I - 0x000FF7 00:8FE7: 36        .byte $36   ; 
- D 0 - I - 0x000FF8 00:8FE8: 3A        .byte $3A   ; 
- D 0 - I - 0x000FF9 00:8FE9: 85        .byte $85   ; 
- D 0 - I - 0x000FFA 00:8FEA: 3E        .byte $3E   ; 
- D 0 - I - 0x000FFB 00:8FEB: 83        .byte $83   ; 
- D 0 - I - 0x000FFC 00:8FEC: 42        .byte $42   ; 
- D 0 - I - 0x000FFD 00:8FED: 80        .byte $80   ; 
- D 0 - I - 0x000FFE 00:8FEE: 40        .byte $40   ; 
- D 0 - I - 0x000FFF 00:8FEF: 08        .byte $08   ; 
- D 0 - I - 0x001000 00:8FF0: 28        .byte $28   ; 
- D 0 - I - 0x001001 00:8FF1: 28        .byte $28   ; 
- D 0 - I - 0x001002 00:8FF2: 28        .byte $28   ; 
- D 0 - I - 0x001003 00:8FF3: 08        .byte $08   ; 
- D 0 - I - 0x001004 00:8FF4: 28        .byte $28   ; 
- D 0 - I - 0x001005 00:8FF5: 28        .byte $28   ; 
- D 0 - I - 0x001006 00:8FF6: 28        .byte $28   ; 
- D 0 - I - 0x001007 00:8FF7: 08        .byte $08   ; 
- D 0 - I - 0x001008 00:8FF8: 28        .byte $28   ; 
- D 0 - I - 0x001009 00:8FF9: 28        .byte $28   ; 
- D 0 - I - 0x00100A 00:8FFA: 81        .byte $81   ; 
- D 0 - I - 0x00100B 00:8FFB: 28        .byte $28   ; 
- D 0 - I - 0x00100C 00:8FFC: 28        .byte $28   ; 
- D 0 - I - 0x00100D 00:8FFD: 00        .byte $00   ; 
- D 0 - I - 0x00100E 00:8FFE: 83        .byte $83   ; 
- D 0 - I - 0x00100F 00:8FFF: 26        .byte $26   ; 
- D 0 - I - 0x001010 00:9000: 81        .byte $81   ; 
- D 0 - I - 0x001011 00:9001: 26        .byte $26   ; 
- D 0 - I - 0x001012 00:9002: 80        .byte $80   ; 
- D 0 - I - 0x001013 00:9003: 26        .byte $26   ; 
- D 0 - I - 0x001014 00:9004: 28        .byte $28   ; 
- D 0 - I - 0x001015 00:9005: 81        .byte $81   ; 
- D 0 - I - 0x001016 00:9006: 2C        .byte $2C   ; 
- D 0 - I - 0x001017 00:9007: 80        .byte $80   ; 
- D 0 - I - 0x001018 00:9008: 2C        .byte $2C   ; 
- D 0 - I - 0x001019 00:9009: 30        .byte $30   ; 
- D 0 - I - 0x00101A 00:900A: 81        .byte $81   ; 
- D 0 - I - 0x00101B 00:900B: 32        .byte $32   ; 
- D 0 - I - 0x00101C 00:900C: 36        .byte $36   ; 
- D 0 - I - 0x00101D 00:900D: 81        .byte $81   ; 
- D 0 - I - 0x00101E 00:900E: 30        .byte $30   ; 
- D 0 - I - 0x00101F 00:900F: 80        .byte $80   ; 
- D 0 - I - 0x001020 00:9010: 18        .byte $18   ; 
- D 0 - I - 0x001021 00:9011: 18        .byte $18   ; 
- D 0 - I - 0x001022 00:9012: 81        .byte $81   ; 
- D 0 - I - 0x001023 00:9013: 18        .byte $18   ; 
- D 0 - I - 0x001024 00:9014: 80        .byte $80   ; 
- D 0 - I - 0x001025 00:9015: 18        .byte $18   ; 
- D 0 - I - 0x001026 00:9016: 18        .byte $18   ; 
- D 0 - I - 0x001027 00:9017: 81        .byte $81   ; 
- D 0 - I - 0x001028 00:9018: 18        .byte $18   ; 
- D 0 - I - 0x001029 00:9019: 80        .byte $80   ; 
- D 0 - I - 0x00102A 00:901A: 18        .byte $18   ; 
- D 0 - I - 0x00102B 00:901B: 18        .byte $18   ; 
- D 0 - I - 0x00102C 00:901C: 81        .byte $81   ; 
- D 0 - I - 0x00102D 00:901D: 18        .byte $18   ; 
- D 0 - I - 0x00102E 00:901E: 18        .byte $18   ; 
- D 0 - I - 0x00102F 00:901F: 83        .byte $83   ; 
- D 0 - I - 0x001030 00:9020: 1E        .byte $1E   ; 
- D 0 - I - 0x001031 00:9021: 82        .byte $82   ; 
- D 0 - I - 0x001032 00:9022: 1E        .byte $1E   ; 
- D 0 - I - 0x001033 00:9023: 1E        .byte $1E   ; 
- D 0 - I - 0x001034 00:9024: 1C        .byte $1C   ; 
- D 0 - I - 0x001035 00:9025: 83        .byte $83   ; 
- D 0 - I - 0x001036 00:9026: 1E        .byte $1E   ; 
- D 0 - I - 0x001037 00:9027: 82        .byte $82   ; 
- D 0 - I - 0x001038 00:9028: 1E        .byte $1E   ; 
- D 0 - I - 0x001039 00:9029: 1E        .byte $1E   ; 
- D 0 - I - 0x00103A 00:902A: 1E        .byte $1E   ; 
- D 0 - I - 0x00103B 00:902B: 83        .byte $83   ; 
- D 0 - I - 0x00103C 00:902C: 10        .byte $10   ; 
- D 0 - I - 0x00103D 00:902D: 10        .byte $10   ; 
- D 0 - I - 0x00103E 00:902E: 10        .byte $10   ; 
- D 0 - I - 0x00103F 00:902F: 81        .byte $81   ; 
- D 0 - I - 0x001040 00:9030: 14        .byte $14   ; 
- D 0 - I - 0x001041 00:9031: 18        .byte $18   ; 



_off000_9032:
- D 0 - I - 0x001042 00:9032: 86        .byte $86   ; 
- D 0 - I - 0x001043 00:9033: 46        .byte $46   ; 
- D 0 - I - 0x001044 00:9034: 83        .byte $83   ; 
- D 0 - I - 0x001045 00:9035: 4E        .byte $4E   ; 
- D 0 - I - 0x001046 00:9036: 81        .byte $81   ; 
- D 0 - I - 0x001047 00:9037: 02        .byte $02   ; 
- D 0 - I - 0x001048 00:9038: 08        .byte $08   ; 
- D 0 - I - 0x001049 00:9039: 85        .byte $85   ; 
- D 0 - I - 0x00104A 00:903A: 48        .byte $48   ; 
- D 0 - I - 0x00104B 00:903B: 83        .byte $83   ; 
- D 0 - I - 0x00104C 00:903C: 40        .byte $40   ; 
- D 0 - I - 0x00104D 00:903D: 86        .byte $86   ; 
- D 0 - I - 0x00104E 00:903E: 06        .byte $06   ; 
- D 0 - I - 0x00104F 00:903F: 83        .byte $83   ; 
- D 0 - I - 0x001050 00:9040: 46        .byte $46   ; 
- D 0 - I - 0x001051 00:9041: 81        .byte $81   ; 
- D 0 - I - 0x001052 00:9042: 48        .byte $48   ; 
- D 0 - I - 0x001053 00:9043: 08        .byte $08   ; 
- D 0 - I - 0x001054 00:9044: 85        .byte $85   ; 
- D 0 - I - 0x001055 00:9045: 40        .byte $40   ; 
- D 0 - I - 0x001056 00:9046: 83        .byte $83   ; 
- D 0 - I - 0x001057 00:9047: 40        .byte $40   ; 
- D 0 - I - 0x001058 00:9048: 86        .byte $86   ; 
- D 0 - I - 0x001059 00:9049: 06        .byte $06   ; 
- D 0 - I - 0x00105A 00:904A: 83        .byte $83   ; 
- D 0 - I - 0x00105B 00:904B: 46        .byte $46   ; 
- D 0 - I - 0x00105C 00:904C: 81        .byte $81   ; 
- D 0 - I - 0x00105D 00:904D: 48        .byte $48   ; 
- D 0 - I - 0x00105E 00:904E: 08        .byte $08   ; 
- D 0 - I - 0x00105F 00:904F: 85        .byte $85   ; 
- D 0 - I - 0x001060 00:9050: 40        .byte $40   ; 
- D 0 - I - 0x001061 00:9051: 83        .byte $83   ; 
- D 0 - I - 0x001062 00:9052: 3A        .byte $3A   ; 
- D 0 - I - 0x001063 00:9053: 86        .byte $86   ; 
- D 0 - I - 0x001064 00:9054: 3C        .byte $3C   ; 
- D 0 - I - 0x001065 00:9055: 83        .byte $83   ; 
- D 0 - I - 0x001066 00:9056: 06        .byte $06   ; 
- D 0 - I - 0x001067 00:9057: 81        .byte $81   ; 
- D 0 - I - 0x001068 00:9058: 40        .byte $40   ; 
- D 0 - I - 0x001069 00:9059: 08        .byte $08   ; 
- D 0 - I - 0x00106A 00:905A: 85        .byte $85   ; 
- D 0 - I - 0x00106B 00:905B: 38        .byte $38   ; 
- D 0 - I - 0x00106C 00:905C: 83        .byte $83   ; 
- D 0 - I - 0x00106D 00:905D: 32        .byte $32   ; 
- D 0 - I - 0x00106E 00:905E: 00        .byte $00   ; 
- D 0 - I - 0x00106F 00:905F: 86        .byte $86   ; 
- D 0 - I - 0x001070 00:9060: 38        .byte $38   ; 
- D 0 - I - 0x001071 00:9061: 83        .byte $83   ; 
- D 0 - I - 0x001072 00:9062: 3E        .byte $3E   ; 
- D 0 - I - 0x001073 00:9063: 81        .byte $81   ; 
- D 0 - I - 0x001074 00:9064: 3C        .byte $3C   ; 
- D 0 - I - 0x001075 00:9065: 08        .byte $08   ; 
- D 0 - I - 0x001076 00:9066: 85        .byte $85   ; 
- D 0 - I - 0x001077 00:9067: 36        .byte $36   ; 
- D 0 - I - 0x001078 00:9068: 83        .byte $83   ; 
- D 0 - I - 0x001079 00:9069: 30        .byte $30   ; 
- D 0 - I - 0x00107A 00:906A: 86        .byte $86   ; 
- D 0 - I - 0x00107B 00:906B: 34        .byte $34   ; 
- D 0 - I - 0x00107C 00:906C: 83        .byte $83   ; 
- D 0 - I - 0x00107D 00:906D: 38        .byte $38   ; 
- D 0 - I - 0x00107E 00:906E: 81        .byte $81   ; 
- D 0 - I - 0x00107F 00:906F: 36        .byte $36   ; 
- D 0 - I - 0x001080 00:9070: 08        .byte $08   ; 
- D 0 - I - 0x001081 00:9071: 85        .byte $85   ; 
- D 0 - I - 0x001082 00:9072: 30        .byte $30   ; 
- D 0 - I - 0x001083 00:9073: 83        .byte $83   ; 
- D 0 - I - 0x001084 00:9074: 30        .byte $30   ; 
- D 0 - I - 0x001085 00:9075: 86        .byte $86   ; 
- D 0 - I - 0x001086 00:9076: 34        .byte $34   ; 
- D 0 - I - 0x001087 00:9077: 83        .byte $83   ; 
- D 0 - I - 0x001088 00:9078: 38        .byte $38   ; 
- D 0 - I - 0x001089 00:9079: 81        .byte $81   ; 
- D 0 - I - 0x00108A 00:907A: 36        .byte $36   ; 
- D 0 - I - 0x00108B 00:907B: 08        .byte $08   ; 
- D 0 - I - 0x00108C 00:907C: 85        .byte $85   ; 
- D 0 - I - 0x00108D 00:907D: 30        .byte $30   ; 
- D 0 - I - 0x00108E 00:907E: 83        .byte $83   ; 
- D 0 - I - 0x00108F 00:907F: 30        .byte $30   ; 
- D 0 - I - 0x001090 00:9080: 86        .byte $86   ; 
- D 0 - I - 0x001091 00:9081: 2A        .byte $2A   ; 
- D 0 - I - 0x001092 00:9082: 83        .byte $83   ; 
- D 0 - I - 0x001093 00:9083: 34        .byte $34   ; 
- D 0 - I - 0x001094 00:9084: 81        .byte $81   ; 
- D 0 - I - 0x001095 00:9085: 32        .byte $32   ; 
- D 0 - I - 0x001096 00:9086: 08        .byte $08   ; 
- D 0 - I - 0x001097 00:9087: 85        .byte $85   ; 
- D 0 - I - 0x001098 00:9088: 28        .byte $28   ; 
- D 0 - I - 0x001099 00:9089: 83        .byte $83   ; 
- D 0 - I - 0x00109A 00:908A: 20        .byte $20   ; 
- D 0 - I - 0x00109B 00:908B: 83        .byte $83   ; 
- D 0 - I - 0x00109C 00:908C: 12        .byte $12   ; 
- D 0 - I - 0x00109D 00:908D: 82        .byte $82   ; 
- D 0 - I - 0x00109E 00:908E: 12        .byte $12   ; 
- D 0 - I - 0x00109F 00:908F: 12        .byte $12   ; 
- D 0 - I - 0x0010A0 00:9090: 0E        .byte $0E   ; 
- D 0 - I - 0x0010A1 00:9091: 83        .byte $83   ; 
- D 0 - I - 0x0010A2 00:9092: 12        .byte $12   ; 
- D 0 - I - 0x0010A3 00:9093: 12        .byte $12   ; 
- D 0 - I - 0x0010A4 00:9094: 10        .byte $10   ; 
- D 0 - I - 0x0010A5 00:9095: 82        .byte $82   ; 
- D 0 - I - 0x0010A6 00:9096: 10        .byte $10   ; 
- D 0 - I - 0x0010A7 00:9097: 10        .byte $10   ; 
- D 0 - I - 0x0010A8 00:9098: 0C        .byte $0C   ; 
- D 0 - I - 0x0010A9 00:9099: 83        .byte $83   ; 
- D 0 - I - 0x0010AA 00:909A: 10        .byte $10   ; 
- D 0 - I - 0x0010AB 00:909B: 10        .byte $10   ; 
- D 0 - I - 0x0010AC 00:909C: 82        .byte $82   ; 
- D 0 - I - 0x0010AD 00:909D: 0E        .byte $0E   ; 
- D 0 - I - 0x0010AE 00:909E: 1A        .byte $1A   ; 
- D 0 - I - 0x0010AF 00:909F: 20        .byte $20   ; 
- D 0 - I - 0x0010B0 00:90A0: 26        .byte $26   ; 
- D 0 - I - 0x0010B1 00:90A1: 32        .byte $32   ; 
- D 0 - I - 0x0010B2 00:90A2: 38        .byte $38   ; 
- D 0 - I - 0x0010B3 00:90A3: 85        .byte $85   ; 
- D 0 - I - 0x0010B4 00:90A4: 3E        .byte $3E   ; 
- D 0 - I - 0x0010B5 00:90A5: 83        .byte $83   ; 
- D 0 - I - 0x0010B6 00:90A6: 40        .byte $40   ; 
- D 0 - I - 0x0010B7 00:90A7: 82        .byte $82   ; 
- D 0 - I - 0x0010B8 00:90A8: 10        .byte $10   ; 
- D 0 - I - 0x0010B9 00:90A9: 10        .byte $10   ; 
- D 0 - I - 0x0010BA 00:90AA: 10        .byte $10   ; 
- D 0 - I - 0x0010BB 00:90AB: 85        .byte $85   ; 
- D 0 - I - 0x0010BC 00:90AC: 10        .byte $10   ; 
- D 0 - I - 0x0010BD 00:90AD: 82        .byte $82   ; 
- D 0 - I - 0x0010BE 00:90AE: 0E        .byte $0E   ; 
- D 0 - I - 0x0010BF 00:90AF: 1A        .byte $1A   ; 
- D 0 - I - 0x0010C0 00:90B0: 20        .byte $20   ; 
- D 0 - I - 0x0010C1 00:90B1: 26        .byte $26   ; 
- D 0 - I - 0x0010C2 00:90B2: 32        .byte $32   ; 
- D 0 - I - 0x0010C3 00:90B3: 38        .byte $38   ; 
- D 0 - I - 0x0010C4 00:90B4: 85        .byte $85   ; 
- D 0 - I - 0x0010C5 00:90B5: 3E        .byte $3E   ; 
- D 0 - I - 0x0010C6 00:90B6: 83        .byte $83   ; 
- D 0 - I - 0x0010C7 00:90B7: 40        .byte $40   ; 
- D 0 - I - 0x0010C8 00:90B8: 82        .byte $82   ; 
- D 0 - I - 0x0010C9 00:90B9: 10        .byte $10   ; 
- D 0 - I - 0x0010CA 00:90BA: 10        .byte $10   ; 
- D 0 - I - 0x0010CB 00:90BB: 10        .byte $10   ; 
- D 0 - I - 0x0010CC 00:90BC: 85        .byte $85   ; 
- D 0 - I - 0x0010CD 00:90BD: 10        .byte $10   ; 
- D 0 - I - 0x0010CE 00:90BE: 83        .byte $83   ; 
- D 0 - I - 0x0010CF 00:90BF: 1C        .byte $1C   ; 
- D 0 - I - 0x0010D0 00:90C0: 82        .byte $82   ; 
- D 0 - I - 0x0010D1 00:90C1: 1C        .byte $1C   ; 
- D 0 - I - 0x0010D2 00:90C2: 1C        .byte $1C   ; 
- D 0 - I - 0x0010D3 00:90C3: 1A        .byte $1A   ; 
- D 0 - I - 0x0010D4 00:90C4: 83        .byte $83   ; 
- D 0 - I - 0x0010D5 00:90C5: 1C        .byte $1C   ; 
- D 0 - I - 0x0010D6 00:90C6: 82        .byte $82   ; 
- D 0 - I - 0x0010D7 00:90C7: 1C        .byte $1C   ; 
- D 0 - I - 0x0010D8 00:90C8: 1C        .byte $1C   ; 
- D 0 - I - 0x0010D9 00:90C9: 1C        .byte $1C   ; 
- D 0 - I - 0x0010DA 00:90CA: 83        .byte $83   ; 
- D 0 - I - 0x0010DB 00:90CB: 1A        .byte $1A   ; 
- D 0 - I - 0x0010DC 00:90CC: 82        .byte $82   ; 
- D 0 - I - 0x0010DD 00:90CD: 1A        .byte $1A   ; 
- D 0 - I - 0x0010DE 00:90CE: 1A        .byte $1A   ; 
- D 0 - I - 0x0010DF 00:90CF: 16        .byte $16   ; 
- D 0 - I - 0x0010E0 00:90D0: 83        .byte $83   ; 
- D 0 - I - 0x0010E1 00:90D1: 1A        .byte $1A   ; 
- D 0 - I - 0x0010E2 00:90D2: 82        .byte $82   ; 
- D 0 - I - 0x0010E3 00:90D3: 1A        .byte $1A   ; 
- D 0 - I - 0x0010E4 00:90D4: 1A        .byte $1A   ; 
- D 0 - I - 0x0010E5 00:90D5: 1A        .byte $1A   ; 
- D 0 - I - 0x0010E6 00:90D6: D0        .byte $D0   ; 
- D 0 - I - 0x0010E7 00:90D7: 90        .byte $90   ; 
- D 0 - I - 0x0010E8 00:90D8: 90        .byte $90   ; 
- D 0 - I - 0x0010E9 00:90D9: 90        .byte $90   ; 
- D 0 - I - 0x0010EA 00:90DA: D0        .byte $D0   ; 
- D 0 - I - 0x0010EB 00:90DB: D0        .byte $D0   ; 
- D 0 - I - 0x0010EC 00:90DC: 00        .byte $00   ; 



_off000_90DD:
- D 0 - I - 0x0010ED 00:90DD: 83        .byte $83   ; 
- D 0 - I - 0x0010EE 00:90DE: 2C        .byte $2C   ; 
- D 0 - I - 0x0010EF 00:90DF: 3A        .byte $3A   ; 
- D 0 - I - 0x0010F0 00:90E0: 2C        .byte $2C   ; 
- D 0 - I - 0x0010F1 00:90E1: 3A        .byte $3A   ; 
- D 0 - I - 0x0010F2 00:90E2: 2C        .byte $2C   ; 
- D 0 - I - 0x0010F3 00:90E3: 3A        .byte $3A   ; 
- D 0 - I - 0x0010F4 00:90E4: 2C        .byte $2C   ; 
- D 0 - I - 0x0010F5 00:90E5: 3A        .byte $3A   ; 
- D 0 - I - 0x0010F6 00:90E6: 2A        .byte $2A   ; 
- D 0 - I - 0x0010F7 00:90E7: 3A        .byte $3A   ; 
- D 0 - I - 0x0010F8 00:90E8: 2A        .byte $2A   ; 
- D 0 - I - 0x0010F9 00:90E9: 3A        .byte $3A   ; 
- D 0 - I - 0x0010FA 00:90EA: 2A        .byte $2A   ; 
- D 0 - I - 0x0010FB 00:90EB: 3A        .byte $3A   ; 
- D 0 - I - 0x0010FC 00:90EC: 2A        .byte $2A   ; 
- D 0 - I - 0x0010FD 00:90ED: 3A        .byte $3A   ; 
- D 0 - I - 0x0010FE 00:90EE: 28        .byte $28   ; 
- D 0 - I - 0x0010FF 00:90EF: 3A        .byte $3A   ; 
- D 0 - I - 0x001100 00:90F0: 28        .byte $28   ; 
- D 0 - I - 0x001101 00:90F1: 3A        .byte $3A   ; 
- D 0 - I - 0x001102 00:90F2: 28        .byte $28   ; 
- D 0 - I - 0x001103 00:90F3: 3A        .byte $3A   ; 
- D 0 - I - 0x001104 00:90F4: 28        .byte $28   ; 
- D 0 - I - 0x001105 00:90F5: 3A        .byte $3A   ; 
- D 0 - I - 0x001106 00:90F6: 26        .byte $26   ; 
- D 0 - I - 0x001107 00:90F7: 3A        .byte $3A   ; 
- D 0 - I - 0x001108 00:90F8: 26        .byte $26   ; 
- D 0 - I - 0x001109 00:90F9: 3A        .byte $3A   ; 
- D 0 - I - 0x00110A 00:90FA: 26        .byte $26   ; 
- D 0 - I - 0x00110B 00:90FB: 3A        .byte $3A   ; 
- D 0 - I - 0x00110C 00:90FC: 26        .byte $26   ; 
- D 0 - I - 0x00110D 00:90FD: 3A        .byte $3A   ; 
- D 0 - I - 0x00110E 00:90FE: 00        .byte $00   ; 
- D 0 - I - 0x00110F 00:90FF: 81        .byte $81   ; 
- D 0 - I - 0x001110 00:9100: 08        .byte $08   ; 
- D 0 - I - 0x001111 00:9101: 83        .byte $83   ; 
- D 0 - I - 0x001112 00:9102: 32        .byte $32   ; 
- D 0 - I - 0x001113 00:9103: 3C        .byte $3C   ; 
- D 0 - I - 0x001114 00:9104: 32        .byte $32   ; 
- D 0 - I - 0x001115 00:9105: 3C        .byte $3C   ; 
- D 0 - I - 0x001116 00:9106: 32        .byte $32   ; 
- D 0 - I - 0x001117 00:9107: 3C        .byte $3C   ; 
- D 0 - I - 0x001118 00:9108: 32        .byte $32   ; 
- D 0 - I - 0x001119 00:9109: 3C        .byte $3C   ; 
- D 0 - I - 0x00111A 00:910A: 30        .byte $30   ; 
- D 0 - I - 0x00111B 00:910B: 3C        .byte $3C   ; 
- D 0 - I - 0x00111C 00:910C: 30        .byte $30   ; 
- D 0 - I - 0x00111D 00:910D: 3C        .byte $3C   ; 
- D 0 - I - 0x00111E 00:910E: 30        .byte $30   ; 
- D 0 - I - 0x00111F 00:910F: 3C        .byte $3C   ; 
- D 0 - I - 0x001120 00:9110: 30        .byte $30   ; 
- D 0 - I - 0x001121 00:9111: 3C        .byte $3C   ; 
- D 0 - I - 0x001122 00:9112: 2E        .byte $2E   ; 
- D 0 - I - 0x001123 00:9113: 3C        .byte $3C   ; 
- D 0 - I - 0x001124 00:9114: 2E        .byte $2E   ; 
- D 0 - I - 0x001125 00:9115: 3C        .byte $3C   ; 
- D 0 - I - 0x001126 00:9116: 2E        .byte $2E   ; 
- D 0 - I - 0x001127 00:9117: 3C        .byte $3C   ; 
- D 0 - I - 0x001128 00:9118: 2E        .byte $2E   ; 
- D 0 - I - 0x001129 00:9119: 3C        .byte $3C   ; 
- D 0 - I - 0x00112A 00:911A: 2C        .byte $2C   ; 
- D 0 - I - 0x00112B 00:911B: 3C        .byte $3C   ; 
- D 0 - I - 0x00112C 00:911C: 2C        .byte $2C   ; 
- D 0 - I - 0x00112D 00:911D: 3C        .byte $3C   ; 
- D 0 - I - 0x00112E 00:911E: 2C        .byte $2C   ; 
- D 0 - I - 0x00112F 00:911F: 3C        .byte $3C   ; 
- D 0 - I - 0x001130 00:9120: 2C        .byte $2C   ; 
- D 0 - I - 0x001131 00:9121: 3C        .byte $3C   ; 
- D 0 - I - 0x001132 00:9122: 85        .byte $85   ; 
- D 0 - I - 0x001133 00:9123: 2C        .byte $2C   ; 
- D 0 - I - 0x001134 00:9124: 08        .byte $08   ; 
- D 0 - I - 0x001135 00:9125: 32        .byte $32   ; 
- D 0 - I - 0x001136 00:9126: 3A        .byte $3A   ; 
- D 0 - I - 0x001137 00:9127: 38        .byte $38   ; 
- D 0 - I - 0x001138 00:9128: 2A        .byte $2A   ; 
- D 0 - I - 0x001139 00:9129: 08        .byte $08   ; 
- D 0 - I - 0x00113A 00:912A: 08        .byte $08   ; 
- D 0 - I - 0x00113B 00:912B: 28        .byte $28   ; 
- D 0 - I - 0x00113C 00:912C: 08        .byte $08   ; 
- D 0 - I - 0x00113D 00:912D: 83        .byte $83   ; 
- D 0 - I - 0x00113E 00:912E: 28        .byte $28   ; 
- D 0 - I - 0x00113F 00:912F: 81        .byte $81   ; 
- D 0 - I - 0x001140 00:9130: 08        .byte $08   ; 
- D 0 - I - 0x001141 00:9131: 2E        .byte $2E   ; 
- D 0 - I - 0x001142 00:9132: 83        .byte $83   ; 
- D 0 - I - 0x001143 00:9133: 08        .byte $08   ; 
- D 0 - I - 0x001144 00:9134: 38        .byte $38   ; 
- D 0 - I - 0x001145 00:9135: 85        .byte $85   ; 
- D 0 - I - 0x001146 00:9136: 36        .byte $36   ; 
- D 0 - I - 0x001147 00:9137: 26        .byte $26   ; 
- D 0 - I - 0x001148 00:9138: 08        .byte $08   ; 
- D 0 - I - 0x001149 00:9139: 08        .byte $08   ; 



_off000_913A:
- D 0 - I - 0x00114A 00:913A: 83        .byte $83   ; 
- D 0 - I - 0x00114B 00:913B: 24        .byte $24   ; 
- D 0 - I - 0x00114C 00:913C: 36        .byte $36   ; 
- D 0 - I - 0x00114D 00:913D: 24        .byte $24   ; 
- D 0 - I - 0x00114E 00:913E: 36        .byte $36   ; 
- D 0 - I - 0x00114F 00:913F: 24        .byte $24   ; 
- D 0 - I - 0x001150 00:9140: 36        .byte $36   ; 
- D 0 - I - 0x001151 00:9141: 24        .byte $24   ; 
- D 0 - I - 0x001152 00:9142: 36        .byte $36   ; 
- D 0 - I - 0x001153 00:9143: 22        .byte $22   ; 
- D 0 - I - 0x001154 00:9144: 36        .byte $36   ; 
- D 0 - I - 0x001155 00:9145: 22        .byte $22   ; 
- D 0 - I - 0x001156 00:9146: 36        .byte $36   ; 
- D 0 - I - 0x001157 00:9147: 22        .byte $22   ; 
- D 0 - I - 0x001158 00:9148: 36        .byte $36   ; 
- D 0 - I - 0x001159 00:9149: 22        .byte $22   ; 
- D 0 - I - 0x00115A 00:914A: 36        .byte $36   ; 
- D 0 - I - 0x00115B 00:914B: 1E        .byte $1E   ; 
- D 0 - I - 0x00115C 00:914C: 30        .byte $30   ; 
- D 0 - I - 0x00115D 00:914D: 2A        .byte $2A   ; 
- D 0 - I - 0x00115E 00:914E: 36        .byte $36   ; 
- D 0 - I - 0x00115F 00:914F: 30        .byte $30   ; 
- D 0 - I - 0x001160 00:9150: 3C        .byte $3C   ; 
- D 0 - I - 0x001161 00:9151: 3C        .byte $3C   ; 
- D 0 - I - 0x001162 00:9152: 3C        .byte $3C   ; 
- D 0 - I - 0x001163 00:9153: 48        .byte $48   ; 
- D 0 - I - 0x001164 00:9154: 48        .byte $48   ; 
- D 0 - I - 0x001165 00:9155: 00        .byte $00   ; 
- D 0 - I - 0x001166 00:9156: 81        .byte $81   ; 
- D 0 - I - 0x001167 00:9157: 08        .byte $08   ; 
- D 0 - I - 0x001168 00:9158: 83        .byte $83   ; 
- D 0 - I - 0x001169 00:9159: 2C        .byte $2C   ; 
- D 0 - I - 0x00116A 00:915A: 3A        .byte $3A   ; 
- D 0 - I - 0x00116B 00:915B: 2C        .byte $2C   ; 
- D 0 - I - 0x00116C 00:915C: 3A        .byte $3A   ; 
- D 0 - I - 0x00116D 00:915D: 2C        .byte $2C   ; 
- D 0 - I - 0x00116E 00:915E: 3A        .byte $3A   ; 
- D 0 - I - 0x00116F 00:915F: 2C        .byte $2C   ; 
- D 0 - I - 0x001170 00:9160: 3A        .byte $3A   ; 
- D 0 - I - 0x001171 00:9161: 2C        .byte $2C   ; 
- D 0 - I - 0x001172 00:9162: 3A        .byte $3A   ; 
- D 0 - I - 0x001173 00:9163: 2C        .byte $2C   ; 
- D 0 - I - 0x001174 00:9164: 3A        .byte $3A   ; 
- D 0 - I - 0x001175 00:9165: 2C        .byte $2C   ; 
- D 0 - I - 0x001176 00:9166: 3A        .byte $3A   ; 
- D 0 - I - 0x001177 00:9167: 2C        .byte $2C   ; 
- D 0 - I - 0x001178 00:9168: 3A        .byte $3A   ; 
- D 0 - I - 0x001179 00:9169: 2A        .byte $2A   ; 
- D 0 - I - 0x00117A 00:916A: 36        .byte $36   ; 
- D 0 - I - 0x00117B 00:916B: 30        .byte $30   ; 
- D 0 - I - 0x00117C 00:916C: 3C        .byte $3C   ; 
- D 0 - I - 0x00117D 00:916D: 36        .byte $36   ; 
- D 0 - I - 0x00117E 00:916E: 36        .byte $36   ; 
- D 0 - I - 0x00117F 00:916F: 06        .byte $06   ; 
- D 0 - I - 0x001180 00:9170: 06        .byte $06   ; 
- D 0 - I - 0x001181 00:9171: 06        .byte $06   ; 
- D 0 - I - 0x001182 00:9172: 02        .byte $02   ; 
- D 0 - I - 0x001183 00:9173: 81        .byte $81   ; 
- D 0 - I - 0x001184 00:9174: 24        .byte $24   ; 
- D 0 - I - 0x001185 00:9175: 22        .byte $22   ; 
- D 0 - I - 0x001186 00:9176: 85        .byte $85   ; 
- D 0 - I - 0x001187 00:9177: 24        .byte $24   ; 
- D 0 - I - 0x001188 00:9178: 83        .byte $83   ; 
- D 0 - I - 0x001189 00:9179: 08        .byte $08   ; 
- D 0 - I - 0x00118A 00:917A: 2C        .byte $2C   ; 
- D 0 - I - 0x00118B 00:917B: 81        .byte $81   ; 
- D 0 - I - 0x00118C 00:917C: 08        .byte $08   ; 
- D 0 - I - 0x00118D 00:917D: 3C        .byte $3C   ; 
- D 0 - I - 0x00118E 00:917E: 83        .byte $83   ; 
- D 0 - I - 0x00118F 00:917F: 08        .byte $08   ; 
- D 0 - I - 0x001190 00:9180: 3A        .byte $3A   ; 
- D 0 - I - 0x001191 00:9181: 81        .byte $81   ; 
- D 0 - I - 0x001192 00:9182: 22        .byte $22   ; 
- D 0 - I - 0x001193 00:9183: 20        .byte $20   ; 
- D 0 - I - 0x001194 00:9184: 85        .byte $85   ; 
- D 0 - I - 0x001195 00:9185: 22        .byte $22   ; 
- D 0 - I - 0x001196 00:9186: 83        .byte $83   ; 
- D 0 - I - 0x001197 00:9187: 08        .byte $08   ; 
- D 0 - I - 0x001198 00:9188: 2C        .byte $2C   ; 
- D 0 - I - 0x001199 00:9189: 81        .byte $81   ; 
- D 0 - I - 0x00119A 00:918A: 08        .byte $08   ; 
- D 0 - I - 0x00119B 00:918B: 3A        .byte $3A   ; 
- D 0 - I - 0x00119C 00:918C: 83        .byte $83   ; 
- D 0 - I - 0x00119D 00:918D: 08        .byte $08   ; 
- D 0 - I - 0x00119E 00:918E: 38        .byte $38   ; 
- D 0 - I - 0x00119F 00:918F: 81        .byte $81   ; 
- D 0 - I - 0x0011A0 00:9190: 22        .byte $22   ; 
- D 0 - I - 0x0011A1 00:9191: 2A        .byte $2A   ; 
- D 0 - I - 0x0011A2 00:9192: 30        .byte $30   ; 
- D 0 - I - 0x0011A3 00:9193: 2A        .byte $2A   ; 
- D 0 - I - 0x0011A4 00:9194: 30        .byte $30   ; 
- D 0 - I - 0x0011A5 00:9195: 36        .byte $36   ; 
- D 0 - I - 0x0011A6 00:9196: 30        .byte $30   ; 
- D 0 - I - 0x0011A7 00:9197: 36        .byte $36   ; 
- D 0 - I - 0x0011A8 00:9198: 3C        .byte $3C   ; 
- D 0 - I - 0x0011A9 00:9199: 36        .byte $36   ; 
- D 0 - I - 0x0011AA 00:919A: 3C        .byte $3C   ; 
- D 0 - I - 0x0011AB 00:919B: 06        .byte $06   ; 
- D 0 - I - 0x0011AC 00:919C: 48        .byte $48   ; 
- D 0 - I - 0x0011AD 00:919D: 06        .byte $06   ; 
- D 0 - I - 0x0011AE 00:919E: 3C        .byte $3C   ; 
- D 0 - I - 0x0011AF 00:919F: 36        .byte $36   ; 
- D 0 - I - 0x0011B0 00:91A0: 3C        .byte $3C   ; 
- D 0 - I - 0x0011B1 00:91A1: 36        .byte $36   ; 
- D 0 - I - 0x0011B2 00:91A2: 30        .byte $30   ; 
- D 0 - I - 0x0011B3 00:91A3: 2A        .byte $2A   ; 



_off000_91A4:
- D 0 - I - 0x0011B4 00:91A4: 82        .byte $82   ; 
- D 0 - I - 0x0011B5 00:91A5: 22        .byte $22   ; 
- D 0 - I - 0x0011B6 00:91A6: 22        .byte $22   ; 
- D 0 - I - 0x0011B7 00:91A7: 22        .byte $22   ; 
- D 0 - I - 0x0011B8 00:91A8: 86        .byte $86   ; 
- D 0 - I - 0x0011B9 00:91A9: 2C        .byte $2C   ; 
- D 0 - I - 0x0011BA 00:91AA: 80        .byte $80   ; 
- D 0 - I - 0x0011BB 00:91AB: 2C        .byte $2C   ; 
- D 0 - I - 0x0011BC 00:91AC: 30        .byte $30   ; 
- D 0 - I - 0x0011BD 00:91AD: 34        .byte $34   ; 
- D 0 - I - 0x0011BE 00:91AE: 36        .byte $36   ; 
- D 0 - I - 0x0011BF 00:91AF: 86        .byte $86   ; 
- D 0 - I - 0x0011C0 00:91B0: 3A        .byte $3A   ; 
- D 0 - I - 0x0011C1 00:91B1: 82        .byte $82   ; 
- D 0 - I - 0x0011C2 00:91B2: 3A        .byte $3A   ; 
- D 0 - I - 0x0011C3 00:91B3: 3A        .byte $3A   ; 
- D 0 - I - 0x0011C4 00:91B4: 3A        .byte $3A   ; 
- D 0 - I - 0x0011C5 00:91B5: 86        .byte $86   ; 
- D 0 - I - 0x0011C6 00:91B6: 42        .byte $42   ; 
- D 0 - I - 0x0011C7 00:91B7: 80        .byte $80   ; 
- D 0 - I - 0x0011C8 00:91B8: 42        .byte $42   ; 
- D 0 - I - 0x0011C9 00:91B9: 48        .byte $48   ; 
- D 0 - I - 0x0011CA 00:91BA: 4A        .byte $4A   ; 
- D 0 - I - 0x0011CB 00:91BB: 02        .byte $02   ; 
- D 0 - I - 0x0011CC 00:91BC: 86        .byte $86   ; 
- D 0 - I - 0x0011CD 00:91BD: 50        .byte $50   ; 
- D 0 - I - 0x0011CE 00:91BE: 80        .byte $80   ; 
- D 0 - I - 0x0011CF 00:91BF: 22        .byte $22   ; 
- D 0 - I - 0x0011D0 00:91C0: 22        .byte $22   ; 
- D 0 - I - 0x0011D1 00:91C1: 08        .byte $08   ; 
- D 0 - I - 0x0011D2 00:91C2: 22        .byte $22   ; 
- D 0 - I - 0x0011D3 00:91C3: 84        .byte $84   ; 
- D 0 - I - 0x0011D4 00:91C4: 2C        .byte $2C   ; 
- D 0 - I - 0x0011D5 00:91C5: 00        .byte $00   ; 
- D 0 - I - 0x0011D6 00:91C6: 85        .byte $85   ; 
- D 0 - I - 0x0011D7 00:91C7: 08        .byte $08   ; 
- D 0 - I - 0x0011D8 00:91C8: 82        .byte $82   ; 
- D 0 - I - 0x0011D9 00:91C9: 0A        .byte $0A   ; 
- D 0 - I - 0x0011DA 00:91CA: 0A        .byte $0A   ; 
- D 0 - I - 0x0011DB 00:91CB: 0A        .byte $0A   ; 
- D 0 - I - 0x0011DC 00:91CC: 86        .byte $86   ; 
- D 0 - I - 0x0011DD 00:91CD: 14        .byte $14   ; 
- D 0 - I - 0x0011DE 00:91CE: 80        .byte $80   ; 
- D 0 - I - 0x0011DF 00:91CF: 14        .byte $14   ; 
- D 0 - I - 0x0011E0 00:91D0: 18        .byte $18   ; 
- D 0 - I - 0x0011E1 00:91D1: 1C        .byte $1C   ; 
- D 0 - I - 0x0011E2 00:91D2: 1E        .byte $1E   ; 
- D 0 - I - 0x0011E3 00:91D3: 86        .byte $86   ; 
- D 0 - I - 0x0011E4 00:91D4: 22        .byte $22   ; 
- D 0 - I - 0x0011E5 00:91D5: 82        .byte $82   ; 
- D 0 - I - 0x0011E6 00:91D6: 22        .byte $22   ; 
- D 0 - I - 0x0011E7 00:91D7: 22        .byte $22   ; 
- D 0 - I - 0x0011E8 00:91D8: 22        .byte $22   ; 
- D 0 - I - 0x0011E9 00:91D9: 86        .byte $86   ; 
- D 0 - I - 0x0011EA 00:91DA: 2C        .byte $2C   ; 
- D 0 - I - 0x0011EB 00:91DB: 80        .byte $80   ; 
- D 0 - I - 0x0011EC 00:91DC: 2C        .byte $2C   ; 
- D 0 - I - 0x0011ED 00:91DD: 30        .byte $30   ; 
- D 0 - I - 0x0011EE 00:91DE: 34        .byte $34   ; 
- D 0 - I - 0x0011EF 00:91DF: 36        .byte $36   ; 
- D 0 - I - 0x0011F0 00:91E0: 83        .byte $83   ; 
- D 0 - I - 0x0011F1 00:91E1: 3A        .byte $3A   ; 
- D 0 - I - 0x0011F2 00:91E2: 80        .byte $80   ; 
- D 0 - I - 0x0011F3 00:91E3: 12        .byte $12   ; 
- D 0 - I - 0x0011F4 00:91E4: 81        .byte $81   ; 
- D 0 - I - 0x0011F5 00:91E5: 12        .byte $12   ; 
- D 0 - I - 0x0011F6 00:91E6: 80        .byte $80   ; 
- D 0 - I - 0x0011F7 00:91E7: 12        .byte $12   ; 
- D 0 - I - 0x0011F8 00:91E8: 84        .byte $84   ; 
- D 0 - I - 0x0011F9 00:91E9: 1C        .byte $1C   ; 
- D 0 - I - 0x0011FA 00:91EA: 83        .byte $83   ; 
- D 0 - I - 0x0011FB 00:91EB: 08        .byte $08   ; 
- D 0 - I - 0x0011FC 00:91EC: 85        .byte $85   ; 
- D 0 - I - 0x0011FD 00:91ED: 2C        .byte $2C   ; 
- D 0 - I - 0x0011FE 00:91EE: 2C        .byte $2C   ; 
- D 0 - I - 0x0011FF 00:91EF: 28        .byte $28   ; 
- D 0 - I - 0x001200 00:91F0: 28        .byte $28   ; 
- D 0 - I - 0x001201 00:91F1: 24        .byte $24   ; 
- D 0 - I - 0x001202 00:91F2: 24        .byte $24   ; 
- D 0 - I - 0x001203 00:91F3: 22        .byte $22   ; 
- D 0 - I - 0x001204 00:91F4: 83        .byte $83   ; 
- D 0 - I - 0x001205 00:91F5: 22        .byte $22   ; 
- D 0 - I - 0x001206 00:91F6: 80        .byte $80   ; 
- D 0 - I - 0x001207 00:91F7: 1E        .byte $1E   ; 
- D 0 - I - 0x001208 00:91F8: 1E        .byte $1E   ; 
- D 0 - I - 0x001209 00:91F9: 08        .byte $08   ; 
- D 0 - I - 0x00120A 00:91FA: 1E        .byte $1E   ; 
- D 0 - I - 0x00120B 00:91FB: 84        .byte $84   ; 
- D 0 - I - 0x00120C 00:91FC: 22        .byte $22   ; 



_off000_91FD:
- D 0 - I - 0x00120D 00:91FD: 84        .byte $84   ; 
- D 0 - I - 0x00120E 00:91FE: 1C        .byte $1C   ; 
- D 0 - I - 0x00120F 00:91FF: 83        .byte $83   ; 
- D 0 - I - 0x001210 00:9200: 1E        .byte $1E   ; 
- D 0 - I - 0x001211 00:9201: 81        .byte $81   ; 
- D 0 - I - 0x001212 00:9202: 16        .byte $16   ; 
- D 0 - I - 0x001213 00:9203: 86        .byte $86   ; 
- D 0 - I - 0x001214 00:9204: 18        .byte $18   ; 
- D 0 - I - 0x001215 00:9205: 85        .byte $85   ; 
- D 0 - I - 0x001216 00:9206: 08        .byte $08   ; 
- D 0 - I - 0x001217 00:9207: 84        .byte $84   ; 
- D 0 - I - 0x001218 00:9208: 1C        .byte $1C   ; 
- D 0 - I - 0x001219 00:9209: 83        .byte $83   ; 
- D 0 - I - 0x00121A 00:920A: 1E        .byte $1E   ; 
- D 0 - I - 0x00121B 00:920B: 81        .byte $81   ; 
- D 0 - I - 0x00121C 00:920C: 16        .byte $16   ; 
- D 0 - I - 0x00121D 00:920D: 86        .byte $86   ; 
- D 0 - I - 0x00121E 00:920E: 18        .byte $18   ; 
- D 0 - I - 0x00121F 00:920F: 85        .byte $85   ; 
- D 0 - I - 0x001220 00:9210: 08        .byte $08   ; 
- D 0 - I - 0x001221 00:9211: 84        .byte $84   ; 
- D 0 - I - 0x001222 00:9212: 1C        .byte $1C   ; 
- D 0 - I - 0x001223 00:9213: 83        .byte $83   ; 
- D 0 - I - 0x001224 00:9214: 1E        .byte $1E   ; 
- D 0 - I - 0x001225 00:9215: 81        .byte $81   ; 
- D 0 - I - 0x001226 00:9216: 28        .byte $28   ; 
- D 0 - I - 0x001227 00:9217: 85        .byte $85   ; 
- D 0 - I - 0x001228 00:9218: 26        .byte $26   ; 
- D 0 - I - 0x001229 00:9219: 81        .byte $81   ; 
- D 0 - I - 0x00122A 00:921A: 08        .byte $08   ; 
- D 0 - I - 0x00122B 00:921B: 1C        .byte $1C   ; 
- D 0 - I - 0x00122C 00:921C: 87        .byte $87   ; 
- D 0 - I - 0x00122D 00:921D: 22        .byte $22   ; 
- D 0 - I - 0x00122E 00:921E: 20        .byte $20   ; 
- D 0 - I - 0x00122F 00:921F: 18        .byte $18   ; 
- D 0 - I - 0x001230 00:9220: 1E        .byte $1E   ; 
- D 0 - I - 0x001231 00:9221: 1C        .byte $1C   ; 
- D 0 - I - 0x001232 00:9222: 16        .byte $16   ; 
- D 0 - I - 0x001233 00:9223: 1C        .byte $1C   ; 
- D 0 - I - 0x001234 00:9224: 1A        .byte $1A   ; 
- D 0 - I - 0x001235 00:9225: 14        .byte $14   ; 
- D 0 - I - 0x001236 00:9226: 84        .byte $84   ; 
- D 0 - I - 0x001237 00:9227: 28        .byte $28   ; 
- D 0 - I - 0x001238 00:9228: 83        .byte $83   ; 
- D 0 - I - 0x001239 00:9229: 2A        .byte $2A   ; 
- D 0 - I - 0x00123A 00:922A: 81        .byte $81   ; 
- D 0 - I - 0x00123B 00:922B: 22        .byte $22   ; 
- D 0 - I - 0x00123C 00:922C: 86        .byte $86   ; 
- D 0 - I - 0x00123D 00:922D: 24        .byte $24   ; 
- D 0 - I - 0x00123E 00:922E: 85        .byte $85   ; 
- D 0 - I - 0x00123F 00:922F: 08        .byte $08   ; 
- D 0 - I - 0x001240 00:9230: 84        .byte $84   ; 
- D 0 - I - 0x001241 00:9231: 28        .byte $28   ; 
- D 0 - I - 0x001242 00:9232: 83        .byte $83   ; 
- D 0 - I - 0x001243 00:9233: 2A        .byte $2A   ; 
- D 0 - I - 0x001244 00:9234: 81        .byte $81   ; 
- D 0 - I - 0x001245 00:9235: 22        .byte $22   ; 
- D 0 - I - 0x001246 00:9236: 86        .byte $86   ; 
- D 0 - I - 0x001247 00:9237: 24        .byte $24   ; 
- D 0 - I - 0x001248 00:9238: 85        .byte $85   ; 
- D 0 - I - 0x001249 00:9239: 08        .byte $08   ; 
- D 0 - I - 0x00124A 00:923A: 84        .byte $84   ; 
- D 0 - I - 0x00124B 00:923B: 28        .byte $28   ; 
- D 0 - I - 0x00124C 00:923C: 83        .byte $83   ; 
- D 0 - I - 0x00124D 00:923D: 2A        .byte $2A   ; 
- D 0 - I - 0x00124E 00:923E: 81        .byte $81   ; 
- D 0 - I - 0x00124F 00:923F: 34        .byte $34   ; 
- D 0 - I - 0x001250 00:9240: 85        .byte $85   ; 
- D 0 - I - 0x001251 00:9241: 32        .byte $32   ; 
- D 0 - I - 0x001252 00:9242: 81        .byte $81   ; 
- D 0 - I - 0x001253 00:9243: 08        .byte $08   ; 
- D 0 - I - 0x001254 00:9244: 28        .byte $28   ; 
- D 0 - I - 0x001255 00:9245: 87        .byte $87   ; 
- D 0 - I - 0x001256 00:9246: 30        .byte $30   ; 
- D 0 - I - 0x001257 00:9247: 2E        .byte $2E   ; 
- D 0 - I - 0x001258 00:9248: 24        .byte $24   ; 
- D 0 - I - 0x001259 00:9249: 2C        .byte $2C   ; 
- D 0 - I - 0x00125A 00:924A: 2A        .byte $2A   ; 
- D 0 - I - 0x00125B 00:924B: 22        .byte $22   ; 
- D 0 - I - 0x00125C 00:924C: 2A        .byte $2A   ; 
- D 0 - I - 0x00125D 00:924D: 28        .byte $28   ; 
- D 0 - I - 0x00125E 00:924E: 20        .byte $20   ; 
- D 0 - I - 0x00125F 00:924F: 00        .byte $00   ; 
- D 0 - I - 0x001260 00:9250: 84        .byte $84   ; 
- D 0 - I - 0x001261 00:9251: 10        .byte $10   ; 
- D 0 - I - 0x001262 00:9252: 83        .byte $83   ; 
- D 0 - I - 0x001263 00:9253: 12        .byte $12   ; 
- D 0 - I - 0x001264 00:9254: 81        .byte $81   ; 
- D 0 - I - 0x001265 00:9255: 0A        .byte $0A   ; 
- D 0 - I - 0x001266 00:9256: 86        .byte $86   ; 
- D 0 - I - 0x001267 00:9257: 0C        .byte $0C   ; 
- D 0 - I - 0x001268 00:9258: 85        .byte $85   ; 
- D 0 - I - 0x001269 00:9259: 08        .byte $08   ; 
- D 0 - I - 0x00126A 00:925A: 84        .byte $84   ; 
- D 0 - I - 0x00126B 00:925B: 10        .byte $10   ; 
- D 0 - I - 0x00126C 00:925C: 83        .byte $83   ; 
- D 0 - I - 0x00126D 00:925D: 12        .byte $12   ; 
- D 0 - I - 0x00126E 00:925E: 81        .byte $81   ; 
- D 0 - I - 0x00126F 00:925F: 0A        .byte $0A   ; 
- D 0 - I - 0x001270 00:9260: 86        .byte $86   ; 
- D 0 - I - 0x001271 00:9261: 0C        .byte $0C   ; 
- D 0 - I - 0x001272 00:9262: 85        .byte $85   ; 
- D 0 - I - 0x001273 00:9263: 08        .byte $08   ; 
- D 0 - I - 0x001274 00:9264: 84        .byte $84   ; 
- D 0 - I - 0x001275 00:9265: 10        .byte $10   ; 
- D 0 - I - 0x001276 00:9266: 83        .byte $83   ; 
- D 0 - I - 0x001277 00:9267: 12        .byte $12   ; 
- D 0 - I - 0x001278 00:9268: 81        .byte $81   ; 
- D 0 - I - 0x001279 00:9269: 1C        .byte $1C   ; 
- D 0 - I - 0x00127A 00:926A: 85        .byte $85   ; 
- D 0 - I - 0x00127B 00:926B: 1A        .byte $1A   ; 
- D 0 - I - 0x00127C 00:926C: 81        .byte $81   ; 
- D 0 - I - 0x00127D 00:926D: 08        .byte $08   ; 
- D 0 - I - 0x00127E 00:926E: 10        .byte $10   ; 
- D 0 - I - 0x00127F 00:926F: 87        .byte $87   ; 
- D 0 - I - 0x001280 00:9270: 16        .byte $16   ; 
- D 0 - I - 0x001281 00:9271: 14        .byte $14   ; 
- D 0 - I - 0x001282 00:9272: 0C        .byte $0C   ; 
- D 0 - I - 0x001283 00:9273: 12        .byte $12   ; 
- D 0 - I - 0x001284 00:9274: 10        .byte $10   ; 
- D 0 - I - 0x001285 00:9275: 0A        .byte $0A   ; 
- D 0 - I - 0x001286 00:9276: 10        .byte $10   ; 
- D 0 - I - 0x001287 00:9277: 0E        .byte $0E   ; 
- D 0 - I - 0x001288 00:9278: 04        .byte $04   ; 
- D 0 - I - 0x001289 00:9279: 84        .byte $84   ; 
- D 0 - I - 0x00128A 00:927A: 1C        .byte $1C   ; 
- D 0 - I - 0x00128B 00:927B: 83        .byte $83   ; 
- D 0 - I - 0x00128C 00:927C: 1E        .byte $1E   ; 
- D 0 - I - 0x00128D 00:927D: 81        .byte $81   ; 
- D 0 - I - 0x00128E 00:927E: 16        .byte $16   ; 
- D 0 - I - 0x00128F 00:927F: 86        .byte $86   ; 
- D 0 - I - 0x001290 00:9280: 18        .byte $18   ; 
- D 0 - I - 0x001291 00:9281: 85        .byte $85   ; 
- D 0 - I - 0x001292 00:9282: 08        .byte $08   ; 
- D 0 - I - 0x001293 00:9283: 84        .byte $84   ; 
- D 0 - I - 0x001294 00:9284: 1C        .byte $1C   ; 
- D 0 - I - 0x001295 00:9285: 83        .byte $83   ; 
- D 0 - I - 0x001296 00:9286: 1E        .byte $1E   ; 
- D 0 - I - 0x001297 00:9287: 81        .byte $81   ; 
- D 0 - I - 0x001298 00:9288: 16        .byte $16   ; 
- D 0 - I - 0x001299 00:9289: 86        .byte $86   ; 
- D 0 - I - 0x00129A 00:928A: 18        .byte $18   ; 
- D 0 - I - 0x00129B 00:928B: 85        .byte $85   ; 
- D 0 - I - 0x00129C 00:928C: 08        .byte $08   ; 
- D 0 - I - 0x00129D 00:928D: 84        .byte $84   ; 
- D 0 - I - 0x00129E 00:928E: 1C        .byte $1C   ; 
- D 0 - I - 0x00129F 00:928F: 83        .byte $83   ; 
- D 0 - I - 0x0012A0 00:9290: 1E        .byte $1E   ; 
- D 0 - I - 0x0012A1 00:9291: 81        .byte $81   ; 
- D 0 - I - 0x0012A2 00:9292: 28        .byte $28   ; 
- D 0 - I - 0x0012A3 00:9293: 85        .byte $85   ; 
- D 0 - I - 0x0012A4 00:9294: 26        .byte $26   ; 
- D 0 - I - 0x0012A5 00:9295: 81        .byte $81   ; 
- D 0 - I - 0x0012A6 00:9296: 08        .byte $08   ; 
- D 0 - I - 0x0012A7 00:9297: 1C        .byte $1C   ; 
- D 0 - I - 0x0012A8 00:9298: 87        .byte $87   ; 
- D 0 - I - 0x0012A9 00:9299: 22        .byte $22   ; 
- D 0 - I - 0x0012AA 00:929A: 20        .byte $20   ; 
- D 0 - I - 0x0012AB 00:929B: 18        .byte $18   ; 
- D 0 - I - 0x0012AC 00:929C: 1E        .byte $1E   ; 
- D 0 - I - 0x0012AD 00:929D: 1C        .byte $1C   ; 
- D 0 - I - 0x0012AE 00:929E: 16        .byte $16   ; 
- D 0 - I - 0x0012AF 00:929F: 1C        .byte $1C   ; 
- D 0 - I - 0x0012B0 00:92A0: 1A        .byte $1A   ; 
- D 0 - I - 0x0012B1 00:92A1: 14        .byte $14   ; 
- D 0 - I - 0x0012B2 00:92A2: F8        .byte $F8   ; 
- D 0 - I - 0x0012B3 00:92A3: 81        .byte $81   ; 
- D 0 - I - 0x0012B4 00:92A4: 1E        .byte $1E   ; 
- D 0 - I - 0x0012B5 00:92A5: 1E        .byte $1E   ; 
- D 0 - I - 0x0012B6 00:92A6: F0        .byte $F0   ; 
- D 0 - I - 0x0012B7 00:92A7: F8        .byte $F8   ; 
- D 0 - I - 0x0012B8 00:92A8: 81        .byte $81   ; 
- D 0 - I - 0x0012B9 00:92A9: 1C        .byte $1C   ; 
- D 0 - I - 0x0012BA 00:92AA: 1C        .byte $1C   ; 
- D 0 - I - 0x0012BB 00:92AB: F0        .byte $F0   ; 
- D 0 - I - 0x0012BC 00:92AC: F8        .byte $F8   ; 
- D 0 - I - 0x0012BD 00:92AD: 81        .byte $81   ; 
- D 0 - I - 0x0012BE 00:92AE: 1A        .byte $1A   ; 
- D 0 - I - 0x0012BF 00:92AF: 1A        .byte $1A   ; 
- D 0 - I - 0x0012C0 00:92B0: F0        .byte $F0   ; 
- D 0 - I - 0x0012C1 00:92B1: F4        .byte $F4   ; 
- D 0 - I - 0x0012C2 00:92B2: 81        .byte $81   ; 
- D 0 - I - 0x0012C3 00:92B3: 18        .byte $18   ; 
- D 0 - I - 0x0012C4 00:92B4: 18        .byte $18   ; 
- D 0 - I - 0x0012C5 00:92B5: F0        .byte $F0   ; 
- D 0 - I - 0x0012C6 00:92B6: F8        .byte $F8   ; 
- D 0 - I - 0x0012C7 00:92B7: 81        .byte $81   ; 
- D 0 - I - 0x0012C8 00:92B8: 2A        .byte $2A   ; 
- D 0 - I - 0x0012C9 00:92B9: 2A        .byte $2A   ; 
- D 0 - I - 0x0012CA 00:92BA: F0        .byte $F0   ; 
- D 0 - I - 0x0012CB 00:92BB: F8        .byte $F8   ; 
- D 0 - I - 0x0012CC 00:92BC: 81        .byte $81   ; 
- D 0 - I - 0x0012CD 00:92BD: 28        .byte $28   ; 
- D 0 - I - 0x0012CE 00:92BE: 28        .byte $28   ; 
- D 0 - I - 0x0012CF 00:92BF: F0        .byte $F0   ; 
- D 0 - I - 0x0012D0 00:92C0: F8        .byte $F8   ; 
- D 0 - I - 0x0012D1 00:92C1: 81        .byte $81   ; 
- D 0 - I - 0x0012D2 00:92C2: 26        .byte $26   ; 
- D 0 - I - 0x0012D3 00:92C3: 26        .byte $26   ; 
- D 0 - I - 0x0012D4 00:92C4: F0        .byte $F0   ; 
- D 0 - I - 0x0012D5 00:92C5: F4        .byte $F4   ; 
- D 0 - I - 0x0012D6 00:92C6: 81        .byte $81   ; 
- D 0 - I - 0x0012D7 00:92C7: 24        .byte $24   ; 
- D 0 - I - 0x0012D8 00:92C8: 24        .byte $24   ; 
- D 0 - I - 0x0012D9 00:92C9: F0        .byte $F0   ; 
- - - - - - 0x0012DA 00:92CA: 49        .byte $49   ; 
- - - - - - 0x0012DB 00:92CB: 00        .byte $00   ; 



_off000_92CC:
- D 0 - I - 0x0012DC 00:92CC: 81        .byte $81   ; 
- D 0 - I - 0x0012DD 00:92CD: 14        .byte $14   ; 
- D 0 - I - 0x0012DE 00:92CE: 1E        .byte $1E   ; 
- D 0 - I - 0x0012DF 00:92CF: 28        .byte $28   ; 
- D 0 - I - 0x0012E0 00:92D0: 16        .byte $16   ; 
- D 0 - I - 0x0012E1 00:92D1: 20        .byte $20   ; 
- D 0 - I - 0x0012E2 00:92D2: 2A        .byte $2A   ; 
- D 0 - I - 0x0012E3 00:92D3: 18        .byte $18   ; 
- D 0 - I - 0x0012E4 00:92D4: 22        .byte $22   ; 
- D 0 - I - 0x0012E5 00:92D5: 2C        .byte $2C   ; 
- D 0 - I - 0x0012E6 00:92D6: 87        .byte $87   ; 
- D 0 - I - 0x0012E7 00:92D7: 2E        .byte $2E   ; 
- D 0 - I - 0x0012E8 00:92D8: 30        .byte $30   ; 
- D 0 - I - 0x0012E9 00:92D9: 85        .byte $85   ; 
- D 0 - I - 0x0012EA 00:92DA: 32        .byte $32   ; 
- D 0 - I - 0x0012EB 00:92DB: 00        .byte $00   ; 
- D 0 - I - 0x0012EC 00:92DC: 80        .byte $80   ; 
- D 0 - I - 0x0012ED 00:92DD: 08        .byte $08   ; 
- D 0 - I - 0x0012EE 00:92DE: 81        .byte $81   ; 
- D 0 - I - 0x0012EF 00:92DF: 14        .byte $14   ; 
- D 0 - I - 0x0012F0 00:92E0: 1E        .byte $1E   ; 
- D 0 - I - 0x0012F1 00:92E1: 28        .byte $28   ; 
- D 0 - I - 0x0012F2 00:92E2: 16        .byte $16   ; 
- D 0 - I - 0x0012F3 00:92E3: 20        .byte $20   ; 
- D 0 - I - 0x0012F4 00:92E4: 2A        .byte $2A   ; 
- D 0 - I - 0x0012F5 00:92E5: 18        .byte $18   ; 
- D 0 - I - 0x0012F6 00:92E6: 22        .byte $22   ; 
- D 0 - I - 0x0012F7 00:92E7: 80        .byte $80   ; 
- D 0 - I - 0x0012F8 00:92E8: 2C        .byte $2C   ; 
- D 0 - I - 0x0012F9 00:92E9: 87        .byte $87   ; 
- D 0 - I - 0x0012FA 00:92EA: 24        .byte $24   ; 
- D 0 - I - 0x0012FB 00:92EB: 26        .byte $26   ; 
- D 0 - I - 0x0012FC 00:92EC: 85        .byte $85   ; 
- D 0 - I - 0x0012FD 00:92ED: 28        .byte $28   ; 
- D 0 - I - 0x0012FE 00:92EE: 84        .byte $84   ; 
- D 0 - I - 0x0012FF 00:92EF: 14        .byte $14   ; 
- D 0 - I - 0x001300 00:92F0: 16        .byte $16   ; 
- D 0 - I - 0x001301 00:92F1: 18        .byte $18   ; 
- D 0 - I - 0x001302 00:92F2: 87        .byte $87   ; 
- D 0 - I - 0x001303 00:92F3: 32        .byte $32   ; 
- D 0 - I - 0x001304 00:92F4: 34        .byte $34   ; 
- D 0 - I - 0x001305 00:92F5: 85        .byte $85   ; 
- D 0 - I - 0x001306 00:92F6: 36        .byte $36   ; 



_off000_92F7:
- D 0 - I - 0x001307 00:92F7: 83        .byte $83   ; 
- D 0 - I - 0x001308 00:92F8: 56        .byte $56   ; 
- D 0 - I - 0x001309 00:92F9: 42        .byte $42   ; 
- D 0 - I - 0x00130A 00:92FA: 02        .byte $02   ; 
- D 0 - I - 0x00130B 00:92FB: 4C        .byte $4C   ; 
- D 0 - I - 0x00130C 00:92FC: 52        .byte $52   ; 
- D 0 - I - 0x00130D 00:92FD: 42        .byte $42   ; 
- D 0 - I - 0x00130E 00:92FE: 5C        .byte $5C   ; 
- D 0 - I - 0x00130F 00:92FF: 4A        .byte $4A   ; 
- D 0 - I - 0x001310 00:9300: 5A        .byte $5A   ; 
- D 0 - I - 0x001311 00:9301: 02        .byte $02   ; 
- D 0 - I - 0x001312 00:9302: 4C        .byte $4C   ; 
- D 0 - I - 0x001313 00:9303: 5A        .byte $5A   ; 
- D 0 - I - 0x001314 00:9304: 56        .byte $56   ; 
- D 0 - I - 0x001315 00:9305: 02        .byte $02   ; 
- D 0 - I - 0x001316 00:9306: 50        .byte $50   ; 
- D 0 - I - 0x001317 00:9307: 4C        .byte $4C   ; 
- D 0 - I - 0x001318 00:9308: 5A        .byte $5A   ; 
- D 0 - I - 0x001319 00:9309: 02        .byte $02   ; 
- D 0 - I - 0x00131A 00:930A: 54        .byte $54   ; 
- D 0 - I - 0x00131B 00:930B: 5A        .byte $5A   ; 
- D 0 - I - 0x00131C 00:930C: 58        .byte $58   ; 
- D 0 - I - 0x00131D 00:930D: 02        .byte $02   ; 
- D 0 - I - 0x00131E 00:930E: 50        .byte $50   ; 
- D 0 - I - 0x00131F 00:930F: 54        .byte $54   ; 
- D 0 - I - 0x001320 00:9310: 4C        .byte $4C   ; 
- D 0 - I - 0x001321 00:9311: 42        .byte $42   ; 
- D 0 - I - 0x001322 00:9312: 02        .byte $02   ; 
- D 0 - I - 0x001323 00:9313: 4C        .byte $4C   ; 
- D 0 - I - 0x001324 00:9314: 50        .byte $50   ; 
- D 0 - I - 0x001325 00:9315: 48        .byte $48   ; 
- D 0 - I - 0x001326 00:9316: 4A        .byte $4A   ; 
- D 0 - I - 0x001327 00:9317: 50        .byte $50   ; 
- D 0 - I - 0x001328 00:9318: 00        .byte $00   ; 
- D 0 - I - 0x001329 00:9319: 87        .byte $87   ; 
- D 0 - I - 0x00132A 00:931A: 08        .byte $08   ; 
- D 0 - I - 0x00132B 00:931B: 08        .byte $08   ; 
- D 0 - I - 0x00132C 00:931C: 08        .byte $08   ; 
- D 0 - I - 0x00132D 00:931D: 08        .byte $08   ; 
- D 0 - I - 0x00132E 00:931E: 08        .byte $08   ; 
- D 0 - I - 0x00132F 00:931F: 08        .byte $08   ; 
- D 0 - I - 0x001330 00:9320: 08        .byte $08   ; 
- D 0 - I - 0x001331 00:9321: 83        .byte $83   ; 
- D 0 - I - 0x001332 00:9322: 08        .byte $08   ; 
- D 0 - I - 0x001333 00:9323: 14        .byte $14   ; 
- D 0 - I - 0x001334 00:9324: 18        .byte $18   ; 
- D 0 - I - 0x001335 00:9325: 1C        .byte $1C   ; 
- D 0 - I - 0x001336 00:9326: 83        .byte $83   ; 
- D 0 - I - 0x001337 00:9327: 1E        .byte $1E   ; 
- D 0 - I - 0x001338 00:9328: 2C        .byte $2C   ; 
- D 0 - I - 0x001339 00:9329: 14        .byte $14   ; 
- D 0 - I - 0x00133A 00:932A: 2C        .byte $2C   ; 
- D 0 - I - 0x00133B 00:932B: 1C        .byte $1C   ; 
- D 0 - I - 0x00133C 00:932C: 2C        .byte $2C   ; 
- D 0 - I - 0x00133D 00:932D: 14        .byte $14   ; 
- D 0 - I - 0x00133E 00:932E: 2C        .byte $2C   ; 
- D 0 - I - 0x00133F 00:932F: 1E        .byte $1E   ; 
- D 0 - I - 0x001340 00:9330: 2C        .byte $2C   ; 
- D 0 - I - 0x001341 00:9331: 14        .byte $14   ; 
- D 0 - I - 0x001342 00:9332: 2C        .byte $2C   ; 
- D 0 - I - 0x001343 00:9333: 1E        .byte $1E   ; 
- D 0 - I - 0x001344 00:9334: 1E        .byte $1E   ; 
- D 0 - I - 0x001345 00:9335: 22        .byte $22   ; 
- D 0 - I - 0x001346 00:9336: 26        .byte $26   ; 
- D 0 - I - 0x001347 00:9337: 28        .byte $28   ; 
- D 0 - I - 0x001348 00:9338: 36        .byte $36   ; 
- D 0 - I - 0x001349 00:9339: 1E        .byte $1E   ; 
- D 0 - I - 0x00134A 00:933A: 36        .byte $36   ; 
- D 0 - I - 0x00134B 00:933B: 28        .byte $28   ; 
- D 0 - I - 0x00134C 00:933C: 36        .byte $36   ; 
- D 0 - I - 0x00134D 00:933D: 1E        .byte $1E   ; 
- D 0 - I - 0x00134E 00:933E: 36        .byte $36   ; 
- D 0 - I - 0x00134F 00:933F: 26        .byte $26   ; 
- D 0 - I - 0x001350 00:9340: 36        .byte $36   ; 
- D 0 - I - 0x001351 00:9341: 14        .byte $14   ; 
- D 0 - I - 0x001352 00:9342: 2C        .byte $2C   ; 
- D 0 - I - 0x001353 00:9343: 1C        .byte $1C   ; 
- D 0 - I - 0x001354 00:9344: 14        .byte $14   ; 
- D 0 - I - 0x001355 00:9345: 18        .byte $18   ; 
- D 0 - I - 0x001356 00:9346: 1C        .byte $1C   ; 
- D 0 - I - 0x001357 00:9347: 87        .byte $87   ; 
- D 0 - I - 0x001358 00:9348: 08        .byte $08   ; 
- D 0 - I - 0x001359 00:9349: 08        .byte $08   ; 
- D 0 - I - 0x00135A 00:934A: 08        .byte $08   ; 
- D 0 - I - 0x00135B 00:934B: 08        .byte $08   ; 
- D 0 - I - 0x00135C 00:934C: 08        .byte $08   ; 
- D 0 - I - 0x00135D 00:934D: 08        .byte $08   ; 
- D 0 - I - 0x00135E 00:934E: 08        .byte $08   ; 
- D 0 - I - 0x00135F 00:934F: 08        .byte $08   ; 
- D 0 - I - 0x001360 00:9350: C9        .byte $C9   ; 
- D 0 - I - 0x001361 00:9351: 00        .byte $00   ; 



_off000_9352:
- D 0 - I - 0x001362 00:9352: 86        .byte $86   ; 
- D 0 - I - 0x001363 00:9353: 42        .byte $42   ; 
- D 0 - I - 0x001364 00:9354: 83        .byte $83   ; 
- D 0 - I - 0x001365 00:9355: 3E        .byte $3E   ; 
- D 0 - I - 0x001366 00:9356: 85        .byte $85   ; 
- D 0 - I - 0x001367 00:9357: 3C        .byte $3C   ; 
- D 0 - I - 0x001368 00:9358: 4A        .byte $4A   ; 
- D 0 - I - 0x001369 00:9359: 85        .byte $85   ; 
- D 0 - I - 0x00136A 00:935A: 48        .byte $48   ; 
- D 0 - I - 0x00136B 00:935B: 08        .byte $08   ; 
- D 0 - I - 0x00136C 00:935C: 42        .byte $42   ; 
- D 0 - I - 0x00136D 00:935D: 08        .byte $08   ; 
- D 0 - I - 0x00136E 00:935E: 86        .byte $86   ; 
- D 0 - I - 0x00136F 00:935F: 48        .byte $48   ; 
- D 0 - I - 0x001370 00:9360: 83        .byte $83   ; 
- D 0 - I - 0x001371 00:9361: 4A        .byte $4A   ; 
- D 0 - I - 0x001372 00:9362: 85        .byte $85   ; 
- D 0 - I - 0x001373 00:9363: 50        .byte $50   ; 
- D 0 - I - 0x001374 00:9364: 02        .byte $02   ; 
- D 0 - I - 0x001375 00:9365: 86        .byte $86   ; 
- D 0 - I - 0x001376 00:9366: 42        .byte $42   ; 
- D 0 - I - 0x001377 00:9367: 83        .byte $83   ; 
- D 0 - I - 0x001378 00:9368: 3E        .byte $3E   ; 
- D 0 - I - 0x001379 00:9369: 85        .byte $85   ; 
- D 0 - I - 0x00137A 00:936A: 3A        .byte $3A   ; 
- D 0 - I - 0x00137B 00:936B: 08        .byte $08   ; 
- D 0 - I - 0x00137C 00:936C: 00        .byte $00   ; 
- D 0 - I - 0x00137D 00:936D: 86        .byte $86   ; 
- D 0 - I - 0x00137E 00:936E: 3E        .byte $3E   ; 
- D 0 - I - 0x00137F 00:936F: 83        .byte $83   ; 
- D 0 - I - 0x001380 00:9370: 36        .byte $36   ; 
- D 0 - I - 0x001381 00:9371: 85        .byte $85   ; 
- D 0 - I - 0x001382 00:9372: 34        .byte $34   ; 
- D 0 - I - 0x001383 00:9373: 3C        .byte $3C   ; 
- D 0 - I - 0x001384 00:9374: 3E        .byte $3E   ; 
- D 0 - I - 0x001385 00:9375: 08        .byte $08   ; 
- D 0 - I - 0x001386 00:9376: 3E        .byte $3E   ; 
- D 0 - I - 0x001387 00:9377: 08        .byte $08   ; 
- D 0 - I - 0x001388 00:9378: 86        .byte $86   ; 
- D 0 - I - 0x001389 00:9379: 40        .byte $40   ; 
- D 0 - I - 0x00138A 00:937A: 83        .byte $83   ; 
- D 0 - I - 0x00138B 00:937B: 40        .byte $40   ; 
- D 0 - I - 0x00138C 00:937C: 85        .byte $85   ; 
- D 0 - I - 0x00138D 00:937D: 40        .byte $40   ; 
- D 0 - I - 0x00138E 00:937E: 40        .byte $40   ; 
- D 0 - I - 0x00138F 00:937F: 86        .byte $86   ; 
- D 0 - I - 0x001390 00:9380: 36        .byte $36   ; 
- D 0 - I - 0x001391 00:9381: 83        .byte $83   ; 
- D 0 - I - 0x001392 00:9382: 36        .byte $36   ; 
- D 0 - I - 0x001393 00:9383: 85        .byte $85   ; 
- D 0 - I - 0x001394 00:9384: 34        .byte $34   ; 
- D 0 - I - 0x001395 00:9385: 08        .byte $08   ; 



_off000_9386:
- D 0 - I - 0x001396 00:9386: 82        .byte $82   ; 
- D 0 - I - 0x001397 00:9387: 42        .byte $42   ; 
- D 0 - I - 0x001398 00:9388: 81        .byte $81   ; 
- D 0 - I - 0x001399 00:9389: 3E        .byte $3E   ; 
- D 0 - I - 0x00139A 00:938A: 82        .byte $82   ; 
- D 0 - I - 0x00139B 00:938B: 3C        .byte $3C   ; 
- D 0 - I - 0x00139C 00:938C: 80        .byte $80   ; 
- D 0 - I - 0x00139D 00:938D: 3C        .byte $3C   ; 
- D 0 - I - 0x00139E 00:938E: 84        .byte $84   ; 
- D 0 - I - 0x00139F 00:938F: 42        .byte $42   ; 
- D 0 - I - 0x0013A0 00:9390: 80        .byte $80   ; 
- D 0 - I - 0x0013A1 00:9391: 4A        .byte $4A   ; 
- D 0 - I - 0x0013A2 00:9392: 82        .byte $82   ; 
- D 0 - I - 0x0013A3 00:9393: 48        .byte $48   ; 
- D 0 - I - 0x0013A4 00:9394: 81        .byte $81   ; 
- D 0 - I - 0x0013A5 00:9395: 3E        .byte $3E   ; 
- D 0 - I - 0x0013A6 00:9396: 87        .byte $87   ; 
- D 0 - I - 0x0013A7 00:9397: 42        .byte $42   ; 
- D 0 - I - 0x0013A8 00:9398: 82        .byte $82   ; 
- D 0 - I - 0x0013A9 00:9399: 48        .byte $48   ; 
- D 0 - I - 0x0013AA 00:939A: 81        .byte $81   ; 
- D 0 - I - 0x0013AB 00:939B: 4A        .byte $4A   ; 
- D 0 - I - 0x0013AC 00:939C: 00        .byte $00   ; 



_off000_939D:
- D 0 - I - 0x0013AD 00:939D: 83        .byte $83   ; 
- D 0 - I - 0x0013AE 00:939E: 50        .byte $50   ; 
- D 0 - I - 0x0013AF 00:939F: 85        .byte $85   ; 
- D 0 - I - 0x0013B0 00:93A0: 02        .byte $02   ; 
- D 0 - I - 0x0013B1 00:93A1: 83        .byte $83   ; 
- D 0 - I - 0x0013B2 00:93A2: 48        .byte $48   ; 
- D 0 - I - 0x0013B3 00:93A3: 82        .byte $82   ; 
- D 0 - I - 0x0013B4 00:93A4: 42        .byte $42   ; 
- D 0 - I - 0x0013B5 00:93A5: 81        .byte $81   ; 
- D 0 - I - 0x0013B6 00:93A6: 3E        .byte $3E   ; 
- D 0 - I - 0x0013B7 00:93A7: 87        .byte $87   ; 
- D 0 - I - 0x0013B8 00:93A8: 3A        .byte $3A   ; 
- D 0 - I - 0x0013B9 00:93A9: 00        .byte $00   ; 
- D 0 - I - 0x0013BA 00:93AA: 82        .byte $82   ; 
- D 0 - I - 0x0013BB 00:93AB: 3E        .byte $3E   ; 
- D 0 - I - 0x0013BC 00:93AC: 81        .byte $81   ; 
- D 0 - I - 0x0013BD 00:93AD: 36        .byte $36   ; 
- D 0 - I - 0x0013BE 00:93AE: 82        .byte $82   ; 
- D 0 - I - 0x0013BF 00:93AF: 34        .byte $34   ; 
- D 0 - I - 0x0013C0 00:93B0: 80        .byte $80   ; 
- D 0 - I - 0x0013C1 00:93B1: 34        .byte $34   ; 
- D 0 - I - 0x0013C2 00:93B2: 84        .byte $84   ; 
- D 0 - I - 0x0013C3 00:93B3: 3C        .byte $3C   ; 
- D 0 - I - 0x0013C4 00:93B4: 80        .byte $80   ; 
- D 0 - I - 0x0013C5 00:93B5: 3C        .byte $3C   ; 
- D 0 - I - 0x0013C6 00:93B6: 82        .byte $82   ; 
- D 0 - I - 0x0013C7 00:93B7: 3E        .byte $3E   ; 
- D 0 - I - 0x0013C8 00:93B8: 81        .byte $81   ; 
- D 0 - I - 0x0013C9 00:93B9: 36        .byte $36   ; 
- D 0 - I - 0x0013CA 00:93BA: 87        .byte $87   ; 
- D 0 - I - 0x0013CB 00:93BB: 3E        .byte $3E   ; 
- D 0 - I - 0x0013CC 00:93BC: 82        .byte $82   ; 
- D 0 - I - 0x0013CD 00:93BD: 36        .byte $36   ; 
- D 0 - I - 0x0013CE 00:93BE: 81        .byte $81   ; 
- D 0 - I - 0x0013CF 00:93BF: 3A        .byte $3A   ; 
- D 0 - I - 0x0013D0 00:93C0: 83        .byte $83   ; 
- D 0 - I - 0x0013D1 00:93C1: 40        .byte $40   ; 
- D 0 - I - 0x0013D2 00:93C2: 85        .byte $85   ; 
- D 0 - I - 0x0013D3 00:93C3: 3E        .byte $3E   ; 
- D 0 - I - 0x0013D4 00:93C4: 83        .byte $83   ; 
- D 0 - I - 0x0013D5 00:93C5: 36        .byte $36   ; 
- D 0 - I - 0x0013D6 00:93C6: 82        .byte $82   ; 
- D 0 - I - 0x0013D7 00:93C7: 34        .byte $34   ; 
- D 0 - I - 0x0013D8 00:93C8: 81        .byte $81   ; 
- D 0 - I - 0x0013D9 00:93C9: 2C        .byte $2C   ; 
- D 0 - I - 0x0013DA 00:93CA: 87        .byte $87   ; 
- D 0 - I - 0x0013DB 00:93CB: 28        .byte $28   ; 
- D 0 - I - 0x0013DC 00:93CC: 83        .byte $83   ; 
- D 0 - I - 0x0013DD 00:93CD: 1E        .byte $1E   ; 
- D 0 - I - 0x0013DE 00:93CE: 2C        .byte $2C   ; 
- D 0 - I - 0x0013DF 00:93CF: 14        .byte $14   ; 
- D 0 - I - 0x0013E0 00:93D0: 2C        .byte $2C   ; 
- D 0 - I - 0x0013E1 00:93D1: 1C        .byte $1C   ; 
- D 0 - I - 0x0013E2 00:93D2: 2C        .byte $2C   ; 
- D 0 - I - 0x0013E3 00:93D3: 14        .byte $14   ; 
- D 0 - I - 0x0013E4 00:93D4: 2C        .byte $2C   ; 
- D 0 - I - 0x0013E5 00:93D5: 1E        .byte $1E   ; 
- D 0 - I - 0x0013E6 00:93D6: 2C        .byte $2C   ; 
- D 0 - I - 0x0013E7 00:93D7: 14        .byte $14   ; 
- D 0 - I - 0x0013E8 00:93D8: 2C        .byte $2C   ; 
- D 0 - I - 0x0013E9 00:93D9: 1E        .byte $1E   ; 
- D 0 - I - 0x0013EA 00:93DA: 1E        .byte $1E   ; 
- D 0 - I - 0x0013EB 00:93DB: 22        .byte $22   ; 
- D 0 - I - 0x0013EC 00:93DC: 26        .byte $26   ; 
- D 0 - I - 0x0013ED 00:93DD: 28        .byte $28   ; 
- D 0 - I - 0x0013EE 00:93DE: 36        .byte $36   ; 
- D 0 - I - 0x0013EF 00:93DF: 1E        .byte $1E   ; 
- D 0 - I - 0x0013F0 00:93E0: 36        .byte $36   ; 
- D 0 - I - 0x0013F1 00:93E1: 28        .byte $28   ; 
- D 0 - I - 0x0013F2 00:93E2: 36        .byte $36   ; 
- D 0 - I - 0x0013F3 00:93E3: 1E        .byte $1E   ; 
- D 0 - I - 0x0013F4 00:93E4: 36        .byte $36   ; 
- D 0 - I - 0x0013F5 00:93E5: 26        .byte $26   ; 
- D 0 - I - 0x0013F6 00:93E6: 36        .byte $36   ; 
- D 0 - I - 0x0013F7 00:93E7: 14        .byte $14   ; 
- D 0 - I - 0x0013F8 00:93E8: 2C        .byte $2C   ; 
- D 0 - I - 0x0013F9 00:93E9: 1C        .byte $1C   ; 
- D 0 - I - 0x0013FA 00:93EA: 14        .byte $14   ; 
- D 0 - I - 0x0013FB 00:93EB: 18        .byte $18   ; 
- D 0 - I - 0x0013FC 00:93EC: 1C        .byte $1C   ; 



_off000_93ED:
- D 0 - I - 0x0013FD 00:93ED: 83        .byte $83   ; 
- D 0 - I - 0x0013FE 00:93EE: 50        .byte $50   ; 
- D 0 - I - 0x0013FF 00:93EF: 85        .byte $85   ; 
- D 0 - I - 0x001400 00:93F0: 02        .byte $02   ; 
- D 0 - I - 0x001401 00:93F1: 83        .byte $83   ; 
- D 0 - I - 0x001402 00:93F2: 50        .byte $50   ; 
- D 0 - I - 0x001403 00:93F3: 87        .byte $87   ; 
- D 0 - I - 0x001404 00:93F4: 4C        .byte $4C   ; 
- D 0 - I - 0x001405 00:93F5: 85        .byte $85   ; 
- D 0 - I - 0x001406 00:93F6: 08        .byte $08   ; 
- D 0 - I - 0x001407 00:93F7: 83        .byte $83   ; 
- D 0 - I - 0x001408 00:93F8: 4C        .byte $4C   ; 
- D 0 - I - 0x001409 00:93F9: 4C        .byte $4C   ; 
- D 0 - I - 0x00140A 00:93FA: 00        .byte $00   ; 
- D 0 - I - 0x00140B 00:93FB: 83        .byte $83   ; 
- D 0 - I - 0x00140C 00:93FC: 40        .byte $40   ; 
- D 0 - I - 0x00140D 00:93FD: 85        .byte $85   ; 
- D 0 - I - 0x00140E 00:93FE: 3E        .byte $3E   ; 
- D 0 - I - 0x00140F 00:93FF: 83        .byte $83   ; 
- D 0 - I - 0x001410 00:9400: 40        .byte $40   ; 
- D 0 - I - 0x001411 00:9401: 87        .byte $87   ; 
- D 0 - I - 0x001412 00:9402: 44        .byte $44   ; 
- D 0 - I - 0x001413 00:9403: 85        .byte $85   ; 
- D 0 - I - 0x001414 00:9404: 08        .byte $08   ; 
- D 0 - I - 0x001415 00:9405: 83        .byte $83   ; 
- D 0 - I - 0x001416 00:9406: 44        .byte $44   ; 
- D 0 - I - 0x001417 00:9407: 44        .byte $44   ; 
- D 0 - I - 0x001418 00:9408: 28        .byte $28   ; 
- D 0 - I - 0x001419 00:9409: 36        .byte $36   ; 
- D 0 - I - 0x00141A 00:940A: 1E        .byte $1E   ; 
- D 0 - I - 0x00141B 00:940B: 36        .byte $36   ; 
- D 0 - I - 0x00141C 00:940C: 26        .byte $26   ; 
- D 0 - I - 0x00141D 00:940D: 3E        .byte $3E   ; 
- D 0 - I - 0x00141E 00:940E: 34        .byte $34   ; 
- D 0 - I - 0x00141F 00:940F: 3E        .byte $3E   ; 
- D 0 - I - 0x001420 00:9410: 26        .byte $26   ; 
- D 0 - I - 0x001421 00:9411: 3E        .byte $3E   ; 
- D 0 - I - 0x001422 00:9412: 34        .byte $34   ; 
- D 0 - I - 0x001423 00:9413: 3E        .byte $3E   ; 
- D 0 - I - 0x001424 00:9414: C8        .byte $C8   ; 
- D 0 - I - 0x001425 00:9415: 11        .byte $11   ; 
- D 0 - I - 0x001426 00:9416: 10        .byte $10   ; 
- D 0 - I - 0x001427 00:9417: C8        .byte $C8   ; 
- D 0 - I - 0x001428 00:9418: D0        .byte $D0   ; 
- D 0 - I - 0x001429 00:9419: 00        .byte $00   ; 



_off000_941A:
- D 0 - I - 0x00142A 00:941A: 85        .byte $85   ; 
- D 0 - I - 0x00142B 00:941B: 50        .byte $50   ; 
- D 0 - I - 0x00142C 00:941C: 02        .byte $02   ; 
- D 0 - I - 0x00142D 00:941D: 08        .byte $08   ; 
- D 0 - I - 0x00142E 00:941E: 83        .byte $83   ; 
- D 0 - I - 0x00142F 00:941F: 4A        .byte $4A   ; 
- D 0 - I - 0x001430 00:9420: 48        .byte $48   ; 
- D 0 - I - 0x001431 00:9421: 86        .byte $86   ; 
- D 0 - I - 0x001432 00:9422: 42        .byte $42   ; 
- D 0 - I - 0x001433 00:9423: 83        .byte $83   ; 
- D 0 - I - 0x001434 00:9424: 3E        .byte $3E   ; 
- D 0 - I - 0x001435 00:9425: 85        .byte $85   ; 
- D 0 - I - 0x001436 00:9426: 48        .byte $48   ; 
- D 0 - I - 0x001437 00:9427: 3E        .byte $3E   ; 
- D 0 - I - 0x001438 00:9428: 83        .byte $83   ; 
- D 0 - I - 0x001439 00:9429: 3A        .byte $3A   ; 
- D 0 - I - 0x00143A 00:942A: 3E        .byte $3E   ; 
- D 0 - I - 0x00143B 00:942B: 40        .byte $40   ; 
- D 0 - I - 0x00143C 00:942C: 06        .byte $06   ; 
- D 0 - I - 0x00143D 00:942D: 85        .byte $85   ; 
- D 0 - I - 0x00143E 00:942E: 42        .byte $42   ; 
- D 0 - I - 0x00143F 00:942F: 3E        .byte $3E   ; 
- D 0 - I - 0x001440 00:9430: 87        .byte $87   ; 
- D 0 - I - 0x001441 00:9431: 36        .byte $36   ; 
- D 0 - I - 0x001442 00:9432: 08        .byte $08   ; 
- D 0 - I - 0x001443 00:9433: 00        .byte $00   ; 
- D 0 - I - 0x001444 00:9434: 85        .byte $85   ; 
- D 0 - I - 0x001445 00:9435: 40        .byte $40   ; 
- D 0 - I - 0x001446 00:9436: 40        .byte $40   ; 
- D 0 - I - 0x001447 00:9437: 08        .byte $08   ; 
- D 0 - I - 0x001448 00:9438: 83        .byte $83   ; 
- D 0 - I - 0x001449 00:9439: 40        .byte $40   ; 
- D 0 - I - 0x00144A 00:943A: 40        .byte $40   ; 
- D 0 - I - 0x00144B 00:943B: 86        .byte $86   ; 
- D 0 - I - 0x00144C 00:943C: 36        .byte $36   ; 
- D 0 - I - 0x00144D 00:943D: 83        .byte $83   ; 
- D 0 - I - 0x00144E 00:943E: 2C        .byte $2C   ; 
- D 0 - I - 0x00144F 00:943F: 85        .byte $85   ; 
- D 0 - I - 0x001450 00:9440: 38        .byte $38   ; 
- D 0 - I - 0x001451 00:9441: 2C        .byte $2C   ; 
- D 0 - I - 0x001452 00:9442: 83        .byte $83   ; 
- D 0 - I - 0x001453 00:9443: 28        .byte $28   ; 
- D 0 - I - 0x001454 00:9444: 2C        .byte $2C   ; 
- D 0 - I - 0x001455 00:9445: 30        .byte $30   ; 
- D 0 - I - 0x001456 00:9446: 32        .byte $32   ; 
- D 0 - I - 0x001457 00:9447: 85        .byte $85   ; 
- D 0 - I - 0x001458 00:9448: 34        .byte $34   ; 
- D 0 - I - 0x001459 00:9449: 2C        .byte $2C   ; 
- D 0 - I - 0x00145A 00:944A: 83        .byte $83   ; 
- D 0 - I - 0x00145B 00:944B: 26        .byte $26   ; 
- D 0 - I - 0x00145C 00:944C: 84        .byte $84   ; 
- D 0 - I - 0x00145D 00:944D: 26        .byte $26   ; 
- D 0 - I - 0x00145E 00:944E: 80        .byte $80   ; 
- D 0 - I - 0x00145F 00:944F: 26        .byte $26   ; 
- D 0 - I - 0x001460 00:9450: 84        .byte $84   ; 
- D 0 - I - 0x001461 00:9451: 08        .byte $08   ; 
- D 0 - I - 0x001462 00:9452: 80        .byte $80   ; 
- D 0 - I - 0x001463 00:9453: 28        .byte $28   ; 
- D 0 - I - 0x001464 00:9454: 84        .byte $84   ; 
- D 0 - I - 0x001465 00:9455: 2C        .byte $2C   ; 
- D 0 - I - 0x001466 00:9456: 80        .byte $80   ; 
- D 0 - I - 0x001467 00:9457: 28        .byte $28   ; 
- D 0 - I - 0x001468 00:9458: 87        .byte $87   ; 
- D 0 - I - 0x001469 00:9459: 26        .byte $26   ; 
- D 0 - I - 0x00146A 00:945A: 83        .byte $83   ; 
- D 0 - I - 0x00146B 00:945B: 28        .byte $28   ; 
- D 0 - I - 0x00146C 00:945C: 36        .byte $36   ; 
- D 0 - I - 0x00146D 00:945D: 1E        .byte $1E   ; 
- D 0 - I - 0x00146E 00:945E: 36        .byte $36   ; 
- D 0 - I - 0x00146F 00:945F: 28        .byte $28   ; 
- D 0 - I - 0x001470 00:9460: 36        .byte $36   ; 
- D 0 - I - 0x001471 00:9461: 26        .byte $26   ; 
- D 0 - I - 0x001472 00:9462: 22        .byte $22   ; 
- D 0 - I - 0x001473 00:9463: 1E        .byte $1E   ; 
- D 0 - I - 0x001474 00:9464: 2C        .byte $2C   ; 
- D 0 - I - 0x001475 00:9465: 14        .byte $14   ; 
- D 0 - I - 0x001476 00:9466: 2C        .byte $2C   ; 
- D 0 - I - 0x001477 00:9467: 20        .byte $20   ; 
- D 0 - I - 0x001478 00:9468: 14        .byte $14   ; 
- D 0 - I - 0x001479 00:9469: 18        .byte $18   ; 
- D 0 - I - 0x00147A 00:946A: 14        .byte $14   ; 
- D 0 - I - 0x00147B 00:946B: 22        .byte $22   ; 
- D 0 - I - 0x00147C 00:946C: 26        .byte $26   ; 
- D 0 - I - 0x00147D 00:946D: 28        .byte $28   ; 
- D 0 - I - 0x00147E 00:946E: 2A        .byte $2A   ; 
- D 0 - I - 0x00147F 00:946F: 2C        .byte $2C   ; 
- D 0 - I - 0x001480 00:9470: 14        .byte $14   ; 
- D 0 - I - 0x001481 00:9471: 18        .byte $18   ; 
- D 0 - I - 0x001482 00:9472: 1C        .byte $1C   ; 
- D 0 - I - 0x001483 00:9473: 1E        .byte $1E   ; 
- D 0 - I - 0x001484 00:9474: 84        .byte $84   ; 
- D 0 - I - 0x001485 00:9475: 1E        .byte $1E   ; 
- D 0 - I - 0x001486 00:9476: 80        .byte $80   ; 
- D 0 - I - 0x001487 00:9477: 1E        .byte $1E   ; 
- D 0 - I - 0x001488 00:9478: 84        .byte $84   ; 
- D 0 - I - 0x001489 00:9479: 08        .byte $08   ; 
- D 0 - I - 0x00148A 00:947A: 80        .byte $80   ; 
- D 0 - I - 0x00148B 00:947B: 22        .byte $22   ; 
- D 0 - I - 0x00148C 00:947C: 84        .byte $84   ; 
- D 0 - I - 0x00148D 00:947D: 26        .byte $26   ; 
- D 0 - I - 0x00148E 00:947E: 80        .byte $80   ; 
- D 0 - I - 0x00148F 00:947F: 22        .byte $22   ; 
- D 0 - I - 0x001490 00:9480: 83        .byte $83   ; 
- D 0 - I - 0x001491 00:9481: 1E        .byte $1E   ; 
- D 0 - I - 0x001492 00:9482: 14        .byte $14   ; 
- D 0 - I - 0x001493 00:9483: 18        .byte $18   ; 
- D 0 - I - 0x001494 00:9484: 1C        .byte $1C   ; 
- D 0 - I - 0x001495 00:9485: C8        .byte $C8   ; 
- D 0 - I - 0x001496 00:9486: 11        .byte $11   ; 
- D 0 - I - 0x001497 00:9487: 10        .byte $10   ; 
- D 0 - I - 0x001498 00:9488: C8        .byte $C8   ; 
- D 0 - I - 0x001499 00:9489: D0        .byte $D0   ; 
- D 0 - I - 0x00149A 00:948A: 00        .byte $00   ; 



_off000_948B:
- D 0 - I - 0x00149B 00:948B: 81        .byte $81   ; 
- D 0 - I - 0x00149C 00:948C: 32        .byte $32   ; 
- D 0 - I - 0x00149D 00:948D: 84        .byte $84   ; 
- D 0 - I - 0x00149E 00:948E: 08        .byte $08   ; 
- D 0 - I - 0x00149F 00:948F: 28        .byte $28   ; 
- D 0 - I - 0x0014A0 00:9490: 28        .byte $28   ; 
- D 0 - I - 0x0014A1 00:9491: 32        .byte $32   ; 
- D 0 - I - 0x0014A2 00:9492: 82        .byte $82   ; 
- D 0 - I - 0x0014A3 00:9493: 2E        .byte $2E   ; 
- D 0 - I - 0x0014A4 00:9494: 2A        .byte $2A   ; 
- D 0 - I - 0x0014A5 00:9495: 81        .byte $81   ; 
- D 0 - I - 0x0014A6 00:9496: 2E        .byte $2E   ; 
- D 0 - I - 0x0014A7 00:9497: 80        .byte $80   ; 
- D 0 - I - 0x0014A8 00:9498: 08        .byte $08   ; 
- D 0 - I - 0x0014A9 00:9499: 81        .byte $81   ; 
- D 0 - I - 0x0014AA 00:949A: 32        .byte $32   ; 
- D 0 - I - 0x0014AB 00:949B: 84        .byte $84   ; 
- D 0 - I - 0x0014AC 00:949C: 08        .byte $08   ; 
- D 0 - I - 0x0014AD 00:949D: 2A        .byte $2A   ; 
- D 0 - I - 0x0014AE 00:949E: 2A        .byte $2A   ; 
- D 0 - I - 0x0014AF 00:949F: 32        .byte $32   ; 
- D 0 - I - 0x0014B0 00:94A0: 82        .byte $82   ; 
- D 0 - I - 0x0014B1 00:94A1: 30        .byte $30   ; 
- D 0 - I - 0x0014B2 00:94A2: 2C        .byte $2C   ; 
- D 0 - I - 0x0014B3 00:94A3: 81        .byte $81   ; 
- D 0 - I - 0x0014B4 00:94A4: 30        .byte $30   ; 
- D 0 - I - 0x0014B5 00:94A5: 80        .byte $80   ; 
- D 0 - I - 0x0014B6 00:94A6: 08        .byte $08   ; 
- D 0 - I - 0x0014B7 00:94A7: 00        .byte $00   ; 
- D 0 - I - 0x0014B8 00:94A8: 83        .byte $83   ; 
- D 0 - I - 0x0014B9 00:94A9: 08        .byte $08   ; 
- D 0 - I - 0x0014BA 00:94AA: 81        .byte $81   ; 
- D 0 - I - 0x0014BB 00:94AB: 32        .byte $32   ; 
- D 0 - I - 0x0014BC 00:94AC: 84        .byte $84   ; 
- D 0 - I - 0x0014BD 00:94AD: 08        .byte $08   ; 
- D 0 - I - 0x0014BE 00:94AE: 28        .byte $28   ; 
- D 0 - I - 0x0014BF 00:94AF: 28        .byte $28   ; 
- D 0 - I - 0x0014C0 00:94B0: 32        .byte $32   ; 
- D 0 - I - 0x0014C1 00:94B1: 82        .byte $82   ; 
- D 0 - I - 0x0014C2 00:94B2: 2E        .byte $2E   ; 
- D 0 - I - 0x0014C3 00:94B3: 2A        .byte $2A   ; 
- D 0 - I - 0x0014C4 00:94B4: 81        .byte $81   ; 
- D 0 - I - 0x0014C5 00:94B5: 2E        .byte $2E   ; 
- D 0 - I - 0x0014C6 00:94B6: 80        .byte $80   ; 
- D 0 - I - 0x0014C7 00:94B7: 08        .byte $08   ; 
- D 0 - I - 0x0014C8 00:94B8: 81        .byte $81   ; 
- D 0 - I - 0x0014C9 00:94B9: 32        .byte $32   ; 
- D 0 - I - 0x0014CA 00:94BA: 84        .byte $84   ; 
- D 0 - I - 0x0014CB 00:94BB: 08        .byte $08   ; 
- D 0 - I - 0x0014CC 00:94BC: 2A        .byte $2A   ; 
- D 0 - I - 0x0014CD 00:94BD: 2A        .byte $2A   ; 
- D 0 - I - 0x0014CE 00:94BE: 32        .byte $32   ; 
- D 0 - I - 0x0014CF 00:94BF: 82        .byte $82   ; 
- D 0 - I - 0x0014D0 00:94C0: 30        .byte $30   ; 
- D 0 - I - 0x0014D1 00:94C1: 2C        .byte $2C   ; 
- D 0 - I - 0x0014D2 00:94C2: 81        .byte $81   ; 
- D 0 - I - 0x0014D3 00:94C3: 30        .byte $30   ; 
- D 0 - I - 0x0014D4 00:94C4: 80        .byte $80   ; 
- D 0 - I - 0x0014D5 00:94C5: 08        .byte $08   ; 
- D 0 - I - 0x0014D6 00:94C6: 86        .byte $86   ; 
- D 0 - I - 0x0014D7 00:94C7: 1A        .byte $1A   ; 
- D 0 - I - 0x0014D8 00:94C8: 28        .byte $28   ; 
- D 0 - I - 0x0014D9 00:94C9: 81        .byte $81   ; 
- D 0 - I - 0x0014DA 00:94CA: 32        .byte $32   ; 
- D 0 - I - 0x0014DB 00:94CB: 86        .byte $86   ; 
- D 0 - I - 0x0014DC 00:94CC: 16        .byte $16   ; 
- D 0 - I - 0x0014DD 00:94CD: 24        .byte $24   ; 
- D 0 - I - 0x0014DE 00:94CE: 81        .byte $81   ; 
- D 0 - I - 0x0014DF 00:94CF: 2E        .byte $2E   ; 
- D 0 - I - 0x0014E0 00:94D0: 86        .byte $86   ; 
- D 0 - I - 0x0014E1 00:94D1: 12        .byte $12   ; 
- D 0 - I - 0x0014E2 00:94D2: 20        .byte $20   ; 
- D 0 - I - 0x0014E3 00:94D3: 81        .byte $81   ; 
- D 0 - I - 0x0014E4 00:94D4: 2A        .byte $2A   ; 
- D 0 - I - 0x0014E5 00:94D5: 86        .byte $86   ; 
- D 0 - I - 0x0014E6 00:94D6: 10        .byte $10   ; 
- D 0 - I - 0x0014E7 00:94D7: 1E        .byte $1E   ; 
- D 0 - I - 0x0014E8 00:94D8: 81        .byte $81   ; 
- D 0 - I - 0x0014E9 00:94D9: 28        .byte $28   ; 
- D 0 - I - 0x0014EA 00:94DA: 40        .byte $40   ; 
- D 0 - I - 0x0014EB 00:94DB: 00        .byte $00   ; 



_off000_94DC:
- D 0 - I - 0x0014EC 00:94DC: 81        .byte $81   ; 
- D 0 - I - 0x0014ED 00:94DD: 04        .byte $04   ; 
- D 0 - I - 0x0014EE 00:94DE: 08        .byte $08   ; 
- D 0 - I - 0x0014EF 00:94DF: 81        .byte $81   ; 
- D 0 - I - 0x0014F0 00:94E0: 04        .byte $04   ; 
- D 0 - I - 0x0014F1 00:94E1: 08        .byte $08   ; 
- D 0 - I - 0x0014F2 00:94E2: 86        .byte $86   ; 
- D 0 - I - 0x0014F3 00:94E3: 32        .byte $32   ; 
- D 0 - I - 0x0014F4 00:94E4: 80        .byte $80   ; 
- D 0 - I - 0x0014F5 00:94E5: 28        .byte $28   ; 
- D 0 - I - 0x0014F6 00:94E6: 84        .byte $84   ; 
- D 0 - I - 0x0014F7 00:94E7: 32        .byte $32   ; 
- D 0 - I - 0x0014F8 00:94E8: 82        .byte $82   ; 
- D 0 - I - 0x0014F9 00:94E9: 32        .byte $32   ; 
- D 0 - I - 0x0014FA 00:94EA: 36        .byte $36   ; 
- D 0 - I - 0x0014FB 00:94EB: 3A        .byte $3A   ; 
- D 0 - I - 0x0014FC 00:94EC: 3C        .byte $3C   ; 
- D 0 - I - 0x0014FD 00:94ED: 81        .byte $81   ; 
- D 0 - I - 0x0014FE 00:94EE: 40        .byte $40   ; 
- D 0 - I - 0x0014FF 00:94EF: 08        .byte $08   ; 
- D 0 - I - 0x001500 00:94F0: 86        .byte $86   ; 
- D 0 - I - 0x001501 00:94F1: 32        .byte $32   ; 
- D 0 - I - 0x001502 00:94F2: 80        .byte $80   ; 
- D 0 - I - 0x001503 00:94F3: 28        .byte $28   ; 
- D 0 - I - 0x001504 00:94F4: 84        .byte $84   ; 
- D 0 - I - 0x001505 00:94F5: 32        .byte $32   ; 
- D 0 - I - 0x001506 00:94F6: 82        .byte $82   ; 
- D 0 - I - 0x001507 00:94F7: 32        .byte $32   ; 
- D 0 - I - 0x001508 00:94F8: 36        .byte $36   ; 
- D 0 - I - 0x001509 00:94F9: 3A        .byte $3A   ; 
- D 0 - I - 0x00150A 00:94FA: 3C        .byte $3C   ; 
- D 0 - I - 0x00150B 00:94FB: 81        .byte $81   ; 
- D 0 - I - 0x00150C 00:94FC: 40        .byte $40   ; 
- D 0 - I - 0x00150D 00:94FD: 08        .byte $08   ; 
- D 0 - I - 0x00150E 00:94FE: 00        .byte $00   ; 
- D 0 - I - 0x00150F 00:94FF: 11        .byte $11   ; 
- D 0 - I - 0x001510 00:9500: 90        .byte $90   ; 
- D 0 - I - 0x001511 00:9501: 90        .byte $90   ; 
- D 0 - I - 0x001512 00:9502: 00        .byte $00   ; 
- D 0 - I - 0x001513 00:9503: F6        .byte $F6   ; 
- D 0 - I - 0x001514 00:9504: 84        .byte $84   ; 
- D 0 - I - 0x001515 00:9505: 1A        .byte $1A   ; 
- D 0 - I - 0x001516 00:9506: 82        .byte $82   ; 
- D 0 - I - 0x001517 00:9507: 1A        .byte $1A   ; 
- D 0 - I - 0x001518 00:9508: 1A        .byte $1A   ; 
- D 0 - I - 0x001519 00:9509: 84        .byte $84   ; 
- D 0 - I - 0x00151A 00:950A: 1A        .byte $1A   ; 
- D 0 - I - 0x00151B 00:950B: 82        .byte $82   ; 
- D 0 - I - 0x00151C 00:950C: 1A        .byte $1A   ; 
- D 0 - I - 0x00151D 00:950D: 1A        .byte $1A   ; 
- D 0 - I - 0x00151E 00:950E: F0        .byte $F0   ; 
- D 0 - I - 0x00151F 00:950F: F2        .byte $F2   ; 
- D 0 - I - 0x001520 00:9510: 84        .byte $84   ; 
- D 0 - I - 0x001521 00:9511: 16        .byte $16   ; 
- D 0 - I - 0x001522 00:9512: 82        .byte $82   ; 
- D 0 - I - 0x001523 00:9513: 16        .byte $16   ; 
- D 0 - I - 0x001524 00:9514: 16        .byte $16   ; 
- D 0 - I - 0x001525 00:9515: 84        .byte $84   ; 
- D 0 - I - 0x001526 00:9516: 16        .byte $16   ; 
- D 0 - I - 0x001527 00:9517: 82        .byte $82   ; 
- D 0 - I - 0x001528 00:9518: 16        .byte $16   ; 
- D 0 - I - 0x001529 00:9519: 16        .byte $16   ; 
- D 0 - I - 0x00152A 00:951A: F0        .byte $F0   ; 
- D 0 - I - 0x00152B 00:951B: F2        .byte $F2   ; 
- D 0 - I - 0x00152C 00:951C: 84        .byte $84   ; 
- D 0 - I - 0x00152D 00:951D: 12        .byte $12   ; 
- D 0 - I - 0x00152E 00:951E: 82        .byte $82   ; 
- D 0 - I - 0x00152F 00:951F: 12        .byte $12   ; 
- D 0 - I - 0x001530 00:9520: 12        .byte $12   ; 
- D 0 - I - 0x001531 00:9521: 84        .byte $84   ; 
- D 0 - I - 0x001532 00:9522: 12        .byte $12   ; 
- D 0 - I - 0x001533 00:9523: 82        .byte $82   ; 
- D 0 - I - 0x001534 00:9524: 12        .byte $12   ; 
- D 0 - I - 0x001535 00:9525: 12        .byte $12   ; 
- D 0 - I - 0x001536 00:9526: F0        .byte $F0   ; 
- D 0 - I - 0x001537 00:9527: F2        .byte $F2   ; 
- D 0 - I - 0x001538 00:9528: 84        .byte $84   ; 
- D 0 - I - 0x001539 00:9529: 10        .byte $10   ; 
- D 0 - I - 0x00153A 00:952A: 82        .byte $82   ; 
- D 0 - I - 0x00153B 00:952B: 10        .byte $10   ; 
- D 0 - I - 0x00153C 00:952C: 10        .byte $10   ; 
- D 0 - I - 0x00153D 00:952D: 84        .byte $84   ; 
- D 0 - I - 0x00153E 00:952E: 10        .byte $10   ; 
- D 0 - I - 0x00153F 00:952F: 82        .byte $82   ; 
- D 0 - I - 0x001540 00:9530: 10        .byte $10   ; 
- D 0 - I - 0x001541 00:9531: 10        .byte $10   ; 
- D 0 - I - 0x001542 00:9532: F0        .byte $F0   ; 
- D 0 - I - 0x001543 00:9533: 84        .byte $84   ; 
- D 0 - I - 0x001544 00:9534: 10        .byte $10   ; 
- D 0 - I - 0x001545 00:9535: 82        .byte $82   ; 
- D 0 - I - 0x001546 00:9536: 10        .byte $10   ; 
- D 0 - I - 0x001547 00:9537: 6C        .byte $6C   ; 
- D 0 - I - 0x001548 00:9538: 84        .byte $84   ; 
- D 0 - I - 0x001549 00:9539: 10        .byte $10   ; 
- D 0 - I - 0x00154A 00:953A: 82        .byte $82   ; 
- D 0 - I - 0x00154B 00:953B: 10        .byte $10   ; 
- D 0 - I - 0x00154C 00:953C: 6C        .byte $6C   ; 
- D 0 - I - 0x00154D 00:953D: 84        .byte $84   ; 
- D 0 - I - 0x00154E 00:953E: 10        .byte $10   ; 
- D 0 - I - 0x00154F 00:953F: 82        .byte $82   ; 
- D 0 - I - 0x001550 00:9540: 10        .byte $10   ; 
- D 0 - I - 0x001551 00:9541: 6C        .byte $6C   ; 
- D 0 - I - 0x001552 00:9542: 10        .byte $10   ; 
- D 0 - I - 0x001553 00:9543: 6C        .byte $6C   ; 
- D 0 - I - 0x001554 00:9544: 10        .byte $10   ; 
- D 0 - I - 0x001555 00:9545: 6C        .byte $6C   ; 
- D 0 - I - 0x001556 00:9546: 84        .byte $84   ; 
- D 0 - I - 0x001557 00:9547: 10        .byte $10   ; 
- D 0 - I - 0x001558 00:9548: 82        .byte $82   ; 
- D 0 - I - 0x001559 00:9549: 10        .byte $10   ; 
- D 0 - I - 0x00155A 00:954A: 6C        .byte $6C   ; 
- D 0 - I - 0x00155B 00:954B: 84        .byte $84   ; 
- D 0 - I - 0x00155C 00:954C: 10        .byte $10   ; 
- D 0 - I - 0x00155D 00:954D: 82        .byte $82   ; 
- D 0 - I - 0x00155E 00:954E: 10        .byte $10   ; 
- D 0 - I - 0x00155F 00:954F: 6C        .byte $6C   ; 
- D 0 - I - 0x001560 00:9550: 84        .byte $84   ; 
- D 0 - I - 0x001561 00:9551: 10        .byte $10   ; 
- D 0 - I - 0x001562 00:9552: 82        .byte $82   ; 
- D 0 - I - 0x001563 00:9553: 10        .byte $10   ; 
- D 0 - I - 0x001564 00:9554: 6C        .byte $6C   ; 
- D 0 - I - 0x001565 00:9555: 10        .byte $10   ; 
- D 0 - I - 0x001566 00:9556: 6C        .byte $6C   ; 
- D 0 - I - 0x001567 00:9557: 10        .byte $10   ; 
- D 0 - I - 0x001568 00:9558: 6C        .byte $6C   ; 
- D 0 - I - 0x001569 00:9559: 84        .byte $84   ; 
- D 0 - I - 0x00156A 00:955A: 10        .byte $10   ; 
- D 0 - I - 0x00156B 00:955B: 82        .byte $82   ; 
- D 0 - I - 0x00156C 00:955C: 10        .byte $10   ; 
- D 0 - I - 0x00156D 00:955D: 6C        .byte $6C   ; 
- D 0 - I - 0x00156E 00:955E: 84        .byte $84   ; 
- D 0 - I - 0x00156F 00:955F: 10        .byte $10   ; 
- D 0 - I - 0x001570 00:9560: 82        .byte $82   ; 
- D 0 - I - 0x001571 00:9561: 10        .byte $10   ; 
- D 0 - I - 0x001572 00:9562: 6C        .byte $6C   ; 
- D 0 - I - 0x001573 00:9563: 84        .byte $84   ; 
- D 0 - I - 0x001574 00:9564: 10        .byte $10   ; 
- D 0 - I - 0x001575 00:9565: 82        .byte $82   ; 
- D 0 - I - 0x001576 00:9566: 10        .byte $10   ; 
- D 0 - I - 0x001577 00:9567: 6C        .byte $6C   ; 
- D 0 - I - 0x001578 00:9568: 10        .byte $10   ; 
- D 0 - I - 0x001579 00:9569: 6C        .byte $6C   ; 
- D 0 - I - 0x00157A 00:956A: 10        .byte $10   ; 
- D 0 - I - 0x00157B 00:956B: 6C        .byte $6C   ; 
- D 0 - I - 0x00157C 00:956C: 84        .byte $84   ; 
- D 0 - I - 0x00157D 00:956D: 0C        .byte $0C   ; 
- D 0 - I - 0x00157E 00:956E: 1A        .byte $1A   ; 
- D 0 - I - 0x00157F 00:956F: 82        .byte $82   ; 
- D 0 - I - 0x001580 00:9570: 1A        .byte $1A   ; 
- D 0 - I - 0x001581 00:9571: 1E        .byte $1E   ; 
- D 0 - I - 0x001582 00:9572: 22        .byte $22   ; 
- D 0 - I - 0x001583 00:9573: 24        .byte $24   ; 
- D 0 - I - 0x001584 00:9574: 84        .byte $84   ; 
- D 0 - I - 0x001585 00:9575: 28        .byte $28   ; 
- D 0 - I - 0x001586 00:9576: 82        .byte $82   ; 
- D 0 - I - 0x001587 00:9577: 0C        .byte $0C   ; 
- D 0 - I - 0x001588 00:9578: 68        .byte $68   ; 
- D 0 - I - 0x001589 00:9579: 0C        .byte $0C   ; 
- D 0 - I - 0x00158A 00:957A: 68        .byte $68   ; 
- D 0 - I - 0x00158B 00:957B: 0C        .byte $0C   ; 
- D 0 - I - 0x00158C 00:957C: 68        .byte $68   ; 
- D 0 - I - 0x00158D 00:957D: 84        .byte $84   ; 
- D 0 - I - 0x00158E 00:957E: 04        .byte $04   ; 
- D 0 - I - 0x00158F 00:957F: 82        .byte $82   ; 
- D 0 - I - 0x001590 00:9580: 04        .byte $04   ; 
- D 0 - I - 0x001591 00:9581: 66        .byte $66   ; 
- D 0 - I - 0x001592 00:9582: 84        .byte $84   ; 
- D 0 - I - 0x001593 00:9583: 04        .byte $04   ; 
- D 0 - I - 0x001594 00:9584: 82        .byte $82   ; 
- D 0 - I - 0x001595 00:9585: 04        .byte $04   ; 
- D 0 - I - 0x001596 00:9586: 66        .byte $66   ; 
- D 0 - I - 0x001597 00:9587: 84        .byte $84   ; 
- D 0 - I - 0x001598 00:9588: 04        .byte $04   ; 
- D 0 - I - 0x001599 00:9589: 82        .byte $82   ; 
- D 0 - I - 0x00159A 00:958A: 04        .byte $04   ; 
- D 0 - I - 0x00159B 00:958B: 66        .byte $66   ; 
- D 0 - I - 0x00159C 00:958C: 04        .byte $04   ; 
- D 0 - I - 0x00159D 00:958D: 66        .byte $66   ; 
- D 0 - I - 0x00159E 00:958E: 04        .byte $04   ; 
- D 0 - I - 0x00159F 00:958F: 66        .byte $66   ; 
- D 0 - I - 0x0015A0 00:9590: 84        .byte $84   ; 
- D 0 - I - 0x0015A1 00:9591: 70        .byte $70   ; 
- D 0 - I - 0x0015A2 00:9592: 1A        .byte $1A   ; 
- D 0 - I - 0x0015A3 00:9593: 82        .byte $82   ; 
- D 0 - I - 0x0015A4 00:9594: 1A        .byte $1A   ; 
- D 0 - I - 0x0015A5 00:9595: 1E        .byte $1E   ; 
- D 0 - I - 0x0015A6 00:9596: 22        .byte $22   ; 
- D 0 - I - 0x0015A7 00:9597: 24        .byte $24   ; 
- D 0 - I - 0x0015A8 00:9598: 84        .byte $84   ; 
- D 0 - I - 0x0015A9 00:9599: 28        .byte $28   ; 
- D 0 - I - 0x0015AA 00:959A: 82        .byte $82   ; 
- D 0 - I - 0x0015AB 00:959B: 70        .byte $70   ; 
- D 0 - I - 0x0015AC 00:959C: 64        .byte $64   ; 
- D 0 - I - 0x0015AD 00:959D: 70        .byte $70   ; 
- D 0 - I - 0x0015AE 00:959E: 64        .byte $64   ; 
- D 0 - I - 0x0015AF 00:959F: 70        .byte $70   ; 
- D 0 - I - 0x0015B0 00:95A0: 64        .byte $64   ; 



_off000_95A1:
- D 0 - I - 0x0015B1 00:95A1: 84        .byte $84   ; 
- D 0 - I - 0x0015B2 00:95A2: 32        .byte $32   ; 
- D 0 - I - 0x0015B3 00:95A3: 08        .byte $08   ; 
- D 0 - I - 0x0015B4 00:95A4: 80        .byte $80   ; 
- D 0 - I - 0x0015B5 00:95A5: 28        .byte $28   ; 
- D 0 - I - 0x0015B6 00:95A6: 84        .byte $84   ; 
- D 0 - I - 0x0015B7 00:95A7: 32        .byte $32   ; 
- D 0 - I - 0x0015B8 00:95A8: 82        .byte $82   ; 
- D 0 - I - 0x0015B9 00:95A9: 32        .byte $32   ; 
- D 0 - I - 0x0015BA 00:95AA: 36        .byte $36   ; 
- D 0 - I - 0x0015BB 00:95AB: 3A        .byte $3A   ; 
- D 0 - I - 0x0015BC 00:95AC: 3C        .byte $3C   ; 
- D 0 - I - 0x0015BD 00:95AD: 81        .byte $81   ; 
- D 0 - I - 0x0015BE 00:95AE: 40        .byte $40   ; 
- D 0 - I - 0x0015BF 00:95AF: 84        .byte $84   ; 
- D 0 - I - 0x0015C0 00:95B0: 08        .byte $08   ; 
- D 0 - I - 0x0015C1 00:95B1: 40        .byte $40   ; 
- D 0 - I - 0x0015C2 00:95B2: 85        .byte $85   ; 
- D 0 - I - 0x0015C3 00:95B3: 40        .byte $40   ; 
- D 0 - I - 0x0015C4 00:95B4: 06        .byte $06   ; 
- D 0 - I - 0x0015C5 00:95B5: 87        .byte $87   ; 
- D 0 - I - 0x0015C6 00:95B6: 44        .byte $44   ; 
- D 0 - I - 0x0015C7 00:95B7: 00        .byte $00   ; 
- D 0 - I - 0x0015C8 00:95B8: 84        .byte $84   ; 
- D 0 - I - 0x0015C9 00:95B9: 22        .byte $22   ; 
- D 0 - I - 0x0015CA 00:95BA: 08        .byte $08   ; 
- D 0 - I - 0x0015CB 00:95BB: 85        .byte $85   ; 
- D 0 - I - 0x0015CC 00:95BC: 22        .byte $22   ; 
- D 0 - I - 0x0015CD 00:95BD: 22        .byte $22   ; 
- D 0 - I - 0x0015CE 00:95BE: 87        .byte $87   ; 
- D 0 - I - 0x0015CF 00:95BF: 1E        .byte $1E   ; 
- D 0 - I - 0x0015D0 00:95C0: 84        .byte $84   ; 
- D 0 - I - 0x0015D1 00:95C1: 22        .byte $22   ; 
- D 0 - I - 0x0015D2 00:95C2: 82        .byte $82   ; 
- D 0 - I - 0x0015D3 00:95C3: 08        .byte $08   ; 
- D 0 - I - 0x0015D4 00:95C4: 22        .byte $22   ; 
- D 0 - I - 0x0015D5 00:95C5: 22        .byte $22   ; 
- D 0 - I - 0x0015D6 00:95C6: 24        .byte $24   ; 
- D 0 - I - 0x0015D7 00:95C7: 28        .byte $28   ; 
- D 0 - I - 0x0015D8 00:95C8: 2C        .byte $2C   ; 
- D 0 - I - 0x0015D9 00:95C9: 84        .byte $84   ; 
- D 0 - I - 0x0015DA 00:95CA: 2E        .byte $2E   ; 
- D 0 - I - 0x0015DB 00:95CB: 82        .byte $82   ; 
- D 0 - I - 0x0015DC 00:95CC: 08        .byte $08   ; 
- D 0 - I - 0x0015DD 00:95CD: 32        .byte $32   ; 
- D 0 - I - 0x0015DE 00:95CE: 32        .byte $32   ; 
- D 0 - I - 0x0015DF 00:95CF: 36        .byte $36   ; 
- D 0 - I - 0x0015E0 00:95D0: 3A        .byte $3A   ; 
- D 0 - I - 0x0015E1 00:95D1: 3C        .byte $3C   ; 
- D 0 - I - 0x0015E2 00:95D2: 86        .byte $86   ; 
- D 0 - I - 0x0015E3 00:95D3: 40        .byte $40   ; 
- D 0 - I - 0x0015E4 00:95D4: 85        .byte $85   ; 
- D 0 - I - 0x0015E5 00:95D5: 2E        .byte $2E   ; 
- D 0 - I - 0x0015E6 00:95D6: 32        .byte $32   ; 
- D 0 - I - 0x0015E7 00:95D7: 87        .byte $87   ; 
- D 0 - I - 0x0015E8 00:95D8: 36        .byte $36   ; 
- D 0 - I - 0x0015E9 00:95D9: F2        .byte $F2   ; 
- D 0 - I - 0x0015EA 00:95DA: 84        .byte $84   ; 
- D 0 - I - 0x0015EB 00:95DB: 1A        .byte $1A   ; 
- D 0 - I - 0x0015EC 00:95DC: 82        .byte $82   ; 
- D 0 - I - 0x0015ED 00:95DD: 1A        .byte $1A   ; 
- D 0 - I - 0x0015EE 00:95DE: 1A        .byte $1A   ; 
- D 0 - I - 0x0015EF 00:95DF: 84        .byte $84   ; 
- D 0 - I - 0x0015F0 00:95E0: 1A        .byte $1A   ; 
- D 0 - I - 0x0015F1 00:95E1: 82        .byte $82   ; 
- D 0 - I - 0x0015F2 00:95E2: 1A        .byte $1A   ; 
- D 0 - I - 0x0015F3 00:95E3: 1A        .byte $1A   ; 
- D 0 - I - 0x0015F4 00:95E4: F0        .byte $F0   ; 
- D 0 - I - 0x0015F5 00:95E5: F2        .byte $F2   ; 
- D 0 - I - 0x0015F6 00:95E6: 84        .byte $84   ; 
- D 0 - I - 0x0015F7 00:95E7: 16        .byte $16   ; 
- D 0 - I - 0x0015F8 00:95E8: 82        .byte $82   ; 
- D 0 - I - 0x0015F9 00:95E9: 16        .byte $16   ; 
- D 0 - I - 0x0015FA 00:95EA: 16        .byte $16   ; 
- D 0 - I - 0x0015FB 00:95EB: 84        .byte $84   ; 
- D 0 - I - 0x0015FC 00:95EC: 16        .byte $16   ; 
- D 0 - I - 0x0015FD 00:95ED: 82        .byte $82   ; 
- D 0 - I - 0x0015FE 00:95EE: 16        .byte $16   ; 
- D 0 - I - 0x0015FF 00:95EF: 16        .byte $16   ; 
- D 0 - I - 0x001600 00:95F0: F0        .byte $F0   ; 



_off000_95F1:
- D 0 - I - 0x001601 00:95F1: 81        .byte $81   ; 
- D 0 - I - 0x001602 00:95F2: 46        .byte $46   ; 
- D 0 - I - 0x001603 00:95F3: 85        .byte $85   ; 
- D 0 - I - 0x001604 00:95F4: 08        .byte $08   ; 
- D 0 - I - 0x001605 00:95F5: 08        .byte $08   ; 
- D 0 - I - 0x001606 00:95F6: 46        .byte $46   ; 
- D 0 - I - 0x001607 00:95F7: 46        .byte $46   ; 
- D 0 - I - 0x001608 00:95F8: 87        .byte $87   ; 
- D 0 - I - 0x001609 00:95F9: 44        .byte $44   ; 
- D 0 - I - 0x00160A 00:95FA: 06        .byte $06   ; 
- D 0 - I - 0x00160B 00:95FB: 44        .byte $44   ; 
- D 0 - I - 0x00160C 00:95FC: 85        .byte $85   ; 
- D 0 - I - 0x00160D 00:95FD: 08        .byte $08   ; 
- D 0 - I - 0x00160E 00:95FE: 06        .byte $06   ; 
- D 0 - I - 0x00160F 00:95FF: 81        .byte $81   ; 
- D 0 - I - 0x001610 00:9600: 40        .byte $40   ; 
- D 0 - I - 0x001611 00:9601: 86        .byte $86   ; 
- D 0 - I - 0x001612 00:9602: 40        .byte $40   ; 
- D 0 - I - 0x001613 00:9603: 84        .byte $84   ; 
- D 0 - I - 0x001614 00:9604: 3C        .byte $3C   ; 
- D 0 - I - 0x001615 00:9605: 82        .byte $82   ; 
- D 0 - I - 0x001616 00:9606: 3C        .byte $3C   ; 
- D 0 - I - 0x001617 00:9607: 40        .byte $40   ; 
- D 0 - I - 0x001618 00:9608: 81        .byte $81   ; 
- D 0 - I - 0x001619 00:9609: 06        .byte $06   ; 
- D 0 - I - 0x00161A 00:960A: 84        .byte $84   ; 
- D 0 - I - 0x00161B 00:960B: 40        .byte $40   ; 
- D 0 - I - 0x00161C 00:960C: 3C        .byte $3C   ; 
- D 0 - I - 0x00161D 00:960D: 38        .byte $38   ; 
- D 0 - I - 0x00161E 00:960E: 82        .byte $82   ; 
- D 0 - I - 0x00161F 00:960F: 38        .byte $38   ; 
- D 0 - I - 0x001620 00:9610: 3C        .byte $3C   ; 
- D 0 - I - 0x001621 00:9611: 81        .byte $81   ; 
- D 0 - I - 0x001622 00:9612: 40        .byte $40   ; 
- D 0 - I - 0x001623 00:9613: 84        .byte $84   ; 
- D 0 - I - 0x001624 00:9614: 3C        .byte $3C   ; 
- D 0 - I - 0x001625 00:9615: 38        .byte $38   ; 
- D 0 - I - 0x001626 00:9616: 00        .byte $00   ; 
- D 0 - I - 0x001627 00:9617: 84        .byte $84   ; 
- D 0 - I - 0x001628 00:9618: 2A        .byte $2A   ; 
- D 0 - I - 0x001629 00:9619: 82        .byte $82   ; 
- D 0 - I - 0x00162A 00:961A: 08        .byte $08   ; 
- D 0 - I - 0x00162B 00:961B: 2A        .byte $2A   ; 
- D 0 - I - 0x00162C 00:961C: 2A        .byte $2A   ; 
- D 0 - I - 0x00162D 00:961D: 2E        .byte $2E   ; 
- D 0 - I - 0x00162E 00:961E: 32        .byte $32   ; 
- D 0 - I - 0x00162F 00:961F: 36        .byte $36   ; 
- D 0 - I - 0x001630 00:9620: 85        .byte $85   ; 
- D 0 - I - 0x001631 00:9621: 38        .byte $38   ; 
- D 0 - I - 0x001632 00:9622: 08        .byte $08   ; 
- D 0 - I - 0x001633 00:9623: 87        .byte $87   ; 
- D 0 - I - 0x001634 00:9624: 38        .byte $38   ; 
- D 0 - I - 0x001635 00:9625: 38        .byte $38   ; 
- D 0 - I - 0x001636 00:9626: 85        .byte $85   ; 
- D 0 - I - 0x001637 00:9627: 36        .byte $36   ; 
- D 0 - I - 0x001638 00:9628: 32        .byte $32   ; 
- D 0 - I - 0x001639 00:9629: 85        .byte $85   ; 
- D 0 - I - 0x00163A 00:962A: 38        .byte $38   ; 
- D 0 - I - 0x00163B 00:962B: 08        .byte $08   ; 
- D 0 - I - 0x00163C 00:962C: 87        .byte $87   ; 
- D 0 - I - 0x00163D 00:962D: 32        .byte $32   ; 
- D 0 - I - 0x00163E 00:962E: 85        .byte $85   ; 
- D 0 - I - 0x00163F 00:962F: 2E        .byte $2E   ; 
- D 0 - I - 0x001640 00:9630: 2E        .byte $2E   ; 
- D 0 - I - 0x001641 00:9631: 2A        .byte $2A   ; 
- D 0 - I - 0x001642 00:9632: 85        .byte $85   ; 
- D 0 - I - 0x001643 00:9633: 2E        .byte $2E   ; 
- D 0 - I - 0x001644 00:9634: 08        .byte $08   ; 
- D 0 - I - 0x001645 00:9635: 87        .byte $87   ; 
- D 0 - I - 0x001646 00:9636: 2E        .byte $2E   ; 
- D 0 - I - 0x001647 00:9637: 2E        .byte $2E   ; 
- D 0 - I - 0x001648 00:9638: 85        .byte $85   ; 
- D 0 - I - 0x001649 00:9639: 2A        .byte $2A   ; 
- D 0 - I - 0x00164A 00:963A: 2E        .byte $2E   ; 
- D 0 - I - 0x00164B 00:963B: 84        .byte $84   ; 
- D 0 - I - 0x00164C 00:963C: 2A        .byte $2A   ; 
- D 0 - I - 0x00164D 00:963D: 82        .byte $82   ; 
- D 0 - I - 0x00164E 00:963E: 2A        .byte $2A   ; 
- D 0 - I - 0x00164F 00:963F: 28        .byte $28   ; 
- D 0 - I - 0x001650 00:9640: 84        .byte $84   ; 
- D 0 - I - 0x001651 00:9641: 2A        .byte $2A   ; 
- D 0 - I - 0x001652 00:9642: 82        .byte $82   ; 
- D 0 - I - 0x001653 00:9643: 2A        .byte $2A   ; 
- D 0 - I - 0x001654 00:9644: 2E        .byte $2E   ; 
- D 0 - I - 0x001655 00:9645: 86        .byte $86   ; 
- D 0 - I - 0x001656 00:9646: 32        .byte $32   ; 
- D 0 - I - 0x001657 00:9647: 84        .byte $84   ; 
- D 0 - I - 0x001658 00:9648: 2E        .byte $2E   ; 
- D 0 - I - 0x001659 00:9649: 2A        .byte $2A   ; 
- D 0 - I - 0x00165A 00:964A: 84        .byte $84   ; 
- D 0 - I - 0x00165B 00:964B: 28        .byte $28   ; 
- D 0 - I - 0x00165C 00:964C: 82        .byte $82   ; 
- D 0 - I - 0x00165D 00:964D: 28        .byte $28   ; 
- D 0 - I - 0x00165E 00:964E: 24        .byte $24   ; 
- D 0 - I - 0x00165F 00:964F: 84        .byte $84   ; 
- D 0 - I - 0x001660 00:9650: 28        .byte $28   ; 
- D 0 - I - 0x001661 00:9651: 82        .byte $82   ; 
- D 0 - I - 0x001662 00:9652: 28        .byte $28   ; 
- D 0 - I - 0x001663 00:9653: 2A        .byte $2A   ; 
- D 0 - I - 0x001664 00:9654: 86        .byte $86   ; 
- D 0 - I - 0x001665 00:9655: 2E        .byte $2E   ; 
- D 0 - I - 0x001666 00:9656: 84        .byte $84   ; 
- D 0 - I - 0x001667 00:9657: 2A        .byte $2A   ; 
- D 0 - I - 0x001668 00:9658: 28        .byte $28   ; 
- D 0 - I - 0x001669 00:9659: 11        .byte $11   ; 
- D 0 - I - 0x00166A 00:965A: 90        .byte $90   ; 
- D 0 - I - 0x00166B 00:965B: 90        .byte $90   ; 
- D 0 - I - 0x00166C 00:965C: 00        .byte $00   ; 
- D 0 - I - 0x00166D 00:965D: F2        .byte $F2   ; 
- D 0 - I - 0x00166E 00:965E: 84        .byte $84   ; 
- D 0 - I - 0x00166F 00:965F: 12        .byte $12   ; 
- D 0 - I - 0x001670 00:9660: 82        .byte $82   ; 
- D 0 - I - 0x001671 00:9661: 12        .byte $12   ; 
- D 0 - I - 0x001672 00:9662: 12        .byte $12   ; 
- D 0 - I - 0x001673 00:9663: 84        .byte $84   ; 
- D 0 - I - 0x001674 00:9664: 12        .byte $12   ; 
- D 0 - I - 0x001675 00:9665: 82        .byte $82   ; 
- D 0 - I - 0x001676 00:9666: 12        .byte $12   ; 
- D 0 - I - 0x001677 00:9667: 12        .byte $12   ; 
- D 0 - I - 0x001678 00:9668: F0        .byte $F0   ; 
- D 0 - I - 0x001679 00:9669: F2        .byte $F2   ; 
- D 0 - I - 0x00167A 00:966A: 84        .byte $84   ; 
- D 0 - I - 0x00167B 00:966B: 20        .byte $20   ; 
- D 0 - I - 0x00167C 00:966C: 82        .byte $82   ; 
- D 0 - I - 0x00167D 00:966D: 20        .byte $20   ; 
- D 0 - I - 0x00167E 00:966E: 20        .byte $20   ; 
- D 0 - I - 0x00167F 00:966F: 84        .byte $84   ; 
- D 0 - I - 0x001680 00:9670: 20        .byte $20   ; 
- D 0 - I - 0x001681 00:9671: 82        .byte $82   ; 
- D 0 - I - 0x001682 00:9672: 20        .byte $20   ; 
- D 0 - I - 0x001683 00:9673: 20        .byte $20   ; 
- D 0 - I - 0x001684 00:9674: F0        .byte $F0   ; 
- D 0 - I - 0x001685 00:9675: F2        .byte $F2   ; 
- D 0 - I - 0x001686 00:9676: 84        .byte $84   ; 
- D 0 - I - 0x001687 00:9677: 1C        .byte $1C   ; 
- D 0 - I - 0x001688 00:9678: 82        .byte $82   ; 
- D 0 - I - 0x001689 00:9679: 1C        .byte $1C   ; 
- D 0 - I - 0x00168A 00:967A: 1C        .byte $1C   ; 
- D 0 - I - 0x00168B 00:967B: 84        .byte $84   ; 
- D 0 - I - 0x00168C 00:967C: 1C        .byte $1C   ; 
- D 0 - I - 0x00168D 00:967D: 82        .byte $82   ; 
- D 0 - I - 0x00168E 00:967E: 1C        .byte $1C   ; 
- D 0 - I - 0x00168F 00:967F: 1C        .byte $1C   ; 
- D 0 - I - 0x001690 00:9680: F0        .byte $F0   ; 
- D 0 - I - 0x001691 00:9681: F2        .byte $F2   ; 
- D 0 - I - 0x001692 00:9682: 84        .byte $84   ; 
- D 0 - I - 0x001693 00:9683: 1A        .byte $1A   ; 
- D 0 - I - 0x001694 00:9684: 82        .byte $82   ; 
- D 0 - I - 0x001695 00:9685: 1A        .byte $1A   ; 
- D 0 - I - 0x001696 00:9686: 1A        .byte $1A   ; 
- D 0 - I - 0x001697 00:9687: 84        .byte $84   ; 
- D 0 - I - 0x001698 00:9688: 1A        .byte $1A   ; 
- D 0 - I - 0x001699 00:9689: 82        .byte $82   ; 
- D 0 - I - 0x00169A 00:968A: 1A        .byte $1A   ; 
- D 0 - I - 0x00169B 00:968B: 1A        .byte $1A   ; 
- D 0 - I - 0x00169C 00:968C: F0        .byte $F0   ; 



_off000_968D:
- D 0 - I - 0x00169D 00:968D: 86        .byte $86   ; 
- D 0 - I - 0x00169E 00:968E: 26        .byte $26   ; 
- D 0 - I - 0x00169F 00:968F: 84        .byte $84   ; 
- D 0 - I - 0x0016A0 00:9690: 26        .byte $26   ; 
- D 0 - I - 0x0016A1 00:9691: 82        .byte $82   ; 
- D 0 - I - 0x0016A2 00:9692: 26        .byte $26   ; 
- D 0 - I - 0x0016A3 00:9693: 28        .byte $28   ; 
- D 0 - I - 0x0016A4 00:9694: 84        .byte $84   ; 
- D 0 - I - 0x0016A5 00:9695: 2C        .byte $2C   ; 
- D 0 - I - 0x0016A6 00:9696: 82        .byte $82   ; 
- D 0 - I - 0x0016A7 00:9697: 2C        .byte $2C   ; 
- D 0 - I - 0x0016A8 00:9698: 30        .byte $30   ; 
- D 0 - I - 0x0016A9 00:9699: 84        .byte $84   ; 
- D 0 - I - 0x0016AA 00:969A: 32        .byte $32   ; 
- D 0 - I - 0x0016AB 00:969B: 36        .byte $36   ; 
- D 0 - I - 0x0016AC 00:969C: 18        .byte $18   ; 
- D 0 - I - 0x0016AD 00:969D: 82        .byte $82   ; 
- D 0 - I - 0x0016AE 00:969E: 18        .byte $18   ; 
- D 0 - I - 0x0016AF 00:969F: 18        .byte $18   ; 
- D 0 - I - 0x0016B0 00:96A0: 84        .byte $84   ; 
- D 0 - I - 0x0016B1 00:96A1: 16        .byte $16   ; 
- D 0 - I - 0x0016B2 00:96A2: 82        .byte $82   ; 
- D 0 - I - 0x0016B3 00:96A3: 16        .byte $16   ; 
- D 0 - I - 0x0016B4 00:96A4: 16        .byte $16   ; 
- D 0 - I - 0x0016B5 00:96A5: 84        .byte $84   ; 
- D 0 - I - 0x0016B6 00:96A6: 14        .byte $14   ; 
- D 0 - I - 0x0016B7 00:96A7: 82        .byte $82   ; 
- D 0 - I - 0x0016B8 00:96A8: 14        .byte $14   ; 
- D 0 - I - 0x0016B9 00:96A9: 14        .byte $14   ; 
- D 0 - I - 0x0016BA 00:96AA: 84        .byte $84   ; 
- D 0 - I - 0x0016BB 00:96AB: 12        .byte $12   ; 
- D 0 - I - 0x0016BC 00:96AC: 12        .byte $12   ; 
- D 0 - I - 0x0016BD 00:96AD: 00        .byte $00   ; 
- D 0 - I - 0x0016BE 00:96AE: 11        .byte $11   ; 
- D 0 - I - 0x0016BF 00:96AF: 90        .byte $90   ; 
- D 0 - I - 0x0016C0 00:96B0: 90        .byte $90   ; 
- D 0 - I - 0x0016C1 00:96B1: 00        .byte $00   ; 
- D 0 - I - 0x0016C2 00:96B2: 84        .byte $84   ; 
- D 0 - I - 0x0016C3 00:96B3: 36        .byte $36   ; 
- D 0 - I - 0x0016C4 00:96B4: 82        .byte $82   ; 
- D 0 - I - 0x0016C5 00:96B5: 36        .byte $36   ; 
- D 0 - I - 0x0016C6 00:96B6: 3A        .byte $3A   ; 
- D 0 - I - 0x0016C7 00:96B7: 81        .byte $81   ; 
- D 0 - I - 0x0016C8 00:96B8: 3E        .byte $3E   ; 
- D 0 - I - 0x0016C9 00:96B9: 86        .byte $86   ; 
- D 0 - I - 0x0016CA 00:96BA: 42        .byte $42   ; 
- D 0 - I - 0x0016CB 00:96BB: 82        .byte $82   ; 
- D 0 - I - 0x0016CC 00:96BC: 40        .byte $40   ; 
- D 0 - I - 0x0016CD 00:96BD: 08        .byte $08   ; 
- D 0 - I - 0x0016CE 00:96BE: 28        .byte $28   ; 
- D 0 - I - 0x0016CF 00:96BF: 28        .byte $28   ; 
- D 0 - I - 0x0016D0 00:96C0: 28        .byte $28   ; 
- D 0 - I - 0x0016D1 00:96C1: 08        .byte $08   ; 
- D 0 - I - 0x0016D2 00:96C2: 28        .byte $28   ; 
- D 0 - I - 0x0016D3 00:96C3: 28        .byte $28   ; 
- D 0 - I - 0x0016D4 00:96C4: 28        .byte $28   ; 
- D 0 - I - 0x0016D5 00:96C5: 08        .byte $08   ; 
- D 0 - I - 0x0016D6 00:96C6: 28        .byte $28   ; 
- D 0 - I - 0x0016D7 00:96C7: 28        .byte $28   ; 
- D 0 - I - 0x0016D8 00:96C8: 84        .byte $84   ; 
- D 0 - I - 0x0016D9 00:96C9: 28        .byte $28   ; 
- D 0 - I - 0x0016DA 00:96CA: 28        .byte $28   ; 
- D 0 - I - 0x0016DB 00:96CB: F2        .byte $F2   ; 
- D 0 - I - 0x0016DC 00:96CC: 84        .byte $84   ; 
- D 0 - I - 0x0016DD 00:96CD: 1E        .byte $1E   ; 
- D 0 - I - 0x0016DE 00:96CE: 82        .byte $82   ; 
- D 0 - I - 0x0016DF 00:96CF: 1E        .byte $1E   ; 
- D 0 - I - 0x0016E0 00:96D0: 1E        .byte $1E   ; 
- D 0 - I - 0x0016E1 00:96D1: 84        .byte $84   ; 
- D 0 - I - 0x0016E2 00:96D2: 1E        .byte $1E   ; 
- D 0 - I - 0x0016E3 00:96D3: 82        .byte $82   ; 
- D 0 - I - 0x0016E4 00:96D4: 1E        .byte $1E   ; 
- D 0 - I - 0x0016E5 00:96D5: 1E        .byte $1E   ; 
- D 0 - I - 0x0016E6 00:96D6: F0        .byte $F0   ; 
- D 0 - I - 0x0016E7 00:96D7: 84        .byte $84   ; 
- D 0 - I - 0x0016E8 00:96D8: 28        .byte $28   ; 
- D 0 - I - 0x0016E9 00:96D9: 82        .byte $82   ; 
- D 0 - I - 0x0016EA 00:96DA: 10        .byte $10   ; 
- D 0 - I - 0x0016EB 00:96DB: 10        .byte $10   ; 
- D 0 - I - 0x0016EC 00:96DC: 84        .byte $84   ; 
- D 0 - I - 0x0016ED 00:96DD: 10        .byte $10   ; 
- D 0 - I - 0x0016EE 00:96DE: 82        .byte $82   ; 
- D 0 - I - 0x0016EF 00:96DF: 10        .byte $10   ; 
- D 0 - I - 0x0016F0 00:96E0: 10        .byte $10   ; 
- D 0 - I - 0x0016F1 00:96E1: 84        .byte $84   ; 
- D 0 - I - 0x0016F2 00:96E2: 10        .byte $10   ; 
- D 0 - I - 0x0016F3 00:96E3: 82        .byte $82   ; 
- D 0 - I - 0x0016F4 00:96E4: 10        .byte $10   ; 
- D 0 - I - 0x0016F5 00:96E5: 10        .byte $10   ; 
- D 0 - I - 0x0016F6 00:96E6: 84        .byte $84   ; 
- D 0 - I - 0x0016F7 00:96E7: 10        .byte $10   ; 
- D 0 - I - 0x0016F8 00:96E8: 82        .byte $82   ; 
- D 0 - I - 0x0016F9 00:96E9: 14        .byte $14   ; 
- D 0 - I - 0x0016FA 00:96EA: 18        .byte $18   ; 



_off000_96EB:
- D 0 - I - 0x0016FB 00:96EB: 81        .byte $81   ; 
- D 0 - I - 0x0016FC 00:96EC: 38        .byte $38   ; 
- D 0 - I - 0x0016FD 00:96ED: 86        .byte $86   ; 
- D 0 - I - 0x0016FE 00:96EE: 08        .byte $08   ; 
- D 0 - I - 0x0016FF 00:96EF: 3E        .byte $3E   ; 
- D 0 - I - 0x001700 00:96F0: 84        .byte $84   ; 
- D 0 - I - 0x001701 00:96F1: 3C        .byte $3C   ; 
- D 0 - I - 0x001702 00:96F2: 08        .byte $08   ; 
- D 0 - I - 0x001703 00:96F3: 81        .byte $81   ; 
- D 0 - I - 0x001704 00:96F4: 36        .byte $36   ; 
- D 0 - I - 0x001705 00:96F5: 86        .byte $86   ; 
- D 0 - I - 0x001706 00:96F6: 30        .byte $30   ; 
- D 0 - I - 0x001707 00:96F7: 00        .byte $00   ; 
- D 0 - I - 0x001708 00:96F8: 81        .byte $81   ; 
- D 0 - I - 0x001709 00:96F9: 46        .byte $46   ; 
- D 0 - I - 0x00170A 00:96FA: 86        .byte $86   ; 
- D 0 - I - 0x00170B 00:96FB: 08        .byte $08   ; 
- D 0 - I - 0x00170C 00:96FC: 4E        .byte $4E   ; 
- D 0 - I - 0x00170D 00:96FD: 84        .byte $84   ; 
- D 0 - I - 0x00170E 00:96FE: 02        .byte $02   ; 
- D 0 - I - 0x00170F 00:96FF: 08        .byte $08   ; 
- D 0 - I - 0x001710 00:9700: 81        .byte $81   ; 
- D 0 - I - 0x001711 00:9701: 48        .byte $48   ; 
- D 0 - I - 0x001712 00:9702: 86        .byte $86   ; 
- D 0 - I - 0x001713 00:9703: 40        .byte $40   ; 
- D 0 - I - 0x001714 00:9704: F2        .byte $F2   ; 
- D 0 - I - 0x001715 00:9705: 84        .byte $84   ; 
- D 0 - I - 0x001716 00:9706: 12        .byte $12   ; 
- D 0 - I - 0x001717 00:9707: 82        .byte $82   ; 
- D 0 - I - 0x001718 00:9708: 12        .byte $12   ; 
- D 0 - I - 0x001719 00:9709: 12        .byte $12   ; 
- D 0 - I - 0x00171A 00:970A: 84        .byte $84   ; 
- D 0 - I - 0x00171B 00:970B: 12        .byte $12   ; 
- D 0 - I - 0x00171C 00:970C: 82        .byte $82   ; 
- D 0 - I - 0x00171D 00:970D: 12        .byte $12   ; 
- D 0 - I - 0x00171E 00:970E: 12        .byte $12   ; 
- D 0 - I - 0x00171F 00:970F: F0        .byte $F0   ; 
- D 0 - I - 0x001720 00:9710: F2        .byte $F2   ; 
- D 0 - I - 0x001721 00:9711: 84        .byte $84   ; 
- D 0 - I - 0x001722 00:9712: 10        .byte $10   ; 
- D 0 - I - 0x001723 00:9713: 82        .byte $82   ; 
- D 0 - I - 0x001724 00:9714: 10        .byte $10   ; 
- D 0 - I - 0x001725 00:9715: 10        .byte $10   ; 
- D 0 - I - 0x001726 00:9716: 84        .byte $84   ; 
- D 0 - I - 0x001727 00:9717: 10        .byte $10   ; 
- D 0 - I - 0x001728 00:9718: 82        .byte $82   ; 
- D 0 - I - 0x001729 00:9719: 10        .byte $10   ; 
- D 0 - I - 0x00172A 00:971A: 10        .byte $10   ; 
- D 0 - I - 0x00172B 00:971B: F0        .byte $F0   ; 
- D 0 - I - 0x00172C 00:971C: 11        .byte $11   ; 
- D 0 - I - 0x00172D 00:971D: 90        .byte $90   ; 
- D 0 - I - 0x00172E 00:971E: 90        .byte $90   ; 
- D 0 - I - 0x00172F 00:971F: 00        .byte $00   ; 



_off000_9720:
- D 0 - I - 0x001730 00:9720: 85        .byte $85   ; 
- D 0 - I - 0x001731 00:9721: 62        .byte $62   ; 
- D 0 - I - 0x001732 00:9722: 6C        .byte $6C   ; 
- D 0 - I - 0x001733 00:9723: 04        .byte $04   ; 
- D 0 - I - 0x001734 00:9724: 0E        .byte $0E   ; 
- D 0 - I - 0x001735 00:9725: 87        .byte $87   ; 
- D 0 - I - 0x001736 00:9726: 1A        .byte $1A   ; 
- D 0 - I - 0x001737 00:9727: 20        .byte $20   ; 
- D 0 - I - 0x001738 00:9728: 81        .byte $81   ; 
- D 0 - I - 0x001739 00:9729: 26        .byte $26   ; 
- D 0 - I - 0x00173A 00:972A: 86        .byte $86   ; 
- D 0 - I - 0x00173B 00:972B: 28        .byte $28   ; 
- D 0 - I - 0x00173C 00:972C: 85        .byte $85   ; 
- D 0 - I - 0x00173D 00:972D: 10        .byte $10   ; 
- D 0 - I - 0x00173E 00:972E: 10        .byte $10   ; 
- D 0 - I - 0x00173F 00:972F: 87        .byte $87   ; 
- D 0 - I - 0x001740 00:9730: 10        .byte $10   ; 
- D 0 - I - 0x001741 00:9731: 81        .byte $81   ; 
- D 0 - I - 0x001742 00:9732: 10        .byte $10   ; 
- D 0 - I - 0x001743 00:9733: 85        .byte $85   ; 
- D 0 - I - 0x001744 00:9734: 62        .byte $62   ; 
- D 0 - I - 0x001745 00:9735: 6C        .byte $6C   ; 
- D 0 - I - 0x001746 00:9736: 04        .byte $04   ; 
- D 0 - I - 0x001747 00:9737: 0E        .byte $0E   ; 
- D 0 - I - 0x001748 00:9738: 87        .byte $87   ; 
- D 0 - I - 0x001749 00:9739: 1A        .byte $1A   ; 
- D 0 - I - 0x00174A 00:973A: 20        .byte $20   ; 
- D 0 - I - 0x00174B 00:973B: 81        .byte $81   ; 
- D 0 - I - 0x00174C 00:973C: 26        .byte $26   ; 
- D 0 - I - 0x00174D 00:973D: 86        .byte $86   ; 
- D 0 - I - 0x00174E 00:973E: 28        .byte $28   ; 
- D 0 - I - 0x00174F 00:973F: 85        .byte $85   ; 
- D 0 - I - 0x001750 00:9740: 10        .byte $10   ; 
- D 0 - I - 0x001751 00:9741: 10        .byte $10   ; 
- D 0 - I - 0x001752 00:9742: 87        .byte $87   ; 
- D 0 - I - 0x001753 00:9743: 10        .byte $10   ; 
- D 0 - I - 0x001754 00:9744: 81        .byte $81   ; 
- D 0 - I - 0x001755 00:9745: 10        .byte $10   ; 
- D 0 - I - 0x001756 00:9746: 00        .byte $00   ; 
- D 0 - I - 0x001757 00:9747: 81        .byte $81   ; 
- D 0 - I - 0x001758 00:9748: 06        .byte $06   ; 
- D 0 - I - 0x001759 00:9749: 86        .byte $86   ; 
- D 0 - I - 0x00175A 00:974A: 08        .byte $08   ; 
- D 0 - I - 0x00175B 00:974B: 46        .byte $46   ; 
- D 0 - I - 0x00175C 00:974C: 84        .byte $84   ; 
- D 0 - I - 0x00175D 00:974D: 48        .byte $48   ; 
- D 0 - I - 0x00175E 00:974E: 08        .byte $08   ; 
- D 0 - I - 0x00175F 00:974F: 81        .byte $81   ; 
- D 0 - I - 0x001760 00:9750: 40        .byte $40   ; 
- D 0 - I - 0x001761 00:9751: 86        .byte $86   ; 
- D 0 - I - 0x001762 00:9752: 40        .byte $40   ; 
- D 0 - I - 0x001763 00:9753: 81        .byte $81   ; 
- D 0 - I - 0x001764 00:9754: 06        .byte $06   ; 
- D 0 - I - 0x001765 00:9755: 86        .byte $86   ; 
- D 0 - I - 0x001766 00:9756: 08        .byte $08   ; 
- D 0 - I - 0x001767 00:9757: 46        .byte $46   ; 
- D 0 - I - 0x001768 00:9758: 84        .byte $84   ; 
- D 0 - I - 0x001769 00:9759: 48        .byte $48   ; 
- D 0 - I - 0x00176A 00:975A: 08        .byte $08   ; 
- D 0 - I - 0x00176B 00:975B: 81        .byte $81   ; 
- D 0 - I - 0x00176C 00:975C: 40        .byte $40   ; 
- D 0 - I - 0x00176D 00:975D: 86        .byte $86   ; 
- D 0 - I - 0x00176E 00:975E: 3A        .byte $3A   ; 
- D 0 - I - 0x00176F 00:975F: F2        .byte $F2   ; 
- D 0 - I - 0x001770 00:9760: 84        .byte $84   ; 
- D 0 - I - 0x001771 00:9761: 0E        .byte $0E   ; 
- D 0 - I - 0x001772 00:9762: 82        .byte $82   ; 
- D 0 - I - 0x001773 00:9763: 0E        .byte $0E   ; 
- D 0 - I - 0x001774 00:9764: 0E        .byte $0E   ; 
- D 0 - I - 0x001775 00:9765: 84        .byte $84   ; 
- D 0 - I - 0x001776 00:9766: 0E        .byte $0E   ; 
- D 0 - I - 0x001777 00:9767: 82        .byte $82   ; 
- D 0 - I - 0x001778 00:9768: 0E        .byte $0E   ; 
- D 0 - I - 0x001779 00:9769: 0E        .byte $0E   ; 
- D 0 - I - 0x00177A 00:976A: F0        .byte $F0   ; 
- D 0 - I - 0x00177B 00:976B: F2        .byte $F2   ; 
- D 0 - I - 0x00177C 00:976C: 84        .byte $84   ; 
- D 0 - I - 0x00177D 00:976D: 10        .byte $10   ; 
- D 0 - I - 0x00177E 00:976E: 82        .byte $82   ; 
- D 0 - I - 0x00177F 00:976F: 10        .byte $10   ; 
- D 0 - I - 0x001780 00:9770: 10        .byte $10   ; 
- D 0 - I - 0x001781 00:9771: 84        .byte $84   ; 
- D 0 - I - 0x001782 00:9772: 10        .byte $10   ; 
- D 0 - I - 0x001783 00:9773: 82        .byte $82   ; 
- D 0 - I - 0x001784 00:9774: 10        .byte $10   ; 
- D 0 - I - 0x001785 00:9775: 10        .byte $10   ; 
- D 0 - I - 0x001786 00:9776: F0        .byte $F0   ; 
- D 0 - I - 0x001787 00:9777: F2        .byte $F2   ; 
- D 0 - I - 0x001788 00:9778: 84        .byte $84   ; 
- D 0 - I - 0x001789 00:9779: 0E        .byte $0E   ; 
- D 0 - I - 0x00178A 00:977A: 82        .byte $82   ; 
- D 0 - I - 0x00178B 00:977B: 0E        .byte $0E   ; 
- D 0 - I - 0x00178C 00:977C: 0E        .byte $0E   ; 
- D 0 - I - 0x00178D 00:977D: 84        .byte $84   ; 
- D 0 - I - 0x00178E 00:977E: 0E        .byte $0E   ; 
- D 0 - I - 0x00178F 00:977F: 82        .byte $82   ; 
- D 0 - I - 0x001790 00:9780: 0E        .byte $0E   ; 
- D 0 - I - 0x001791 00:9781: 0E        .byte $0E   ; 
- D 0 - I - 0x001792 00:9782: F0        .byte $F0   ; 
- D 0 - I - 0x001793 00:9783: F2        .byte $F2   ; 
- D 0 - I - 0x001794 00:9784: 84        .byte $84   ; 
- D 0 - I - 0x001795 00:9785: 10        .byte $10   ; 
- D 0 - I - 0x001796 00:9786: 82        .byte $82   ; 
- D 0 - I - 0x001797 00:9787: 10        .byte $10   ; 
- D 0 - I - 0x001798 00:9788: 10        .byte $10   ; 
- D 0 - I - 0x001799 00:9789: 84        .byte $84   ; 
- D 0 - I - 0x00179A 00:978A: 10        .byte $10   ; 
- D 0 - I - 0x00179B 00:978B: 82        .byte $82   ; 
- D 0 - I - 0x00179C 00:978C: 10        .byte $10   ; 
- D 0 - I - 0x00179D 00:978D: 10        .byte $10   ; 
- D 0 - I - 0x00179E 00:978E: F0        .byte $F0   ; 



_off000_978F:
- D 0 - I - 0x00179F 00:978F: 81        .byte $81   ; 
- D 0 - I - 0x0017A0 00:9790: 2A        .byte $2A   ; 
- D 0 - I - 0x0017A1 00:9791: 86        .byte $86   ; 
- D 0 - I - 0x0017A2 00:9792: 08        .byte $08   ; 
- D 0 - I - 0x0017A3 00:9793: 34        .byte $34   ; 
- D 0 - I - 0x0017A4 00:9794: 84        .byte $84   ; 
- D 0 - I - 0x0017A5 00:9795: 32        .byte $32   ; 
- D 0 - I - 0x0017A6 00:9796: 08        .byte $08   ; 
- D 0 - I - 0x0017A7 00:9797: 81        .byte $81   ; 
- D 0 - I - 0x0017A8 00:9798: 28        .byte $28   ; 
- D 0 - I - 0x0017A9 00:9799: 86        .byte $86   ; 
- D 0 - I - 0x0017AA 00:979A: 20        .byte $20   ; 
- D 0 - I - 0x0017AB 00:979B: 00        .byte $00   ; 
- D 0 - I - 0x0017AC 00:979C: 11        .byte $11   ; 
- D 0 - I - 0x0017AD 00:979D: 90        .byte $90   ; 
- D 0 - I - 0x0017AE 00:979E: 90        .byte $90   ; 
- D 0 - I - 0x0017AF 00:979F: 00        .byte $00   ; 
- D 0 - I - 0x0017B0 00:97A0: 81        .byte $81   ; 
- D 0 - I - 0x0017B1 00:97A1: 3C        .byte $3C   ; 
- D 0 - I - 0x0017B2 00:97A2: 86        .byte $86   ; 
- D 0 - I - 0x0017B3 00:97A3: 08        .byte $08   ; 
- D 0 - I - 0x0017B4 00:97A4: 06        .byte $06   ; 
- D 0 - I - 0x0017B5 00:97A5: 84        .byte $84   ; 
- D 0 - I - 0x0017B6 00:97A6: 40        .byte $40   ; 
- D 0 - I - 0x0017B7 00:97A7: 08        .byte $08   ; 
- D 0 - I - 0x0017B8 00:97A8: 81        .byte $81   ; 
- D 0 - I - 0x0017B9 00:97A9: 38        .byte $38   ; 
- D 0 - I - 0x0017BA 00:97AA: 86        .byte $86   ; 
- D 0 - I - 0x0017BB 00:97AB: 32        .byte $32   ; 
- D 0 - I - 0x0017BC 00:97AC: F2        .byte $F2   ; 
- D 0 - I - 0x0017BD 00:97AD: 84        .byte $84   ; 
- D 0 - I - 0x0017BE 00:97AE: 1C        .byte $1C   ; 
- D 0 - I - 0x0017BF 00:97AF: 82        .byte $82   ; 
- D 0 - I - 0x0017C0 00:97B0: 1C        .byte $1C   ; 
- D 0 - I - 0x0017C1 00:97B1: 1C        .byte $1C   ; 
- D 0 - I - 0x0017C2 00:97B2: 84        .byte $84   ; 
- D 0 - I - 0x0017C3 00:97B3: 1C        .byte $1C   ; 
- D 0 - I - 0x0017C4 00:97B4: 82        .byte $82   ; 
- D 0 - I - 0x0017C5 00:97B5: 1C        .byte $1C   ; 
- D 0 - I - 0x0017C6 00:97B6: 1C        .byte $1C   ; 
- D 0 - I - 0x0017C7 00:97B7: F0        .byte $F0   ; 
- D 0 - I - 0x0017C8 00:97B8: F2        .byte $F2   ; 
- D 0 - I - 0x0017C9 00:97B9: 84        .byte $84   ; 
- D 0 - I - 0x0017CA 00:97BA: 1A        .byte $1A   ; 
- D 0 - I - 0x0017CB 00:97BB: 82        .byte $82   ; 
- D 0 - I - 0x0017CC 00:97BC: 1A        .byte $1A   ; 
- D 0 - I - 0x0017CD 00:97BD: 1A        .byte $1A   ; 
- D 0 - I - 0x0017CE 00:97BE: 84        .byte $84   ; 
- D 0 - I - 0x0017CF 00:97BF: 1A        .byte $1A   ; 
- D 0 - I - 0x0017D0 00:97C0: 82        .byte $82   ; 
- D 0 - I - 0x0017D1 00:97C1: 1A        .byte $1A   ; 
- D 0 - I - 0x0017D2 00:97C2: 1A        .byte $1A   ; 
- D 0 - I - 0x0017D3 00:97C3: F0        .byte $F0   ; 



_off000_97C4:
- D 0 - I - 0x0017D4 00:97C4: 85        .byte $85   ; 
- D 0 - I - 0x0017D5 00:97C5: 36        .byte $36   ; 
- D 0 - I - 0x0017D6 00:97C6: 80        .byte $80   ; 
- D 0 - I - 0x0017D7 00:97C7: 36        .byte $36   ; 
- D 0 - I - 0x0017D8 00:97C8: 36        .byte $36   ; 
- D 0 - I - 0x0017D9 00:97C9: 81        .byte $81   ; 
- D 0 - I - 0x0017DA 00:97CA: 36        .byte $36   ; 
- D 0 - I - 0x0017DB 00:97CB: 82        .byte $82   ; 
- D 0 - I - 0x0017DC 00:97CC: 32        .byte $32   ; 
- D 0 - I - 0x0017DD 00:97CD: 2C        .byte $2C   ; 
- D 0 - I - 0x0017DE 00:97CE: 3A        .byte $3A   ; 
- D 0 - I - 0x0017DF 00:97CF: 85        .byte $85   ; 
- D 0 - I - 0x0017E0 00:97D0: 36        .byte $36   ; 
- D 0 - I - 0x0017E1 00:97D1: 80        .byte $80   ; 
- D 0 - I - 0x0017E2 00:97D2: 36        .byte $36   ; 
- D 0 - I - 0x0017E3 00:97D3: 36        .byte $36   ; 
- D 0 - I - 0x0017E4 00:97D4: 81        .byte $81   ; 
- D 0 - I - 0x0017E5 00:97D5: 36        .byte $36   ; 
- D 0 - I - 0x0017E6 00:97D6: 82        .byte $82   ; 
- D 0 - I - 0x0017E7 00:97D7: 32        .byte $32   ; 
- D 0 - I - 0x0017E8 00:97D8: 2C        .byte $2C   ; 
- D 0 - I - 0x0017E9 00:97D9: 3A        .byte $3A   ; 
- D 0 - I - 0x0017EA 00:97DA: 83        .byte $83   ; 
- D 0 - I - 0x0017EB 00:97DB: 36        .byte $36   ; 
- D 0 - I - 0x0017EC 00:97DC: 80        .byte $80   ; 
- D 0 - I - 0x0017ED 00:97DD: 1E        .byte $1E   ; 
- D 0 - I - 0x0017EE 00:97DE: 1E        .byte $1E   ; 
- D 0 - I - 0x0017EF 00:97DF: 1E        .byte $1E   ; 
- D 0 - I - 0x0017F0 00:97E0: 1E        .byte $1E   ; 
- D 0 - I - 0x0017F1 00:97E1: 85        .byte $85   ; 
- D 0 - I - 0x0017F2 00:97E2: 1E        .byte $1E   ; 
- D 0 - I - 0x0017F3 00:97E3: 00        .byte $00   ; 
- D 0 - I - 0x0017F4 00:97E4: 85        .byte $85   ; 
- D 0 - I - 0x0017F5 00:97E5: 26        .byte $26   ; 
- D 0 - I - 0x0017F6 00:97E6: 80        .byte $80   ; 
- D 0 - I - 0x0017F7 00:97E7: 26        .byte $26   ; 
- D 0 - I - 0x0017F8 00:97E8: 26        .byte $26   ; 
- D 0 - I - 0x0017F9 00:97E9: 81        .byte $81   ; 
- D 0 - I - 0x0017FA 00:97EA: 26        .byte $26   ; 
- D 0 - I - 0x0017FB 00:97EB: 82        .byte $82   ; 
- D 0 - I - 0x0017FC 00:97EC: 22        .byte $22   ; 
- D 0 - I - 0x0017FD 00:97ED: 1E        .byte $1E   ; 
- D 0 - I - 0x0017FE 00:97EE: 28        .byte $28   ; 
- D 0 - I - 0x0017FF 00:97EF: 85        .byte $85   ; 
- D 0 - I - 0x001800 00:97F0: 26        .byte $26   ; 
- D 0 - I - 0x001801 00:97F1: 80        .byte $80   ; 
- D 0 - I - 0x001802 00:97F2: 26        .byte $26   ; 
- D 0 - I - 0x001803 00:97F3: 26        .byte $26   ; 
- D 0 - I - 0x001804 00:97F4: 81        .byte $81   ; 
- D 0 - I - 0x001805 00:97F5: 26        .byte $26   ; 
- D 0 - I - 0x001806 00:97F6: 82        .byte $82   ; 
- D 0 - I - 0x001807 00:97F7: 22        .byte $22   ; 
- D 0 - I - 0x001808 00:97F8: 1E        .byte $1E   ; 
- D 0 - I - 0x001809 00:97F9: 28        .byte $28   ; 
- D 0 - I - 0x00180A 00:97FA: 83        .byte $83   ; 
- D 0 - I - 0x00180B 00:97FB: 2C        .byte $2C   ; 
- D 0 - I - 0x00180C 00:97FC: 80        .byte $80   ; 
- D 0 - I - 0x00180D 00:97FD: 14        .byte $14   ; 
- D 0 - I - 0x00180E 00:97FE: 14        .byte $14   ; 
- D 0 - I - 0x00180F 00:97FF: 14        .byte $14   ; 
- D 0 - I - 0x001810 00:9800: 14        .byte $14   ; 
- D 0 - I - 0x001811 00:9801: 85        .byte $85   ; 
- D 0 - I - 0x001812 00:9802: 14        .byte $14   ; 
- D 0 - I - 0x001813 00:9803: 82        .byte $82   ; 
- D 0 - I - 0x001814 00:9804: 26        .byte $26   ; 
- D 0 - I - 0x001815 00:9805: 1E        .byte $1E   ; 
- D 0 - I - 0x001816 00:9806: 26        .byte $26   ; 
- D 0 - I - 0x001817 00:9807: 2C        .byte $2C   ; 
- D 0 - I - 0x001818 00:9808: 26        .byte $26   ; 
- D 0 - I - 0x001819 00:9809: 2C        .byte $2C   ; 
- D 0 - I - 0x00181A 00:980A: 32        .byte $32   ; 
- D 0 - I - 0x00181B 00:980B: 2C        .byte $2C   ; 
- D 0 - I - 0x00181C 00:980C: 32        .byte $32   ; 
- D 0 - I - 0x00181D 00:980D: 3A        .byte $3A   ; 
- D 0 - I - 0x00181E 00:980E: 32        .byte $32   ; 
- D 0 - I - 0x00181F 00:980F: 3A        .byte $3A   ; 
- D 0 - I - 0x001820 00:9810: 26        .byte $26   ; 
- D 0 - I - 0x001821 00:9811: 1E        .byte $1E   ; 
- D 0 - I - 0x001822 00:9812: 26        .byte $26   ; 
- D 0 - I - 0x001823 00:9813: 2C        .byte $2C   ; 
- D 0 - I - 0x001824 00:9814: 26        .byte $26   ; 
- D 0 - I - 0x001825 00:9815: 2C        .byte $2C   ; 
- D 0 - I - 0x001826 00:9816: 32        .byte $32   ; 
- D 0 - I - 0x001827 00:9817: 2C        .byte $2C   ; 
- D 0 - I - 0x001828 00:9818: 32        .byte $32   ; 
- D 0 - I - 0x001829 00:9819: 3A        .byte $3A   ; 
- D 0 - I - 0x00182A 00:981A: 32        .byte $32   ; 
- D 0 - I - 0x00182B 00:981B: 3A        .byte $3A   ; 
- D 0 - I - 0x00182C 00:981C: 83        .byte $83   ; 
- D 0 - I - 0x00182D 00:981D: 36        .byte $36   ; 
- D 0 - I - 0x00182E 00:981E: 80        .byte $80   ; 
- D 0 - I - 0x00182F 00:981F: 1E        .byte $1E   ; 
- D 0 - I - 0x001830 00:9820: 1E        .byte $1E   ; 
- D 0 - I - 0x001831 00:9821: 1E        .byte $1E   ; 
- D 0 - I - 0x001832 00:9822: 1E        .byte $1E   ; 
- D 0 - I - 0x001833 00:9823: 85        .byte $85   ; 
- D 0 - I - 0x001834 00:9824: 1E        .byte $1E   ; 



sub_0x001835:
C - - - - - 0x001835 00:9825: A5 E0     LDA ram_pause_flag
C - - - - - 0x001837 00:9827: F0 0C     BEQ bra_9835_not_paused
C - - - - - 0x001839 00:9829: A9 00     LDA #$00
C - - - - - 0x00183B 00:982B: 8D 15 40  STA $4015
C - - - - - 0x00183E 00:982E: A9 0F     LDA #$0F
C - - - - - 0x001840 00:9830: 8D 15 40  STA $4015
C - - - - - 0x001843 00:9833: D0 11     BNE bra_9846
bra_9835_not_paused:
C - - - - - 0x001845 00:9835: A9 FF     LDA #$FF
C - - - - - 0x001847 00:9837: 8D 17 40  STA $4017
C - - - - - 0x00184A 00:983A: 20 D5 9A  JSR sub_9AD5
C - - - - - 0x00184D 00:983D: 20 A0 99  JSR sub_99A0
C - - - - - 0x001850 00:9840: 20 85 9B  JSR sub_9B85
C - - - - - 0x001853 00:9843: 20 6B 9C  JSR sub_9C6B
bra_9846:
C - - - - - 0x001856 00:9846: 20 CC 98  JSR sub_98CC
C - - - - - 0x001859 00:9849: A9 00     LDA #$00
C - - - - - 0x00185B 00:984B: 8D 04 06  STA ram_sfx_4
C - - - - - 0x00185E 00:984E: 8D 03 06  STA ram_sfx_3
C - - - - - 0x001861 00:9851: 8D 02 06  STA ram_sfx_2
C - - - - - 0x001864 00:9854: 8D 01 06  STA ram_sfx_1
C - - - - - 0x001867 00:9857: 8D 00 06  STA ram_music
C - - - - - 0x00186A 00:985A: 60        RTS



tbl_985B:
- D 0 - - - 0x00186B 00:985B: 1C        .byte off_9877 - tbl_985B   ; 
- D 0 - - - 0x00186C 00:985C: 4C        .byte off_98A7 - tbl_985B   ; 
- D 0 - - - 0x00186D 00:985D: 27        .byte off_9882 - tbl_985B   ; 
- D 0 - - - 0x00186E 00:985E: 5C        .byte off_98B7 - tbl_985B   ; 
- D 0 - - - 0x00186F 00:985F: 46        .byte off_98A1 - tbl_985B   ; 
- D 0 - - - 0x001870 00:9860: 67        .byte off_98C2 - tbl_985B   ; 
- D 0 - - - 0x001871 00:9861: 07        .byte off_9862 - tbl_985B   ; 



tbl_9862:
off_9862:   ; 07
- D 0 - - - 0x001872 00:9862: 95        .byte $95   ; 
- D 0 - - - 0x001873 00:9863: 50        .byte $50   ; 
- D 0 - - - 0x001874 00:9864: 08        .byte $08   ; 
- D 0 - - - 0x001875 00:9865: 08        .byte $08   ; 
- D 0 - - - 0x001876 00:9866: 08        .byte $08   ; 
- D 0 - - - 0x001877 00:9867: 08        .byte $08   ; 
- D 0 - - - 0x001878 00:9868: 08        .byte $08   ; 
- D 0 - - - 0x001879 00:9869: 90        .byte $90   ; 
- D 0 - - - 0x00187A 00:986A: 08        .byte $08   ; 
- D 0 - - - 0x00187B 00:986B: 08        .byte $08   ; 
- D 0 - - - 0x00187C 00:986C: 08        .byte $08   ; 
- D 0 - - - 0x00187D 00:986D: 08        .byte $08   ; 
- D 0 - - - 0x00187E 00:986E: 08        .byte $08   ; 
- D 0 - - - 0x00187F 00:986F: 08        .byte $08   ; 
- D 0 - - - 0x001880 00:9870: 08        .byte $08   ; 
- D 0 - - - 0x001881 00:9871: 08        .byte $08   ; 
- D 0 - - - 0x001882 00:9872: 08        .byte $08   ; 
- D 0 - - - 0x001883 00:9873: 08        .byte $08   ; 
- D 0 - - - 0x001884 00:9874: 08        .byte $08   ; 
- D 0 - - - 0x001885 00:9875: 08        .byte $08   ; 
- D 0 - - - 0x001886 00:9876: 00        .byte $00   ; 



off_9877:   ; 1C
- D 0 - - - 0x001887 00:9877: 82        .byte $82   ; 
- D 0 - - - 0x001888 00:9878: 4A        .byte $4A   ; 
- D 0 - - - 0x001889 00:9879: 48        .byte $48   ; 
- D 0 - - - 0x00188A 00:987A: 4A        .byte $4A   ; 
- D 0 - - - 0x00188B 00:987B: 08        .byte $08   ; 
- D 0 - - - 0x00188C 00:987C: 08        .byte $08   ; 
- D 0 - - - 0x00188D 00:987D: 08        .byte $08   ; 
- D 0 - - - 0x00188E 00:987E: 08        .byte $08   ; 
- D 0 - - - 0x00188F 00:987F: 08        .byte $08   ; 
- D 0 - - - 0x001890 00:9880: 08        .byte $08   ; 
- D 0 - - - 0x001891 00:9881: 00        .byte $00   ; 



off_9882:   ; 27
- D 0 - - - 0x001892 00:9882: 9F        .byte $9F   ; 
- D 0 - - - 0x001893 00:9883: 1E        .byte $1E   ; 
- D 0 - - - 0x001894 00:9884: 22        .byte $22   ; 
- D 0 - - - 0x001895 00:9885: 24        .byte $24   ; 
- D 0 - - - 0x001896 00:9886: 26        .byte $26   ; 
- D 0 - - - 0x001897 00:9887: 9F        .byte $9F   ; 
- D 0 - - - 0x001898 00:9888: 28        .byte $28   ; 
- D 0 - - - 0x001899 00:9889: 2A        .byte $2A   ; 
- D 0 - - - 0x00189A 00:988A: 2C        .byte $2C   ; 
- D 0 - - - 0x00189B 00:988B: 2E        .byte $2E   ; 
- D 0 - - - 0x00189C 00:988C: 9A        .byte $9A   ; 
- D 0 - - - 0x00189D 00:988D: 28        .byte $28   ; 
- D 0 - - - 0x00189E 00:988E: 2A        .byte $2A   ; 
- D 0 - - - 0x00189F 00:988F: 2C        .byte $2C   ; 
- D 0 - - - 0x0018A0 00:9890: 2E        .byte $2E   ; 
- D 0 - - - 0x0018A1 00:9891: 9C        .byte $9C   ; 
- D 0 - - - 0x0018A2 00:9892: 28        .byte $28   ; 
- D 0 - - - 0x0018A3 00:9893: 2A        .byte $2A   ; 
- D 0 - - - 0x0018A4 00:9894: 2C        .byte $2C   ; 
- D 0 - - - 0x0018A5 00:9895: 2E        .byte $2E   ; 
- D 0 - - - 0x0018A6 00:9896: 96        .byte $96   ; 
- D 0 - - - 0x0018A7 00:9897: 28        .byte $28   ; 
- D 0 - - - 0x0018A8 00:9898: 2A        .byte $2A   ; 
- D 0 - - - 0x0018A9 00:9899: 2C        .byte $2C   ; 
- D 0 - - - 0x0018AA 00:989A: 2E        .byte $2E   ; 
- D 0 - - - 0x0018AB 00:989B: 98        .byte $98   ; 
- D 0 - - - 0x0018AC 00:989C: 28        .byte $28   ; 
- D 0 - - - 0x0018AD 00:989D: 2A        .byte $2A   ; 
- D 0 - - - 0x0018AE 00:989E: 2C        .byte $2C   ; 
- D 0 - - - 0x0018AF 00:989F: 2E        .byte $2E   ; 
- D 0 - - - 0x0018B0 00:98A0: 00        .byte $00   ; 



off_98A1:   ; 46
- D 0 - - - 0x0018B1 00:98A1: 99        .byte $99   ; 
- D 0 - - - 0x0018B2 00:98A2: 42        .byte $42   ; 
- D 0 - - - 0x0018B3 00:98A3: 4A        .byte $4A   ; 
- D 0 - - - 0x0018B4 00:98A4: 50        .byte $50   ; 
- D 0 - - - 0x0018B5 00:98A5: 54        .byte $54   ; 
- D 0 - - - 0x0018B6 00:98A6: 00        .byte $00   ; 



off_98A7:   ; 4C
- D 0 - - - 0x0018B7 00:98A7: 99        .byte $99   ; 
- D 0 - - - 0x0018B8 00:98A8: 70        .byte $70   ; 
- D 0 - - - 0x0018B9 00:98A9: 0A        .byte $0A   ; 
- D 0 - - - 0x0018BA 00:98AA: 70        .byte $70   ; 
- D 0 - - - 0x0018BB 00:98AB: 0E        .byte $0E   ; 
- D 0 - - - 0x0018BC 00:98AC: 70        .byte $70   ; 
- D 0 - - - 0x0018BD 00:98AD: 10        .byte $10   ; 
- D 0 - - - 0x0018BE 00:98AE: 9F        .byte $9F   ; 
- D 0 - - - 0x0018BF 00:98AF: 70        .byte $70   ; 
- D 0 - - - 0x0018C0 00:98B0: 2A        .byte $2A   ; 
- D 0 - - - 0x0018C1 00:98B1: 12        .byte $12   ; 
- D 0 - - - 0x0018C2 00:98B2: 1E        .byte $1E   ; 
- D 0 - - - 0x0018C3 00:98B3: 2A        .byte $2A   ; 
- D 0 - - - 0x0018C4 00:98B4: 70        .byte $70   ; 
- D 0 - - - 0x0018C5 00:98B5: 1E        .byte $1E   ; 
- D 0 - - - 0x0018C6 00:98B6: 00        .byte $00   ; 



off_98B7:   ; 5C
- D 0 - - - 0x0018C7 00:98B7: 9A        .byte $9A   ; 
- D 0 - - - 0x0018C8 00:98B8: 42        .byte $42   ; 
- D 0 - - - 0x0018C9 00:98B9: 08        .byte $08   ; 
- D 0 - - - 0x0018CA 00:98BA: 08        .byte $08   ; 
- D 0 - - - 0x0018CB 00:98BB: 56        .byte $56   ; 
- D 0 - - - 0x0018CC 00:98BC: 08        .byte $08   ; 
- D 0 - - - 0x0018CD 00:98BD: 08        .byte $08   ; 
- D 0 - - - 0x0018CE 00:98BE: 00        .byte $00   ; 
; bzk garbage
- - - - - - 0x0018CF 00:98BF: 08        .byte $08   ; 
- - - - - - 0x0018D0 00:98C0: 08        .byte $08   ; 
- - - - - - 0x0018D1 00:98C1: 00        .byte $00   ; 



off_98C2:   ; 67
- D 0 - - - 0x0018D2 00:98C2: 9F        .byte $9F   ; 
- D 0 - - - 0x0018D3 00:98C3: 40        .byte $40   ; 
- D 0 - - - 0x0018D4 00:98C4: 30        .byte $30   ; 
- D 0 - - - 0x0018D5 00:98C5: 40        .byte $40   ; 
- D 0 - - - 0x0018D6 00:98C6: 3A        .byte $3A   ; 
- D 0 - - - 0x0018D7 00:98C7: 28        .byte $28   ; 
- D 0 - - - 0x0018D8 00:98C8: 00        .byte $00   ; 



bra_98C9:
C - - - - - 0x0018D9 00:98C9: 4C 46 9D  JMP loc_9D46
sub_98CC:
C - - - - - 0x0018DC 00:98CC: AD 04 06  LDA ram_sfx_4
C - - - - - 0x0018DF 00:98CF: 30 F8     BMI bra_98C9
C - - - - - 0x0018E1 00:98D1: F0 09     BEQ bra_98DC
C - - - - - 0x0018E3 00:98D3: C9 40     CMP #$40
C - - - - - 0x0018E5 00:98D5: D0 0B     BNE bra_98E2
C - - - - - 0x0018E7 00:98D7: AE 05 06  LDX ram_0605
C - - - - - 0x0018EA 00:98DA: F0 06     BEQ bra_98E2
bra_98DC:
C - - - - - 0x0018EC 00:98DC: AD 05 06  LDA ram_0605
C - - - - - 0x0018EF 00:98DF: D0 10     BNE bra_98F1
C - - - - - 0x0018F1 00:98E1: 60        RTS
bra_98E2:
C - - - - - 0x0018F2 00:98E2: 8D 05 06  STA ram_0605
C - - - - - 0x0018F5 00:98E5: A0 00     LDY #$00
bra_98E7_loop:
C - - - - - 0x0018F7 00:98E7: C8        INY
C - - - - - 0x0018F8 00:98E8: 4A        LSR
C - - - - - 0x0018F9 00:98E9: 90 FC     BCC bra_98E7_loop
C - - - - - 0x0018FB 00:98EB: B9 5A 98  LDA tbl_985B - 1,Y
C - - - - - 0x0018FE 00:98EE: 8D 0E 06  STA ram_060E
bra_98F1:
C - - - - - 0x001901 00:98F1: AC 0E 06  LDY ram_060E
C - - - - - 0x001904 00:98F4: EE 0E 06  INC ram_060E
C - - - - - 0x001907 00:98F7: B9 5B 98  LDA tbl_9862 - $07,Y
C - - - - - 0x00190A 00:98FA: 30 15     BMI bra_9911
C - - - - - 0x00190C 00:98FC: D0 1F     BNE bra_991D
C - - - - - 0x00190E 00:98FE: A2 90     LDX #$90
C - - - - - 0x001910 00:9900: 8E 00 40  STX $4000
C - - - - - 0x001913 00:9903: A2 18     LDX #$18
C - - - - - 0x001915 00:9905: 8E 03 40  STX $4003
C - - - - - 0x001918 00:9908: A2 00     LDX #$00
C - - - - - 0x00191A 00:990A: 8E 02 40  STX $4002
C - - - - - 0x00191D 00:990D: 8E 05 06  STX ram_0605
C - - - - - 0x001920 00:9910: 60        RTS
bra_9911:
C - - - - - 0x001921 00:9911: 8D 00 40  STA $4000
C - - - - - 0x001924 00:9914: AC 0E 06  LDY ram_060E
C - - - - - 0x001927 00:9917: EE 0E 06  INC ram_060E
C - - - - - 0x00192A 00:991A: B9 5B 98  LDA tbl_9862 - $07,Y
bra_991D:
C - - - - - 0x00192D 00:991D: 20 0D 9C  JSR sub_9C0D
C - - - - - 0x001930 00:9920: A9 7F     LDA #$7F
C - - - - - 0x001932 00:9922: 8D 01 40  STA $4001
C - - - - - 0x001935 00:9925: 60        RTS
bra_9926:
C - - - - - 0x001936 00:9926: A9 0F     LDA #$0F
C - - - - - 0x001938 00:9928: 8D 15 40  STA $4015
C - - - - - 0x00193B 00:992B: A9 00     LDA #$00
C - - - - - 0x00193D 00:992D: 8D 08 06  STA ram_0608
C - - - - - 0x001940 00:9930: 8D 07 06  STA ram_0607
C - - - - - 0x001943 00:9933: 8D 1A 06  STA ram_061A
C - - - - - 0x001946 00:9936: 8D F6 05  STA ram_05F6
C - - - - - 0x001949 00:9939: 60        RTS
bra_993A:
C - - - - - 0x00194A 00:993A: 8C 06 06  STY ram_0606
C - - - - - 0x00194D 00:993D: A9 05     LDA #$05
C - - - - - 0x00194F 00:993F: 85 69     STA ram_0069
C - - - - - 0x001951 00:9941: AD 04 06  LDA ram_sfx_4
C - - - - - 0x001954 00:9944: 29 EF     AND #con_sfx_4_10 ^ $FF
C - - - - - 0x001956 00:9946: D0 03     BNE bra_994B
C - - - - - 0x001958 00:9948: 8D 04 06  STA ram_sfx_4
bra_994B:
C - - - - - 0x00195B 00:994B: A4 69     LDY ram_0069
C - - - - - 0x00195D 00:994D: B9 BB 9F  LDA tbl_9FBB,Y
C - - - - - 0x001960 00:9950: D0 1C     BNE bra_996E
bra_9952:
C - - - - - 0x001962 00:9952: 8C 06 06  STY ram_0606
C - - - - - 0x001965 00:9955: A9 38     LDA #$38
C - - - - - 0x001967 00:9957: 85 69     STA ram_0069
bra_9959:
C - - - - - 0x001969 00:9959: A9 0D     LDA #$0D
C - - - - - 0x00196B 00:995B: 85 68     STA ram_0068
bra_995D:
C - - - - - 0x00196D 00:995D: C6 68     DEC ram_0068
C - - - - - 0x00196F 00:995F: A4 68     LDY ram_0068
C - - - - - 0x001971 00:9961: F0 F6     BEQ bra_9959
C - - - - - 0x001973 00:9963: C0 07     CPY #$07
C - - - - - 0x001975 00:9965: 90 04     BCC bra_996B
C - - - - - 0x001977 00:9967: A9 10     LDA #$10
C - - - - - 0x001979 00:9969: D0 10     BNE bra_997B
bra_996B:
C - - - - - 0x00197B 00:996B: B9 F8 9E  LDA tbl_9EF8,Y
bra_996E:
C - - - - - 0x00197E 00:996E: AA        TAX
C - - - - - 0x00197F 00:996F: 29 0F     AND #$0F
C - - - - - 0x001981 00:9971: 8D 0E 40  STA $400E
C - - - - - 0x001984 00:9974: 8A        TXA
C - - - - - 0x001985 00:9975: 4A        LSR
C - - - - - 0x001986 00:9976: 4A        LSR
C - - - - - 0x001987 00:9977: 4A        LSR
C - - - - - 0x001988 00:9978: 4A        LSR
C - - - - - 0x001989 00:9979: 09 10     ORA #$10
bra_997B:
loc_997B:
C D 0 - - - 0x00198B 00:997B: 8D 0C 40  STA $400C
C - - - - - 0x00198E 00:997E: A9 08     LDA #$08
C - - - - - 0x001990 00:9980: 8D 0F 40  STA $400F
C - - - - - 0x001993 00:9983: C6 69     DEC ram_0069
loc_9985:
C D 0 - - - 0x001995 00:9985: D0 0A     BNE bra_9991_RTS
C - - - - - 0x001997 00:9987: A9 F0     LDA #$F0
C - - - - - 0x001999 00:9989: 8D 0C 40  STA $400C
C - - - - - 0x00199C 00:998C: A9 00     LDA #$00
C - - - - - 0x00199E 00:998E: 8D 06 06  STA ram_0606
bra_9991_RTS:
C - - - - - 0x0019A1 00:9991: 60        RTS



bra_9992:
C - - - - - 0x0019A2 00:9992: 8C 06 06  STY ram_0606
C - - - - - 0x0019A5 00:9995: A9 0A     LDA #$0A
C - - - - - 0x0019A7 00:9997: 85 69     STA ram_0069
bra_9999:
C - - - - - 0x0019A9 00:9999: A4 69     LDY ram_0069
C - - - - - 0x0019AB 00:999B: B9 B1 9F  LDA tbl_9FB1,Y
C - - - - - 0x0019AE 00:999E: D0 CE     BNE bra_996E



sub_99A0:
C - - - - - 0x0019B0 00:99A0: AC 03 06  LDY ram_sfx_3
C - - - - - 0x0019B3 00:99A3: 30 81     BMI bra_9926
C - - - - - 0x0019B5 00:99A5: AD 06 06  LDA ram_0606
C - - - - - 0x0019B8 00:99A8: 4E 03 06  LSR ram_sfx_3
C - - - - - 0x0019BB 00:99AB: B0 E5     BCS bra_9992
C - - - - - 0x0019BD 00:99AD: 4A        LSR
C - - - - - 0x0019BE 00:99AE: B0 E9     BCS bra_9999
C - - - - - 0x0019C0 00:99B0: 4E 03 06  LSR ram_sfx_3
C - - - - - 0x0019C3 00:99B3: B0 85     BCS bra_993A
C - - - - - 0x0019C5 00:99B5: 4A        LSR
C - - - - - 0x0019C6 00:99B6: B0 93     BCS bra_994B
C - - - - - 0x0019C8 00:99B8: 4E 03 06  LSR ram_sfx_3
C - - - - - 0x0019CB 00:99BB: B0 2A     BCS bra_99E7
C - - - - - 0x0019CD 00:99BD: 4A        LSR
C - - - - - 0x0019CE 00:99BE: B0 2E     BCS bra_99EE
C - - - - - 0x0019D0 00:99C0: 4E 03 06  LSR ram_sfx_3
C - - - - - 0x0019D3 00:99C3: B0 8D     BCS bra_9952
C - - - - - 0x0019D5 00:99C5: 4A        LSR
C - - - - - 0x0019D6 00:99C6: B0 95     BCS bra_995D
C - - - - - 0x0019D8 00:99C8: 4E 03 06  LSR ram_sfx_3
C - - - - - 0x0019DB 00:99CB: B0 0C     BCS bra_99D9
C - - - - - 0x0019DD 00:99CD: 4A        LSR
C - - - - - 0x0019DE 00:99CE: B0 10     BCS bra_99E0
C - - - - - 0x0019E0 00:99D0: 4A        LSR
C - - - - - 0x0019E1 00:99D1: B0 36     BCS bra_9A09
C - - - - - 0x0019E3 00:99D3: 4E 03 06  LSR ram_sfx_3
C - - - - - 0x0019E6 00:99D6: B0 25     BCS bra_99FD
C - - - - - 0x0019E8 00:99D8: 60        RTS
bra_99D9:
C - - - - - 0x0019E9 00:99D9: 8C 06 06  STY ram_0606
C - - - - - 0x0019EC 00:99DC: A9 18     LDA #$18
C - - - - - 0x0019EE 00:99DE: 85 69     STA ram_0069
bra_99E0:
C - - - - - 0x0019F0 00:99E0: A4 69     LDY ram_0069
C - - - - - 0x0019F2 00:99E2: B9 3C 9A  LDA tbl_9A3D - 1,Y
C - - - - - 0x0019F5 00:99E5: D0 87     BNE bra_996E    ; bzk
bra_99E7:
C - - - - - 0x0019F7 00:99E7: 8C 06 06  STY ram_0606
C - - - - - 0x0019FA 00:99EA: A9 20     LDA #$20
C - - - - - 0x0019FC 00:99EC: 85 69     STA ram_0069
bra_99EE:
C - - - - - 0x0019FE 00:99EE: A5 69     LDA ram_0069
C - - - - - 0x001A00 00:99F0: 4A        LSR
C - - - - - 0x001A01 00:99F1: A8        TAY
C - - - - - 0x001A02 00:99F2: A2 0E     LDX #$0E
C - - - - - 0x001A04 00:99F4: 8E 0E 40  STX $400E
C - - - - - 0x001A07 00:99F7: B9 C0 9F  LDA tbl_9FC0,Y
C - - - - - 0x001A0A 00:99FA: 4C 7B 99  JMP loc_997B
bra_99FD:
C - - - - - 0x001A0D 00:99FD: 8C 06 06  STY ram_0606
C - - - - - 0x001A10 00:9A00: A9 D0     LDA #$D0
C - - - - - 0x001A12 00:9A02: 8D F3 05  STA ram_05F3
C - - - - - 0x001A15 00:9A05: A9 10     LDA #$10
C - - - - - 0x001A17 00:9A07: 85 68     STA ram_0068
bra_9A09:
C - - - - - 0x001A19 00:9A09: AD F3 05  LDA ram_05F3
C - - - - - 0x001A1C 00:9A0C: C9 BF     CMP #$BF
C - - - - - 0x001A1E 00:9A0E: 90 04     BCC bra_9A14
C - - - - - 0x001A20 00:9A10: E6 68     INC ram_0068
C - - - - - 0x001A22 00:9A12: D0 14     BNE bra_9A28
bra_9A14:
C - - - - - 0x001A24 00:9A14: AD F3 05  LDA ram_05F3
C - - - - - 0x001A27 00:9A17: 4A        LSR
C - - - - - 0x001A28 00:9A18: 90 0E     BCC bra_9A28
C - - - - - 0x001A2A 00:9A1A: 4A        LSR
C - - - - - 0x001A2B 00:9A1B: 90 0B     BCC bra_9A28
C - - - - - 0x001A2D 00:9A1D: 4A        LSR
C - - - - - 0x001A2E 00:9A1E: 90 08     BCC bra_9A28
C - - - - - 0x001A30 00:9A20: A5 68     LDA ram_0068
C - - - - - 0x001A32 00:9A22: C9 10     CMP #$10
C - - - - - 0x001A34 00:9A24: F0 02     BEQ bra_9A28
C - - - - - 0x001A36 00:9A26: C6 68     DEC ram_0068
bra_9A28:
C - - - - - 0x001A38 00:9A28: A5 68     LDA ram_0068
C - - - - - 0x001A3A 00:9A2A: 8D 0C 40  STA $400C
C - - - - - 0x001A3D 00:9A2D: A2 03     LDX #$03
C - - - - - 0x001A3F 00:9A2F: 8E 0E 40  STX $400E
C - - - - - 0x001A42 00:9A32: A9 08     LDA #$08
C - - - - - 0x001A44 00:9A34: 8D 0F 40  STA $400F
C - - - - - 0x001A47 00:9A37: CE F3 05  DEC ram_05F3
C - - - - - 0x001A4A 00:9A3A: 4C 85 99  JMP loc_9985



tbl_9A3D:
- D 0 - - - 0x001A4D 00:9A3D: 1F        .byte $1F   ; 
- D 0 - - - 0x001A4E 00:9A3E: 2F        .byte $2F   ; 
- D 0 - - - 0x001A4F 00:9A3F: 2E        .byte $2E   ; 
- D 0 - - - 0x001A50 00:9A40: 3F        .byte $3F   ; 
- D 0 - - - 0x001A51 00:9A41: 3F        .byte $3F   ; 
- D 0 - - - 0x001A52 00:9A42: 4C        .byte $4C   ; 
- D 0 - - - 0x001A53 00:9A43: 4E        .byte $4E   ; 
- D 0 - - - 0x001A54 00:9A44: 5F        .byte $5F   ; 
- D 0 - - - 0x001A55 00:9A45: 6F        .byte $6F   ; 
- D 0 - - - 0x001A56 00:9A46: 6F        .byte $6F   ; 
- D 0 - - - 0x001A57 00:9A47: 7E        .byte $7E   ; 
- D 0 - - - 0x001A58 00:9A48: 8F        .byte $8F   ; 
- D 0 - - - 0x001A59 00:9A49: 9E        .byte $9E   ; 
- D 0 - - - 0x001A5A 00:9A4A: AF        .byte $AF   ; 
- D 0 - - - 0x001A5B 00:9A4B: BE        .byte $BE   ; 
- D 0 - - - 0x001A5C 00:9A4C: CF        .byte $CF   ; 
- D 0 - - - 0x001A5D 00:9A4D: DE        .byte $DE   ; 
- D 0 - - - 0x001A5E 00:9A4E: EF        .byte $EF   ; 
- D 0 - - - 0x001A5F 00:9A4F: FE        .byte $FE   ; 
- D 0 - - - 0x001A60 00:9A50: FD        .byte $FD   ; 
- D 0 - - - 0x001A61 00:9A51: FE        .byte $FE   ; 
- D 0 - - - 0x001A62 00:9A52: FF        .byte $FF   ; 
- D 0 - - - 0x001A63 00:9A53: FF        .byte $FF   ; 
- D 0 - - - 0x001A64 00:9A54: FE        .byte $FE   ; 



tbl_9A55:
- D 0 - - - 0x001A65 00:9A55: 0C        .byte off_9A61 - tbl_9A55   ; 
- D 0 - - - 0x001A66 00:9A56: 08        .byte off_9A5D - tbl_9A55   ; 
- D 0 - - - 0x001A67 00:9A57: 11        .byte off_9A66 - tbl_9A55   ; 
- D 0 - - - 0x001A68 00:9A58: 1C        .byte off_9A71 - tbl_9A55   ; 
- D 0 - - - 0x001A69 00:9A59: 28        .byte off_9A7D - tbl_9A55   ; 
- D 0 - - - 0x001A6A 00:9A5A: 33        .byte off_9A88 - tbl_9A55   ; 
- D 0 - - - 0x001A6B 00:9A5B: 40        .byte off_9A95 - tbl_9A55   ; 
- D 0 - - - 0x001A6C 00:9A5C: 62        .byte off_9AB7 - tbl_9A55   ; 



tbl_9A5D:
off_9A5D:   ; 08
- D 0 - - - 0x001A6D 00:9A5D: 8A        .byte $8A   ; 
- D 0 - - - 0x001A6E 00:9A5E: 4E        .byte $4E   ; 
- D 0 - - - 0x001A6F 00:9A5F: 58        .byte $58   ; 
- D 0 - - - 0x001A70 00:9A60: 60        .byte $60   ; 



off_9A61:   ; 0C
- D 0 - - - 0x001A71 00:9A61: 8A        .byte $8A   ; 
- D 0 - - - 0x001A72 00:9A62: 5E        .byte $5E   ; 
- D 0 - - - 0x001A73 00:9A63: 94        .byte $94   ; 
- D 0 - - - 0x001A74 00:9A64: 60        .byte $60   ; 
- D 0 - - - 0x001A75 00:9A65: 00        .byte $00   ; 



off_9A66:   ; 11
- D 0 - - - 0x001A76 00:9A66: 8A        .byte $8A   ; 
- D 0 - - - 0x001A77 00:9A67: 42        .byte $42   ; 
- D 0 - - - 0x001A78 00:9A68: 06        .byte $06   ; 
- D 0 - - - 0x001A79 00:9A69: 3C        .byte $3C   ; 
- D 0 - - - 0x001A7A 00:9A6A: 30        .byte $30   ; 
- D 0 - - - 0x001A7B 00:9A6B: 2E        .byte $2E   ; 
- D 0 - - - 0x001A7C 00:9A6C: 3E        .byte $3E   ; 
- D 0 - - - 0x001A7D 00:9A6D: 44        .byte $44   ; 
- D 0 - - - 0x001A7E 00:9A6E: CC        .byte $CC   ; 
- D 0 - - - 0x001A7F 00:9A6F: 02        .byte $02   ; 
- D 0 - - - 0x001A80 00:9A70: 00        .byte $00   ; 



off_9A71:   ; 1C
- D 0 - - - 0x001A81 00:9A71: 83        .byte $83   ; 
- D 0 - - - 0x001A82 00:9A72: 40        .byte $40   ; 
- D 0 - - - 0x001A83 00:9A73: 42        .byte $42   ; 
- D 0 - - - 0x001A84 00:9A74: 48        .byte $48   ; 
- D 0 - - - 0x001A85 00:9A75: 4A        .byte $4A   ; 
- D 0 - - - 0x001A86 00:9A76: 02        .byte $02   ; 
- D 0 - - - 0x001A87 00:9A77: 50        .byte $50   ; 
- D 0 - - - 0x001A88 00:9A78: 4C        .byte $4C   ; 
- D 0 - - - 0x001A89 00:9A79: 54        .byte $54   ; 
- D 0 - - - 0x001A8A 00:9A7A: 94        .byte $94   ; 
- D 0 - - - 0x001A8B 00:9A7B: 56        .byte $56   ; 
- D 0 - - - 0x001A8C 00:9A7C: 00        .byte $00   ; 



off_9A7D:   ; 28
- D 0 - - - 0x001A8D 00:9A7D: 94        .byte $94   ; 
- D 0 - - - 0x001A8E 00:9A7E: 3A        .byte $3A   ; 
- D 0 - - - 0x001A8F 00:9A7F: 3E        .byte $3E   ; 
- D 0 - - - 0x001A90 00:9A80: A8        .byte $A8   ; 
- D 0 - - - 0x001A91 00:9A81: 50        .byte $50   ; 
- D 0 - - - 0x001A92 00:9A82: 8A        .byte $8A   ; 
- D 0 - - - 0x001A93 00:9A83: 4E        .byte $4E   ; 
- D 0 - - - 0x001A94 00:9A84: 02        .byte $02   ; 
- D 0 - - - 0x001A95 00:9A85: CC        .byte $CC   ; 
- D 0 - - - 0x001A96 00:9A86: 4A        .byte $4A   ; 
- D 0 - - - 0x001A97 00:9A87: 00        .byte $00   ; 



off_9A88:   ; 33
- D 0 - - - 0x001A98 00:9A88: 81        .byte $81   ; 
- D 0 - - - 0x001A99 00:9A89: 28        .byte $28   ; 
- D 0 - - - 0x001A9A 00:9A8A: 3E        .byte $3E   ; 
- D 0 - - - 0x001A9B 00:9A8B: 24        .byte $24   ; 
- D 0 - - - 0x001A9C 00:9A8C: 82        .byte $82   ; 
- D 0 - - - 0x001A9D 00:9A8D: 3A        .byte $3A   ; 
- D 0 - - - 0x001A9E 00:9A8E: 81        .byte $81   ; 
- D 0 - - - 0x001A9F 00:9A8F: 16        .byte $16   ; 
- D 0 - - - 0x001AA0 00:9A90: 30        .byte $30   ; 
- D 0 - - - 0x001AA1 00:9A91: 1A        .byte $1A   ; 
- D 0 - - - 0x001AA2 00:9A92: 82        .byte $82   ; 
- D 0 - - - 0x001AA3 00:9A93: 34        .byte $34   ; 
- D 0 - - - 0x001AA4 00:9A94: 00        .byte $00   ; 



off_9A95:   ; 40
- D 0 - - - 0x001AA5 00:9A95: 94        .byte $94   ; 
- D 0 - - - 0x001AA6 00:9A96: 56        .byte $56   ; 
- D 0 - - - 0x001AA7 00:9A97: 42        .byte $42   ; 
- D 0 - - - 0x001AA8 00:9A98: 02        .byte $02   ; 
- D 0 - - - 0x001AA9 00:9A99: 4C        .byte $4C   ; 
- D 0 - - - 0x001AAA 00:9A9A: 52        .byte $52   ; 
- D 0 - - - 0x001AAB 00:9A9B: 42        .byte $42   ; 
- D 0 - - - 0x001AAC 00:9A9C: 5C        .byte $5C   ; 
- D 0 - - - 0x001AAD 00:9A9D: 4A        .byte $4A   ; 
- D 0 - - - 0x001AAE 00:9A9E: 5A        .byte $5A   ; 
- D 0 - - - 0x001AAF 00:9A9F: 02        .byte $02   ; 
- D 0 - - - 0x001AB0 00:9AA0: 4C        .byte $4C   ; 
- D 0 - - - 0x001AB1 00:9AA1: 5A        .byte $5A   ; 
- D 0 - - - 0x001AB2 00:9AA2: 56        .byte $56   ; 
- D 0 - - - 0x001AB3 00:9AA3: 02        .byte $02   ; 
- D 0 - - - 0x001AB4 00:9AA4: 50        .byte $50   ; 
- D 0 - - - 0x001AB5 00:9AA5: 4C        .byte $4C   ; 
- D 0 - - - 0x001AB6 00:9AA6: 5A        .byte $5A   ; 
- D 0 - - - 0x001AB7 00:9AA7: 02        .byte $02   ; 
- D 0 - - - 0x001AB8 00:9AA8: 54        .byte $54   ; 
- D 0 - - - 0x001AB9 00:9AA9: 5A        .byte $5A   ; 
- D 0 - - - 0x001ABA 00:9AAA: 58        .byte $58   ; 
- D 0 - - - 0x001ABB 00:9AAB: 02        .byte $02   ; 
- D 0 - - - 0x001ABC 00:9AAC: 50        .byte $50   ; 
- D 0 - - - 0x001ABD 00:9AAD: 54        .byte $54   ; 
- D 0 - - - 0x001ABE 00:9AAE: 4C        .byte $4C   ; 
- D 0 - - - 0x001ABF 00:9AAF: 42        .byte $42   ; 
- D 0 - - - 0x001AC0 00:9AB0: 02        .byte $02   ; 
- D 0 - - - 0x001AC1 00:9AB1: 4C        .byte $4C   ; 
- D 0 - - - 0x001AC2 00:9AB2: 50        .byte $50   ; 
- D 0 - - - 0x001AC3 00:9AB3: 48        .byte $48   ; 
- D 0 - - - 0x001AC4 00:9AB4: 4A        .byte $4A   ; 
- D 0 - - - 0x001AC5 00:9AB5: 50        .byte $50   ; 
- D 0 - - - 0x001AC6 00:9AB6: 00        .byte $00   ; 



off_9AB7:   ; 62
- D 0 - - - 0x001AC7 00:9AB7: 8A        .byte $8A   ; 
- D 0 - - - 0x001AC8 00:9AB8: 08        .byte $08   ; 
- D 0 - - - 0x001AC9 00:9AB9: 08        .byte $08   ; 
- D 0 - - - 0x001ACA 00:9ABA: 08        .byte $08   ; 
- D 0 - - - 0x001ACB 00:9ABB: 85        .byte $85   ; 
- D 0 - - - 0x001ACC 00:9ABC: 3C        .byte $3C   ; 
- D 0 - - - 0x001ACD 00:9ABD: 3A        .byte $3A   ; 
- D 0 - - - 0x001ACE 00:9ABE: 38        .byte $38   ; 
- D 0 - - - 0x001ACF 00:9ABF: 36        .byte $36   ; 
- D 0 - - - 0x001AD0 00:9AC0: 3A        .byte $3A   ; 
- D 0 - - - 0x001AD1 00:9AC1: 38        .byte $38   ; 
- D 0 - - - 0x001AD2 00:9AC2: 36        .byte $36   ; 
- D 0 - - - 0x001AD3 00:9AC3: 34        .byte $34   ; 
- D 0 - - - 0x001AD4 00:9AC4: 38        .byte $38   ; 
- D 0 - - - 0x001AD5 00:9AC5: 36        .byte $36   ; 
- D 0 - - - 0x001AD6 00:9AC6: 34        .byte $34   ; 
- D 0 - - - 0x001AD7 00:9AC7: 32        .byte $32   ; 
- D 0 - - - 0x001AD8 00:9AC8: 36        .byte $36   ; 
- D 0 - - - 0x001AD9 00:9AC9: 34        .byte $34   ; 
- D 0 - - - 0x001ADA 00:9ACA: 32        .byte $32   ; 
- D 0 - - - 0x001ADB 00:9ACB: 30        .byte $30   ; 
- D 0 - - - 0x001ADC 00:9ACC: 34        .byte $34   ; 
- D 0 - - - 0x001ADD 00:9ACD: 32        .byte $32   ; 
- D 0 - - - 0x001ADE 00:9ACE: 30        .byte $30   ; 
- D 0 - - - 0x001ADF 00:9ACF: 2E        .byte $2E   ; 
- D 0 - - - 0x001AE0 00:9AD0: 2A        .byte $2A   ; 
- D 0 - - - 0x001AE1 00:9AD1: 28        .byte $28   ; 
- D 0 - - - 0x001AE2 00:9AD2: A8        .byte $A8   ; 
- D 0 - - - 0x001AE3 00:9AD3: 26        .byte $26   ; 
- D 0 - - - 0x001AE4 00:9AD4: 00        .byte $00   ; 



sub_9AD5:
C - - - - - 0x001AE5 00:9AD5: AD 02 06  LDA ram_sfx_2
C - - - - - 0x001AE8 00:9AD8: 30 08     BMI bra_9AE2
C - - - - - 0x001AEA 00:9ADA: D0 0B     BNE bra_9AE7
C - - - - - 0x001AEC 00:9ADC: AD 07 06  LDA ram_0607
C - - - - - 0x001AEF 00:9ADF: D0 19     BNE bra_9AFA
C - - - - - 0x001AF1 00:9AE1: 60        RTS
bra_9AE2:
C - - - - - 0x001AF2 00:9AE2: 20 46 9D  JSR sub_9D46
C - - - - - 0x001AF5 00:9AE5: A9 80     LDA #$80
bra_9AE7:
C - - - - - 0x001AF7 00:9AE7: 8D 07 06  STA ram_0607
C - - - - - 0x001AFA 00:9AEA: A0 00     LDY #$00
bra_9AEC_loop:
C - - - - - 0x001AFC 00:9AEC: C8        INY
C - - - - - 0x001AFD 00:9AED: 4A        LSR
C - - - - - 0x001AFE 00:9AEE: 90 FC     BCC bra_9AEC_loop
C - - - - - 0x001B00 00:9AF0: B9 54 9A  LDA tbl_9A55 - 1,Y
C - - - - - 0x001B03 00:9AF3: 8D 18 06  STA ram_0618
C - - - - - 0x001B06 00:9AF6: A9 01     LDA #$01
C - - - - - 0x001B08 00:9AF8: 85 6F     STA ram_006F
bra_9AFA:
C - - - - - 0x001B0A 00:9AFA: C6 6F     DEC ram_006F
C - - - - - 0x001B0C 00:9AFC: D0 49     BNE bra_9B47
C - - - - - 0x001B0E 00:9AFE: AC 18 06  LDY ram_0618
C - - - - - 0x001B11 00:9B01: EE 18 06  INC ram_0618
C - - - - - 0x001B14 00:9B04: B9 55 9A  LDA tbl_9A5D - $08,Y
C - - - - - 0x001B17 00:9B07: 30 1C     BMI bra_9B25
C - - - - - 0x001B19 00:9B09: D0 27     BNE bra_9B32
C - - - - - 0x001B1B 00:9B0B: AD 07 06  LDA ram_0607
C - - - - - 0x001B1E 00:9B0E: C9 40     CMP #$40
C - - - - - 0x001B20 00:9B10: F0 D5     BEQ bra_9AE7
C - - - - - 0x001B22 00:9B12: A2 90     LDX #$90
C - - - - - 0x001B24 00:9B14: 8E 04 40  STX $4004
C - - - - - 0x001B27 00:9B17: A2 18     LDX #$18
C - - - - - 0x001B29 00:9B19: 8E 07 40  STX $4007
C - - - - - 0x001B2C 00:9B1C: A2 00     LDX #$00
C - - - - - 0x001B2E 00:9B1E: 8E 07 06  STX ram_0607
C - - - - - 0x001B31 00:9B21: 8E 06 40  STX $4006
C - - - - - 0x001B34 00:9B24: 60        RTS
bra_9B25:
C - - - - - 0x001B35 00:9B25: 29 7F     AND #$7F
C - - - - - 0x001B37 00:9B27: 85 6E     STA ram_006E
C - - - - - 0x001B39 00:9B29: AC 18 06  LDY ram_0618
C - - - - - 0x001B3C 00:9B2C: EE 18 06  INC ram_0618
C - - - - - 0x001B3F 00:9B2F: B9 55 9A  LDA tbl_9A5D - $08,Y
bra_9B32:
C - - - - - 0x001B42 00:9B32: 20 2B 9C  JSR sub_9C2B
C - - - - - 0x001B45 00:9B35: A9 7F     LDA #$7F
C - - - - - 0x001B47 00:9B37: 8D 05 40  STA $4005
C - - - - - 0x001B4A 00:9B3A: A9 86     LDA #$86
C - - - - - 0x001B4C 00:9B3C: 8D 04 40  STA $4004
C - - - - - 0x001B4F 00:9B3F: A5 6E     LDA ram_006E
C - - - - - 0x001B51 00:9B41: 85 6F     STA ram_006F
C - - - - - 0x001B53 00:9B43: A9 1F     LDA #$1F
C - - - - - 0x001B55 00:9B45: 85 6D     STA ram_006D
bra_9B47:
C - - - - - 0x001B57 00:9B47: AD 07 06  LDA ram_0607
C - - - - - 0x001B5A 00:9B4A: 29 90     AND #$90
C - - - - - 0x001B5C 00:9B4C: F0 16     BEQ bra_9B64_RTS
C - - - - - 0x001B5E 00:9B4E: A4 6D     LDY ram_006D
C - - - - - 0x001B60 00:9B50: F0 02     BEQ bra_9B54
C - - - - - 0x001B62 00:9B52: C6 6D     DEC ram_006D
bra_9B54:
C - - - - - 0x001B64 00:9B54: B9 65 9B  LDA tbl_9B65,Y
C - - - - - 0x001B67 00:9B57: 8D 04 40  STA $4004
C - - - - - 0x001B6A 00:9B5A: A5 6F     LDA ram_006F
C - - - - - 0x001B6C 00:9B5C: A6 6B     LDX ram_006B
C - - - - - 0x001B6E 00:9B5E: 20 54 9C  JSR sub_9C54
C - - - - - 0x001B71 00:9B61: 8E 06 40  STX $4006
bra_9B64_RTS:
C - - - - - 0x001B74 00:9B64: 60        RTS



tbl_9B65:
- D 0 - - - 0x001B75 00:9B65: 95        .byte $95   ; 
- D 0 - - - 0x001B76 00:9B66: 96        .byte $96   ; 
- D 0 - - - 0x001B77 00:9B67: 97        .byte $97   ; 
- D 0 - - - 0x001B78 00:9B68: 98        .byte $98   ; 
- D 0 - - - 0x001B79 00:9B69: 99        .byte $99   ; 
- D 0 - - - 0x001B7A 00:9B6A: 9A        .byte $9A   ; 
- D 0 - - - 0x001B7B 00:9B6B: 9B        .byte $9B   ; 
- D 0 - - - 0x001B7C 00:9B6C: 9C        .byte $9C   ; 
- D 0 - - - 0x001B7D 00:9B6D: 9D        .byte $9D   ; 
- D 0 - - - 0x001B7E 00:9B6E: 9E        .byte $9E   ; 
- D 0 - - - 0x001B7F 00:9B6F: 9F        .byte $9F   ; 
- D 0 - - - 0x001B80 00:9B70: 9F        .byte $9F   ; 
- D 0 - - - 0x001B81 00:9B71: 9F        .byte $9F   ; 
- D 0 - - - 0x001B82 00:9B72: 9F        .byte $9F   ; 
- D 0 - - - 0x001B83 00:9B73: 9F        .byte $9F   ; 
- D 0 - - - 0x001B84 00:9B74: 9F        .byte $9F   ; 
- D 0 - - - 0x001B85 00:9B75: 9F        .byte $9F   ; 
- D 0 - - - 0x001B86 00:9B76: 9F        .byte $9F   ; 
- D 0 - - - 0x001B87 00:9B77: 9F        .byte $9F   ; 
- D 0 - - - 0x001B88 00:9B78: 9F        .byte $9F   ; 
- D 0 - - - 0x001B89 00:9B79: 9F        .byte $9F   ; 
- D 0 - - - 0x001B8A 00:9B7A: 9F        .byte $9F   ; 
- D 0 - - - 0x001B8B 00:9B7B: 9F        .byte $9F   ; 
- D 0 - - - 0x001B8C 00:9B7C: 9E        .byte $9E   ; 
- D 0 - - - 0x001B8D 00:9B7D: 9D        .byte $9D   ; 
- D 0 - - - 0x001B8E 00:9B7E: 9C        .byte $9C   ; 
- D 0 - - - 0x001B8F 00:9B7F: 9B        .byte $9B   ; 
- D 0 - - - 0x001B90 00:9B80: 9A        .byte $9A   ; 
- D 0 - - - 0x001B91 00:9B81: 99        .byte $99   ; 
- D 0 - - - 0x001B92 00:9B82: 98        .byte $98   ; 
- D 0 - - - 0x001B93 00:9B83: 97        .byte $97   ; 
- D 0 - - - 0x001B94 00:9B84: 96        .byte $96   ; 



sub_9B85:
C - - - - - 0x001B95 00:9B85: AD 01 06  LDA ram_sfx_1
C - - - - - 0x001B98 00:9B88: 30 29     BMI bra_9BB3
C - - - - - 0x001B9A 00:9B8A: D0 23     BNE bra_9BAF
C - - - - - 0x001B9C 00:9B8C: AD 08 06  LDA ram_0608
C - - - - - 0x001B9F 00:9B8F: F0 18     BEQ bra_9BA9
C - - - - - 0x001BA1 00:9B91: CE F2 05  DEC ram_05F2
C - - - - - 0x001BA4 00:9B94: D0 18     BNE bra_9BAE_RTS
C - - - - - 0x001BA6 00:9B96: AD 08 06  LDA ram_0608
C - - - - - 0x001BA9 00:9B99: 30 18     BMI bra_9BB3
C - - - - - 0x001BAB 00:9B9B: 29 70     AND #$70
C - - - - - 0x001BAD 00:9B9D: D0 10     BNE bra_9BAF
C - - - - - 0x001BAF 00:9B9F: A9 00     LDA #$00
C - - - - - 0x001BB1 00:9BA1: 8D 08 06  STA ram_0608
C - - - - - 0x001BB4 00:9BA4: A9 0F     LDA #$0F
C - - - - - 0x001BB6 00:9BA6: 8D 15 40  STA $4015
bra_9BA9:
C - - - - - 0x001BB9 00:9BA9: AD F6 05  LDA ram_05F6
C - - - - - 0x001BBC 00:9BAC: D0 09     BNE bra_9BB7
bra_9BAE_RTS:
C - - - - - 0x001BBE 00:9BAE: 60        RTS
bra_9BAF:
C - - - - - 0x001BBF 00:9BAF: A2 00     LDX #$00
C - - - - - 0x001BC1 00:9BB1: F0 04     BEQ bra_9BB7
bra_9BB3:
C - - - - - 0x001BC3 00:9BB3: A2 7F     LDX #$7F
C - - - - - 0x001BC5 00:9BB5: 29 F0     AND #$F0
bra_9BB7:
C - - - - - 0x001BC7 00:9BB7: 8E 11 40  STX $4011
C - - - - - 0x001BCA 00:9BBA: 8D 08 06  STA ram_0608
C - - - - - 0x001BCD 00:9BBD: AA        TAX
C - - - - - 0x001BCE 00:9BBE: 29 F0     AND #$F0
C - - - - - 0x001BD0 00:9BC0: F0 03     BEQ bra_9BC5
C - - - - - 0x001BD2 00:9BC2: 8D F6 05  STA ram_05F6
bra_9BC5:
C - - - - - 0x001BD5 00:9BC5: 8A        TXA
C - - - - - 0x001BD6 00:9BC6: A0 00     LDY #$00
bra_9BC8_loop:
C - - - - - 0x001BD8 00:9BC8: C8        INY
C - - - - - 0x001BD9 00:9BC9: 4A        LSR
C - - - - - 0x001BDA 00:9BCA: 90 FC     BCC bra_9BC8_loop
C - - - - - 0x001BDC 00:9BCC: B9 FB 9B  LDA tbl_9BFC - 1,Y
C - - - - - 0x001BDF 00:9BCF: 8D 10 40  STA $4010
C - - - - - 0x001BE2 00:9BD2: B9 ED 9B  LDA tbl_9BEE - 1,Y
C - - - - - 0x001BE5 00:9BD5: 8D 12 40  STA $4012
C - - - - - 0x001BE8 00:9BD8: B9 F4 9B  LDA tbl_9BF5 - 1,Y
C - - - - - 0x001BEB 00:9BDB: 8D 13 40  STA $4013
C - - - - - 0x001BEE 00:9BDE: A9 A0     LDA #$A0
C - - - - - 0x001BF0 00:9BE0: 8D F2 05  STA ram_05F2
C - - - - - 0x001BF3 00:9BE3: A9 0F     LDA #$0F
C - - - - - 0x001BF5 00:9BE5: 8D 15 40  STA $4015
C - - - - - 0x001BF8 00:9BE8: A9 1F     LDA #$1F
C - - - - - 0x001BFA 00:9BEA: 8D 15 40  STA $4015
C - - - - - 0x001BFD 00:9BED: 60        RTS



tbl_9BEE:
- D 0 - - - 0x001BFE 00:9BEE: 00        .byte $00   ; 00
- D 0 - - - 0x001BFF 00:9BEF: 4C        .byte $4C   ; 01
- D 0 - - - 0x001C00 00:9BF0: 80        .byte $80   ; 02
- D 0 - - - 0x001C01 00:9BF1: 1D        .byte $1D   ; 03
- D 0 - - - 0x001C02 00:9BF2: 20        .byte $20   ; 04
- D 0 - - - 0x001C03 00:9BF3: 28        .byte $28   ; 05
- D 0 - - - 0x001C04 00:9BF4: 4C        .byte $4C   ; 06

tbl_9BF5:
- D 0 - - - 0x001C05 00:9BF5: 75        .byte $75   ; 00
- D 0 - - - 0x001C06 00:9BF6: C0        .byte $C0   ; 01
- D 0 - - - 0x001C07 00:9BF7: 40        .byte $40   ; 02
- D 0 - - - 0x001C08 00:9BF8: 0A        .byte $0A   ; 03
- D 0 - - - 0x001C09 00:9BF9: B0        .byte $B0   ; 04
- D 0 - - - 0x001C0A 00:9BFA: 90        .byte $90   ; 05
- D 0 - - - 0x001C0B 00:9BFB: D0        .byte $D0   ; 06

tbl_9BFC:
- D 0 - - - 0x001C0C 00:9BFC: 0F        .byte $0F   ; 00
- D 0 - - - 0x001C0D 00:9BFD: 0F        .byte $0F   ; 01
- D 0 - - - 0x001C0E 00:9BFE: 0D        .byte $0D   ; 02
- D 0 - - - 0x001C0F 00:9BFF: 0F        .byte $0F   ; 03
- D 0 - - - 0x001C10 00:9C00: 0E        .byte $0E   ; 04
- D 0 - - - 0x001C11 00:9C01: 0F        .byte $0F   ; 05
- D 0 - - - 0x001C12 00:9C02: 0E        .byte $0E   ; 06



sub_9C03:
C - - - - - 0x001C13 00:9C03: 8C 01 40  STY $4001
C - - - - - 0x001C16 00:9C06: 8E 00 40  STX $4000
C - - - - - 0x001C19 00:9C09: 60        RTS


; bzk garbage
- - - - - - 0x001C1A 00:9C0A: 20 03 9C  JSR sub_9C03



sub_9C0D:
C - - - - - 0x001C1D 00:9C0D: A8        TAY
C - - - - - 0x001C1E 00:9C0E: B9 01 9F  LDA tbl_9F01,Y
C - - - - - 0x001C21 00:9C11: F0 0D     BEQ bra_9C20_RTS
C - - - - - 0x001C23 00:9C13: 85 6A     STA ram_006A
C - - - - - 0x001C25 00:9C15: 8D 02 40  STA $4002
C - - - - - 0x001C28 00:9C18: B9 00 9F  LDA tbl_9F00,Y
C - - - - - 0x001C2B 00:9C1B: 09 08     ORA #$08
C - - - - - 0x001C2D 00:9C1D: 8D 03 40  STA $4003
bra_9C20_RTS:
C - - - - - 0x001C30 00:9C20: 60        RTS



sub_9C21:
C - - - - - 0x001C31 00:9C21: 8E 04 40  STX $4004
C - - - - - 0x001C34 00:9C24: 8C 05 40  STY $4005
C - - - - - 0x001C37 00:9C27: 60        RTS


; bzk garbage
- - - - - - 0x001C38 00:9C28: 20 21 9C  JSR sub_9C21



sub_9C2B:
C - - - - - 0x001C3B 00:9C2B: A8        TAY
C - - - - - 0x001C3C 00:9C2C: B9 01 9F  LDA tbl_9F01,Y
C - - - - - 0x001C3F 00:9C2F: F0 EF     BEQ bra_9C20_RTS
C - - - - - 0x001C41 00:9C31: 85 6B     STA ram_006B
C - - - - - 0x001C43 00:9C33: 8D 06 40  STA $4006
C - - - - - 0x001C46 00:9C36: B9 00 9F  LDA tbl_9F00,Y
C - - - - - 0x001C49 00:9C39: 09 08     ORA #$08
C - - - - - 0x001C4B 00:9C3B: 8D 07 40  STA $4007
C - - - - - 0x001C4E 00:9C3E: 60        RTS



sub_9C3F:
C - - - - - 0x001C4F 00:9C3F: A8        TAY
C - - - - - 0x001C50 00:9C40: B9 01 9F  LDA tbl_9F01,Y
C - - - - - 0x001C53 00:9C43: F0 DB     BEQ bra_9C20_RTS
C - - - - - 0x001C55 00:9C45: 8D F0 05  STA ram_05F0
C - - - - - 0x001C58 00:9C48: 8D 0A 40  STA $400A
C - - - - - 0x001C5B 00:9C4B: B9 00 9F  LDA tbl_9F00,Y
C - - - - - 0x001C5E 00:9C4E: 09 08     ORA #$08
C - - - - - 0x001C60 00:9C50: 8D 0B 40  STA $400B
C - - - - - 0x001C63 00:9C53: 60        RTS



sub_9C54:
C - - - - - 0x001C64 00:9C54: C9 10     CMP #$10
C - - - - - 0x001C66 00:9C56: 90 0F     BCC bra_9C67_RTS
C - - - - - 0x001C68 00:9C58: 4A        LSR
C - - - - - 0x001C69 00:9C59: 4A        LSR
C - - - - - 0x001C6A 00:9C5A: 4A        LSR
C - - - - - 0x001C6B 00:9C5B: B0 05     BCS bra_9C62
C - - - - - 0x001C6D 00:9C5D: 8A        TXA
C - - - - - 0x001C6E 00:9C5E: 69 01     ADC #$01
C - - - - - 0x001C70 00:9C60: D0 04     BNE bra_9C66
bra_9C62:
C - - - - - 0x001C72 00:9C62: 8A        TXA
C - - - - - 0x001C73 00:9C63: 18        CLC
C - - - - - 0x001C74 00:9C64: 69 FF     ADC #$FF
bra_9C66:
C - - - - - 0x001C76 00:9C66: AA        TAX
bra_9C67_RTS:
C - - - - - 0x001C77 00:9C67: 60        RTS



bra_9C68:   ; bzk
C - - - - - 0x001C78 00:9C68: 4C 2C 9D  JMP loc_9D2C
sub_9C6B:
C - - - - - 0x001C7B 00:9C6B: AD 00 06  LDA ram_music
C - - - - - 0x001C7E 00:9C6E: D0 06     BNE bra_9C76
C - - - - - 0x001C80 00:9C70: AD 09 06  LDA ram_0609
C - - - - - 0x001C83 00:9C73: D0 F3     BNE bra_9C68
C - - - - - 0x001C85 00:9C75: 60        RTS
bra_9C76:
C - - - - - 0x001C86 00:9C76: 8D 09 06  STA ram_0609
C - - - - - 0x001C89 00:9C79: 30 18     BMI bra_9C93
C - - - - - 0x001C8B 00:9C7B: C9 06     CMP #$06
C - - - - - 0x001C8D 00:9C7D: D0 04     BNE bra_9C83
C - - - - - 0x001C8F 00:9C7F: A0 24     LDY #$24
C - - - - - 0x001C91 00:9C81: D0 62     BNE bra_9CE5
bra_9C83:
C - - - - - 0x001C93 00:9C83: C9 01     CMP #$01
C - - - - - 0x001C95 00:9C85: F0 14     BEQ bra_9C9B
C - - - - - 0x001C97 00:9C87: C9 40     CMP #$40
C - - - - - 0x001C99 00:9C89: F0 0C     BEQ bra_9C97
C - - - - - 0x001C9B 00:9C8B: C9 10     CMP #$10
C - - - - - 0x001C9D 00:9C8D: D0 10     BNE bra_9C9F
C - - - - - 0x001C9F 00:9C8F: A0 11     LDY #$11
C - - - - - 0x001CA1 00:9C91: D0 0A     BNE bra_9C9D
bra_9C93:
C - - - - - 0x001CA3 00:9C93: A0 19     LDY #$19
C - - - - - 0x001CA5 00:9C95: D0 06     BNE bra_9C9D
bra_9C97:
C - - - - - 0x001CA7 00:9C97: A0 0F     LDY #$0F
C - - - - - 0x001CA9 00:9C99: D0 02     BNE bra_9C9D
bra_9C9B:
C - - - - - 0x001CAB 00:9C9B: A0 08     LDY #$08
bra_9C9D:
C - - - - - 0x001CAD 00:9C9D: 84 6C     STY ram_006C
bra_9C9F:
loc_9C9F:
C D 0 - - - 0x001CAF 00:9C9F: AA        TAX
C - - - - - 0x001CB0 00:9CA0: 30 30     BMI bra_9CD2
C - - - - - 0x001CB2 00:9CA2: C9 01     CMP #$01
C - - - - - 0x001CB4 00:9CA4: F0 20     BEQ bra_9CC6
C - - - - - 0x001CB6 00:9CA6: C9 40     CMP #$40
C - - - - - 0x001CB8 00:9CA8: F0 10     BEQ bra_9CBA
C - - - - - 0x001CBA 00:9CAA: C9 10     CMP #$10
C - - - - - 0x001CBC 00:9CAC: D0 30     BNE bra_9CDE
C - - - - - 0x001CBE 00:9CAE: E6 6C     INC ram_006C
C - - - - - 0x001CC0 00:9CB0: A4 6C     LDY ram_006C
C - - - - - 0x001CC2 00:9CB2: C0 1A     CPY #$1A
C - - - - - 0x001CC4 00:9CB4: D0 2F     BNE bra_9CE5
C - - - - - 0x001CC6 00:9CB6: A0 14     LDY #$14
C - - - - - 0x001CC8 00:9CB8: D0 E3     BNE bra_9C9D
bra_9CBA:
C - - - - - 0x001CCA 00:9CBA: E6 6C     INC ram_006C
C - - - - - 0x001CCC 00:9CBC: A4 6C     LDY ram_006C
C - - - - - 0x001CCE 00:9CBE: C0 12     CPY #$12
C - - - - - 0x001CD0 00:9CC0: D0 23     BNE bra_9CE5
C - - - - - 0x001CD2 00:9CC2: A0 0F     LDY #$0F
C - - - - - 0x001CD4 00:9CC4: D0 D7     BNE bra_9C9D
bra_9CC6:
C - - - - - 0x001CD6 00:9CC6: E6 6C     INC ram_006C
C - - - - - 0x001CD8 00:9CC8: A4 6C     LDY ram_006C
C - - - - - 0x001CDA 00:9CCA: C0 10     CPY #$10
C - - - - - 0x001CDC 00:9CCC: D0 17     BNE bra_9CE5
C - - - - - 0x001CDE 00:9CCE: A0 09     LDY #$09
C - - - - - 0x001CE0 00:9CD0: D0 CB     BNE bra_9C9D
bra_9CD2:
C - - - - - 0x001CE2 00:9CD2: E6 6C     INC ram_006C
C - - - - - 0x001CE4 00:9CD4: A4 6C     LDY ram_006C
C - - - - - 0x001CE6 00:9CD6: C0 24     CPY #$24
C - - - - - 0x001CE8 00:9CD8: D0 0B     BNE bra_9CE5
C - - - - - 0x001CEA 00:9CDA: A0 19     LDY #$19
C - - - - - 0x001CEC 00:9CDC: D0 BF     BNE bra_9C9D
bra_9CDE:
C - - - - - 0x001CEE 00:9CDE: 8A        TXA
C - - - - - 0x001CEF 00:9CDF: A0 00     LDY #$00
bra_9CE1_loop:
C - - - - - 0x001CF1 00:9CE1: C8        INY
C - - - - - 0x001CF2 00:9CE2: 4A        LSR
C - - - - - 0x001CF3 00:9CE3: 90 FC     BCC bra_9CE1_loop
bra_9CE5:
C - - - - - 0x001CF5 00:9CE5: B9 5F 8D  LDA tbl_8D60_offset - 1,Y
C - - - - - 0x001CF8 00:9CE8: A8        TAY
C - - - - - 0x001CF9 00:9CE9: B9 60 8D  LDA tbl_8D84 - $24,Y
C - - - - - 0x001CFC 00:9CEC: 8D F4 05  STA ram_05F4
C - - - - - 0x001CFF 00:9CEF: B9 61 8D  LDA tbl_8D84 - $24 + 1,Y
C - - - - - 0x001D02 00:9CF2: 85 66     STA ram_0066
C - - - - - 0x001D04 00:9CF4: B9 62 8D  LDA tbl_8D84 - $24 + 2,Y
C - - - - - 0x001D07 00:9CF7: 85 67     STA ram_0067
C - - - - - 0x001D09 00:9CF9: B9 63 8D  LDA tbl_8D84 - $24 + 3,Y
C - - - - - 0x001D0C 00:9CFC: 8D 0C 06  STA ram_060C
C - - - - - 0x001D0F 00:9CFF: B9 64 8D  LDA tbl_8D84 - $24 + 4,Y
C - - - - - 0x001D12 00:9D02: 8D 0B 06  STA ram_060B
C - - - - - 0x001D15 00:9D05: B9 65 8D  LDA tbl_8D84 - $24 + 5,Y
C - - - - - 0x001D18 00:9D08: 8D 0D 06  STA ram_060D
C - - - - - 0x001D1B 00:9D0B: 8D F5 05  STA ram_05F5
C - - - - - 0x001D1E 00:9D0E: B9 66 8D  LDA tbl_8D84 - $24 + 6,Y
C - - - - - 0x001D21 00:9D11: 8D 19 06  STA ram_0619
C - - - - - 0x001D24 00:9D14: B9 67 8D  LDA tbl_8D84 - $24 + 7,Y
C - - - - - 0x001D27 00:9D17: 8D F1 05  STA ram_05F1
C - - - - - 0x001D2A 00:9D1A: A9 01     LDA #$01
C - - - - - 0x001D2C 00:9D1C: 8D 11 06  STA ram_0611
C - - - - - 0x001D2F 00:9D1F: 8D 13 06  STA ram_0613
C - - - - - 0x001D32 00:9D22: 8D 16 06  STA ram_0616
C - - - - - 0x001D35 00:9D25: 8D 17 06  STA ram_0617
C - - - - - 0x001D38 00:9D28: 4A        LSR
C - - - - - 0x001D39 00:9D29: 8D 0A 06  STA ram_060A
loc_9D2C:
C D 0 - - - 0x001D3C 00:9D2C: CE 11 06  DEC ram_0611
C - - - - - 0x001D3F 00:9D2F: D0 52     BNE bra_9D83
C - - - - - 0x001D41 00:9D31: AC 0A 06  LDY ram_060A
C - - - - - 0x001D44 00:9D34: EE 0A 06  INC ram_060A
C - - - - - 0x001D47 00:9D37: B1 66     LDA (ram_0066),Y
C - - - - - 0x001D49 00:9D39: F0 04     BEQ bra_9D3F
C - - - - - 0x001D4B 00:9D3B: 10 28     BPL bra_9D65
C - - - - - 0x001D4D 00:9D3D: D0 18     BNE bra_9D57
bra_9D3F:
C - - - - - 0x001D4F 00:9D3F: AD 09 06  LDA ram_0609
C - - - - - 0x001D52 00:9D42: 29 F1     AND #$F1
C - - - - - 0x001D54 00:9D44: D0 0E     BNE bra_9D54
loc_9D46:
sub_9D46:
C D 0 - - - 0x001D56 00:9D46: A9 00     LDA #$00
C - - - - - 0x001D58 00:9D48: 8D 09 06  STA ram_0609
C - - - - - 0x001D5B 00:9D4B: 8D 15 40  STA $4015
C - - - - - 0x001D5E 00:9D4E: A9 0F     LDA #$0F
C - - - - - 0x001D60 00:9D50: 8D 15 40  STA $4015
C - - - - - 0x001D63 00:9D53: 60        RTS
bra_9D54:
C - - - - - 0x001D64 00:9D54: 4C 9F 9C  JMP loc_9C9F
bra_9D57:
C - - - - - 0x001D67 00:9D57: 20 E6 9E  JSR sub_9EE6
C - - - - - 0x001D6A 00:9D5A: 8D 10 06  STA ram_0610
C - - - - - 0x001D6D 00:9D5D: AC 0A 06  LDY ram_060A
C - - - - - 0x001D70 00:9D60: EE 0A 06  INC ram_060A
C - - - - - 0x001D73 00:9D63: B1 66     LDA (ram_0066),Y
bra_9D65:
C - - - - - 0x001D75 00:9D65: AE 07 06  LDX ram_0607
C - - - - - 0x001D78 00:9D68: D0 13     BNE bra_9D7D
C - - - - - 0x001D7A 00:9D6A: 20 2B 9C  JSR sub_9C2B
C - - - - - 0x001D7D 00:9D6D: F0 03     BEQ bra_9D72
C - - - - - 0x001D7F 00:9D6F: 20 72 9F  JSR sub_9F72
bra_9D72:
C - - - - - 0x001D82 00:9D72: 8D 12 06  STA ram_0612
C - - - - - 0x001D85 00:9D75: 20 21 9C  JSR sub_9C21
C - - - - - 0x001D88 00:9D78: A9 00     LDA #$00
C - - - - - 0x001D8A 00:9D7A: 8D 1B 06  STA ram_061B
bra_9D7D:
C - - - - - 0x001D8D 00:9D7D: AD 10 06  LDA ram_0610
C - - - - - 0x001D90 00:9D80: 8D 11 06  STA ram_0611
bra_9D83:
C - - - - - 0x001D93 00:9D83: AC 07 06  LDY ram_0607
C - - - - - 0x001D96 00:9D86: D0 26     BNE bra_9DAE
C - - - - - 0x001D98 00:9D88: EE 1B 06  INC ram_061B
C - - - - - 0x001D9B 00:9D8B: AC 12 06  LDY ram_0612
C - - - - - 0x001D9E 00:9D8E: F0 03     BEQ bra_9D93
C - - - - - 0x001DA0 00:9D90: CE 12 06  DEC ram_0612
bra_9D93:
C - - - - - 0x001DA3 00:9D93: 20 7C 9F  JSR sub_9F7C
C - - - - - 0x001DA6 00:9D96: 8D 04 40  STA $4004
C - - - - - 0x001DA9 00:9D99: A2 7F     LDX #$7F
C - - - - - 0x001DAB 00:9D9B: 8E 05 40  STX $4005
C - - - - - 0x001DAE 00:9D9E: AD 09 06  LDA ram_0609
C - - - - - 0x001DB1 00:9DA1: 10 0B     BPL bra_9DAE
C - - - - - 0x001DB3 00:9DA3: AD 1B 06  LDA ram_061B
C - - - - - 0x001DB6 00:9DA6: A6 6B     LDX ram_006B
C - - - - - 0x001DB8 00:9DA8: 20 54 9C  JSR sub_9C54
C - - - - - 0x001DBB 00:9DAB: 8E 06 40  STX $4006
bra_9DAE:
C - - - - - 0x001DBE 00:9DAE: AC 0B 06  LDY ram_060B
C - - - - - 0x001DC1 00:9DB1: F0 66     BEQ bra_9E19
C - - - - - 0x001DC3 00:9DB3: CE 13 06  DEC ram_0613
C - - - - - 0x001DC6 00:9DB6: D0 36     BNE bra_9DEE
C - - - - - 0x001DC8 00:9DB8: AC 0B 06  LDY ram_060B
C - - - - - 0x001DCB 00:9DBB: EE 0B 06  INC ram_060B
C - - - - - 0x001DCE 00:9DBE: B1 66     LDA (ram_0066),Y
C - - - - - 0x001DD0 00:9DC0: 10 0E     BPL bra_9DD0
C - - - - - 0x001DD2 00:9DC2: 20 E6 9E  JSR sub_9EE6
C - - - - - 0x001DD5 00:9DC5: 8D 0F 06  STA ram_060F
C - - - - - 0x001DD8 00:9DC8: AC 0B 06  LDY ram_060B
C - - - - - 0x001DDB 00:9DCB: EE 0B 06  INC ram_060B
C - - - - - 0x001DDE 00:9DCE: B1 66     LDA (ram_0066),Y
bra_9DD0:
C - - - - - 0x001DE0 00:9DD0: AE 05 06  LDX ram_0605
C - - - - - 0x001DE3 00:9DD3: D0 13     BNE bra_9DE8
C - - - - - 0x001DE5 00:9DD5: 20 0D 9C  JSR sub_9C0D
C - - - - - 0x001DE8 00:9DD8: F0 03     BEQ bra_9DDD
C - - - - - 0x001DEA 00:9DDA: 20 72 9F  JSR sub_9F72
bra_9DDD:
C - - - - - 0x001DED 00:9DDD: 8D 14 06  STA ram_0614
C - - - - - 0x001DF0 00:9DE0: 20 03 9C  JSR sub_9C03
C - - - - - 0x001DF3 00:9DE3: A9 00     LDA #$00
C - - - - - 0x001DF5 00:9DE5: 8D 1C 06  STA ram_061C
bra_9DE8:
C - - - - - 0x001DF8 00:9DE8: AD 0F 06  LDA ram_060F
C - - - - - 0x001DFB 00:9DEB: 8D 13 06  STA ram_0613
bra_9DEE:
C - - - - - 0x001DFE 00:9DEE: AE 05 06  LDX ram_0605
C - - - - - 0x001E01 00:9DF1: D0 26     BNE bra_9E19
C - - - - - 0x001E03 00:9DF3: EE 1C 06  INC ram_061C
C - - - - - 0x001E06 00:9DF6: AC 14 06  LDY ram_0614
C - - - - - 0x001E09 00:9DF9: F0 03     BEQ bra_9DFE
C - - - - - 0x001E0B 00:9DFB: CE 14 06  DEC ram_0614
bra_9DFE:
C - - - - - 0x001E0E 00:9DFE: 20 7C 9F  JSR sub_9F7C
C - - - - - 0x001E11 00:9E01: 8D 00 40  STA $4000
C - - - - - 0x001E14 00:9E04: AD 09 06  LDA ram_0609
C - - - - - 0x001E17 00:9E07: 10 0B     BPL bra_9E14
C - - - - - 0x001E19 00:9E09: AD 1C 06  LDA ram_061C
C - - - - - 0x001E1C 00:9E0C: A6 6A     LDX ram_006A
C - - - - - 0x001E1E 00:9E0E: 20 54 9C  JSR sub_9C54
C - - - - - 0x001E21 00:9E11: 8E 02 40  STX $4002
bra_9E14:
C - - - - - 0x001E24 00:9E14: A9 7F     LDA #$7F
C - - - - - 0x001E26 00:9E16: 8D 01 40  STA $4001
bra_9E19:
C - - - - - 0x001E29 00:9E19: AD 0C 06  LDA ram_060C
C - - - - - 0x001E2C 00:9E1C: D0 03     BNE bra_9E21
- - - - - - 0x001E2E 00:9E1E: 4C 95 9E  JMP loc_9E95
bra_9E21:
C - - - - - 0x001E31 00:9E21: CE 16 06  DEC ram_0616
C - - - - - 0x001E34 00:9E24: D0 52     BNE bra_9E78
loc_9E26:
C D 0 - - - 0x001E36 00:9E26: AC 0C 06  LDY ram_060C
C - - - - - 0x001E39 00:9E29: EE 0C 06  INC ram_060C
C - - - - - 0x001E3C 00:9E2C: B1 66     LDA (ram_0066),Y
C - - - - - 0x001E3E 00:9E2E: F0 62     BEQ bra_9E92
C - - - - - 0x001E40 00:9E30: 10 38     BPL bra_9E6A
C - - - - - 0x001E42 00:9E32: C9 F0     CMP #$F0
C - - - - - 0x001E44 00:9E34: F0 11     BEQ bra_9E47
C - - - - - 0x001E46 00:9E36: 90 1D     BCC bra_9E55
C - - - - - 0x001E48 00:9E38: 38        SEC
C - - - - - 0x001E49 00:9E39: E9 F0     SBC #$F0
C - - - - - 0x001E4B 00:9E3B: 8D 1E 06  STA ram_061E
C - - - - - 0x001E4E 00:9E3E: AD 0C 06  LDA ram_060C
C - - - - - 0x001E51 00:9E41: 8D 1F 06  STA ram_061F
C - - - - - 0x001E54 00:9E44: 4C 26 9E  JMP loc_9E26
bra_9E47:
C - - - - - 0x001E57 00:9E47: CE 1E 06  DEC ram_061E
C - - - - - 0x001E5A 00:9E4A: F0 06     BEQ bra_9E52
C - - - - - 0x001E5C 00:9E4C: AD 1F 06  LDA ram_061F
C - - - - - 0x001E5F 00:9E4F: 8D 0C 06  STA ram_060C
bra_9E52:
C - - - - - 0x001E62 00:9E52: 4C 26 9E  JMP loc_9E26
bra_9E55:
C - - - - - 0x001E65 00:9E55: 20 E6 9E  JSR sub_9EE6
C - - - - - 0x001E68 00:9E58: 8D 15 06  STA ram_0615
C - - - - - 0x001E6B 00:9E5B: A9 1F     LDA #$1F
C - - - - - 0x001E6D 00:9E5D: 8D 08 40  STA $4008
C - - - - - 0x001E70 00:9E60: AC 0C 06  LDY ram_060C
C - - - - - 0x001E73 00:9E63: EE 0C 06  INC ram_060C
C - - - - - 0x001E76 00:9E66: B1 66     LDA (ram_0066),Y
C - - - - - 0x001E78 00:9E68: F0 28     BEQ bra_9E92
bra_9E6A:
C - - - - - 0x001E7A 00:9E6A: 20 3F 9C  JSR sub_9C3F
C - - - - - 0x001E7D 00:9E6D: A9 00     LDA #$00
C - - - - - 0x001E7F 00:9E6F: 8D 1D 06  STA ram_061D
C - - - - - 0x001E82 00:9E72: AE 15 06  LDX ram_0615
C - - - - - 0x001E85 00:9E75: 8E 16 06  STX ram_0616
bra_9E78:
C - - - - - 0x001E88 00:9E78: EE 1D 06  INC ram_061D
C - - - - - 0x001E8B 00:9E7B: AD 1D 06  LDA ram_061D
C - - - - - 0x001E8E 00:9E7E: AE F0 05  LDX ram_05F0
C - - - - - 0x001E91 00:9E81: 20 54 9C  JSR sub_9C54
C - - - - - 0x001E94 00:9E84: 8E 0A 40  STX $400A
C - - - - - 0x001E97 00:9E87: AD F1 05  LDA ram_05F1
C - - - - - 0x001E9A 00:9E8A: 10 04     BPL bra_9E90
C - - - - - 0x001E9C 00:9E8C: A9 1F     LDA #$1F
C - - - - - 0x001E9E 00:9E8E: D0 02     BNE bra_9E92
bra_9E90:
C - - - - - 0x001EA0 00:9E90: A9 FF     LDA #$FF
bra_9E92:
C - - - - - 0x001EA2 00:9E92: 8D 08 40  STA $4008
loc_9E95:
C - - - - - 0x001EA5 00:9E95: AD 09 06  LDA ram_0609
C - - - - - 0x001EA8 00:9E98: 29 91     AND #$91
C - - - - - 0x001EAA 00:9E9A: F0 37     BEQ bra_9ED3_RTS
C - - - - - 0x001EAC 00:9E9C: CE 17 06  DEC ram_0617
C - - - - - 0x001EAF 00:9E9F: D0 32     BNE bra_9ED3_RTS
bra_9EA1:
C - - - - - 0x001EB1 00:9EA1: AC 0D 06  LDY ram_060D
C - - - - - 0x001EB4 00:9EA4: EE 0D 06  INC ram_060D
C - - - - - 0x001EB7 00:9EA7: B1 66     LDA (ram_0066),Y
C - - - - - 0x001EB9 00:9EA9: D0 08     BNE bra_9EB3
C - - - - - 0x001EBB 00:9EAB: AD F5 05  LDA ram_05F5
C - - - - - 0x001EBE 00:9EAE: 8D 0D 06  STA ram_060D
C - - - - - 0x001EC1 00:9EB1: D0 EE     BNE bra_9EA1
bra_9EB3:
C - - - - - 0x001EC3 00:9EB3: 20 E0 9E  JSR sub_9EE0
C - - - - - 0x001EC6 00:9EB6: 8D 17 06  STA ram_0617
C - - - - - 0x001EC9 00:9EB9: 8A        TXA
C - - - - - 0x001ECA 00:9EBA: 29 3E     AND #$3E
C - - - - - 0x001ECC 00:9EBC: 4A        LSR
C - - - - - 0x001ECD 00:9EBD: 4A        LSR
C - - - - - 0x001ECE 00:9EBE: 4A        LSR
C - - - - - 0x001ECF 00:9EBF: 4A        LSR
C - - - - - 0x001ED0 00:9EC0: A8        TAY
C - - - - - 0x001ED1 00:9EC1: B9 D4 9E  LDA tbl_9ED4,Y
C - - - - - 0x001ED4 00:9EC4: 8D 0C 40  STA $400C
C - - - - - 0x001ED7 00:9EC7: B9 D8 9E  LDA tbl_9ED8,Y
C - - - - - 0x001EDA 00:9ECA: 8D 0E 40  STA $400E
C - - - - - 0x001EDD 00:9ECD: B9 DC 9E  LDA tbl_9EDC,Y
C - - - - - 0x001EE0 00:9ED0: 8D 0F 40  STA $400F
bra_9ED3_RTS:
C - - - - - 0x001EE3 00:9ED3: 60        RTS



tbl_9ED4:
- D 0 - - - 0x001EE4 00:9ED4: 10        .byte $10   ; 00
- D 0 - - - 0x001EE5 00:9ED5: 1C        .byte $1C   ; 01
- - - - - - 0x001EE6 00:9ED6: 1C        .byte $1C   ; 02
- D 0 - - - 0x001EE7 00:9ED7: 1C        .byte $1C   ; 03

tbl_9ED8:
- D 0 - - - 0x001EE8 00:9ED8: 00        .byte $00   ; 00
- D 0 - - - 0x001EE9 00:9ED9: 03        .byte $03   ; 01
- - - - - - 0x001EEA 00:9EDA: 0A        .byte $0A   ; 02
- D 0 - - - 0x001EEB 00:9EDB: 03        .byte $03   ; 03

tbl_9EDC:
- D 0 - - - 0x001EEC 00:9EDC: 00        .byte $00   ; 00
- D 0 - - - 0x001EED 00:9EDD: 18        .byte $18   ; 01
- - - - - - 0x001EEE 00:9EDE: 18        .byte $18   ; 02
- D 0 - - - 0x001EEF 00:9EDF: 58        .byte $58   ; 03



sub_9EE0:
C - - - - - 0x001EF0 00:9EE0: AA        TAX
C - - - - - 0x001EF1 00:9EE1: 6A        ROR
C - - - - - 0x001EF2 00:9EE2: 8A        TXA
C - - - - - 0x001EF3 00:9EE3: 2A        ROL
C - - - - - 0x001EF4 00:9EE4: 2A        ROL
C - - - - - 0x001EF5 00:9EE5: 2A        ROL
sub_9EE6:
C - - - - - 0x001EF6 00:9EE6: 29 07     AND #$07
C - - - - - 0x001EF8 00:9EE8: 18        CLC
C - - - - - 0x001EF9 00:9EE9: 6D F4 05  ADC ram_05F4
C - - - - - 0x001EFC 00:9EEC: A8        TAY
C - - - - - 0x001EFD 00:9EED: B9 D1 9F  LDA tbl_9FD1,Y
C - - - - - 0x001F00 00:9EF0: 60        RTS


; bzk garbage
- - - - - - 0x001F01 00:9EF1: 29 07     AND #$07
- - - - - - 0x001F03 00:9EF3: A8        TAY
- - - - - - 0x001F04 00:9EF4: B9 D1 9F  LDA tbl_9FD1,Y
- - - - - - 0x001F07 00:9EF7: 60        RTS



tbl_9EF8:
- - - - - - 0x001F08 00:9EF8: CB        .byte $CB   ; 00
- D 0 - - - 0x001F09 00:9EF9: 0E        .byte $0E   ; 01
- D 0 - - - 0x001F0A 00:9EFA: 0E        .byte $0E   ; 02
- D 0 - - - 0x001F0B 00:9EFB: 4C        .byte $4C   ; 03
- D 0 - - - 0x001F0C 00:9EFC: 6D        .byte $6D   ; 04
- D 0 - - - 0x001F0D 00:9EFD: 8C        .byte $8C   ; 05
- D 0 - - - 0x001F0E 00:9EFE: CD        .byte $CD   ; 06
- - - - - - 0x001F0F 00:9EFF: FF        .byte $FF   ; 07 unused? 0x001975



tbl_9F00:
- - - - - - 0x001F10 00:9F00: 00        .byte $00   ; 
tbl_9F01:
- - - - - - 0x001F11 00:9F01: 23        .byte $23   ; 
- D 0 - - - 0x001F12 00:9F02: 00        .byte $00   ; 
- D 0 - - - 0x001F13 00:9F03: 6A        .byte $6A   ; 
- D 0 - - - 0x001F14 00:9F04: 03        .byte $03   ; 
- D 0 - - - 0x001F15 00:9F05: 27        .byte $27   ; 
- D 0 - - - 0x001F16 00:9F06: 00        .byte $00   ; 
- D 0 - - - 0x001F17 00:9F07: 97        .byte $97   ; 
- - - - - - 0x001F18 00:9F08: 00        .byte $00   ; 
- D 0 - - - 0x001F19 00:9F09: 00        .byte $00   ; 
- D 0 - - - 0x001F1A 00:9F0A: 02        .byte $02   ; 
- D 0 - - - 0x001F1B 00:9F0B: F9        .byte $F9   ; 
- D 0 - - - 0x001F1C 00:9F0C: 02        .byte $02   ; 
- D 0 - - - 0x001F1D 00:9F0D: CF        .byte $CF   ; 
- D 0 - - - 0x001F1E 00:9F0E: 02        .byte $02   ; 
- D 0 - - - 0x001F1F 00:9F0F: A6        .byte $A6   ; 
- D 0 - - - 0x001F20 00:9F10: 02        .byte $02   ; 
- D 0 - - - 0x001F21 00:9F11: 80        .byte $80   ; 
- D 0 - - - 0x001F22 00:9F12: 02        .byte $02   ; 
- D 0 - - - 0x001F23 00:9F13: 5C        .byte $5C   ; 
- D 0 - - - 0x001F24 00:9F14: 02        .byte $02   ; 
- D 0 - - - 0x001F25 00:9F15: 3A        .byte $3A   ; 
- D 0 - - - 0x001F26 00:9F16: 02        .byte $02   ; 
- D 0 - - - 0x001F27 00:9F17: 1A        .byte $1A   ; 
- D 0 - - - 0x001F28 00:9F18: 01        .byte $01   ; 
- D 0 - - - 0x001F29 00:9F19: FC        .byte $FC   ; 
- D 0 - - - 0x001F2A 00:9F1A: 01        .byte $01   ; 
- D 0 - - - 0x001F2B 00:9F1B: DF        .byte $DF   ; 
- D 0 - - - 0x001F2C 00:9F1C: 01        .byte $01   ; 
- D 0 - - - 0x001F2D 00:9F1D: C4        .byte $C4   ; 
- D 0 - - - 0x001F2E 00:9F1E: 01        .byte $01   ; 
- D 0 - - - 0x001F2F 00:9F1F: AB        .byte $AB   ; 
- D 0 - - - 0x001F30 00:9F20: 01        .byte $01   ; 
- D 0 - - - 0x001F31 00:9F21: 93        .byte $93   ; 
- D 0 - - - 0x001F32 00:9F22: 01        .byte $01   ; 
- D 0 - - - 0x001F33 00:9F23: 7C        .byte $7C   ; 
- D 0 - - - 0x001F34 00:9F24: 01        .byte $01   ; 
- D 0 - - - 0x001F35 00:9F25: 67        .byte $67   ; 
- D 0 - - - 0x001F36 00:9F26: 01        .byte $01   ; 
- D 0 - - - 0x001F37 00:9F27: 53        .byte $53   ; 
- D 0 - - - 0x001F38 00:9F28: 01        .byte $01   ; 
- D 0 - - - 0x001F39 00:9F29: 40        .byte $40   ; 
- D 0 - - - 0x001F3A 00:9F2A: 01        .byte $01   ; 
- D 0 - - - 0x001F3B 00:9F2B: 2E        .byte $2E   ; 
- D 0 - - - 0x001F3C 00:9F2C: 01        .byte $01   ; 
- D 0 - - - 0x001F3D 00:9F2D: 1D        .byte $1D   ; 
- D 0 - - - 0x001F3E 00:9F2E: 01        .byte $01   ; 
- D 0 - - - 0x001F3F 00:9F2F: 0D        .byte $0D   ; 
- D 0 - - - 0x001F40 00:9F30: 00        .byte $00   ; 
- D 0 - - - 0x001F41 00:9F31: FE        .byte $FE   ; 
- D 0 - - - 0x001F42 00:9F32: 00        .byte $00   ; 
- D 0 - - - 0x001F43 00:9F33: EF        .byte $EF   ; 
- D 0 - - - 0x001F44 00:9F34: 00        .byte $00   ; 
- D 0 - - - 0x001F45 00:9F35: E2        .byte $E2   ; 
- D 0 - - - 0x001F46 00:9F36: 00        .byte $00   ; 
- D 0 - - - 0x001F47 00:9F37: D5        .byte $D5   ; 
- D 0 - - - 0x001F48 00:9F38: 00        .byte $00   ; 
- D 0 - - - 0x001F49 00:9F39: C9        .byte $C9   ; 
- D 0 - - - 0x001F4A 00:9F3A: 00        .byte $00   ; 
- D 0 - - - 0x001F4B 00:9F3B: BE        .byte $BE   ; 
- D 0 - - - 0x001F4C 00:9F3C: 00        .byte $00   ; 
- D 0 - - - 0x001F4D 00:9F3D: B3        .byte $B3   ; 
- D 0 - - - 0x001F4E 00:9F3E: 00        .byte $00   ; 
- D 0 - - - 0x001F4F 00:9F3F: A9        .byte $A9   ; 
- D 0 - - - 0x001F50 00:9F40: 00        .byte $00   ; 
- D 0 - - - 0x001F51 00:9F41: A0        .byte $A0   ; 
- D 0 - - - 0x001F52 00:9F42: 00        .byte $00   ; 
- D 0 - - - 0x001F53 00:9F43: 8E        .byte $8E   ; 
- D 0 - - - 0x001F54 00:9F44: 00        .byte $00   ; 
- D 0 - - - 0x001F55 00:9F45: 86        .byte $86   ; 
- D 0 - - - 0x001F56 00:9F46: 00        .byte $00   ; 
- D 0 - - - 0x001F57 00:9F47: 77        .byte $77   ; 
- D 0 - - - 0x001F58 00:9F48: 00        .byte $00   ; 
- D 0 - - - 0x001F59 00:9F49: 7E        .byte $7E   ; 
- D 0 - - - 0x001F5A 00:9F4A: 00        .byte $00   ; 
- D 0 - - - 0x001F5B 00:9F4B: 71        .byte $71   ; 
- D 0 - - - 0x001F5C 00:9F4C: 00        .byte $00   ; 
- D 0 - - - 0x001F5D 00:9F4D: 54        .byte $54   ; 
- D 0 - - - 0x001F5E 00:9F4E: 00        .byte $00   ; 
- D 0 - - - 0x001F5F 00:9F4F: 64        .byte $64   ; 
- D 0 - - - 0x001F60 00:9F50: 00        .byte $00   ; 
- D 0 - - - 0x001F61 00:9F51: 5F        .byte $5F   ; 
- D 0 - - - 0x001F62 00:9F52: 00        .byte $00   ; 
- D 0 - - - 0x001F63 00:9F53: 59        .byte $59   ; 
- D 0 - - - 0x001F64 00:9F54: 00        .byte $00   ; 
- D 0 - - - 0x001F65 00:9F55: 50        .byte $50   ; 
- D 0 - - - 0x001F66 00:9F56: 00        .byte $00   ; 
- D 0 - - - 0x001F67 00:9F57: 47        .byte $47   ; 
- D 0 - - - 0x001F68 00:9F58: 00        .byte $00   ; 
- D 0 - - - 0x001F69 00:9F59: 43        .byte $43   ; 
- D 0 - - - 0x001F6A 00:9F5A: 00        .byte $00   ; 
- D 0 - - - 0x001F6B 00:9F5B: 3F        .byte $3F   ; 
- D 0 - - - 0x001F6C 00:9F5C: 00        .byte $00   ; 
- D 0 - - - 0x001F6D 00:9F5D: 38        .byte $38   ; 
- D 0 - - - 0x001F6E 00:9F5E: 00        .byte $00   ; 
- D 0 - - - 0x001F6F 00:9F5F: 32        .byte $32   ; 
- D 0 - - - 0x001F70 00:9F60: 00        .byte $00   ; 
- D 0 - - - 0x001F71 00:9F61: 21        .byte $21   ; 
- D 0 - - - 0x001F72 00:9F62: 05        .byte $05   ; 
- D 0 - - - 0x001F73 00:9F63: 4D        .byte $4D   ; 
- D 0 - - - 0x001F74 00:9F64: 05        .byte $05   ; 
- D 0 - - - 0x001F75 00:9F65: 01        .byte $01   ; 
- D 0 - - - 0x001F76 00:9F66: 04        .byte $04   ; 
- D 0 - - - 0x001F77 00:9F67: B9        .byte $B9   ; 
- D 0 - - - 0x001F78 00:9F68: 04        .byte $04   ; 
- D 0 - - - 0x001F79 00:9F69: 35        .byte $35   ; 
- - - - - - 0x001F7A 00:9F6A: 03        .byte $03   ; 
- - - - - - 0x001F7B 00:9F6B: F8        .byte $F8   ; 
- D 0 - - - 0x001F7C 00:9F6C: 03        .byte $03   ; 
- D 0 - - - 0x001F7D 00:9F6D: BF        .byte $BF   ; 
- - - - - - 0x001F7E 00:9F6E: 03        .byte $03   ; 
- - - - - - 0x001F7F 00:9F6F: 89        .byte $89   ; 
- D 0 - - - 0x001F80 00:9F70: 03        .byte $03   ; 
- D 0 - - - 0x001F81 00:9F71: 57        .byte $57   ; 



sub_9F72:
C - - - - - 0x001F82 00:9F72: AD 19 06  LDA ram_0619
C - - - - - 0x001F85 00:9F75: A9 20     LDA #$20
C - - - - - 0x001F87 00:9F77: A2 82     LDX #$82
C - - - - - 0x001F89 00:9F79: A0 7F     LDY #$7F
C - - - - - 0x001F8B 00:9F7B: 60        RTS



sub_9F7C:
C - - - - - 0x001F8C 00:9F7C: AD 19 06  LDA ram_0619
C - - - - - 0x001F8F 00:9F7F: 10 07     BPL bra_9F88
C - - - - - 0x001F91 00:9F81: B9 92 9F  LDA tbl_9F92,Y
C - - - - - 0x001F94 00:9F84: 29 0F     AND #$0F
C - - - - - 0x001F96 00:9F86: D0 07     BNE bra_9F8F
bra_9F88:
C - - - - - 0x001F98 00:9F88: B9 92 9F  LDA tbl_9F92,Y
C - - - - - 0x001F9B 00:9F8B: 4A        LSR
C - - - - - 0x001F9C 00:9F8C: 4A        LSR
C - - - - - 0x001F9D 00:9F8D: 4A        LSR
C - - - - - 0x001F9E 00:9F8E: 4A        LSR
bra_9F8F:
C - - - - - 0x001F9F 00:9F8F: 09 90     ORA #$90
C - - - - - 0x001FA1 00:9F91: 60        RTS



tbl_9F92:
- D 0 - - - 0x001FA2 00:9F92: 04        .byte $04   ; 
- D 0 - - - 0x001FA3 00:9F93: 24        .byte $24   ; 
- D 0 - - - 0x001FA4 00:9F94: 24        .byte $24   ; 
- D 0 - - - 0x001FA5 00:9F95: 34        .byte $34   ; 
- D 0 - - - 0x001FA6 00:9F96: 34        .byte $34   ; 
- D 0 - - - 0x001FA7 00:9F97: 35        .byte $35   ; 
- D 0 - - - 0x001FA8 00:9F98: 35        .byte $35   ; 
- D 0 - - - 0x001FA9 00:9F99: 35        .byte $35   ; 
- D 0 - - - 0x001FAA 00:9F9A: 45        .byte $45   ; 
- D 0 - - - 0x001FAB 00:9F9B: 45        .byte $45   ; 
- D 0 - - - 0x001FAC 00:9F9C: 46        .byte $46   ; 
- D 0 - - - 0x001FAD 00:9F9D: 46        .byte $46   ; 
- D 0 - - - 0x001FAE 00:9F9E: 46        .byte $46   ; 
- D 0 - - - 0x001FAF 00:9F9F: 46        .byte $46   ; 
- D 0 - - - 0x001FB0 00:9FA0: 46        .byte $46   ; 
- D 0 - - - 0x001FB1 00:9FA1: 46        .byte $46   ; 
- D 0 - - - 0x001FB2 00:9FA2: 46        .byte $46   ; 
- D 0 - - - 0x001FB3 00:9FA3: 46        .byte $46   ; 
- D 0 - - - 0x001FB4 00:9FA4: 57        .byte $57   ; 
- D 0 - - - 0x001FB5 00:9FA5: 57        .byte $57   ; 
- D 0 - - - 0x001FB6 00:9FA6: 57        .byte $57   ; 
- D 0 - - - 0x001FB7 00:9FA7: 57        .byte $57   ; 
- D 0 - - - 0x001FB8 00:9FA8: 68        .byte $68   ; 
- D 0 - - - 0x001FB9 00:9FA9: 68        .byte $68   ; 
- D 0 - - - 0x001FBA 00:9FAA: 68        .byte $68   ; 
- D 0 - - - 0x001FBB 00:9FAB: 68        .byte $68   ; 
- D 0 - - - 0x001FBC 00:9FAC: 79        .byte $79   ; 
- D 0 - - - 0x001FBD 00:9FAD: 79        .byte $79   ; 
- D 0 - - - 0x001FBE 00:9FAE: 79        .byte $79   ; 
- D 0 - - - 0x001FBF 00:9FAF: 68        .byte $68   ; 
- D 0 - - - 0x001FC0 00:9FB0: 68        .byte $68   ; 



tbl_9FB1:
- D 0 - - - 0x001FC1 00:9FB1: 57        .byte $57   ; 
- D 0 - - - 0x001FC2 00:9FB2: 47        .byte $47   ; 
- D 0 - - - 0x001FC3 00:9FB3: 67        .byte $67   ; 
- D 0 - - - 0x001FC4 00:9FB4: 87        .byte $87   ; 
- D 0 - - - 0x001FC5 00:9FB5: A8        .byte $A8   ; 
- D 0 - - - 0x001FC6 00:9FB6: B9        .byte $B9   ; 
- D 0 - - - 0x001FC7 00:9FB7: 9A        .byte $9A   ; 
- D 0 - - - 0x001FC8 00:9FB8: 8A        .byte $8A   ; 
- D 0 - - - 0x001FC9 00:9FB9: 5A        .byte $5A   ; 
- D 0 - - - 0x001FCA 00:9FBA: 9B        .byte $9B   ; 



tbl_9FBB:
- D 0 - - - 0x001FCB 00:9FBB: 8B        .byte $8B   ; 00
- D 0 - - - 0x001FCC 00:9FBC: FB        .byte $FB   ; 01
- D 0 - - - 0x001FCD 00:9FBD: F9        .byte $F9   ; 02
- D 0 - - - 0x001FCE 00:9FBE: 9D        .byte $9D   ; 03
- D 0 - - - 0x001FCF 00:9FBF: 6E        .byte $6E   ; 04



tbl_9FC0:
- D 0 - - - 0x001FD0 00:9FC0: 3F        .byte $3F   ; 
- D 0 - - - 0x001FD1 00:9FC1: 1A        .byte $1A   ; 
- D 0 - - - 0x001FD2 00:9FC2: 1A        .byte $1A   ; 
- D 0 - - - 0x001FD3 00:9FC3: 1C        .byte $1C   ; 
- D 0 - - - 0x001FD4 00:9FC4: 1D        .byte $1D   ; 
- D 0 - - - 0x001FD5 00:9FC5: 1D        .byte $1D   ; 
- D 0 - - - 0x001FD6 00:9FC6: 1E        .byte $1E   ; 
- D 0 - - - 0x001FD7 00:9FC7: 1E        .byte $1E   ; 
- D 0 - - - 0x001FD8 00:9FC8: 1F        .byte $1F   ; 
- D 0 - - - 0x001FD9 00:9FC9: 1F        .byte $1F   ; 
- D 0 - - - 0x001FDA 00:9FCA: 1E        .byte $1E   ; 
- D 0 - - - 0x001FDB 00:9FCB: 1A        .byte $1A   ; 
- D 0 - - - 0x001FDC 00:9FCC: 19        .byte $19   ; 
- D 0 - - - 0x001FDD 00:9FCD: 16        .byte $16   ; 
- D 0 - - - 0x001FDE 00:9FCE: 13        .byte $13   ; 
- D 0 - - - 0x001FDF 00:9FCF: 11        .byte $11   ; 
- D 0 - - - 0x001FE0 00:9FD0: 11        .byte $11   ; 



tbl_9FD1:
- - - - - - 0x001FE1 00:9FD1: 03        .byte $03   ; 
- D 0 - - - 0x001FE2 00:9FD2: 0A        .byte $0A   ; 
- - - - - - 0x001FE3 00:9FD3: 01        .byte $01   ; 
- D 0 - - - 0x001FE4 00:9FD4: 14        .byte $14   ; 
- - - - - - 0x001FE5 00:9FD5: 05        .byte $05   ; 
- D 0 - - - 0x001FE6 00:9FD6: 28        .byte $28   ; 
- - - - - - 0x001FE7 00:9FD7: 3C        .byte $3C   ; 
- - - - - - 0x001FE8 00:9FD8: 70        .byte $70   ; 
- D 0 - - - 0x001FE9 00:9FD9: 07        .byte $07   ; 
- D 0 - - - 0x001FEA 00:9FDA: 1B        .byte $1B   ; 
- D 0 - - - 0x001FEB 00:9FDB: 35        .byte $35   ; 
- D 0 - - - 0x001FEC 00:9FDC: 14        .byte $14   ; 
- D 0 - - - 0x001FED 00:9FDD: 0D        .byte $0D   ; 
- D 0 - - - 0x001FEE 00:9FDE: 28        .byte $28   ; 
- D 0 - - - 0x001FEF 00:9FDF: 3C        .byte $3C   ; 
- D 0 - - - 0x001FF0 00:9FE0: 50        .byte $50   ; 
- D 0 - - - 0x001FF1 00:9FE1: 06        .byte $06   ; 
- D 0 - - - 0x001FF2 00:9FE2: 0C        .byte $0C   ; 
- D 0 - - - 0x001FF3 00:9FE3: 08        .byte $08   ; 
- D 0 - - - 0x001FF4 00:9FE4: 18        .byte $18   ; 
- D 0 - - - 0x001FF5 00:9FE5: 24        .byte $24   ; 
- D 0 - - - 0x001FF6 00:9FE6: 30        .byte $30   ; 
- D 0 - - - 0x001FF7 00:9FE7: 48        .byte $48   ; 
- D 0 - - - 0x001FF8 00:9FE8: 10        .byte $10   ; 
- - - - - - 0x001FF9 00:9FE9: 07        .byte $07   ; 
- - - - - - 0x001FFA 00:9FEA: 0D        .byte $0D   ; 
- - - - - - 0x001FFB 00:9FEB: 09        .byte $09   ; 
- - - - - - 0x001FFC 00:9FEC: 1B        .byte $1B   ; 
- - - - - - 0x001FFD 00:9FED: 24        .byte $24   ; 
- - - - - - 0x001FFE 00:9FEE: 36        .byte $36   ; 
- - - - - - 0x001FFF 00:9FEF: 48        .byte $48   ; 
- - - - - - 0x002000 00:9FF0: 10        .byte $10   ; 
- D 0 - - - 0x002001 00:9FF1: 3C        .byte $3C   ; 
- D 0 - - - 0x002002 00:9FF2: 50        .byte $50   ; 
- D 0 - - - 0x002003 00:9FF3: 0A        .byte $0A   ; 
- D 0 - - - 0x002004 00:9FF4: 05        .byte $05   ; 
- D 0 - - - 0x002005 00:9FF5: 14        .byte $14   ; 
- D 0 - - - 0x002006 00:9FF6: 0D        .byte $0D   ; 
- D 0 - - - 0x002007 00:9FF7: 28        .byte $28   ; 
- D 0 - - - 0x002008 00:9FF8: 0E        .byte $0E   ; 


; bzk garbage
- - - - - - 0x002009 00:9FF9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002011 00:A001: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002019 00:A009: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002021 00:A011: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002029 00:A019: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002031 00:A021: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002039 00:A029: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002041 00:A031: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002049 00:A039: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002051 00:A041: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002059 00:A049: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002061 00:A051: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002069 00:A059: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002071 00:A061: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002079 00:A069: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002081 00:A071: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002089 00:A079: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002091 00:A081: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002099 00:A089: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0020A1 00:A091: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0020A9 00:A099: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0020B1 00:A0A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0020B9 00:A0A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0020C1 00:A0B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0020C9 00:A0B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0020D1 00:A0C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0020D9 00:A0C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0020E1 00:A0D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0020E9 00:A0D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0020F1 00:A0E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0020F9 00:A0E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002101 00:A0F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002109 00:A0F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002111 00:A101: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002119 00:A109: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002121 00:A111: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002129 00:A119: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002131 00:A121: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002139 00:A129: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002141 00:A131: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002149 00:A139: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002151 00:A141: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002159 00:A149: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002161 00:A151: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002169 00:A159: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002171 00:A161: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002179 00:A169: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002181 00:A171: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002189 00:A179: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002191 00:A181: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002199 00:A189: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0021A1 00:A191: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0021A9 00:A199: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0021B1 00:A1A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0021B9 00:A1A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0021C1 00:A1B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0021C9 00:A1B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0021D1 00:A1C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0021D9 00:A1C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0021E1 00:A1D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0021E9 00:A1D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0021F1 00:A1E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0021F9 00:A1E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002201 00:A1F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002209 00:A1F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002211 00:A201: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002219 00:A209: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002221 00:A211: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002229 00:A219: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002231 00:A221: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002239 00:A229: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002241 00:A231: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002249 00:A239: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002251 00:A241: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002259 00:A249: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002261 00:A251: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002269 00:A259: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002271 00:A261: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002279 00:A269: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002281 00:A271: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002289 00:A279: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002291 00:A281: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002299 00:A289: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0022A1 00:A291: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0022A9 00:A299: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0022B1 00:A2A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0022B9 00:A2A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0022C1 00:A2B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0022C9 00:A2B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0022D1 00:A2C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0022D9 00:A2C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0022E1 00:A2D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0022E9 00:A2D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0022F1 00:A2E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0022F9 00:A2E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002301 00:A2F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002309 00:A2F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002311 00:A301: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002319 00:A309: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002321 00:A311: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002329 00:A319: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002331 00:A321: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002339 00:A329: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002341 00:A331: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002349 00:A339: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002351 00:A341: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002359 00:A349: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002361 00:A351: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002369 00:A359: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002371 00:A361: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002379 00:A369: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002381 00:A371: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002389 00:A379: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002391 00:A381: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002399 00:A389: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0023A1 00:A391: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0023A9 00:A399: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0023B1 00:A3A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0023B9 00:A3A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0023C1 00:A3B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0023C9 00:A3B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0023D1 00:A3C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0023D9 00:A3C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0023E1 00:A3D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0023E9 00:A3D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0023F1 00:A3E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0023F9 00:A3E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002401 00:A3F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002409 00:A3F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002411 00:A401: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002419 00:A409: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002421 00:A411: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002429 00:A419: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002431 00:A421: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002439 00:A429: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002441 00:A431: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002449 00:A439: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002451 00:A441: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002459 00:A449: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002461 00:A451: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002469 00:A459: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002471 00:A461: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002479 00:A469: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002481 00:A471: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002489 00:A479: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002491 00:A481: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002499 00:A489: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0024A1 00:A491: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0024A9 00:A499: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0024B1 00:A4A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0024B9 00:A4A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0024C1 00:A4B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0024C9 00:A4B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0024D1 00:A4C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0024D9 00:A4C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0024E1 00:A4D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0024E9 00:A4D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0024F1 00:A4E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0024F9 00:A4E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002501 00:A4F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002509 00:A4F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002511 00:A501: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002519 00:A509: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002521 00:A511: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002529 00:A519: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002531 00:A521: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002539 00:A529: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002541 00:A531: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002549 00:A539: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002551 00:A541: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002559 00:A549: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002561 00:A551: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002569 00:A559: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002571 00:A561: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002579 00:A569: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002581 00:A571: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002589 00:A579: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002591 00:A581: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002599 00:A589: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0025A1 00:A591: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0025A9 00:A599: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0025B1 00:A5A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0025B9 00:A5A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0025C1 00:A5B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0025C9 00:A5B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0025D1 00:A5C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0025D9 00:A5C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0025E1 00:A5D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0025E9 00:A5D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0025F1 00:A5E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0025F9 00:A5E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002601 00:A5F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002609 00:A5F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002611 00:A601: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002619 00:A609: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002621 00:A611: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002629 00:A619: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002631 00:A621: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002639 00:A629: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002641 00:A631: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002649 00:A639: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002651 00:A641: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002659 00:A649: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002661 00:A651: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002669 00:A659: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002671 00:A661: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002679 00:A669: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002681 00:A671: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002689 00:A679: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002691 00:A681: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002699 00:A689: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0026A1 00:A691: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0026A9 00:A699: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0026B1 00:A6A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0026B9 00:A6A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0026C1 00:A6B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0026C9 00:A6B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0026D1 00:A6C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0026D9 00:A6C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0026E1 00:A6D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0026E9 00:A6D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0026F1 00:A6E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0026F9 00:A6E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002701 00:A6F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002709 00:A6F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002711 00:A701: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002719 00:A709: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002721 00:A711: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002729 00:A719: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002731 00:A721: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002739 00:A729: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002741 00:A731: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002749 00:A739: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002751 00:A741: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002759 00:A749: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002761 00:A751: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002769 00:A759: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002771 00:A761: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002779 00:A769: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002781 00:A771: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002789 00:A779: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002791 00:A781: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002799 00:A789: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0027A1 00:A791: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0027A9 00:A799: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0027B1 00:A7A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0027B9 00:A7A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0027C1 00:A7B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0027C9 00:A7B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0027D1 00:A7C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0027D9 00:A7C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0027E1 00:A7D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0027E9 00:A7D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0027F1 00:A7E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0027F9 00:A7E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002801 00:A7F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002809 00:A7F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002811 00:A801: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002819 00:A809: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002821 00:A811: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002829 00:A819: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002831 00:A821: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002839 00:A829: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002841 00:A831: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002849 00:A839: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002851 00:A841: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002859 00:A849: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002861 00:A851: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002869 00:A859: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002871 00:A861: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002879 00:A869: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002881 00:A871: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002889 00:A879: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002891 00:A881: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002899 00:A889: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0028A1 00:A891: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0028A9 00:A899: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0028B1 00:A8A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0028B9 00:A8A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0028C1 00:A8B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0028C9 00:A8B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0028D1 00:A8C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0028D9 00:A8C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0028E1 00:A8D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0028E9 00:A8D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0028F1 00:A8E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0028F9 00:A8E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002901 00:A8F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002909 00:A8F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002911 00:A901: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002919 00:A909: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002921 00:A911: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002929 00:A919: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002931 00:A921: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002939 00:A929: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002941 00:A931: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002949 00:A939: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002951 00:A941: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002959 00:A949: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002961 00:A951: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002969 00:A959: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002971 00:A961: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002979 00:A969: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002981 00:A971: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002989 00:A979: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002991 00:A981: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002999 00:A989: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0029A1 00:A991: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0029A9 00:A999: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0029B1 00:A9A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0029B9 00:A9A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0029C1 00:A9B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0029C9 00:A9B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0029D1 00:A9C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0029D9 00:A9C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0029E1 00:A9D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0029E9 00:A9D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0029F1 00:A9E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0029F9 00:A9E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A01 00:A9F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A09 00:A9F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A11 00:AA01: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A19 00:AA09: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A21 00:AA11: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A29 00:AA19: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A31 00:AA21: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A39 00:AA29: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A41 00:AA31: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A49 00:AA39: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A51 00:AA41: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A59 00:AA49: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A61 00:AA51: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A69 00:AA59: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A71 00:AA61: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A79 00:AA69: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A81 00:AA71: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A89 00:AA79: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A91 00:AA81: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002A99 00:AA89: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002AA1 00:AA91: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002AA9 00:AA99: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002AB1 00:AAA1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002AB9 00:AAA9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002AC1 00:AAB1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002AC9 00:AAB9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002AD1 00:AAC1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002AD9 00:AAC9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002AE1 00:AAD1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002AE9 00:AAD9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002AF1 00:AAE1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002AF9 00:AAE9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B01 00:AAF1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B09 00:AAF9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B11 00:AB01: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B19 00:AB09: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B21 00:AB11: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B29 00:AB19: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B31 00:AB21: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B39 00:AB29: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B41 00:AB31: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B49 00:AB39: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B51 00:AB41: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B59 00:AB49: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B61 00:AB51: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B69 00:AB59: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B71 00:AB61: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B79 00:AB69: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B81 00:AB71: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B89 00:AB79: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B91 00:AB81: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002B99 00:AB89: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002BA1 00:AB91: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002BA9 00:AB99: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002BB1 00:ABA1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002BB9 00:ABA9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002BC1 00:ABB1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002BC9 00:ABB9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002BD1 00:ABC1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002BD9 00:ABC9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002BE1 00:ABD1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002BE9 00:ABD9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002BF1 00:ABE1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002BF9 00:ABE9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C01 00:ABF1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C09 00:ABF9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C11 00:AC01: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C19 00:AC09: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C21 00:AC11: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C29 00:AC19: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C31 00:AC21: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C39 00:AC29: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C41 00:AC31: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C49 00:AC39: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C51 00:AC41: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C59 00:AC49: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C61 00:AC51: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C69 00:AC59: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C71 00:AC61: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C79 00:AC69: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C81 00:AC71: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C89 00:AC79: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C91 00:AC81: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002C99 00:AC89: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002CA1 00:AC91: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002CA9 00:AC99: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002CB1 00:ACA1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002CB9 00:ACA9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002CC1 00:ACB1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002CC9 00:ACB9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002CD1 00:ACC1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002CD9 00:ACC9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002CE1 00:ACD1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002CE9 00:ACD9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002CF1 00:ACE1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002CF9 00:ACE9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D01 00:ACF1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D09 00:ACF9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D11 00:AD01: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D19 00:AD09: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D21 00:AD11: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D29 00:AD19: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D31 00:AD21: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D39 00:AD29: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D41 00:AD31: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D49 00:AD39: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D51 00:AD41: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D59 00:AD49: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D61 00:AD51: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D69 00:AD59: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D71 00:AD61: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D79 00:AD69: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D81 00:AD71: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D89 00:AD79: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D91 00:AD81: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002D99 00:AD89: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002DA1 00:AD91: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002DA9 00:AD99: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002DB1 00:ADA1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002DB9 00:ADA9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002DC1 00:ADB1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002DC9 00:ADB9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002DD1 00:ADC1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002DD9 00:ADC9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002DE1 00:ADD1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002DE9 00:ADD9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002DF1 00:ADE1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002DF9 00:ADE9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E01 00:ADF1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E09 00:ADF9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E11 00:AE01: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E19 00:AE09: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E21 00:AE11: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E29 00:AE19: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E31 00:AE21: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E39 00:AE29: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E41 00:AE31: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E49 00:AE39: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E51 00:AE41: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E59 00:AE49: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E61 00:AE51: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E69 00:AE59: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E71 00:AE61: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E79 00:AE69: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E81 00:AE71: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E89 00:AE79: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E91 00:AE81: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002E99 00:AE89: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002EA1 00:AE91: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002EA9 00:AE99: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002EB1 00:AEA1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002EB9 00:AEA9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002EC1 00:AEB1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002EC9 00:AEB9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002ED1 00:AEC1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002ED9 00:AEC9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002EE1 00:AED1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002EE9 00:AED9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002EF1 00:AEE1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002EF9 00:AEE9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F01 00:AEF1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F09 00:AEF9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F11 00:AF01: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F19 00:AF09: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F21 00:AF11: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F29 00:AF19: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F31 00:AF21: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F39 00:AF29: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F41 00:AF31: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F49 00:AF39: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F51 00:AF41: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F59 00:AF49: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F61 00:AF51: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F69 00:AF59: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F71 00:AF61: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F79 00:AF69: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F81 00:AF71: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F89 00:AF79: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F91 00:AF81: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F99 00:AF89: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002FA1 00:AF91: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002FA9 00:AF99: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002FB1 00:AFA1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002FB9 00:AFA9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002FC1 00:AFB1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002FC9 00:AFB9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002FD1 00:AFC1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002FD9 00:AFC9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002FE1 00:AFD1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002FE9 00:AFD9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002FF1 00:AFE1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002FF9 00:AFE9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003001 00:AFF1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003009 00:AFF9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003011 00:B001: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003019 00:B009: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003021 00:B011: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003029 00:B019: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003031 00:B021: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003039 00:B029: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003041 00:B031: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003049 00:B039: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003051 00:B041: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003059 00:B049: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003061 00:B051: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003069 00:B059: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003071 00:B061: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003079 00:B069: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003081 00:B071: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003089 00:B079: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003091 00:B081: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003099 00:B089: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0030A1 00:B091: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0030A9 00:B099: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0030B1 00:B0A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0030B9 00:B0A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0030C1 00:B0B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0030C9 00:B0B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0030D1 00:B0C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0030D9 00:B0C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0030E1 00:B0D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0030E9 00:B0D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0030F1 00:B0E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0030F9 00:B0E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003101 00:B0F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003109 00:B0F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003111 00:B101: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003119 00:B109: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003121 00:B111: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003129 00:B119: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003131 00:B121: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003139 00:B129: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003141 00:B131: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003149 00:B139: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003151 00:B141: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003159 00:B149: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003161 00:B151: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003169 00:B159: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003171 00:B161: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003179 00:B169: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003181 00:B171: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003189 00:B179: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003191 00:B181: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003199 00:B189: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0031A1 00:B191: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0031A9 00:B199: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0031B1 00:B1A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0031B9 00:B1A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0031C1 00:B1B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0031C9 00:B1B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0031D1 00:B1C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0031D9 00:B1C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0031E1 00:B1D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0031E9 00:B1D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0031F1 00:B1E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0031F9 00:B1E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003201 00:B1F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003209 00:B1F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003211 00:B201: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003219 00:B209: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003221 00:B211: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003229 00:B219: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003231 00:B221: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003239 00:B229: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003241 00:B231: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003249 00:B239: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003251 00:B241: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003259 00:B249: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003261 00:B251: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003269 00:B259: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003271 00:B261: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003279 00:B269: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003281 00:B271: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003289 00:B279: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003291 00:B281: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003299 00:B289: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0032A1 00:B291: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0032A9 00:B299: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0032B1 00:B2A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0032B9 00:B2A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0032C1 00:B2B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0032C9 00:B2B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0032D1 00:B2C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0032D9 00:B2C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0032E1 00:B2D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0032E9 00:B2D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0032F1 00:B2E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0032F9 00:B2E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003301 00:B2F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003309 00:B2F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003311 00:B301: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003319 00:B309: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003321 00:B311: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003329 00:B319: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003331 00:B321: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003339 00:B329: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003341 00:B331: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003349 00:B339: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003351 00:B341: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003359 00:B349: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003361 00:B351: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003369 00:B359: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003371 00:B361: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003379 00:B369: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003381 00:B371: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003389 00:B379: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003391 00:B381: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003399 00:B389: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0033A1 00:B391: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0033A9 00:B399: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0033B1 00:B3A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0033B9 00:B3A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0033C1 00:B3B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0033C9 00:B3B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0033D1 00:B3C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0033D9 00:B3C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0033E1 00:B3D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0033E9 00:B3D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0033F1 00:B3E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0033F9 00:B3E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003401 00:B3F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003409 00:B3F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003411 00:B401: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003419 00:B409: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003421 00:B411: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003429 00:B419: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003431 00:B421: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003439 00:B429: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003441 00:B431: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003449 00:B439: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003451 00:B441: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003459 00:B449: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003461 00:B451: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003469 00:B459: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003471 00:B461: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003479 00:B469: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003481 00:B471: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003489 00:B479: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003491 00:B481: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003499 00:B489: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0034A1 00:B491: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0034A9 00:B499: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0034B1 00:B4A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0034B9 00:B4A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0034C1 00:B4B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0034C9 00:B4B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0034D1 00:B4C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0034D9 00:B4C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0034E1 00:B4D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0034E9 00:B4D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0034F1 00:B4E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0034F9 00:B4E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003501 00:B4F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003509 00:B4F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003511 00:B501: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003519 00:B509: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003521 00:B511: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003529 00:B519: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003531 00:B521: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003539 00:B529: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003541 00:B531: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003549 00:B539: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003551 00:B541: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003559 00:B549: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003561 00:B551: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003569 00:B559: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003571 00:B561: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003579 00:B569: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003581 00:B571: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003589 00:B579: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003591 00:B581: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003599 00:B589: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0035A1 00:B591: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0035A9 00:B599: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0035B1 00:B5A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0035B9 00:B5A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0035C1 00:B5B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0035C9 00:B5B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0035D1 00:B5C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0035D9 00:B5C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0035E1 00:B5D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0035E9 00:B5D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0035F1 00:B5E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0035F9 00:B5E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003601 00:B5F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003609 00:B5F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003611 00:B601: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003619 00:B609: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003621 00:B611: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003629 00:B619: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003631 00:B621: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003639 00:B629: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003641 00:B631: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003649 00:B639: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003651 00:B641: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003659 00:B649: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003661 00:B651: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003669 00:B659: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003671 00:B661: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003679 00:B669: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003681 00:B671: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003689 00:B679: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003691 00:B681: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003699 00:B689: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0036A1 00:B691: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0036A9 00:B699: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0036B1 00:B6A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0036B9 00:B6A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0036C1 00:B6B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0036C9 00:B6B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0036D1 00:B6C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0036D9 00:B6C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0036E1 00:B6D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0036E9 00:B6D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0036F1 00:B6E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0036F9 00:B6E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003701 00:B6F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003709 00:B6F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003711 00:B701: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003719 00:B709: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003721 00:B711: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003729 00:B719: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003731 00:B721: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003739 00:B729: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003741 00:B731: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003749 00:B739: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003751 00:B741: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003759 00:B749: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003761 00:B751: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003769 00:B759: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003771 00:B761: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003779 00:B769: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003781 00:B771: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003789 00:B779: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003791 00:B781: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003799 00:B789: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0037A1 00:B791: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0037A9 00:B799: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0037B1 00:B7A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0037B9 00:B7A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0037C1 00:B7B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0037C9 00:B7B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0037D1 00:B7C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0037D9 00:B7C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0037E1 00:B7D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0037E9 00:B7D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0037F1 00:B7E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0037F9 00:B7E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003801 00:B7F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003809 00:B7F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003811 00:B801: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003819 00:B809: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003821 00:B811: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003829 00:B819: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003831 00:B821: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003839 00:B829: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003841 00:B831: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003849 00:B839: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003851 00:B841: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003859 00:B849: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003861 00:B851: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003869 00:B859: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003871 00:B861: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003879 00:B869: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003881 00:B871: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003889 00:B879: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003891 00:B881: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003899 00:B889: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038A1 00:B891: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038A9 00:B899: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038B1 00:B8A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038B9 00:B8A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038C1 00:B8B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038C9 00:B8B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038D1 00:B8C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038D9 00:B8C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038E1 00:B8D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038E9 00:B8D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038F1 00:B8E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038F9 00:B8E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003901 00:B8F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003909 00:B8F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003911 00:B901: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003919 00:B909: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003921 00:B911: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003929 00:B919: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003931 00:B921: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003939 00:B929: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003941 00:B931: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003949 00:B939: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003951 00:B941: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003959 00:B949: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003961 00:B951: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003969 00:B959: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003971 00:B961: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003979 00:B969: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003981 00:B971: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003989 00:B979: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003991 00:B981: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003999 00:B989: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0039A1 00:B991: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0039A9 00:B999: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0039B1 00:B9A1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0039B9 00:B9A9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0039C1 00:B9B1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0039C9 00:B9B9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0039D1 00:B9C1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0039D9 00:B9C9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0039E1 00:B9D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0039E9 00:B9D9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0039F1 00:B9E1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0039F9 00:B9E9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A01 00:B9F1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A09 00:B9F9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A11 00:BA01: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A19 00:BA09: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A21 00:BA11: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A29 00:BA19: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A31 00:BA21: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A39 00:BA29: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A41 00:BA31: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A49 00:BA39: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A51 00:BA41: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A59 00:BA49: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A61 00:BA51: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A69 00:BA59: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A71 00:BA61: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A79 00:BA69: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A81 00:BA71: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A89 00:BA79: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A91 00:BA81: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A99 00:BA89: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003AA1 00:BA91: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003AA9 00:BA99: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003AB1 00:BAA1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003AB9 00:BAA9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003AC1 00:BAB1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003AC9 00:BAB9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003AD1 00:BAC1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003AD9 00:BAC9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003AE1 00:BAD1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003AE9 00:BAD9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003AF1 00:BAE1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003AF9 00:BAE9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B01 00:BAF1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B09 00:BAF9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B11 00:BB01: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B19 00:BB09: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B21 00:BB11: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B29 00:BB19: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B31 00:BB21: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B39 00:BB29: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B41 00:BB31: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B49 00:BB39: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B51 00:BB41: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B59 00:BB49: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B61 00:BB51: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B69 00:BB59: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B71 00:BB61: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B79 00:BB69: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B81 00:BB71: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B89 00:BB79: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B91 00:BB81: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B99 00:BB89: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003BA1 00:BB91: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003BA9 00:BB99: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003BB1 00:BBA1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003BB9 00:BBA9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003BC1 00:BBB1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003BC9 00:BBB9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003BD1 00:BBC1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003BD9 00:BBC9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003BE1 00:BBD1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003BE9 00:BBD9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003BF1 00:BBE1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003BF9 00:BBE9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C01 00:BBF1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C09 00:BBF9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C11 00:BC01: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C19 00:BC09: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C21 00:BC11: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C29 00:BC19: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C31 00:BC21: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C39 00:BC29: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C41 00:BC31: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C49 00:BC39: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C51 00:BC41: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C59 00:BC49: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C61 00:BC51: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C69 00:BC59: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C71 00:BC61: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C79 00:BC69: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C81 00:BC71: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C89 00:BC79: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C91 00:BC81: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C99 00:BC89: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CA1 00:BC91: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CA9 00:BC99: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CB1 00:BCA1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CB9 00:BCA9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CC1 00:BCB1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CC9 00:BCB9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CD1 00:BCC1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CD9 00:BCC9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CE1 00:BCD1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CE9 00:BCD9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CF1 00:BCE1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CF9 00:BCE9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D01 00:BCF1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D09 00:BCF9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D11 00:BD01: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D19 00:BD09: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D21 00:BD11: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D29 00:BD19: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D31 00:BD21: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D39 00:BD29: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D41 00:BD31: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D49 00:BD39: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D51 00:BD41: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D59 00:BD49: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D61 00:BD51: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D69 00:BD59: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D71 00:BD61: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D79 00:BD69: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D81 00:BD71: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D89 00:BD79: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D91 00:BD81: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D99 00:BD89: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DA1 00:BD91: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DA9 00:BD99: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DB1 00:BDA1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DB9 00:BDA9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DC1 00:BDB1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DC9 00:BDB9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DD1 00:BDC1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DD9 00:BDC9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DE1 00:BDD1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DE9 00:BDD9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DF1 00:BDE1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DF9 00:BDE9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E01 00:BDF1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E09 00:BDF9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E11 00:BE01: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E19 00:BE09: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E21 00:BE11: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E29 00:BE19: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E31 00:BE21: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E39 00:BE29: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E41 00:BE31: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E49 00:BE39: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E51 00:BE41: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E59 00:BE49: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E61 00:BE51: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E69 00:BE59: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E71 00:BE61: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E79 00:BE69: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E81 00:BE71: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E89 00:BE79: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E91 00:BE81: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E99 00:BE89: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EA1 00:BE91: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EA9 00:BE99: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EB1 00:BEA1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EB9 00:BEA9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EC1 00:BEB1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EC9 00:BEB9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003ED1 00:BEC1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003ED9 00:BEC9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EE1 00:BED1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EE9 00:BED9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EF1 00:BEE1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EF9 00:BEE9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F01 00:BEF1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F09 00:BEF9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F11 00:BF01: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F19 00:BF09: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F21 00:BF11: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F29 00:BF19: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F31 00:BF21: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F39 00:BF29: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F41 00:BF31: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F49 00:BF39: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F51 00:BF41: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F59 00:BF49: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.segment "BANK_00i"
.include "copy_bank___BF50_BFFF.asm"
