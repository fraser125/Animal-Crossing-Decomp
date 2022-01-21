.include "macros.inc"

.section .text

.org 0x800A9770

.global Hu_IsStub
Hu_IsStub:
/* 800A9770 000A66D0  38 60 00 00 */	li r3, 0
/* 800A9774 000A66D4  4E 80 00 20 */	blr 
/* 800A9778 000A66D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800A977C 000A66DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.section .data0, "wa"  # 0x80005620 - 0x80005660
.global @210
@210:
	.incbin "baserom.dol", 0xA66E0, 0x8
.global @231
@231:
	.incbin "baserom.dol", 0xA66E8, 0x18
.global @239
@239:
	.incbin "baserom.dol", 0xA6700, 0x20

.section .data1, "wa"  # 0x80005660 - 0x800056C0
.global @211
@211:
	.incbin "baserom.dol", 0xA6720, 0xC
.global @232
@232:
	.incbin "baserom.dol", 0xA672C, 0xC
.global @240
@240:
	.incbin "baserom.dol", 0xA6738, 0xC
.global lbl_80005684
lbl_80005684:
	.incbin "baserom.dol", 0xA6744, 0x3C

.section .data2, "wa"  # 0x800A9780 - 0x800A97C0
.global __init_cpp_exceptions_reference
__init_cpp_exceptions_reference:
	.incbin "baserom.dol", 0xA6780, 0x40

.section .data3, "wa"  # 0x800A97C0 - 0x800A97E0
.global __destroy_global_chain_reference
__destroy_global_chain_reference:
	.incbin "baserom.dol", 0xA67C0, 0x4
.global __fini_cpp_exceptions_reference
__fini_cpp_exceptions_reference:
	.incbin "baserom.dol", 0xA67C4, 0x4
.global __destroy_global_chain_reference
__destroy_global_chain_reference:
	.incbin "baserom.dol", 0xA67C8, 0x18

.section .data4, "wa"  # 0x800A97E0 - 0x800AF860
.global tbl$544
tbl$544:
	.incbin "baserom.dol", 0xA67E0, 0x8
.global @297
@297:
	.incbin "baserom.dol", 0xA67E8, 0x4
.global @298
@298:
	.incbin "baserom.dol", 0xA67EC, 0x4
.global @300
@300:
	.incbin "baserom.dol", 0xA67F0, 0x8
.global this
this:
	.incbin "baserom.dol", 0xA67F8, 0x4
.global @305
@305:
	.incbin "baserom.dol", 0xA67FC, 0x4
.global @316
@316:
	.incbin "baserom.dol", 0xA6800, 0x4
.global @325
@325:
	.incbin "baserom.dol", 0xA6804, 0x4
.global draw_proc$341
draw_proc$341:
	.incbin "baserom.dol", 0xA6808, 0x14
.global @354
@354:
	.incbin "baserom.dol", 0xA681C, 0x4
.global @355
@355:
	.incbin "baserom.dol", 0xA6820, 0x4
.global @356
@356:
	.incbin "baserom.dol", 0xA6824, 0x4
.global @357
@357:
	.incbin "baserom.dol", 0xA6828, 0x4
.global @358
@358:
	.incbin "baserom.dol", 0xA682C, 0x4
.global @359
@359:
	.incbin "baserom.dol", 0xA6830, 0x4
.global @360
@360:
	.incbin "baserom.dol", 0xA6834, 0x4
.global lbl_800A9838
lbl_800A9838:
	.incbin "baserom.dol", 0xA6838, 0x100
.global SE_FLOOR_DATA
SE_FLOOR_DATA:
	.incbin "baserom.dol", 0xA6938, 0xBE
.global SE_ROOM_INS_DATA
SE_ROOM_INS_DATA:
	.incbin "baserom.dol", 0xA69F6, 0x22
.global SE_ROOM_INS_RANDOM_OFFSET
SE_ROOM_INS_RANDOM_OFFSET:
	.incbin "baserom.dol", 0xA6A18, 0x22
.global lbl_800A9A3A
lbl_800A9A3A:
	.incbin "baserom.dol", 0xA6A3A, 0x56
.global lbl_800A9A90
lbl_800A9A90:
	.incbin "baserom.dol", 0xA6A90, 0x80
.global sou_trg_se_init
sou_trg_se_init:
	.incbin "baserom.dol", 0xA6B10, 0x20
.global sou_voice_se_init
sou_voice_se_init:
	.incbin "baserom.dol", 0xA6B30, 0x24
.global sou_lev_se_init
sou_lev_se_init:
	.incbin "baserom.dol", 0xA6B54, 0x14
.global sou_lev_ongen_data_init
sou_lev_ongen_data_init:
	.incbin "baserom.dol", 0xA6B68, 0x14
.global sou_ongen_entry_init
sou_ongen_entry_init:
	.incbin "baserom.dol", 0xA6B7C, 0x10
.global sou_se_fade_init
sou_se_fade_init:
	.incbin "baserom.dol", 0xA6B8C, 0xC
.global melody_seq_size
melody_seq_size:
	.incbin "baserom.dol", 0xA6B98, 0x4AC
.global melody_seq_offset
melody_seq_offset:
	.incbin "baserom.dol", 0xA7044, 0x4AC
.global lbl_800AA4F0
lbl_800AA4F0:
	.incbin "baserom.dol", 0xA74F0, 0x10
.global @287
@287:
	.incbin "baserom.dol", 0xA7500, 0xC
.global @307
@307:
	.incbin "baserom.dol", 0xA750C, 0xC
.global @240
@240:
	.incbin "baserom.dol", 0xA7518, 0x10
.global @160
@160:
	.incbin "baserom.dol", 0xA7528, 0x10
.global @218
@218:
	.incbin "baserom.dol", 0xA7538, 0x10
.global @219
@219:
	.incbin "baserom.dol", 0xA7548, 0x10
.global @257
@257:
	.incbin "baserom.dol", 0xA7558, 0xC
.global @262
@262:
	.incbin "baserom.dol", 0xA7564, 0xC
.global @360
@360:
	.incbin "baserom.dol", 0xA7570, 0x20
.global @372
@372:
	.incbin "baserom.dol", 0xA7590, 0x18
.global @405
@405:
	.incbin "baserom.dol", 0xA75A8, 0x10
.global @954
@954:
	.incbin "baserom.dol", 0xA75B8, 0x30
.global @263
@263:
	.incbin "baserom.dol", 0xA75E8, 0xC
.global @823
@823:
	.incbin "baserom.dol", 0xA75F4, 0x28
.global @824
@824:
	.incbin "baserom.dol", 0xA761C, 0x28
.global @825
@825:
	.incbin "baserom.dol", 0xA7644, 0x28
.global @826
@826:
	.incbin "baserom.dol", 0xA766C, 0xC
.global @999
@999:
	.incbin "baserom.dol", 0xA7678, 0x24
.global @1000
@1000:
	.incbin "baserom.dol", 0xA769C, 0x10
.global @1001
@1001:
	.incbin "baserom.dol", 0xA76AC, 0x10
.global @1002
@1002:
	.incbin "baserom.dol", 0xA76BC, 0x10
.global @1003
@1003:
	.incbin "baserom.dol", 0xA76CC, 0x10
.global @1004
@1004:
	.incbin "baserom.dol", 0xA76DC, 0x14
.global @1110
@1110:
	.incbin "baserom.dol", 0xA76F0, 0x10
.global @443
@443:
	.incbin "baserom.dol", 0xA7700, 0x20
.global @340
@340:
	.incbin "baserom.dol", 0xA7720, 0x10
.global @341
@341:
	.incbin "baserom.dol", 0xA7730, 0x10
.global @342
@342:
	.incbin "baserom.dol", 0xA7740, 0x14
.global @343
@343:
	.incbin "baserom.dol", 0xA7754, 0x14
.global @344
@344:
	.incbin "baserom.dol", 0xA7768, 0xC
.global @345
@345:
	.incbin "baserom.dol", 0xA7774, 0xC
.global @284
@284:
	.incbin "baserom.dol", 0xA7780, 0x20
.global @137
@137:
	.incbin "baserom.dol", 0xA77A0, 0x14
.global @138
@138:
	.incbin "baserom.dol", 0xA77B4, 0x2C
.global @99
@99:
	.incbin "baserom.dol", 0xA77E0, 0x10
.global @100
@100:
	.incbin "baserom.dol", 0xA77F0, 0x28
.global @101
@101:
	.incbin "baserom.dol", 0xA7818, 0x20
.global @1543
@1543:
	.incbin "baserom.dol", 0xA7838, 0x2C
.global @1544
@1544:
	.incbin "baserom.dol", 0xA7864, 0x1C
.global @1810
@1810:
	.incbin "baserom.dol", 0xA7880, 0x1C
.global @1811
@1811:
	.incbin "baserom.dol", 0xA789C, 0x20
.global @1813
@1813:
	.incbin "baserom.dol", 0xA78BC, 0x3C
.global @1815
@1815:
	.incbin "baserom.dol", 0xA78F8, 0x30
.global array$228
array$228:
	.incbin "baserom.dol", 0xA7928, 0x8
.global array$247
array$247:
	.incbin "baserom.dol", 0xA7930, 0x4
.global table$478
table$478:
	.incbin "baserom.dol", 0xA7934, 0x14
.global @228
@228:
	.incbin "baserom.dol", 0xA7948, 0xC
.global @229
@229:
	.incbin "baserom.dol", 0xA7954, 0xC
.global @230
@230:
	.incbin "baserom.dol", 0xA7960, 0xC
.global @232
@232:
	.incbin "baserom.dol", 0xA796C, 0x4
.global @233
@233:
	.incbin "baserom.dol", 0xA7970, 0x4
.global @234
@234:
	.incbin "baserom.dol", 0xA7974, 0x4
.global @235
@235:
	.incbin "baserom.dol", 0xA7978, 0x4
.global color_r_0xf0$478
color_r_0xf0$478:
	.incbin "baserom.dol", 0xA797C, 0x4
.global color_thres$627
color_thres$627:
	.incbin "baserom.dol", 0xA7980, 0x4
.global @812
@812:
	.incbin "baserom.dol", 0xA7984, 0x4
.global @814
@814:
	.incbin "baserom.dol", 0xA7988, 0x8
.global color_thres$820
color_thres$820:
	.incbin "baserom.dol", 0xA7990, 0x4
.global black$960
black$960:
	.incbin "baserom.dol", 0xA7994, 0x4
.global black$1005
black$1005:
	.incbin "baserom.dol", 0xA7998, 0x4
.global color0$1006
color0$1006:
	.incbin "baserom.dol", 0xA799C, 0x4
.global color1$1007
color1$1007:
	.incbin "baserom.dol", 0xA79A0, 0x4
.global color2$1008
color2$1008:
	.incbin "baserom.dol", 0xA79A4, 0x4
.global camPt$2267
camPt$2267:
	.incbin "baserom.dol", 0xA79A8, 0xC
.global at$2268
at$2268:
	.incbin "baserom.dol", 0xA79B4, 0xC
.global up$2269
up$2269:
	.incbin "baserom.dol", 0xA79C0, 0xC
.global @2373
@2373:
	.incbin "baserom.dol", 0xA79CC, 0x4
.global @2374
@2374:
	.incbin "baserom.dol", 0xA79D0, 0x4
.global @2375
@2375:
	.incbin "baserom.dol", 0xA79D4, 0x4
.global @2376
@2376:
	.incbin "baserom.dol", 0xA79D8, 0x4
.global checkTableNG
checkTableNG:
	.incbin "baserom.dol", 0xA79DC, 0x14
.global @3416
@3416:
	.incbin "baserom.dol", 0xA79F0, 0x8
.global @3436
@3436:
	.incbin "baserom.dol", 0xA79F8, 0x8
.global @3752
@3752:
	.incbin "baserom.dol", 0xA7A00, 0x4
.global @3753
@3753:
	.incbin "baserom.dol", 0xA7A04, 0x4
.global @3964
@3964:
	.incbin "baserom.dol", 0xA7A08, 0x8
.global @3965
@3965:
	.incbin "baserom.dol", 0xA7A10, 0x4
.global @3966
@3966:
	.incbin "baserom.dol", 0xA7A14, 0x4
.global @3967
@3967:
	.incbin "baserom.dol", 0xA7A18, 0x8
.global @3968
@3968:
	.incbin "baserom.dol", 0xA7A20, 0x8
.global @3969
@3969:
	.incbin "baserom.dol", 0xA7A28, 0x8
.global tags_table_table
tags_table_table:
	.incbin "baserom.dol", 0xA7A30, 0x130
.global geomtbl
geomtbl:
	.incbin "baserom.dol", 0xA7B60, 0xC0
.global gmtxtbl
gmtxtbl:
	.incbin "baserom.dol", 0xA7C20, 0x24
.global h_tbl
h_tbl:
	.incbin "baserom.dol", 0xA7C44, 0x1E4
.global l_tbl
l_tbl:
	.incbin "baserom.dol", 0xA7E28, 0x58
.global kakko$835
kakko$835:
	.incbin "baserom.dol", 0xA7E80, 0x10
.global @869
@869:
	.incbin "baserom.dol", 0xA7E90, 0x10
.global @870
@870:
	.incbin "baserom.dol", 0xA7EA0, 0x20
.global flags$1134
flags$1134:
	.incbin "baserom.dol", 0xA7EC0, 0xC0
.global m$1151
m$1151:
	.incbin "baserom.dol", 0xA7F80, 0x40
.global fmtxtbl__5emu64
fmtxtbl__5emu64:
	.incbin "baserom.dol", 0xA7FC0, 0x40
.global tbla
tbla:
	.incbin "baserom.dol", 0xA8000, 0x10
.global tblc
tblc:
	.incbin "baserom.dol", 0xA8010, 0x80
.global shift_tbl$3336
shift_tbl$3336:
	.incbin "baserom.dol", 0xA8090, 0x40
.global shift_tbl$3412
shift_tbl$3412:
	.incbin "baserom.dol", 0xA80D0, 0x40
.global pows
pows:
	.incbin "baserom.dol", 0xA8110, 0x48
.global fbit$8
fbit$8:
	.incbin "baserom.dol", 0xA8158, 0x18
.global saoAboutEncoding___10JUTResFont
saoAboutEncoding___10JUTResFont:
	.incbin "baserom.dol", 0xA8170, 0xC
.global halftofull$677
halftofull$677:
	.incbin "baserom.dol", 0xA817C, 0xC4
.global @1058
@1058:
	.incbin "baserom.dol", 0xA8240, 0x4180
.global __constants
__constants:
	.incbin "baserom.dol", 0xAC3C0, 0x18
.global @stringBase0
@stringBase0:
	.incbin "baserom.dol", 0xAC3D8, 0xE0
.global @stringBase0
@stringBase0:
	.incbin "baserom.dol", 0xAC4B8, 0x28
.global two_over_pi
two_over_pi:
	.incbin "baserom.dol", 0xAC4E0, 0x108
.global npio2_hw
npio2_hw:
	.incbin "baserom.dol", 0xAC5E8, 0x80
.global init_jk
init_jk:
	.incbin "baserom.dol", 0xAC668, 0x10
.global PIo2
PIo2:
	.incbin "baserom.dol", 0xAC678, 0x40
.global atanhi
atanhi:
	.incbin "baserom.dol", 0xAC6B8, 0x20
.global atanlo
atanlo:
	.incbin "baserom.dol", 0xAC6D8, 0x20
.global aT
aT:
	.incbin "baserom.dol", 0xAC6F8, 0x58
.global @62
@62:
	.incbin "baserom.dol", 0xAC750, 0x20
.global @484
@484:
	.incbin "baserom.dol", 0xAC770, 0x20
.global gTRKMemMap
gTRKMemMap:
	.incbin "baserom.dol", 0xAC790, 0x10
.global @300
@300:
	.incbin "baserom.dol", 0xAC7A0, 0x28
.global @307
@307:
	.incbin "baserom.dol", 0xAC7C8, 0x28
.global @314
@314:
	.incbin "baserom.dol", 0xAC7F0, 0x28
.global @148
@148:
	.incbin "baserom.dol", 0xAC818, 0x24
.global @149
@149:
	.incbin "baserom.dol", 0xAC83C, 0x24

.section .data5, "wa"  # 0x800AF860 - 0x800E2280
.global @311
@311:
	.incbin "baserom.dol", 0xAC860, 0x20
.global @312
@312:
	.incbin "baserom.dol", 0xAC880, 0x24
.global @321
@321:
	.incbin "baserom.dol", 0xAC8A4, 0x10
.global @322
@322:
	.incbin "baserom.dol", 0xAC8B4, 0x10
.global @323
@323:
	.incbin "baserom.dol", 0xAC8C4, 0x10
.global @324
@324:
	.incbin "baserom.dol", 0xAC8D4, 0x10
.global @343
@343:
	.incbin "baserom.dol", 0xAC8E4, 0x1C
.global @344
@344:
	.incbin "baserom.dol", 0xAC900, 0x28
.global @345
@345:
	.incbin "baserom.dol", 0xAC928, 0x20
.global @346
@346:
	.incbin "baserom.dol", 0xAC948, 0x10
.global @347
@347:
	.incbin "baserom.dol", 0xAC958, 0x10
.global @348
@348:
	.incbin "baserom.dol", 0xAC968, 0x10
.global @349
@349:
	.incbin "baserom.dol", 0xAC978, 0x28
.global @354
@354:
	.incbin "baserom.dol", 0xAC9A0, 0x18
.global @359
@359:
	.incbin "baserom.dol", 0xAC9B8, 0x1C
.global @360
@360:
	.incbin "baserom.dol", 0xAC9D4, 0x28
.global @361
@361:
	.incbin "baserom.dol", 0xAC9FC, 0x34
.global @394
@394:
	.incbin "baserom.dol", 0xACA30, 0xC
.global @399
@399:
	.incbin "baserom.dol", 0xACA3C, 0x18
.global @404
@404:
	.incbin "baserom.dol", 0xACA54, 0x54
.global @425
@425:
	.incbin "baserom.dol", 0xACAA8, 0x2C
.global @426
@426:
	.incbin "baserom.dol", 0xACAD4, 0x20
.global @510
@510:
	.incbin "baserom.dol", 0xACAF4, 0x14
.global @511
@511:
	.incbin "baserom.dol", 0xACB08, 0x3C
.global @512
@512:
	.incbin "baserom.dol", 0xACB44, 0x3C
.global @513
@513:
	.incbin "baserom.dol", 0xACB80, 0x28
.global @514
@514:
	.incbin "baserom.dol", 0xACBA8, 0x3C
.global @545
@545:
	.incbin "baserom.dol", 0xACBE4, 0x1C
.global @581
@581:
	.incbin "baserom.dol", 0xACC00, 0x14
.global @582
@582:
	.incbin "baserom.dol", 0xACC14, 0x18
.global @583
@583:
	.incbin "baserom.dol", 0xACC2C, 0x10
.global @584
@584:
	.incbin "baserom.dol", 0xACC3C, 0x14
.global @585
@585:
	.incbin "baserom.dol", 0xACC50, 0xC
.global @586
@586:
	.incbin "baserom.dol", 0xACC5C, 0x1C
.global @587
@587:
	.incbin "baserom.dol", 0xACC78, 0x10
.global @588
@588:
	.incbin "baserom.dol", 0xACC88, 0x18
.global @589
@589:
	.incbin "baserom.dol", 0xACCA0, 0x2C
.global @590
@590:
	.incbin "baserom.dol", 0xACCCC, 0x38
.global @591
@591:
	.incbin "baserom.dol", 0xACD04, 0x14
.global @592
@592:
	.incbin "baserom.dol", 0xACD18, 0x1C
.global @593
@593:
	.incbin "baserom.dol", 0xACD34, 0x48
.global @594
@594:
	.incbin "baserom.dol", 0xACD7C, 0x20
.global @595
@595:
	.incbin "baserom.dol", 0xACD9C, 0xC
.global @596
@596:
	.incbin "baserom.dol", 0xACDA8, 0x18
.global @597
@597:
	.incbin "baserom.dol", 0xACDC0, 0x14
.global @598
@598:
	.incbin "baserom.dol", 0xACDD4, 0x14
.global @599
@599:
	.incbin "baserom.dol", 0xACDE8, 0xC
.global @600
@600:
	.incbin "baserom.dol", 0xACDF4, 0xC
.global @601
@601:
	.incbin "baserom.dol", 0xACE00, 0x14
.global @602
@602:
	.incbin "baserom.dol", 0xACE14, 0x18
.global @603
@603:
	.incbin "baserom.dol", 0xACE2C, 0x24
.global SystemHeapSize
SystemHeapSize:
	.incbin "baserom.dol", 0xACE50, 0x4
.global gameheap_len
gameheap_len:
	.incbin "baserom.dol", 0xACE54, 0x4
.global customized_GXNtsc240Ds
customized_GXNtsc240Ds:
	.incbin "baserom.dol", 0xACE58, 0x3C
.global customized_GXNtsc240Prog
customized_GXNtsc240Prog:
	.incbin "baserom.dol", 0xACE94, 0x3C
.global customized_GXNtsc240IntDf
customized_GXNtsc240IntDf:
	.incbin "baserom.dol", 0xACED0, 0x3C
.global customized_GXNtsc480Ds
customized_GXNtsc480Ds:
	.incbin "baserom.dol", 0xACF0C, 0x3C
.global customized_GXNtsc480IntDf
customized_GXNtsc480IntDf:
	.incbin "baserom.dol", 0xACF48, 0x3C
.global customized_GXNtsc480Prog
customized_GXNtsc480Prog:
	.incbin "baserom.dol", 0xACF84, 0x3C
.global @2291
@2291:
	.incbin "baserom.dol", 0xACFC0, 0xC
.global @2292
@2292:
	.incbin "baserom.dol", 0xACFCC, 0x10
.global @2293
@2293:
	.incbin "baserom.dol", 0xACFDC, 0x14
.global @2294
@2294:
	.incbin "baserom.dol", 0xACFF0, 0x10
.global @2295
@2295:
	.incbin "baserom.dol", 0xAD000, 0x4
.global lbl_800B0004
lbl_800B0004:
	.incbin "baserom.dol", 0xAD004, 0x14
.global @2296
@2296:
	.incbin "baserom.dol", 0xAD018, 0x10
.global @2297
@2297:
	.incbin "baserom.dol", 0xAD028, 0x18
.global @2298
@2298:
	.incbin "baserom.dol", 0xAD040, 0x10
.global @2299
@2299:
	.incbin "baserom.dol", 0xAD050, 0x18
.global @2300
@2300:
	.incbin "baserom.dol", 0xAD068, 0x10
.global @2301
@2301:
	.incbin "baserom.dol", 0xAD078, 0xC
.global @2302
@2302:
	.incbin "baserom.dol", 0xAD084, 0x14
.global @2303
@2303:
	.incbin "baserom.dol", 0xAD098, 0x10
.global @2304
@2304:
	.incbin "baserom.dol", 0xAD0A8, 0x14
.global @2305
@2305:
	.incbin "baserom.dol", 0xAD0BC, 0x10
.global @2306
@2306:
	.incbin "baserom.dol", 0xAD0CC, 0x18
.global @2307
@2307:
	.incbin "baserom.dol", 0xAD0E4, 0x10
.global @2308
@2308:
	.incbin "baserom.dol", 0xAD0F4, 0x18
.global @2309
@2309:
	.incbin "baserom.dol", 0xAD10C, 0x10
.global @2310
@2310:
	.incbin "baserom.dol", 0xAD11C, 0x18
.global @2311
@2311:
	.incbin "baserom.dol", 0xAD134, 0x10
.global @2312
@2312:
	.incbin "baserom.dol", 0xAD144, 0x18
.global @2313
@2313:
	.incbin "baserom.dol", 0xAD15C, 0xC
.global @2314
@2314:
	.incbin "baserom.dol", 0xAD168, 0x10
.global @2315
@2315:
	.incbin "baserom.dol", 0xAD178, 0x10
.global @2316
@2316:
	.incbin "baserom.dol", 0xAD188, 0x14
.global @2317
@2317:
	.incbin "baserom.dol", 0xAD19C, 0x18
.global @2318
@2318:
	.incbin "baserom.dol", 0xAD1B4, 0x10
.global @2319
@2319:
	.incbin "baserom.dol", 0xAD1C4, 0x10
.global @2320
@2320:
	.incbin "baserom.dol", 0xAD1D4, 0x18
.global @2321
@2321:
	.incbin "baserom.dol", 0xAD1EC, 0x18
.global @2322
@2322:
	.incbin "baserom.dol", 0xAD204, 0x18
.global @2323
@2323:
	.incbin "baserom.dol", 0xAD21C, 0x18
.global @2324
@2324:
	.incbin "baserom.dol", 0xAD234, 0x18
.global @2325
@2325:
	.incbin "baserom.dol", 0xAD24C, 0xC
.global @2326
@2326:
	.incbin "baserom.dol", 0xAD258, 0x10
.global @2327
@2327:
	.incbin "baserom.dol", 0xAD268, 0x10
.global @2328
@2328:
	.incbin "baserom.dol", 0xAD278, 0x10
.global @2329
@2329:
	.incbin "baserom.dol", 0xAD288, 0x10
.global @2330
@2330:
	.incbin "baserom.dol", 0xAD298, 0xC
.global @2331
@2331:
	.incbin "baserom.dol", 0xAD2A4, 0xC
.global @2332
@2332:
	.incbin "baserom.dol", 0xAD2B0, 0xC
.global @2333
@2333:
	.incbin "baserom.dol", 0xAD2BC, 0xC
.global @2334
@2334:
	.incbin "baserom.dol", 0xAD2C8, 0xC
.global @2335
@2335:
	.incbin "baserom.dol", 0xAD2D4, 0xC
.global @2336
@2336:
	.incbin "baserom.dol", 0xAD2E0, 0xC
.global @2337
@2337:
	.incbin "baserom.dol", 0xAD2EC, 0xC
.global @2338
@2338:
	.incbin "baserom.dol", 0xAD2F8, 0xC
.global @2339
@2339:
	.incbin "baserom.dol", 0xAD304, 0xC
.global @2340
@2340:
	.incbin "baserom.dol", 0xAD310, 0xC
.global @2341
@2341:
	.incbin "baserom.dol", 0xAD31C, 0xC
.global @2342
@2342:
	.incbin "baserom.dol", 0xAD328, 0xC
.global @2343
@2343:
	.incbin "baserom.dol", 0xAD334, 0xC
.global @2344
@2344:
	.incbin "baserom.dol", 0xAD340, 0xC
.global @2345
@2345:
	.incbin "baserom.dol", 0xAD34C, 0xC
.global @2346
@2346:
	.incbin "baserom.dol", 0xAD358, 0xC
.global @2347
@2347:
	.incbin "baserom.dol", 0xAD364, 0xC
.global @2348
@2348:
	.incbin "baserom.dol", 0xAD370, 0xC
.global @2349
@2349:
	.incbin "baserom.dol", 0xAD37C, 0xC
.global @2350
@2350:
	.incbin "baserom.dol", 0xAD388, 0xC
.global @2351
@2351:
	.incbin "baserom.dol", 0xAD394, 0xC
.global @2352
@2352:
	.incbin "baserom.dol", 0xAD3A0, 0xC
.global @2353
@2353:
	.incbin "baserom.dol", 0xAD3AC, 0xC
.global @2354
@2354:
	.incbin "baserom.dol", 0xAD3B8, 0xC
.global @2355
@2355:
	.incbin "baserom.dol", 0xAD3C4, 0xC
.global @2356
@2356:
	.incbin "baserom.dol", 0xAD3D0, 0xC
.global @2357
@2357:
	.incbin "baserom.dol", 0xAD3DC, 0xC
.global @2358
@2358:
	.incbin "baserom.dol", 0xAD3E8, 0xC
.global @2359
@2359:
	.incbin "baserom.dol", 0xAD3F4, 0xC
.global @2360
@2360:
	.incbin "baserom.dol", 0xAD400, 0xC
.global @2361
@2361:
	.incbin "baserom.dol", 0xAD40C, 0xC
.global @2362
@2362:
	.incbin "baserom.dol", 0xAD418, 0xC
.global @2363
@2363:
	.incbin "baserom.dol", 0xAD424, 0xC
.global @2364
@2364:
	.incbin "baserom.dol", 0xAD430, 0xC
.global @2365
@2365:
	.incbin "baserom.dol", 0xAD43C, 0xC
.global @2366
@2366:
	.incbin "baserom.dol", 0xAD448, 0x14
.global aram_resName
aram_resName:
	.incbin "baserom.dol", 0xAD45C, 0x130
.global @2439
@2439:
	.incbin "baserom.dol", 0xAD58C, 0x3C
.global @2451
@2451:
	.incbin "baserom.dol", 0xAD5C8, 0x10
.global @2463
@2463:
	.incbin "baserom.dol", 0xAD5D8, 0x10
.global __Creator__
__Creator__:
	.incbin "baserom.dol", 0xAD5E8, 0xC
.global __DateTime__
__DateTime__:
	.incbin "baserom.dol", 0xAD5F4, 0x14
.global gam_win1_cursor_setup
gam_win1_cursor_setup:
	.incbin "baserom.dol", 0xAD608, 0x28
.global gam_win1_moji_setup
gam_win1_moji_setup:
	.incbin "baserom.dol", 0xAD630, 0x28
.global viewport
viewport:
	.incbin "baserom.dol", 0xAD658, 0x10
.global projection
projection:
	.incbin "baserom.dol", 0xAD668, 0x40
.global lookat
lookat:
	.incbin "baserom.dol", 0xAD6A8, 0x40
.global default_model_scale
default_model_scale:
	.incbin "baserom.dol", 0xAD6E8, 0x40
.global logo_projection
logo_projection:
	.incbin "baserom.dol", 0xAD728, 0x40
.global logo_model_scale
logo_model_scale:
	.incbin "baserom.dol", 0xAD768, 0x40
.global initial_dl
initial_dl:
	.incbin "baserom.dol", 0xAD7A8, 0x58
.global logo_initial_dl
logo_initial_dl:
	.incbin "baserom.dol", 0xAD800, 0x58
.global logo_draw_dl
logo_draw_dl:
	.incbin "baserom.dol", 0xAD858, 0x38
.global step1_draw_dl
step1_draw_dl:
	.incbin "baserom.dol", 0xAD890, 0x68
.global step2_draw_dl
step2_draw_dl:
	.incbin "baserom.dol", 0xAD8F8, 0x38
.global pad_good_frame_count
pad_good_frame_count:
	.incbin "baserom.dol", 0xAD930, 0x4
.global @275
@275:
	.incbin "baserom.dol", 0xAD934, 0x10
.global @276
@276:
	.incbin "baserom.dol", 0xAD944, 0xC
.global @277
@277:
	.incbin "baserom.dol", 0xAD950, 0x10
.global @278
@278:
	.incbin "baserom.dol", 0xAD960, 0x10
.global @279
@279:
	.incbin "baserom.dol", 0xAD970, 0x18
.global @280
@280:
	.incbin "baserom.dol", 0xAD988, 0x20
.global @281
@281:
	.incbin "baserom.dol", 0xAD9A8, 0x18
.global @282
@282:
	.incbin "baserom.dol", 0xAD9C0, 0x20
.global @283
@283:
	.incbin "baserom.dol", 0xAD9E0, 0x20
.global @284
@284:
	.incbin "baserom.dol", 0xADA00, 0x18
.global yes_no_model$292
yes_no_model$292:
	.incbin "baserom.dol", 0xADA18, 0x8
.global @419
@419:
	.incbin "baserom.dol", 0xADA20, 0x40
.global dvd_keikoku_moji1_1_tex
dvd_keikoku_moji1_1_tex:
	.incbin "baserom.dol", 0xADA60, 0x500
.global dvd_keikoku_moji1_2_tex
dvd_keikoku_moji1_2_tex:
	.incbin "baserom.dol", 0xADF60, 0x500
.global dvd_keikoku_moji1_3_tex
dvd_keikoku_moji1_3_tex:
	.incbin "baserom.dol", 0xAE460, 0x200
.global dvd_keikoku_moji1_4_tex
dvd_keikoku_moji1_4_tex:
	.incbin "baserom.dol", 0xAE660, 0x600
.global ctl_att_w1_tex
ctl_att_w1_tex:
	.incbin "baserom.dol", 0xAEC60, 0x400
.global ctl_att_w2_tex
ctl_att_w2_tex:
	.incbin "baserom.dol", 0xAF060, 0x400
.global ctl_att_w3_tex
ctl_att_w3_tex:
	.incbin "baserom.dol", 0xAF460, 0x400
.global ctl_att_w4_tex
ctl_att_w4_tex:
	.incbin "baserom.dol", 0xAF860, 0x400
.global ctl_att_w5_tex
ctl_att_w5_tex:
	.incbin "baserom.dol", 0xAFC60, 0x400
.global ctl_att_w6_tex
ctl_att_w6_tex:
	.incbin "baserom.dol", 0xB0060, 0x80
.global dvd_keikoku1_v
dvd_keikoku1_v:
	.incbin "baserom.dol", 0xB00E0, 0x3C0
.global keikoku1_dvd_att_moji_model
keikoku1_dvd_att_moji_model:
	.incbin "baserom.dol", 0xB04A0, 0x98
.global keikoku1_dvd_att_winT_model
keikoku1_dvd_att_winT_model:
	.incbin "baserom.dol", 0xB0538, 0x108
.global dvd_keikoku_moji2_tex
dvd_keikoku_moji2_tex:
	.incbin "baserom.dol", 0xB0640, 0x280
.global dvd_keikoku_moji2_2_tex
dvd_keikoku_moji2_2_tex:
	.incbin "baserom.dol", 0xB08C0, 0x600
.global dvd_keikoku_moji2_3_tex
dvd_keikoku_moji2_3_tex:
	.incbin "baserom.dol", 0xB0EC0, 0x80
.global dvd_keikoku2_v
dvd_keikoku2_v:
	.incbin "baserom.dol", 0xB0F40, 0x380
.global keikoku2_dvd_att_moji_model
keikoku2_dvd_att_moji_model:
	.incbin "baserom.dol", 0xB12C0, 0x80
.global keikoku2_dvd_att_winT_model
keikoku2_dvd_att_winT_model:
	.incbin "baserom.dol", 0xB1340, 0x100
.global dvd_keikoku_moji4_tex
dvd_keikoku_moji4_tex:
	.incbin "baserom.dol", 0xB1440, 0x280
.global dvd_keikoku_moji3_1_tex
dvd_keikoku_moji3_1_tex:
	.incbin "baserom.dol", 0xB16C0, 0x600
.global dvd_keikoku_moji3_2_tex
dvd_keikoku_moji3_2_tex:
	.incbin "baserom.dol", 0xB1CC0, 0x280
.global dvd_keikoku_moji3_3_tex
dvd_keikoku_moji3_3_tex:
	.incbin "baserom.dol", 0xB1F40, 0x80
.global dvd_keikoku3_v
dvd_keikoku3_v:
	.incbin "baserom.dol", 0xB1FC0, 0x440
.global keikoku3_dvd_att_moji_model
keikoku3_dvd_att_moji_model:
	.incbin "baserom.dol", 0xB2400, 0xA8
.global keikoku3_dvd_att_winT_model
keikoku3_dvd_att_winT_model:
	.incbin "baserom.dol", 0xB24A8, 0xF8
.global dvd_keikoku_moji5_tex
dvd_keikoku_moji5_tex:
	.incbin "baserom.dol", 0xB25A0, 0x300
.global dvd_keikoku_moji6_2_tex
dvd_keikoku_moji6_2_tex:
	.incbin "baserom.dol", 0xB28A0, 0x480
.global dvd_keikoku_moji6_3_tex
dvd_keikoku_moji6_3_tex:
	.incbin "baserom.dol", 0xB2D20, 0x280
.global dvd_keikoku_moji6_tex
dvd_keikoku_moji6_tex:
	.incbin "baserom.dol", 0xB2FA0, 0x400
.global dvd_keikoku_moji6_1_tex
dvd_keikoku_moji6_1_tex:
	.incbin "baserom.dol", 0xB33A0, 0x580
.global dvd_keikoku_moji6_new1_tex
dvd_keikoku_moji6_new1_tex:
	.incbin "baserom.dol", 0xB3920, 0x200
.global dvd_keikoku_moji6_new2_tex
dvd_keikoku_moji6_new2_tex:
	.incbin "baserom.dol", 0xB3B20, 0x200
.global dvd_keikoku4_v
dvd_keikoku4_v:
	.incbin "baserom.dol", 0xB3D20, 0x480
.global keikoku4_dvd_att_moji_model
keikoku4_dvd_att_moji_model:
	.incbin "baserom.dol", 0xB41A0, 0xE0
.global keikoku4_dvd_att_winT_model
keikoku4_dvd_att_winT_model:
	.incbin "baserom.dol", 0xB4280, 0x100
.global dvd_keikoku_moji7_tex
dvd_keikoku_moji7_tex:
	.incbin "baserom.dol", 0xB4380, 0x500
.global dvd_keikoku_moji8_tex
dvd_keikoku_moji8_tex:
	.incbin "baserom.dol", 0xB4880, 0x400
.global dvd_keikoku_moji10_tex
dvd_keikoku_moji10_tex:
	.incbin "baserom.dol", 0xB4C80, 0x200
.global dvd_keikoku_moji11_tex
dvd_keikoku_moji11_tex:
	.incbin "baserom.dol", 0xB4E80, 0x480
.global dvd_keikoku_moji12_tex
dvd_keikoku_moji12_tex:
	.incbin "baserom.dol", 0xB5300, 0x280
.global dvd_keikoku_moji9_tex
dvd_keikoku_moji9_tex:
	.incbin "baserom.dol", 0xB5580, 0x500
.global dvd_keikoku5_v
dvd_keikoku5_v:
	.incbin "baserom.dol", 0xB5A80, 0x440
.global keikoku5_dvd_att_moji_model
keikoku5_dvd_att_moji_model:
	.incbin "baserom.dol", 0xB5EC0, 0xC8
.global keikoku5_dvd_att_winT_model
keikoku5_dvd_att_winT_model:
	.incbin "baserom.dol", 0xB5F88, 0xF8
.global Dvderr_viewport
Dvderr_viewport:
	.incbin "baserom.dol", 0xB6080, 0x10
.global Dvderr_initial_dl
Dvderr_initial_dl:
	.incbin "baserom.dol", 0xB6090, 0x70
.global @278
@278:
	.incbin "baserom.dol", 0xB6100, 0x40
.global gam_win_moji1_tex
gam_win_moji1_tex:
	.incbin "baserom.dol", 0xB6140, 0x280
.global gam_win_moji2_tex
gam_win_moji2_tex:
	.incbin "baserom.dol", 0xB63C0, 0x500
.global yes
yes:
	.incbin "baserom.dol", 0xB68C0, 0x100
.global no
no:
	.incbin "baserom.dol", 0xB69C0, 0x80
.global att_win_waku1_tex
att_win_waku1_tex:
	.incbin "baserom.dol", 0xB6A40, 0x400
.global att_win_waku2_tex
att_win_waku2_tex:
	.incbin "baserom.dol", 0xB6E40, 0x400
.global att_win_waku3_tex
att_win_waku3_tex:
	.incbin "baserom.dol", 0xB7240, 0x400
.global att_win_waku4_tex
att_win_waku4_tex:
	.incbin "baserom.dol", 0xB7640, 0x400
.global att_win_waku5_tex
att_win_waku5_tex:
	.incbin "baserom.dol", 0xB7A40, 0x400
.global att_win_waku6_tex
att_win_waku6_tex:
	.incbin "baserom.dol", 0xB7E40, 0x80
.global gam_win1_v
gam_win1_v:
	.incbin "baserom.dol", 0xB7EC0, 0x3F0
.global gam_win1_cursor_model
gam_win1_cursor_model:
	.incbin "baserom.dol", 0xB82B0, 0x40
.global gam_win1_moji_model
gam_win1_moji_model:
	.incbin "baserom.dol", 0xB82F0, 0x68
.global gam_win1_moji2_model
gam_win1_moji2_model:
	.incbin "baserom.dol", 0xB8358, 0x50
.global gam_win1_moji3_model
gam_win1_moji3_model:
	.incbin "baserom.dol", 0xB83A8, 0x50
.global gam_win1_winT_model
gam_win1_winT_model:
	.incbin "baserom.dol", 0xB83F8, 0x108
.global gam_win_moji3_tex
gam_win_moji3_tex:
	.incbin "baserom.dol", 0xB8500, 0x500
.global gam_win_moji4_tex
gam_win_moji4_tex:
	.incbin "baserom.dol", 0xB8A00, 0x500
.global att_win_waku1_tex
att_win_waku1_tex:
	.incbin "baserom.dol", 0xB8F00, 0x400
.global att_win_waku2_tex
att_win_waku2_tex:
	.incbin "baserom.dol", 0xB9300, 0x400
.global att_win_waku3_tex
att_win_waku3_tex:
	.incbin "baserom.dol", 0xB9700, 0x400
.global att_win_waku4_tex
att_win_waku4_tex:
	.incbin "baserom.dol", 0xB9B00, 0x400
.global att_win_waku5_tex
att_win_waku5_tex:
	.incbin "baserom.dol", 0xB9F00, 0x400
.global att_win_waku6_tex
att_win_waku6_tex:
	.incbin "baserom.dol", 0xBA300, 0x80
.global gam_win2_v
gam_win2_v:
	.incbin "baserom.dol", 0xBA380, 0x340
.global gam_win2_moji_model
gam_win2_moji_model:
	.incbin "baserom.dol", 0xBA6C0, 0x68
.global gam_win2_winT_model
gam_win2_winT_model:
	.incbin "baserom.dol", 0xBA728, 0xF8
.global gam_win_moji3_tex
gam_win_moji3_tex:
	.incbin "baserom.dol", 0xBA820, 0x500
.global gam_win_moji5_tex
gam_win_moji5_tex:
	.incbin "baserom.dol", 0xBAD20, 0x380
.global gam_win3_v
gam_win3_v:
	.incbin "baserom.dol", 0xBB0A0, 0x340
.global gam_win3_moji_model
gam_win3_moji_model:
	.incbin "baserom.dol", 0xBB3E0, 0x80
.global nintendo_376x104
nintendo_376x104:
	.incbin "baserom.dol", 0xBB460, 0x4C60
.global logo_nin_v
logo_nin_v:
	.incbin "baserom.dol", 0xC00C0, 0x40
.global logo_ninT_model
logo_ninT_model:
	.incbin "baserom.dol", 0xC0100, 0x40
.global nintendo_hi_0
nintendo_hi_0:
	.incbin "baserom.dol", 0xC0140, 0x9900
.global lbl_800CCA40
lbl_800CCA40:
	.incbin "baserom.dol", 0xC9A40, 0xFA0
.global lbl_800CD9E0
lbl_800CD9E0:
	.incbin "baserom.dol", 0xCA9E0, 0xA00
.global lbl_800CE3E0
lbl_800CE3E0:
	.incbin "baserom.dol", 0xCB3E0, 0x70
.global lbl_800CE450
lbl_800CE450:
	.incbin "baserom.dol", 0xCB450, 0x40
.global lbl_800CE490
lbl_800CE490:
	.incbin "baserom.dol", 0xCB490, 0x3F0
.global LEN_TABLE
LEN_TABLE:
	.incbin "baserom.dol", 0xCB880, 0x20
.global NOISE_FREQ_TABLE
NOISE_FREQ_TABLE:
	.incbin "baserom.dol", 0xCB8A0, 0x40
.global sbuffer
sbuffer:
	.incbin "baserom.dol", 0xCB8E0, 0x100
.global LEN_TABLE_HVC
LEN_TABLE_HVC:
	.incbin "baserom.dol", 0xCB9E0, 0x20
.global TRIANGLE_TABLE
TRIANGLE_TABLE:
	.incbin "baserom.dol", 0xCBA00, 0x20
.global NOISE_TABLE
NOISE_TABLE:
	.incbin "baserom.dol", 0xCBA20, 0x40
.global NOISE_PULSE_TABLE
NOISE_PULSE_TABLE:
	.incbin "baserom.dol", 0xCBA60, 0x10
.global DMOD_TABLE
DMOD_TABLE:
	.incbin "baserom.dol", 0xCBA70, 0x40
.global VOLTABLE_DELTAMOD
VOLTABLE_DELTAMOD:
	.incbin "baserom.dol", 0xCBAB0, 0x100
.global VOLTABLE_DISKFM
VOLTABLE_DISKFM:
	.incbin "baserom.dol", 0xCBBB0, 0x24
.global VOLTABLE_DISKFM_SUB
VOLTABLE_DISKFM_SUB:
	.incbin "baserom.dol", 0xCBBD4, 0x24
.global DISKFM_GAINTABLE
DISKFM_GAINTABLE:
	.incbin "baserom.dol", 0xCBBF8, 0x10
.global DEB1
DEB1:
	.incbin "baserom.dol", 0xCBC08, 0x10
.global VOLTABLE_HVCPULSE
VOLTABLE_HVCPULSE:
	.incbin "baserom.dol", 0xCBC18, 0x44
.global VOLTABLE_VRCPULSE
VOLTABLE_VRCPULSE:
	.incbin "baserom.dol", 0xCBC5C, 0x20
.global @186
@186:
	.incbin "baserom.dol", 0xCBC7C, 0x50
.global @1069
@1069:
	.incbin "baserom.dol", 0xCBCCC, 0x2C
.global PCM
PCM:
	.incbin "baserom.dol", 0xCBCF8, 0x24
.global PCMSIZE
PCMSIZE:
	.incbin "baserom.dol", 0xCBD1C, 0x24
.global OCTAVETABLE
OCTAVETABLE:
	.incbin "baserom.dol", 0xCBD40, 0x30
.global BGM_MUTE_TABLE_FINE
BGM_MUTE_TABLE_FINE:
	.incbin "baserom.dol", 0xCBD70, 0x30
.global BGM_MUTE_TABLE_SNOW
BGM_MUTE_TABLE_SNOW:
	.incbin "baserom.dol", 0xCBDA0, 0x30
.global BGM_MUTE_TABLE_SAKURA
BGM_MUTE_TABLE_SAKURA:
	.incbin "baserom.dol", 0xCBDD0, 0x30
.global BGM_MUTE_TABLE_MUSEUM
BGM_MUTE_TABLE_MUSEUM:
	.incbin "baserom.dol", 0xCBE00, 0x20
.global NIN_SEQ
NIN_SEQ:
	.incbin "baserom.dol", 0xCBE20, 0x60
.global NIN_BANK
NIN_BANK:
	.incbin "baserom.dol", 0xCBE80, 0x880
.global NIN_WAVE
NIN_WAVE:
	.incbin "baserom.dol", 0xCC700, 0x240
.global @1277
@1277:
	.incbin "baserom.dol", 0xCC940, 0x90
.global @1323
@1323:
	.incbin "baserom.dol", 0xCC9D0, 0x90
.global @1429
@1429:
	.incbin "baserom.dol", 0xCCA60, 0x44
.global @1428
@1428:
	.incbin "baserom.dol", 0xCCAA4, 0x50
.global @1427
@1427:
	.incbin "baserom.dol", 0xCCAF4, 0x80
.global @1426
@1426:
	.incbin "baserom.dol", 0xCCB74, 0x3C
.global @1425
@1425:
	.incbin "baserom.dol", 0xCCBB0, 0x2C
.global @1424
@1424:
	.incbin "baserom.dol", 0xCCBDC, 0x68
.global @1461
@1461:
	.incbin "baserom.dol", 0xCCC44, 0x68
.global @1679
@1679:
	.incbin "baserom.dol", 0xCCCAC, 0xB4
.global @1991
@1991:
	.incbin "baserom.dol", 0xCCD60, 0x28
.global @2197
@2197:
	.incbin "baserom.dol", 0xCCD88, 0x4C
.global @2273
@2273:
	.incbin "baserom.dol", 0xCCDD4, 0x3C
.global @272
@272:
	.incbin "baserom.dol", 0xCCE10, 0xD4
.global @271
@271:
	.incbin "baserom.dol", 0xCCEE4, 0x3C
.global RES_FILTER
RES_FILTER:
	.incbin "baserom.dol", 0xCCF20, 0x200
.global AD4
AD4:
	.incbin "baserom.dol", 0xCD120, 0x20
.global @430
@430:
	.incbin "baserom.dol", 0xCD140, 0x68
.global J_STREAMNAME
J_STREAMNAME:
	.incbin "baserom.dol", 0xCD1A8, 0x80
.global J_STREAM
J_STREAM:
	.incbin "baserom.dol", 0xCD228, 0x2C
.global @176
@176:
	.incbin "baserom.dol", 0xCD254, 0x24
.global audio_root_path
audio_root_path:
	.incbin "baserom.dol", 0xCD278, 0x20
.global NOISE_TABLE
NOISE_TABLE:
	.incbin "baserom.dol", 0xCD298, 0x20
.global @914
@914:
	.incbin "baserom.dol", 0xCD2B8, 0x20
.global @1406
@1406:
	.incbin "baserom.dol", 0xCD2D8, 0x28
.global @624
@624:
	.incbin "baserom.dol", 0xCD300, 0x38
.global @684
@684:
	.incbin "baserom.dol", 0xCD338, 0x58
.global VELOCONV_TABLE
VELOCONV_TABLE:
	.incbin "baserom.dol", 0xCD390, 0x1000
.global LSF_TABLE
LSF_TABLE:
	.incbin "baserom.dol", 0xCE390, 0x100
.global HSF_TABLE
HSF_TABLE:
	.incbin "baserom.dol", 0xCE490, 0xF0
.global EL_FILTER
EL_FILTER:
	.incbin "baserom.dol", 0xCE580, 0x690
.global BP_FILTER
BP_FILTER:
	.incbin "baserom.dol", 0xCEC10, 0x690
.global wm_sin
wm_sin:
	.incbin "baserom.dol", 0xCF2A0, 0x200
.global WAVEMEM_TABLE
WAVEMEM_TABLE:
	.incbin "baserom.dol", 0xCF4A0, 0x24
.global PCENTTABLE
PCENTTABLE:
	.incbin "baserom.dol", 0xCF4C4, 0x400
.global PCENTTABLE2
PCENTTABLE2:
	.incbin "baserom.dol", 0xCF8C4, 0x400
.global PITCHTABLE
PITCHTABLE:
	.incbin "baserom.dol", 0xCFCC4, 0x200
.global DEFAULT_VTABLE
DEFAULT_VTABLE:
	.incbin "baserom.dol", 0xCFEC4, 0x10
.global DEFAULT_GTABLE
DEFAULT_GTABLE:
	.incbin "baserom.dol", 0xCFED4, 0x10
.global DEFAULT_ENV
DEFAULT_ENV:
	.incbin "baserom.dol", 0xCFEE4, 0x10
.global NA_CHINIT_TABLE
NA_CHINIT_TABLE:
	.incbin "baserom.dol", 0xCFEF4, 0x20
.global NA_SVCINIT_TABLE
NA_SVCINIT_TABLE:
	.incbin "baserom.dol", 0xCFF14, 0x20
.global CDELAYTABLE
CDELAYTABLE:
	.incbin "baserom.dol", 0xCFF34, 0x80
.global PhoneLeft
PhoneLeft:
	.incbin "baserom.dol", 0xCFFB4, 0x200
.global WideLeft
WideLeft:
	.incbin "baserom.dol", 0xD01B4, 0x200
.global StereoLeft
StereoLeft:
	.incbin "baserom.dol", 0xD03B4, 0x200
.global BDB_SEQDATA
BDB_SEQDATA:
	.incbin "baserom.dol", 0xD05B4, 0xB4
.global NA_HALL_DELAY
NA_HALL_DELAY:
	.incbin "baserom.dol", 0xD0668, 0x18
.global NA_SPEC_CONFIG
NA_SPEC_CONFIG:
	.incbin "baserom.dol", 0xD0680, 0x38
.global AGC
AGC:
	.incbin "baserom.dol", 0xD06B8, 0x10
.global @375
@375:
	.incbin "baserom.dol", 0xD06C8, 0x28
.global SCOM_TABLE
SCOM_TABLE:
	.incbin "baserom.dol", 0xD06F0, 0x60
.global @215
@215:
	.incbin "baserom.dol", 0xD0750, 0x38
.global @545
@545:
	.incbin "baserom.dol", 0xD0788, 0xC4
.global @1059
@1059:
	.incbin "baserom.dol", 0xD084C, 0xA4
.global @1057
@1057:
	.incbin "baserom.dol", 0xD08F0, 0x148
.global @1252
@1252:
	.incbin "baserom.dol", 0xD0A38, 0xC8
.global jdsp
jdsp:
	.incbin "baserom.dol", 0xD0B00, 0x1A00
.global calc_sw_table
calc_sw_table:
	.incbin "baserom.dol", 0xD2500, 0x54
.global @473
@473:
	.incbin "baserom.dol", 0xD2554, 0x20
.global @472
@472:
	.incbin "baserom.dol", 0xD2574, 0x24
.global history
history:
	.incbin "baserom.dol", 0xD2598, 0x28
.global connect_table$194
connect_table$194:
	.incbin "baserom.dol", 0xD25C0, 0x20
.global DSPADPCM_FILTER
DSPADPCM_FILTER:
	.incbin "baserom.dol", 0xD25E0, 0x40
.global DSPRES_FILTER
DSPRES_FILTER:
	.incbin "baserom.dol", 0xD2620, 0x400
.global SEND_TABLE
SEND_TABLE:
	.incbin "baserom.dol", 0xD2A20, 0x18
.global C5BASE_PITCHTABLE
C5BASE_PITCHTABLE:
	.incbin "baserom.dol", 0xD2A38, 0x200
.global FORCE_RELEASE_TABLE
FORCE_RELEASE_TABLE:
	.incbin "baserom.dol", 0xD2C38, 0x10
.global extdir
extdir:
	.incbin "baserom.dol", 0xD2C48, 0x40
.global @251
@251:
	.incbin "baserom.dol", 0xD2C88, 0x34
.global @348
@348:
	.incbin "baserom.dol", 0xD2CBC, 0x44
.global @388
@388:
	.incbin "baserom.dol", 0xD2D00, 0x44
.global Arglist
Arglist:
	.incbin "baserom.dol", 0xD2D44, 0x100
.global CMDP_LIST
CMDP_LIST:
	.incbin "baserom.dol", 0xD2E44, 0x104
.global CUTOFF_TO_IIR_TABLE
CUTOFF_TO_IIR_TABLE:
	.incbin "baserom.dol", 0xD2F48, 0x400
.global KEY_TABLE
KEY_TABLE:
	.incbin "baserom.dol", 0xD3348, 0x100
.global VIB_TABLE
VIB_TABLE:
	.incbin "baserom.dol", 0xD3448, 0x24
.global TRE_TABLE
TRE_TABLE:
	.incbin "baserom.dol", 0xD346C, 0x24
.global REL_TABLE
REL_TABLE:
	.incbin "baserom.dol", 0xD3490, 0xC
.global VIBRATO_DEF
VIBRATO_DEF:
	.incbin "baserom.dol", 0xD349C, 0x18
.global TREMOLO_DEF
TREMOLO_DEF:
	.incbin "baserom.dol", 0xD34B4, 0x18
.global ENVELOPE_DEF
ENVELOPE_DEF:
	.incbin "baserom.dol", 0xD34CC, 0x18
.global ADS_TABLE
ADS_TABLE:
	.incbin "baserom.dol", 0xD34E4, 0x18
.global ADSR_DEF
ADSR_DEF:
	.incbin "baserom.dol", 0xD34FC, 0x18
.global OSC_DEF
OSC_DEF:
	.incbin "baserom.dol", 0xD3514, 0x1C
.global PERC_ENV
PERC_ENV:
	.incbin "baserom.dol", 0xD3530, 0x18
.global OSC_ENV
OSC_ENV:
	.incbin "baserom.dol", 0xD3548, 0x18
.global polys_table
polys_table:
	.incbin "baserom.dol", 0xD3560, 0x10
.global ksNesStoreFuncTblDefault
ksNesStoreFuncTblDefault:
	.incbin "baserom.dol", 0xD3570, 0x20
.global ksNesStorePPUFuncTblDefault
ksNesStorePPUFuncTblDefault:
	.incbin "baserom.dol", 0xD3590, 0x20
.global ksNesStoreIOFuncTblDefault
ksNesStoreIOFuncTblDefault:
	.incbin "baserom.dol", 0xD35B0, 0xA0
.global ksNesStoreQDFuncTbl
ksNesStoreQDFuncTbl:
	.incbin "baserom.dol", 0xD3650, 0x20
.global ksNesInitQDDataTbl
ksNesInitQDDataTbl:
	.incbin "baserom.dol", 0xD3670, 0xC
.global ksNesStore05FuncTbl
ksNesStore05FuncTbl:
	.incbin "baserom.dol", 0xD367C, 0xC4
.global ksNesLoadFuncTblDefault
ksNesLoadFuncTblDefault:
	.incbin "baserom.dol", 0xD3740, 0x20
.global ksNesLoadIOFuncTblDefault
ksNesLoadIOFuncTblDefault:
	.incbin "baserom.dol", 0xD3760, 0x60
.global ksNesVoiceIdTable_12
ksNesVoiceIdTable_12:
	.incbin "baserom.dol", 0xD37C0, 0x10
.global ksNesMapperInitFuncTbl
ksNesMapperInitFuncTbl:
	.incbin "baserom.dol", 0xD37D0, 0xE74
.global ksNesInstJumpTbl
ksNesInstJumpTbl:
	.incbin "baserom.dol", 0xD4644, 0x1000
.global sound_init_data$454
sound_init_data$454:
	.incbin "baserom.dol", 0xD5644, 0x28
.global @594
@594:
	.incbin "baserom.dol", 0xD566C, 0x8
.global @595
@595:
	.incbin "baserom.dol", 0xD5674, 0xC
.global @596
@596:
	.incbin "baserom.dol", 0xD5680, 0x10
.global ksNesPaletteNormal
ksNesPaletteNormal:
	.incbin "baserom.dol", 0xD5690, 0x80
.global indtexmtx_screen$477
indtexmtx_screen$477:
	.incbin "baserom.dol", 0xD5710, 0x18
.global indtexmtx_obj$626
indtexmtx_obj$626:
	.incbin "baserom.dol", 0xD5728, 0x18
.global @811
@811:
	.incbin "baserom.dol", 0xD5740, 0x8
.global indtexmtx_obj$819
indtexmtx_obj$819:
	.incbin "baserom.dol", 0xD5748, 0x18
.global indtexmtx$1004
indtexmtx$1004:
	.incbin "baserom.dol", 0xD5760, 0x18
.global lbl_800D8778
lbl_800D8778:
	.incbin "baserom.dol", 0xD5778, 0x4
.global @2206
@2206:
	.incbin "baserom.dol", 0xD577C, 0x24
.global @2207
@2207:
	.incbin "baserom.dol", 0xD57A0, 0x14
.global @2208
@2208:
	.incbin "baserom.dol", 0xD57B4, 0x28
.global @2209
@2209:
	.incbin "baserom.dol", 0xD57DC, 0x1C
.global @2241
@2241:
	.incbin "baserom.dol", 0xD57F8, 0x18
.global @2242
@2242:
	.incbin "baserom.dol", 0xD5810, 0x20
.global @2243
@2243:
	.incbin "baserom.dol", 0xD5830, 0x28
.global @2244
@2244:
	.incbin "baserom.dol", 0xD5858, 0x2C
.global @2245
@2245:
	.incbin "baserom.dol", 0xD5884, 0x20
.global @2377
@2377:
	.incbin "baserom.dol", 0xD58A4, 0x24
.global @2378
@2378:
	.incbin "baserom.dol", 0xD58C8, 0x24
.global @2379
@2379:
	.incbin "baserom.dol", 0xD58EC, 0x1C
.global @2380
@2380:
	.incbin "baserom.dol", 0xD5908, 0x8
.global @2381
@2381:
	.incbin "baserom.dol", 0xD5910, 0x4
.global @2382
@2382:
	.incbin "baserom.dol", 0xD5914, 0x4
.global @2456
@2456:
	.incbin "baserom.dol", 0xD5918, 0x18
.global @2493
@2493:
	.incbin "baserom.dol", 0xD5930, 0x40
.global @2494
@2494:
	.incbin "baserom.dol", 0xD5970, 0x28
.global @2495
@2495:
	.incbin "baserom.dol", 0xD5998, 0x20
.global @2496
@2496:
	.incbin "baserom.dol", 0xD59B8, 0x28
.global @2497
@2497:
	.incbin "baserom.dol", 0xD59E0, 0x20
.global @2498
@2498:
	.incbin "baserom.dol", 0xD5A00, 0x20
.global @2499
@2499:
	.incbin "baserom.dol", 0xD5A20, 0x24
.global @2500
@2500:
	.incbin "baserom.dol", 0xD5A44, 0x2C
.global @2501
@2501:
	.incbin "baserom.dol", 0xD5A70, 0x20
.global @2523
@2523:
	.incbin "baserom.dol", 0xD5A90, 0x14
.global @2558
@2558:
	.incbin "baserom.dol", 0xD5AA4, 0x6C
.global @2559
@2559:
	.incbin "baserom.dol", 0xD5B10, 0x60
.global @2618
@2618:
	.incbin "baserom.dol", 0xD5B70, 0x8
.global @2619
@2619:
	.incbin "baserom.dol", 0xD5B78, 0x8
.global @2620
@2620:
	.incbin "baserom.dol", 0xD5B80, 0x10
.global @2621
@2621:
	.incbin "baserom.dol", 0xD5B90, 0x1C
.global @2622
@2622:
	.incbin "baserom.dol", 0xD5BAC, 0x20
.global @2623
@2623:
	.incbin "baserom.dol", 0xD5BCC, 0x1C
.global @2635
@2635:
	.incbin "baserom.dol", 0xD5BE8, 0x1C
.global @2636
@2636:
	.incbin "baserom.dol", 0xD5C04, 0x1C
.global @2742
@2742:
	.incbin "baserom.dol", 0xD5C20, 0x8
.global @2743
@2743:
	.incbin "baserom.dol", 0xD5C28, 0x20
.global @2744
@2744:
	.incbin "baserom.dol", 0xD5C48, 0x14
.global @2745
@2745:
	.incbin "baserom.dol", 0xD5C5C, 0x34
.global @2746
@2746:
	.incbin "baserom.dol", 0xD5C90, 0x24
.global @2747
@2747:
	.incbin "baserom.dol", 0xD5CB4, 0x24
.global @2748
@2748:
	.incbin "baserom.dol", 0xD5CD8, 0x28
.global @2749
@2749:
	.incbin "baserom.dol", 0xD5D00, 0x28
.global @2750
@2750:
	.incbin "baserom.dol", 0xD5D28, 0x14
.global @2751
@2751:
	.incbin "baserom.dol", 0xD5D3C, 0x18
.global @2752
@2752:
	.incbin "baserom.dol", 0xD5D54, 0x1C
.global @2753
@2753:
	.incbin "baserom.dol", 0xD5D70, 0x10
.global @2754
@2754:
	.incbin "baserom.dol", 0xD5D80, 0x10
.global @2755
@2755:
	.incbin "baserom.dol", 0xD5D90, 0xC
.global @2756
@2756:
	.incbin "baserom.dol", 0xD5D9C, 0x18
.global @2757
@2757:
	.incbin "baserom.dol", 0xD5DB4, 0x10
.global @2758
@2758:
	.incbin "baserom.dol", 0xD5DC4, 0x14
.global @2759
@2759:
	.incbin "baserom.dol", 0xD5DD8, 0x10
.global @2760
@2760:
	.incbin "baserom.dol", 0xD5DE8, 0x14
.global @2839
@2839:
	.incbin "baserom.dol", 0xD5DFC, 0x14
.global @2840
@2840:
	.incbin "baserom.dol", 0xD5E10, 0x14
.global @2841
@2841:
	.incbin "baserom.dol", 0xD5E24, 0x1C
.global @2842
@2842:
	.incbin "baserom.dol", 0xD5E40, 0x1C
.global @2843
@2843:
	.incbin "baserom.dol", 0xD5E5C, 0x18
.global @2844
@2844:
	.incbin "baserom.dol", 0xD5E74, 0x18
.global @2845
@2845:
	.incbin "baserom.dol", 0xD5E8C, 0x20
.global @2846
@2846:
	.incbin "baserom.dol", 0xD5EAC, 0x20
.global @2847
@2847:
	.incbin "baserom.dol", 0xD5ECC, 0x10
.global @2848
@2848:
	.incbin "baserom.dol", 0xD5EDC, 0x14
.global @2849
@2849:
	.incbin "baserom.dol", 0xD5EF0, 0x10
.global @2850
@2850:
	.incbin "baserom.dol", 0xD5F00, 0x14
.global @2851
@2851:
	.incbin "baserom.dol", 0xD5F14, 0x14
.global @2852
@2852:
	.incbin "baserom.dol", 0xD5F28, 0x14
.global @2853
@2853:
	.incbin "baserom.dol", 0xD5F3C, 0x24
.global @2854
@2854:
	.incbin "baserom.dol", 0xD5F60, 0x28
.global @2855
@2855:
	.incbin "baserom.dol", 0xD5F88, 0x2C
.global @2960
@2960:
	.incbin "baserom.dol", 0xD5FB4, 0x8
.global @2961
@2961:
	.incbin "baserom.dol", 0xD5FBC, 0x4
.global @2962
@2962:
	.incbin "baserom.dol", 0xD5FC0, 0x14
.global @2963
@2963:
	.incbin "baserom.dol", 0xD5FD4, 0x8
.global @2964
@2964:
	.incbin "baserom.dol", 0xD5FDC, 0x1C
.global @2965
@2965:
	.incbin "baserom.dol", 0xD5FF8, 0x18
.global @2966
@2966:
	.incbin "baserom.dol", 0xD6010, 0x14
.global @2967
@2967:
	.incbin "baserom.dol", 0xD6024, 0x10
.global @2968
@2968:
	.incbin "baserom.dol", 0xD6034, 0x38
.global brokenTitle$3010
brokenTitle$3010:
	.incbin "baserom.dol", 0xD606C, 0x10
.global @3044
@3044:
	.incbin "baserom.dol", 0xD607C, 0x18
.global @3045
@3045:
	.incbin "baserom.dol", 0xD6094, 0x14
.global @3046
@3046:
	.incbin "baserom.dol", 0xD60A8, 0x14
.global @3078
@3078:
	.incbin "baserom.dol", 0xD60BC, 0x8
.global @3106
@3106:
	.incbin "baserom.dol", 0xD60C4, 0xC
.global @3107
@3107:
	.incbin "baserom.dol", 0xD60D0, 0x18
.global @3131
@3131:
	.incbin "baserom.dol", 0xD60E8, 0xC
.global @3153
@3153:
	.incbin "baserom.dol", 0xD60F4, 0x38
.global @3389
@3389:
	.incbin "baserom.dol", 0xD612C, 0xC
.global @3390
@3390:
	.incbin "baserom.dol", 0xD6138, 0x14
.global @3391
@3391:
	.incbin "baserom.dol", 0xD614C, 0x18
.global @3392
@3392:
	.incbin "baserom.dol", 0xD6164, 0xC
.global @3393
@3393:
	.incbin "baserom.dol", 0xD6170, 0x38
.global @3394
@3394:
	.incbin "baserom.dol", 0xD61A8, 0x28
.global @3395
@3395:
	.incbin "baserom.dol", 0xD61D0, 0x4
.global @3396
@3396:
	.incbin "baserom.dol", 0xD61D4, 0x14
.global @3397
@3397:
	.incbin "baserom.dol", 0xD61E8, 0x28
.global @3398
@3398:
	.incbin "baserom.dol", 0xD6210, 0x30
.global @3399
@3399:
	.incbin "baserom.dol", 0xD6240, 0x48
.global @3400
@3400:
	.incbin "baserom.dol", 0xD6288, 0x2C
.global @3401
@3401:
	.incbin "baserom.dol", 0xD62B4, 0x14
.global @3402
@3402:
	.incbin "baserom.dol", 0xD62C8, 0x1C
.global @3403
@3403:
	.incbin "baserom.dol", 0xD62E4, 0x2C
.global @3404
@3404:
	.incbin "baserom.dol", 0xD6310, 0x10
.global @3405
@3405:
	.incbin "baserom.dol", 0xD6320, 0x18
.global @3406
@3406:
	.incbin "baserom.dol", 0xD6338, 0x30
.global @3407
@3407:
	.incbin "baserom.dol", 0xD6368, 0x14
.global @3408
@3408:
	.incbin "baserom.dol", 0xD637C, 0x30
.global @3409
@3409:
	.incbin "baserom.dol", 0xD63AC, 0x14
.global @3410
@3410:
	.incbin "baserom.dol", 0xD63C0, 0x34
.global @3411
@3411:
	.incbin "baserom.dol", 0xD63F4, 0x18
.global @3412
@3412:
	.incbin "baserom.dol", 0xD640C, 0x34
.global @3413
@3413:
	.incbin "baserom.dol", 0xD6440, 0x1C
.global @3414
@3414:
	.incbin "baserom.dol", 0xD645C, 0x10
.global @3415
@3415:
	.incbin "baserom.dol", 0xD646C, 0x18
.global @3417
@3417:
	.incbin "baserom.dol", 0xD6484, 0x18
.global @3418
@3418:
	.incbin "baserom.dol", 0xD649C, 0x18
.global @3419
@3419:
	.incbin "baserom.dol", 0xD64B4, 0x18
.global @3420
@3420:
	.incbin "baserom.dol", 0xD64CC, 0x18
.global @3421
@3421:
	.incbin "baserom.dol", 0xD64E4, 0x18
.global @3422
@3422:
	.incbin "baserom.dol", 0xD64FC, 0x18
.global @3423
@3423:
	.incbin "baserom.dol", 0xD6514, 0x18
.global @3424
@3424:
	.incbin "baserom.dol", 0xD652C, 0x88
.global @3425
@3425:
	.incbin "baserom.dol", 0xD65B4, 0x10
.global @3426
@3426:
	.incbin "baserom.dol", 0xD65C4, 0x8
.global @3427
@3427:
	.incbin "baserom.dol", 0xD65CC, 0x18
.global @3428
@3428:
	.incbin "baserom.dol", 0xD65E4, 0x30
.global @3429
@3429:
	.incbin "baserom.dol", 0xD6614, 0x8
.global @3430
@3430:
	.incbin "baserom.dol", 0xD661C, 0x1C
.global @3431
@3431:
	.incbin "baserom.dol", 0xD6638, 0x34
.global @3432
@3432:
	.incbin "baserom.dol", 0xD666C, 0x8
.global @3433
@3433:
	.incbin "baserom.dol", 0xD6674, 0x8
.global @3610
@3610:
	.incbin "baserom.dol", 0xD667C, 0x28
.global @3611
@3611:
	.incbin "baserom.dol", 0xD66A4, 0x3C
.global @3674
@3674:
	.incbin "baserom.dol", 0xD66E0, 0x18
.global @3675
@3675:
	.incbin "baserom.dol", 0xD66F8, 0x30
.global @3676
@3676:
	.incbin "baserom.dol", 0xD6728, 0x34
.global @3677
@3677:
	.incbin "baserom.dol", 0xD675C, 0x24
.global @3678
@3678:
	.incbin "baserom.dol", 0xD6780, 0xC
.global @3679
@3679:
	.incbin "baserom.dol", 0xD678C, 0x28
.global @3680
@3680:
	.incbin "baserom.dol", 0xD67B4, 0x2C
.global @3681
@3681:
	.incbin "baserom.dol", 0xD67E0, 0xC
.global @3682
@3682:
	.incbin "baserom.dol", 0xD67EC, 0x28
.global @3683
@3683:
	.incbin "baserom.dol", 0xD6814, 0x18
.global @3684
@3684:
	.incbin "baserom.dol", 0xD682C, 0x3C
.global @3762
@3762:
	.incbin "baserom.dol", 0xD6868, 0x24
.global @3776
@3776:
	.incbin "baserom.dol", 0xD688C, 0x18
.global @3777
@3777:
	.incbin "baserom.dol", 0xD68A4, 0x20
.global @3961
@3961:
	.incbin "baserom.dol", 0xD68C4, 0x10
.global @3962
@3962:
	.incbin "baserom.dol", 0xD68D4, 0xC
.global @3963
@3963:
	.incbin "baserom.dol", 0xD68E0, 0x8
.global @3970
@3970:
	.incbin "baserom.dol", 0xD68E8, 0xC
.global @3971
@3971:
	.incbin "baserom.dol", 0xD68F4, 0xC
.global @3972
@3972:
	.incbin "baserom.dol", 0xD6900, 0x14
.global @4042
@4042:
	.incbin "baserom.dol", 0xD6914, 0x38
.global @4156
@4156:
	.incbin "baserom.dol", 0xD694C, 0x28
.global @4161
@4161:
	.incbin "baserom.dol", 0xD6974, 0x10
.global __RTTI__13JKRFileFinder
__RTTI__13JKRFileFinder:
	.incbin "baserom.dol", 0xD6984, 0x8
.global __vt__13JKRFileFinder
__vt__13JKRFileFinder:
	.incbin "baserom.dol", 0xD698C, 0x14
.global tags_table_default
tags_table_default:
	.incbin "baserom.dol", 0xD69A0, 0x4
.global tags_table_cluclu_land
tags_table_cluclu_land:
	.incbin "baserom.dol", 0xD69A4, 0x30
.global tags_table_balloon_fight
tags_table_balloon_fight:
	.incbin "baserom.dol", 0xD69D4, 0x48
.global tags_table_donkey_kong
tags_table_donkey_kong:
	.incbin "baserom.dol", 0xD6A1C, 0x34
.global tags_table_sansu_asobi
tags_table_sansu_asobi:
	.incbin "baserom.dol", 0xD6A50, 0x70
.global tags_table_pinball
tags_table_pinball:
	.incbin "baserom.dol", 0xD6AC0, 0x38
.global tags_table_tennis
tags_table_tennis:
	.incbin "baserom.dol", 0xD6AF8, 0x1C
.global tags_table_golf
tags_table_golf:
	.incbin "baserom.dol", 0xD6B14, 0x24
.global tags_table_punchout
tags_table_punchout:
	.incbin "baserom.dol", 0xD6B38, 0x34
.global tags_table_baseball
tags_table_baseball:
	.incbin "baserom.dol", 0xD6B6C, 0x1C
.global tags_table_cluclu_land_disk
tags_table_cluclu_land_disk:
	.incbin "baserom.dol", 0xD6B88, 0x34
.global tags_table_donkey_kong_3
tags_table_donkey_kong_3:
	.incbin "baserom.dol", 0xD6BBC, 0x38
.global tags_table_donkey_kong_jr
tags_table_donkey_kong_jr:
	.incbin "baserom.dol", 0xD6BF4, 0x38
.global tags_table_gomoku_narabe
tags_table_gomoku_narabe:
	.incbin "baserom.dol", 0xD6C2C, 0x20
.global tags_table_mahjong
tags_table_mahjong:
	.incbin "baserom.dol", 0xD6C4C, 0x1C
.global tags_table_wario_no_mori
tags_table_wario_no_mori:
	.incbin "baserom.dol", 0xD6C68, 0x64
.global tags_table_ice_climber
tags_table_ice_climber:
	.incbin "baserom.dol", 0xD6CCC, 0x30
.global tags_table_mario_bros
tags_table_mario_bros:
	.incbin "baserom.dol", 0xD6CFC, 0x30
.global tags_table_super_mario_bros
tags_table_super_mario_bros:
	.incbin "baserom.dol", 0xD6D2C, 0x44
.global tags_table_legend_of_zelda_disk
tags_table_legend_of_zelda_disk:
	.incbin "baserom.dol", 0xD6D70, 0x34
.global tags_table_legend_of_zelda_rom
tags_table_legend_of_zelda_rom:
	.incbin "baserom.dol", 0xD6DA4, 0x38
.global tags_table_soccer
tags_table_soccer:
	.incbin "baserom.dol", 0xD6DDC, 0x1C
.global tags_table_excite_bike
tags_table_excite_bike:
	.incbin "baserom.dol", 0xD6DF8, 0xEC
.global tags_table_excite_bike_design
tags_table_excite_bike_design:
	.incbin "baserom.dol", 0xD6EE4, 0x1E0
.global tags_table_nazo_no_murasamejo
tags_table_nazo_no_murasamejo:
	.incbin "baserom.dol", 0xD70C4, 0x34
.global tags_table_super_mario_bros_2
tags_table_super_mario_bros_2:
	.incbin "baserom.dol", 0xD70F8, 0x50
.global tags_table_marioopen_golf
tags_table_marioopen_golf:
	.incbin "baserom.dol", 0xD7148, 0x3C
.global tags_table_external_default
tags_table_external_default:
	.incbin "baserom.dol", 0xD7184, 0x18
.global tags_table_balloon_fight_jpn
tags_table_balloon_fight_jpn:
	.incbin "baserom.dol", 0xD719C, 0x54
.global @2140
@2140:
	.incbin "baserom.dol", 0xD71F0, 0x10
.global @2141
@2141:
	.incbin "baserom.dol", 0xD7200, 0x10
.global @2142
@2142:
	.incbin "baserom.dol", 0xD7210, 0xC
.global @2143
@2143:
	.incbin "baserom.dol", 0xD721C, 0x10
.global @2144
@2144:
	.incbin "baserom.dol", 0xD722C, 0x8
.global @2145
@2145:
	.incbin "baserom.dol", 0xD7234, 0x8
.global @2146
@2146:
	.incbin "baserom.dol", 0xD723C, 0x8
.global @2147
@2147:
	.incbin "baserom.dol", 0xD7244, 0xC
.global @2148
@2148:
	.incbin "baserom.dol", 0xD7250, 0xC
.global @2149
@2149:
	.incbin "baserom.dol", 0xD725C, 0x14
.global @2150
@2150:
	.incbin "baserom.dol", 0xD7270, 0x10
.global @2151
@2151:
	.incbin "baserom.dol", 0xD7280, 0x10
.global @2152
@2152:
	.incbin "baserom.dol", 0xD7290, 0x8
.global @2153
@2153:
	.incbin "baserom.dol", 0xD7298, 0xC
.global @2154
@2154:
	.incbin "baserom.dol", 0xD72A4, 0x10
.global @2155
@2155:
	.incbin "baserom.dol", 0xD72B4, 0xC
.global @2156
@2156:
	.incbin "baserom.dol", 0xD72C0, 0xC
.global @2157
@2157:
	.incbin "baserom.dol", 0xD72CC, 0x14
.global @2158
@2158:
	.incbin "baserom.dol", 0xD72E0, 0x10
.global moriNameTable
moriNameTable:
	.incbin "baserom.dol", 0xD72F0, 0x130
.global @2177
@2177:
	.incbin "baserom.dol", 0xD7420, 0x2C
.global @2178
@2178:
	.incbin "baserom.dol", 0xD744C, 0x28
.global @2179
@2179:
	.incbin "baserom.dol", 0xD7474, 0x3C
.global @2180
@2180:
	.incbin "baserom.dol", 0xD74B0, 0x24
.global @2205
@2205:
	.incbin "baserom.dol", 0xD74D4, 0x4
.global @2229
@2229:
	.incbin "baserom.dol", 0xD74D8, 0x4
.global @2230
@2230:
	.incbin "baserom.dol", 0xD74DC, 0x4
.global @2293
@2293:
	.incbin "baserom.dol", 0xD74E0, 0x4
.global @2294
@2294:
	.incbin "baserom.dol", 0xD74E4, 0x4
.global @2303
@2303:
	.incbin "baserom.dol", 0xD74E8, 0x8
.global @2348
@2348:
	.incbin "baserom.dol", 0xD74F0, 0x1C
.global @2349
@2349:
	.incbin "baserom.dol", 0xD750C, 0x24
.global @2522
@2522:
	.incbin "baserom.dol", 0xD7530, 0x28
.global @2523
@2523:
	.incbin "baserom.dol", 0xD7558, 0x18
.global @2524
@2524:
	.incbin "baserom.dol", 0xD7570, 0x4
.global @2525
@2525:
	.incbin "baserom.dol", 0xD7574, 0x4
.global @2526
@2526:
	.incbin "baserom.dol", 0xD7578, 0x4
.global @2527
@2527:
	.incbin "baserom.dol", 0xD757C, 0x4
.global @2528
@2528:
	.incbin "baserom.dol", 0xD7580, 0x4
.global @2529
@2529:
	.incbin "baserom.dol", 0xD7584, 0x28
.global @2530
@2530:
	.incbin "baserom.dol", 0xD75AC, 0x34
.global @2531
@2531:
	.incbin "baserom.dol", 0xD75E0, 0x4
.global @2532
@2532:
	.incbin "baserom.dol", 0xD75E4, 0x4
.global @2533
@2533:
	.incbin "baserom.dol", 0xD75E8, 0x20
.global @2534
@2534:
	.incbin "baserom.dol", 0xD7608, 0x20
.global @2535
@2535:
	.incbin "baserom.dol", 0xD7628, 0x4
.global @2536
@2536:
	.incbin "baserom.dol", 0xD762C, 0x30
.global @2537
@2537:
	.incbin "baserom.dol", 0xD765C, 0x20
.global @2538
@2538:
	.incbin "baserom.dol", 0xD767C, 0x4
.global @2539
@2539:
	.incbin "baserom.dol", 0xD7680, 0x18
.global @2540
@2540:
	.incbin "baserom.dol", 0xD7698, 0x4
.global @2541
@2541:
	.incbin "baserom.dol", 0xD769C, 0x4
.global @2542
@2542:
	.incbin "baserom.dol", 0xD76A0, 0x4
.global @2543
@2543:
	.incbin "baserom.dol", 0xD76A4, 0x4
.global @2544
@2544:
	.incbin "baserom.dol", 0xD76A8, 0x18
.global @2545
@2545:
	.incbin "baserom.dol", 0xD76C0, 0x4
.global @2546
@2546:
	.incbin "baserom.dol", 0xD76C4, 0x4
.global @2547
@2547:
	.incbin "baserom.dol", 0xD76C8, 0x1C
.global @2548
@2548:
	.incbin "baserom.dol", 0xD76E4, 0x4
.global @2549
@2549:
	.incbin "baserom.dol", 0xD76E8, 0x4
.global @2550
@2550:
	.incbin "baserom.dol", 0xD76EC, 0x4
.global @2551
@2551:
	.incbin "baserom.dol", 0xD76F0, 0x14
.global @2552
@2552:
	.incbin "baserom.dol", 0xD7704, 0x1C
.global @2631
@2631:
	.incbin "baserom.dol", 0xD7720, 0x1C
.global @2632
@2632:
	.incbin "baserom.dol", 0xD773C, 0x4
.global @2633
@2633:
	.incbin "baserom.dol", 0xD7740, 0x4
.global @2634
@2634:
	.incbin "baserom.dol", 0xD7744, 0x4
.global @2635
@2635:
	.incbin "baserom.dol", 0xD7748, 0x4
.global @2636
@2636:
	.incbin "baserom.dol", 0xD774C, 0x1C
.global @2681
@2681:
	.incbin "baserom.dol", 0xD7768, 0x1C
.global @2682
@2682:
	.incbin "baserom.dol", 0xD7784, 0x20
.global @2683
@2683:
	.incbin "baserom.dol", 0xD77A4, 0x18
.global @2684
@2684:
	.incbin "baserom.dol", 0xD77BC, 0x18
.global @2776
@2776:
	.incbin "baserom.dol", 0xD77D4, 0x38
.global @2777
@2777:
	.incbin "baserom.dol", 0xD780C, 0x38
.global @2778
@2778:
	.incbin "baserom.dol", 0xD7844, 0x1C
.global @2790
@2790:
	.incbin "baserom.dol", 0xD7860, 0x40
.global @2791
@2791:
	.incbin "baserom.dol", 0xD78A0, 0x40
.global @2808
@2808:
	.incbin "baserom.dol", 0xD78E0, 0x34
.global @2809
@2809:
	.incbin "baserom.dol", 0xD7914, 0x38
.global @2822
@2822:
	.incbin "baserom.dol", 0xD794C, 0x3C
.global @2823
@2823:
	.incbin "baserom.dol", 0xD7988, 0x40
.global ResetFunctionInfo
ResetFunctionInfo:
	.incbin "baserom.dol", 0xD79C8, 0x10
.global D54
D54:
	.incbin "baserom.dol", 0xD79D8, 0x30
.global @357
@357:
	.incbin "baserom.dol", 0xD7A08, 0x8
.global @358
@358:
	.incbin "baserom.dol", 0xD7A10, 0x8
.global @579
@579:
	.incbin "baserom.dol", 0xD7A18, 0x18
.global @580
@580:
	.incbin "baserom.dol", 0xD7A30, 0x1C
.global @581
@581:
	.incbin "baserom.dol", 0xD7A4C, 0x10
.global @716
@716:
	.incbin "baserom.dol", 0xD7A5C, 0x8
.global @803
@803:
	.incbin "baserom.dol", 0xD7A64, 0x3C
.global texture_cache_data_func
texture_cache_data_func:
	.incbin "baserom.dol", 0xD7AA0, 0xC
.global texture_cache_bss_func
texture_cache_bss_func:
	.incbin "baserom.dol", 0xD7AAC, 0xC
.global texture_cache_data
texture_cache_data:
	.incbin "baserom.dol", 0xD7AB8, 0x20
.global texture_cache_bss
texture_cache_bss:
	.incbin "baserom.dol", 0xD7AD8, 0x20
.global @497
@497:
	.incbin "baserom.dol", 0xD7AF8, 0x18
.global @498
@498:
	.incbin "baserom.dol", 0xD7B10, 0x1C
.global @499
@499:
	.incbin "baserom.dol", 0xD7B2C, 0x10
.global @500
@500:
	.incbin "baserom.dol", 0xD7B3C, 0x24
.global @501
@501:
	.incbin "baserom.dol", 0xD7B60, 0x18
.global doltexwrapmode
doltexwrapmode:
	.incbin "baserom.dol", 0xD7B78, 0x10
.global @701
@701:
	.incbin "baserom.dol", 0xD7B88, 0xC
.global dolfmttbl2
dolfmttbl2:
	.incbin "baserom.dol", 0xD7B94, 0x50
.global dolfmttbl
dolfmttbl:
	.incbin "baserom.dol", 0xD7BE4, 0x20
.global @711
@711:
	.incbin "baserom.dol", 0xD7C04, 0xC
.global @712
@712:
	.incbin "baserom.dol", 0xD7C10, 0x14
.global @714
@714:
	.incbin "baserom.dol", 0xD7C24, 0x14
.global @715
@715:
	.incbin "baserom.dol", 0xD7C38, 0x10
.global @716
@716:
	.incbin "baserom.dol", 0xD7C48, 0xC
.global @718
@718:
	.incbin "baserom.dol", 0xD7C54, 0xC
.global @719
@719:
	.incbin "baserom.dol", 0xD7C60, 0x10
.global @720
@720:
	.incbin "baserom.dol", 0xD7C70, 0x18
.global @722
@722:
	.incbin "baserom.dol", 0xD7C88, 0x18
.global @723
@723:
	.incbin "baserom.dol", 0xD7CA0, 0x10
.global @724
@724:
	.incbin "baserom.dol", 0xD7CB0, 0x10
.global @725
@725:
	.incbin "baserom.dol", 0xD7CC0, 0x10
.global @726
@726:
	.incbin "baserom.dol", 0xD7CD0, 0x10
.global @727
@727:
	.incbin "baserom.dol", 0xD7CE0, 0x14
.global @728
@728:
	.incbin "baserom.dol", 0xD7CF4, 0x10
.global @729
@729:
	.incbin "baserom.dol", 0xD7D04, 0xC
.global @730
@730:
	.incbin "baserom.dol", 0xD7D10, 0xC
.global @731
@731:
	.incbin "baserom.dol", 0xD7D1C, 0xC
.global @732
@732:
	.incbin "baserom.dol", 0xD7D28, 0x10
.global @735
@735:
	.incbin "baserom.dol", 0xD7D38, 0x10
.global @736
@736:
	.incbin "baserom.dol", 0xD7D48, 0x10
.global @737
@737:
	.incbin "baserom.dol", 0xD7D58, 0x10
.global @738
@738:
	.incbin "baserom.dol", 0xD7D68, 0xC
.global @739
@739:
	.incbin "baserom.dol", 0xD7D74, 0x10
.global @740
@740:
	.incbin "baserom.dol", 0xD7D84, 0x10
.global @741
@741:
	.incbin "baserom.dol", 0xD7D94, 0x10
.global @742
@742:
	.incbin "baserom.dol", 0xD7DA4, 0xC
.global @743
@743:
	.incbin "baserom.dol", 0xD7DB0, 0xC
.global @744
@744:
	.incbin "baserom.dol", 0xD7DBC, 0x10
.global @745
@745:
	.incbin "baserom.dol", 0xD7DCC, 0x10
.global @746
@746:
	.incbin "baserom.dol", 0xD7DDC, 0xC
.global @747
@747:
	.incbin "baserom.dol", 0xD7DE8, 0xC
.global @749
@749:
	.incbin "baserom.dol", 0xD7DF4, 0x14
.global @750
@750:
	.incbin "baserom.dol", 0xD7E08, 0xC
.global @751
@751:
	.incbin "baserom.dol", 0xD7E14, 0x10
.global @752
@752:
	.incbin "baserom.dol", 0xD7E24, 0xC
.global @753
@753:
	.incbin "baserom.dol", 0xD7E30, 0x14
.global @754
@754:
	.incbin "baserom.dol", 0xD7E44, 0xC
.global @755
@755:
	.incbin "baserom.dol", 0xD7E50, 0x10
.global @756
@756:
	.incbin "baserom.dol", 0xD7E60, 0xC
.global @757
@757:
	.incbin "baserom.dol", 0xD7E6C, 0x10
.global @758
@758:
	.incbin "baserom.dol", 0xD7E7C, 0xC
.global @759
@759:
	.incbin "baserom.dol", 0xD7E88, 0xC
.global @760
@760:
	.incbin "baserom.dol", 0xD7E94, 0xC
.global @761
@761:
	.incbin "baserom.dol", 0xD7EA0, 0x10
.global @762
@762:
	.incbin "baserom.dol", 0xD7EB0, 0xC
.global @763
@763:
	.incbin "baserom.dol", 0xD7EBC, 0xC
.global @764
@764:
	.incbin "baserom.dol", 0xD7EC8, 0x14
.global @765
@765:
	.incbin "baserom.dol", 0xD7EDC, 0xC
.global @766
@766:
	.incbin "baserom.dol", 0xD7EE8, 0x10
.global @767
@767:
	.incbin "baserom.dol", 0xD7EF8, 0xC
.global @768
@768:
	.incbin "baserom.dol", 0xD7F04, 0x10
.global @769
@769:
	.incbin "baserom.dol", 0xD7F14, 0xC
.global @770
@770:
	.incbin "baserom.dol", 0xD7F20, 0xC
.global @771
@771:
	.incbin "baserom.dol", 0xD7F2C, 0x10
.global @772
@772:
	.incbin "baserom.dol", 0xD7F3C, 0x10
.global @773
@773:
	.incbin "baserom.dol", 0xD7F4C, 0x10
.global @774
@774:
	.incbin "baserom.dol", 0xD7F5C, 0xC
.global @775
@775:
	.incbin "baserom.dol", 0xD7F68, 0xC
.global @776
@776:
	.incbin "baserom.dol", 0xD7F74, 0x10
.global @777
@777:
	.incbin "baserom.dol", 0xD7F84, 0x10
.global @778
@778:
	.incbin "baserom.dol", 0xD7F94, 0x10
.global @779
@779:
	.incbin "baserom.dol", 0xD7FA4, 0x14
.global @780
@780:
	.incbin "baserom.dol", 0xD7FB8, 0xC
.global @781
@781:
	.incbin "baserom.dol", 0xD7FC4, 0x10
.global @782
@782:
	.incbin "baserom.dol", 0xD7FD4, 0xC
.global @783
@783:
	.incbin "baserom.dol", 0xD7FE0, 0x14
.global @784
@784:
	.incbin "baserom.dol", 0xD7FF4, 0xC
.global @785
@785:
	.incbin "baserom.dol", 0xD8000, 0xC
.global @951
@951:
	.incbin "baserom.dol", 0xD800C, 0x1C
.global @952
@952:
	.incbin "baserom.dol", 0xD8028, 0x10
.global @953
@953:
	.incbin "baserom.dol", 0xD8038, 0xC
.global @954
@954:
	.incbin "baserom.dol", 0xD8044, 0xC
.global @955
@955:
	.incbin "baserom.dol", 0xD8050, 0xC
.global @956
@956:
	.incbin "baserom.dol", 0xD805C, 0xC
.global @957
@957:
	.incbin "baserom.dol", 0xD8068, 0xC
.global @958
@958:
	.incbin "baserom.dol", 0xD8074, 0xC
.global @959
@959:
	.incbin "baserom.dol", 0xD8080, 0x10
.global @960
@960:
	.incbin "baserom.dol", 0xD8090, 0x10
.global @961
@961:
	.incbin "baserom.dol", 0xD80A0, 0x10
.global @962
@962:
	.incbin "baserom.dol", 0xD80B0, 0x10
.global @963
@963:
	.incbin "baserom.dol", 0xD80C0, 0x10
.global @964
@964:
	.incbin "baserom.dol", 0xD80D0, 0x10
.global @965
@965:
	.incbin "baserom.dol", 0xD80E0, 0x10
.global @966
@966:
	.incbin "baserom.dol", 0xD80F0, 0x18
.global @967
@967:
	.incbin "baserom.dol", 0xD8108, 0x20
.global @968
@968:
	.incbin "baserom.dol", 0xD8128, 0x28
.global @1011
@1011:
	.incbin "baserom.dol", 0xD8150, 0xC
.global @1014
@1014:
	.incbin "baserom.dol", 0xD815C, 0xC
.global @1016
@1016:
	.incbin "baserom.dol", 0xD8168, 0xC
.global @1022
@1022:
	.incbin "baserom.dol", 0xD8174, 0x10
.global @1024
@1024:
	.incbin "baserom.dol", 0xD8184, 0x10
.global @1025
@1025:
	.incbin "baserom.dol", 0xD8194, 0x10
.global @1026
@1026:
	.incbin "baserom.dol", 0xD81A4, 0x10
.global @1027
@1027:
	.incbin "baserom.dol", 0xD81B4, 0xC
.global @1028
@1028:
	.incbin "baserom.dol", 0xD81C0, 0xC
.global @1029
@1029:
	.incbin "baserom.dol", 0xD81CC, 0x10
.global @1030
@1030:
	.incbin "baserom.dol", 0xD81DC, 0x10
.global @1033
@1033:
	.incbin "baserom.dol", 0xD81EC, 0x20
.global @1032
@1032:
	.incbin "baserom.dol", 0xD820C, 0x20
.global @1053
@1053:
	.incbin "baserom.dol", 0xD822C, 0x20
.global @1078
@1078:
	.incbin "baserom.dol", 0xD824C, 0x40
.global @1092
@1092:
	.incbin "baserom.dol", 0xD828C, 0x20
.global @1139
@1139:
	.incbin "baserom.dol", 0xD82AC, 0xC
.global @1140
@1140:
	.incbin "baserom.dol", 0xD82B8, 0x10
.global @1141
@1141:
	.incbin "baserom.dol", 0xD82C8, 0x10
.global @1142
@1142:
	.incbin "baserom.dol", 0xD82D8, 0x10
.global @1143
@1143:
	.incbin "baserom.dol", 0xD82E8, 0x10
.global @1144
@1144:
	.incbin "baserom.dol", 0xD82F8, 0xC
.global @1145
@1145:
	.incbin "baserom.dol", 0xD8304, 0xC
.global @1146
@1146:
	.incbin "baserom.dol", 0xD8310, 0xC
.global @1147
@1147:
	.incbin "baserom.dol", 0xD831C, 0xC
.global @1148
@1148:
	.incbin "baserom.dol", 0xD8328, 0xC
.global @1149
@1149:
	.incbin "baserom.dol", 0xD8334, 0x10
.global @1150
@1150:
	.incbin "baserom.dol", 0xD8344, 0xC
.global @1152
@1152:
	.incbin "baserom.dol", 0xD8350, 0xC
.global @1153
@1153:
	.incbin "baserom.dol", 0xD835C, 0x10
.global @1154
@1154:
	.incbin "baserom.dol", 0xD836C, 0xC
.global @1155
@1155:
	.incbin "baserom.dol", 0xD8378, 0x10
.global @1156
@1156:
	.incbin "baserom.dol", 0xD8388, 0xC
.global @1157
@1157:
	.incbin "baserom.dol", 0xD8394, 0xC
.global @1158
@1158:
	.incbin "baserom.dol", 0xD83A0, 0x10
.global @1160
@1160:
	.incbin "baserom.dol", 0xD83B0, 0xC
.global @1161
@1161:
	.incbin "baserom.dol", 0xD83BC, 0xC
.global @1194
@1194:
	.incbin "baserom.dol", 0xD83C8, 0x1C
.global @1195
@1195:
	.incbin "baserom.dol", 0xD83E4, 0x18
.global @1220
@1220:
	.incbin "baserom.dol", 0xD83FC, 0x44
.global @1221
@1221:
	.incbin "baserom.dol", 0xD8440, 0x44
.global @1336
@1336:
	.incbin "baserom.dol", 0xD8484, 0x48
.global @1344
@1344:
	.incbin "baserom.dol", 0xD84CC, 0x20
.global @1343
@1343:
	.incbin "baserom.dol", 0xD84EC, 0x20
.global @1342
@1342:
	.incbin "baserom.dol", 0xD850C, 0x20
.global @1341
@1341:
	.incbin "baserom.dol", 0xD852C, 0x20
.global @1340
@1340:
	.incbin "baserom.dol", 0xD854C, 0x20
.global @1339
@1339:
	.incbin "baserom.dol", 0xD856C, 0x20
.global @1338
@1338:
	.incbin "baserom.dol", 0xD858C, 0x20
.global @1337
@1337:
	.incbin "baserom.dol", 0xD85AC, 0x20
.global @1467
@1467:
	.incbin "baserom.dol", 0xD85CC, 0x48
.global @1475
@1475:
	.incbin "baserom.dol", 0xD8614, 0x20
.global @1474
@1474:
	.incbin "baserom.dol", 0xD8634, 0x20
.global @1473
@1473:
	.incbin "baserom.dol", 0xD8654, 0x20
.global @1472
@1472:
	.incbin "baserom.dol", 0xD8674, 0x20
.global @1471
@1471:
	.incbin "baserom.dol", 0xD8694, 0x20
.global @1470
@1470:
	.incbin "baserom.dol", 0xD86B4, 0x20
.global @1469
@1469:
	.incbin "baserom.dol", 0xD86D4, 0x20
.global @1468
@1468:
	.incbin "baserom.dol", 0xD86F4, 0x2C
.global black_texture$1943
black_texture$1943:
	.incbin "baserom.dol", 0xD8720, 0x20
.global @2029
@2029:
	.incbin "baserom.dol", 0xD8740, 0x1C
.global @2030
@2030:
	.incbin "baserom.dol", 0xD875C, 0x10
.global @2031
@2031:
	.incbin "baserom.dol", 0xD876C, 0x10
.global @2032
@2032:
	.incbin "baserom.dol", 0xD877C, 0xC
.global @2034
@2034:
	.incbin "baserom.dol", 0xD8788, 0x18
.global @2035
@2035:
	.incbin "baserom.dol", 0xD87A0, 0x10
.global @2076
@2076:
	.incbin "baserom.dol", 0xD87B0, 0x28
.global @2077
@2077:
	.incbin "baserom.dol", 0xD87D8, 0x1C
.global @2108
@2108:
	.incbin "baserom.dol", 0xD87F4, 0x24
.global @2204
@2204:
	.incbin "baserom.dol", 0xD8818, 0x24
.global @2526
@2526:
	.incbin "baserom.dol", 0xD883C, 0x10
.global @2778
@2778:
	.incbin "baserom.dol", 0xD884C, 0x40
.global @2787
@2787:
	.incbin "baserom.dol", 0xD888C, 0x20
.global @2786
@2786:
	.incbin "baserom.dol", 0xD88AC, 0x20
.global @2785
@2785:
	.incbin "baserom.dol", 0xD88CC, 0x20
.global @2784
@2784:
	.incbin "baserom.dol", 0xD88EC, 0x20
.global @2783
@2783:
	.incbin "baserom.dol", 0xD890C, 0x20
.global @2782
@2782:
	.incbin "baserom.dol", 0xD892C, 0x20
.global @2781
@2781:
	.incbin "baserom.dol", 0xD894C, 0x20
.global @2780
@2780:
	.incbin "baserom.dol", 0xD896C, 0x20
.global @3220
@3220:
	.incbin "baserom.dol", 0xD898C, 0x1C
.global @3221
@3221:
	.incbin "baserom.dol", 0xD89A8, 0x10
.global @3477
@3477:
	.incbin "baserom.dol", 0xD89B8, 0x4C
.global @3478
@3478:
	.incbin "baserom.dol", 0xD8A04, 0x4C
.global @3479
@3479:
	.incbin "baserom.dol", 0xD8A50, 0x4C
.global @3480
@3480:
	.incbin "baserom.dol", 0xD8A9C, 0x4C
.global @3657
@3657:
	.incbin "baserom.dol", 0xD8AE8, 0x4C
.global @4187
@4187:
	.incbin "baserom.dol", 0xD8B34, 0x3C
.global @4296
@4296:
	.incbin "baserom.dol", 0xD8B70, 0x24
.global @4297
@4297:
	.incbin "baserom.dol", 0xD8B94, 0x1C
.global @4706
@4706:
	.incbin "baserom.dol", 0xD8BB0, 0x48
.global @4830
@4830:
	.incbin "baserom.dol", 0xD8BF8, 0x20
.global @4829
@4829:
	.incbin "baserom.dol", 0xD8C18, 0x20
.global @4828
@4828:
	.incbin "baserom.dol", 0xD8C38, 0x20
.global @4827
@4827:
	.incbin "baserom.dol", 0xD8C58, 0x20
.global @4826
@4826:
	.incbin "baserom.dol", 0xD8C78, 0x20
.global @4825
@4825:
	.incbin "baserom.dol", 0xD8C98, 0x20
.global @4824
@4824:
	.incbin "baserom.dol", 0xD8CB8, 0x20
.global @4823
@4823:
	.incbin "baserom.dol", 0xD8CD8, 0x20
.global @4957
@4957:
	.incbin "baserom.dol", 0xD8CF8, 0x20
.global @4956
@4956:
	.incbin "baserom.dol", 0xD8D18, 0x20
.global @4955
@4955:
	.incbin "baserom.dol", 0xD8D38, 0x20
.global @4954
@4954:
	.incbin "baserom.dol", 0xD8D58, 0x20
.global @4953
@4953:
	.incbin "baserom.dol", 0xD8D78, 0x20
.global @4952
@4952:
	.incbin "baserom.dol", 0xD8D98, 0x20
.global @4951
@4951:
	.incbin "baserom.dol", 0xD8DB8, 0x20
.global @4950
@4950:
	.incbin "baserom.dol", 0xD8DD8, 0x20
.global @5088
@5088:
	.incbin "baserom.dol", 0xD8DF8, 0x20
.global @5087
@5087:
	.incbin "baserom.dol", 0xD8E18, 0x20
.global @5086
@5086:
	.incbin "baserom.dol", 0xD8E38, 0x20
.global @5085
@5085:
	.incbin "baserom.dol", 0xD8E58, 0x20
.global @5084
@5084:
	.incbin "baserom.dol", 0xD8E78, 0x20
.global @5083
@5083:
	.incbin "baserom.dol", 0xD8E98, 0x20
.global @5082
@5082:
	.incbin "baserom.dol", 0xD8EB8, 0x20
.global @5081
@5081:
	.incbin "baserom.dol", 0xD8ED8, 0x20
.global @6026
@6026:
	.incbin "baserom.dol", 0xD8EF8, 0x1C
.global @6245
@6245:
	.incbin "baserom.dol", 0xD8F14, 0x2C
.global @6271
@6271:
	.incbin "baserom.dol", 0xD8F40, 0x24
.global @6915
@6915:
	.incbin "baserom.dol", 0xD8F64, 0x38
.global @7202
@7202:
	.incbin "baserom.dol", 0xD8F9C, 0x14
.global @7205
@7205:
	.incbin "baserom.dol", 0xD8FB0, 0x24
.global @7206
@7206:
	.incbin "baserom.dol", 0xD8FD4, 0x18
.global @7207
@7207:
	.incbin "baserom.dol", 0xD8FEC, 0x18
.global @7208
@7208:
	.incbin "baserom.dol", 0xD9004, 0x3C
.global @7570
@7570:
	.incbin "baserom.dol", 0xD9040, 0x28
.global @7801
@7801:
	.incbin "baserom.dol", 0xD9068, 0x28
.global @7821
@7821:
	.incbin "baserom.dol", 0xD9090, 0xC
.global @7822
@7822:
	.incbin "baserom.dol", 0xD909C, 0xC
.global @7823
@7823:
	.incbin "baserom.dol", 0xD90A8, 0xC
.global @7824
@7824:
	.incbin "baserom.dol", 0xD90B4, 0xC
.global @7825
@7825:
	.incbin "baserom.dol", 0xD90C0, 0xC
.global @7826
@7826:
	.incbin "baserom.dol", 0xD90CC, 0xC
.global @7827
@7827:
	.incbin "baserom.dol", 0xD90D8, 0xC
.global @7828
@7828:
	.incbin "baserom.dol", 0xD90E4, 0xC
.global @7829
@7829:
	.incbin "baserom.dol", 0xD90F0, 0xC
.global @7830
@7830:
	.incbin "baserom.dol", 0xD90FC, 0xC
.global @7831
@7831:
	.incbin "baserom.dol", 0xD9108, 0xC
.global @7832
@7832:
	.incbin "baserom.dol", 0xD9114, 0xC
.global @7833
@7833:
	.incbin "baserom.dol", 0xD9120, 0xC
.global @7834
@7834:
	.incbin "baserom.dol", 0xD912C, 0xC
.global @7835
@7835:
	.incbin "baserom.dol", 0xD9138, 0xC
.global @7836
@7836:
	.incbin "baserom.dol", 0xD9144, 0xC
.global @7837
@7837:
	.incbin "baserom.dol", 0xD9150, 0xC
.global @7838
@7838:
	.incbin "baserom.dol", 0xD915C, 0xC
.global @7839
@7839:
	.incbin "baserom.dol", 0xD9168, 0xC
.global @7840
@7840:
	.incbin "baserom.dol", 0xD9174, 0xC
.global @7841
@7841:
	.incbin "baserom.dol", 0xD9180, 0xC
.global @7842
@7842:
	.incbin "baserom.dol", 0xD918C, 0xC
.global @7843
@7843:
	.incbin "baserom.dol", 0xD9198, 0xC
.global @7844
@7844:
	.incbin "baserom.dol", 0xD91A4, 0xC
.global @7845
@7845:
	.incbin "baserom.dol", 0xD91B0, 0xC
.global @7846
@7846:
	.incbin "baserom.dol", 0xD91BC, 0xC
.global @7847
@7847:
	.incbin "baserom.dol", 0xD91C8, 0xC
.global @7848
@7848:
	.incbin "baserom.dol", 0xD91D4, 0xC
.global @7849
@7849:
	.incbin "baserom.dol", 0xD91E0, 0xC
.global @7850
@7850:
	.incbin "baserom.dol", 0xD91EC, 0xC
.global @7851
@7851:
	.incbin "baserom.dol", 0xD91F8, 0xC
.global @7852
@7852:
	.incbin "baserom.dol", 0xD9204, 0xC
.global @7853
@7853:
	.incbin "baserom.dol", 0xD9210, 0xC
.global @7854
@7854:
	.incbin "baserom.dol", 0xD921C, 0xC
.global @7855
@7855:
	.incbin "baserom.dol", 0xD9228, 0xC
.global @7856
@7856:
	.incbin "baserom.dol", 0xD9234, 0xC
.global @7857
@7857:
	.incbin "baserom.dol", 0xD9240, 0xC
.global @7858
@7858:
	.incbin "baserom.dol", 0xD924C, 0xC
.global @7859
@7859:
	.incbin "baserom.dol", 0xD9258, 0xC
.global @7860
@7860:
	.incbin "baserom.dol", 0xD9264, 0xC
.global @7861
@7861:
	.incbin "baserom.dol", 0xD9270, 0xC
.global @7862
@7862:
	.incbin "baserom.dol", 0xD927C, 0xC
.global @7863
@7863:
	.incbin "baserom.dol", 0xD9288, 0xC
.global @7864
@7864:
	.incbin "baserom.dol", 0xD9294, 0xC
.global @7865
@7865:
	.incbin "baserom.dol", 0xD92A0, 0xC
.global @7866
@7866:
	.incbin "baserom.dol", 0xD92AC, 0xC
.global @7867
@7867:
	.incbin "baserom.dol", 0xD92B8, 0xC
.global @7868
@7868:
	.incbin "baserom.dol", 0xD92C4, 0xC
.global @7869
@7869:
	.incbin "baserom.dol", 0xD92D0, 0xC
.global @7870
@7870:
	.incbin "baserom.dol", 0xD92DC, 0xC
.global @7871
@7871:
	.incbin "baserom.dol", 0xD92E8, 0xC
.global @7872
@7872:
	.incbin "baserom.dol", 0xD92F4, 0xC
.global @7873
@7873:
	.incbin "baserom.dol", 0xD9300, 0xC
.global @7874
@7874:
	.incbin "baserom.dol", 0xD930C, 0xC
.global @7875
@7875:
	.incbin "baserom.dol", 0xD9318, 0xC
.global @7876
@7876:
	.incbin "baserom.dol", 0xD9324, 0xC
.global @7877
@7877:
	.incbin "baserom.dol", 0xD9330, 0xC
.global @7878
@7878:
	.incbin "baserom.dol", 0xD933C, 0xC
.global @7879
@7879:
	.incbin "baserom.dol", 0xD9348, 0xC
.global @7880
@7880:
	.incbin "baserom.dol", 0xD9354, 0xC
.global @7881
@7881:
	.incbin "baserom.dol", 0xD9360, 0xC
.global @7882
@7882:
	.incbin "baserom.dol", 0xD936C, 0xC
.global @7883
@7883:
	.incbin "baserom.dol", 0xD9378, 0xC
.global @7884
@7884:
	.incbin "baserom.dol", 0xD9384, 0xC
.global dl_func_tbl
dl_func_tbl:
	.incbin "baserom.dol", 0xD9390, 0x300
.global @8028
@8028:
	.incbin "baserom.dol", 0xD9690, 0x30
.global @8029
@8029:
	.incbin "baserom.dol", 0xD96C0, 0x18
.global @379
@379:
	.incbin "baserom.dol", 0xD96D8, 0x20
.global @389
@389:
	.incbin "baserom.dol", 0xD96F8, 0x18
.global @407
@407:
	.incbin "baserom.dol", 0xD9710, 0x28
.global @280
@280:
	.incbin "baserom.dol", 0xD9738, 0x38
.global @347
@347:
	.incbin "baserom.dol", 0xD9770, 0x30
.global @348
@348:
	.incbin "baserom.dol", 0xD97A0, 0x28
.global @373
@373:
	.incbin "baserom.dol", 0xD97C8, 0x28
.global @386
@386:
	.incbin "baserom.dol", 0xD97F0, 0x20
.global gfxprint_moji_tlut
gfxprint_moji_tlut:
	.incbin "baserom.dol", 0xD9810, 0x80
.global gfxprint_font
gfxprint_font:
	.incbin "baserom.dol", 0xD9890, 0x800
.global @318
@318:
	.incbin "baserom.dol", 0xDA090, 0x38
.global @319
@319:
	.incbin "baserom.dol", 0xDA0C8, 0x10
.global @391
@391:
	.incbin "baserom.dol", 0xDA0D8, 0x4C
.global @603
@603:
	.incbin "baserom.dol", 0xDA124, 0x24
.global @604
@604:
	.incbin "baserom.dol", 0xDA148, 0x24
.global @605
@605:
	.incbin "baserom.dol", 0xDA16C, 0x44
.global @646
@646:
	.incbin "baserom.dol", 0xDA1B0, 0x30
.global @647
@647:
	.incbin "baserom.dol", 0xDA1E0, 0x30
.global @786
@786:
	.incbin "baserom.dol", 0xDA210, 0x1C
.global @787
@787:
	.incbin "baserom.dol", 0xDA22C, 0x44
.global @790
@790:
	.incbin "baserom.dol", 0xDA270, 0x14
.global @791
@791:
	.incbin "baserom.dol", 0xDA284, 0xC
.global @792
@792:
	.incbin "baserom.dol", 0xDA290, 0x18
.global @794
@794:
	.incbin "baserom.dol", 0xDA2A8, 0x14
.global @795
@795:
	.incbin "baserom.dol", 0xDA2BC, 0x28
.global @796
@796:
	.incbin "baserom.dol", 0xDA2E4, 0x28
.global @797
@797:
	.incbin "baserom.dol", 0xDA30C, 0x28
.global @812
@812:
	.incbin "baserom.dol", 0xDA334, 0x2C
.global sintable
sintable:
	.incbin "baserom.dol", 0xDA360, 0x800
.global ldigs
ldigs:
	.incbin "baserom.dol", 0xDAB60, 0x14
.global udigs
udigs:
	.incbin "baserom.dol", 0xDAB74, 0x14
.global spaces
spaces:
	.incbin "baserom.dol", 0xDAB88, 0x24
.global zeroes
zeroes:
	.incbin "baserom.dol", 0xDABAC, 0x24
.global @282
@282:
	.incbin "baserom.dol", 0xDABD0, 0x150
.global @284
@284:
	.incbin "baserom.dol", 0xDAD20, 0x18
.global @285
@285:
	.incbin "baserom.dol", 0xDAD38, 0x40
.global @286
@286:
	.incbin "baserom.dol", 0xDAD78, 0x28
.global e_mtx
e_mtx:
	.incbin "baserom.dol", 0xDADA0, 0x40
.global clear_z_TX
clear_z_TX:
	.incbin "baserom.dol", 0xDADE0, 0x40
.global @2793
@2793:
	.incbin "baserom.dol", 0xDAE20, 0x1C
.global @2794
@2794:
	.incbin "baserom.dol", 0xDAE3C, 0x20
.global @2795
@2795:
	.incbin "baserom.dol", 0xDAE5C, 0x28
.global @2796
@2796:
	.incbin "baserom.dol", 0xDAE84, 0x28
.global @2797
@2797:
	.incbin "baserom.dol", 0xDAEAC, 0x30
.global @2798
@2798:
	.incbin "baserom.dol", 0xDAEDC, 0x1C
.global @2799
@2799:
	.incbin "baserom.dol", 0xDAEF8, 0xC
.global __vt__10JFWDisplay
__vt__10JFWDisplay:
	.incbin "baserom.dol", 0xDAF04, 0x1C
.global @663
@663:
	.incbin "baserom.dol", 0xDAF20, 0xC
.global @809
@809:
	.incbin "baserom.dol", 0xDAF2C, 0xC
.global @808
@808:
	.incbin "baserom.dol", 0xDAF38, 0xC
.global __vt__7JKRHeap
__vt__7JKRHeap:
	.incbin "baserom.dol", 0xDAF44, 0x54
.global @544
@544:
	.incbin "baserom.dol", 0xDAF98, 0x28
.global @897
@897:
	.incbin "baserom.dol", 0xDAFC0, 0x2C
.global @898
@898:
	.incbin "baserom.dol", 0xDAFEC, 0x30
.global @899
@899:
	.incbin "baserom.dol", 0xDB01C, 0x2C
.global @900
@900:
	.incbin "baserom.dol", 0xDB048, 0x2C
.global @901
@901:
	.incbin "baserom.dol", 0xDB074, 0x28
.global @902
@902:
	.incbin "baserom.dol", 0xDB09C, 0x30
.global @903
@903:
	.incbin "baserom.dol", 0xDB0CC, 0x28
.global @915
@915:
	.incbin "baserom.dol", 0xDB0F4, 0x10
.global @916
@916:
	.incbin "baserom.dol", 0xDB104, 0x1C
.global @985
@985:
	.incbin "baserom.dol", 0xDB120, 0x24
.global @986
@986:
	.incbin "baserom.dol", 0xDB144, 0x10
.global @1020
@1020:
	.incbin "baserom.dol", 0xDB154, 0x38
.global @1021
@1021:
	.incbin "baserom.dol", 0xDB18C, 0x10
.global @1023
@1023:
	.incbin "baserom.dol", 0xDB19C, 0x3C
.global @1024
@1024:
	.incbin "baserom.dol", 0xDB1D8, 0x28
.global @1027
@1027:
	.incbin "baserom.dol", 0xDB200, 0x10
.global @1029
@1029:
	.incbin "baserom.dol", 0xDB210, 0x2C
.global @1106
@1106:
	.incbin "baserom.dol", 0xDB23C, 0x1C
.global @1107
@1107:
	.incbin "baserom.dol", 0xDB258, 0x30
.global @1108
@1108:
	.incbin "baserom.dol", 0xDB288, 0x14
.global @1109
@1109:
	.incbin "baserom.dol", 0xDB29C, 0xC
.global @1110
@1110:
	.incbin "baserom.dol", 0xDB2A8, 0x1C
.global @1111
@1111:
	.incbin "baserom.dol", 0xDB2C4, 0x14
.global @1112
@1112:
	.incbin "baserom.dol", 0xDB2D8, 0x14
.global @1113
@1113:
	.incbin "baserom.dol", 0xDB2EC, 0x14
.global @1114
@1114:
	.incbin "baserom.dol", 0xDB300, 0x18
.global @1186
@1186:
	.incbin "baserom.dol", 0xDB318, 0xC
.global @1188
@1188:
	.incbin "baserom.dol", 0xDB324, 0xC
.global @1190
@1190:
	.incbin "baserom.dol", 0xDB330, 0xC
.global @1187
@1187:
	.incbin "baserom.dol", 0xDB33C, 0x14
.global __vt__10JKRExpHeap
__vt__10JKRExpHeap:
	.incbin "baserom.dol", 0xDB350, 0x58
.global @265
@265:
	.incbin "baserom.dol", 0xDB3A8, 0xC
.global __vt__11JKRDisposer
__vt__11JKRDisposer:
	.incbin "baserom.dol", 0xDB3B4, 0xC
.global @370
@370:
	.incbin "baserom.dol", 0xDB3C0, 0xC
.global @371
@371:
	.incbin "baserom.dol", 0xDB3CC, 0xC
.global @372
@372:
	.incbin "baserom.dol", 0xDB3D8, 0xC
.global __vt__9JKRThread
__vt__9JKRThread:
	.incbin "baserom.dol", 0xDB3E4, 0x14
.global sMessageBuffer__7JKRAram
sMessageBuffer__7JKRAram:
	.incbin "baserom.dol", 0xDB3F8, 0x10
.global sMessageQueue__7JKRAram
sMessageQueue__7JKRAram:
	.incbin "baserom.dol", 0xDB408, 0x20
.global @332
@332:
	.incbin "baserom.dol", 0xDB428, 0xC
.global @333
@333:
	.incbin "baserom.dol", 0xDB434, 0x20
.global @634
@634:
	.incbin "baserom.dol", 0xDB454, 0x20
.global @927
@927:
	.incbin "baserom.dol", 0xDB474, 0xC
.global @928
@928:
	.incbin "baserom.dol", 0xDB480, 0xC
.global @929
@929:
	.incbin "baserom.dol", 0xDB48C, 0xC
.global @926
@926:
	.incbin "baserom.dol", 0xDB498, 0x14
.global __vt__7JKRAram
__vt__7JKRAram:
	.incbin "baserom.dol", 0xDB4AC, 0x14
.global @730
@730:
	.incbin "baserom.dol", 0xDB4C0, 0xC
.global @732
@732:
	.incbin "baserom.dol", 0xDB4CC, 0xC
.global @731
@731:
	.incbin "baserom.dol", 0xDB4D8, 0xC
.global __vt__11JKRAramHeap
__vt__11JKRAramHeap:
	.incbin "baserom.dol", 0xDB4E4, 0xC
.global @320
@320:
	.incbin "baserom.dol", 0xDB4F0, 0x10
.global __vt__12JKRAramBlock
__vt__12JKRAramBlock:
	.incbin "baserom.dol", 0xDB500, 0x10
.global @308
@308:
	.incbin "baserom.dol", 0xDB510, 0x10
.global @309
@309:
	.incbin "baserom.dol", 0xDB520, 0x10
.global @310
@310:
	.incbin "baserom.dol", 0xDB530, 0x14
.global @311
@311:
	.incbin "baserom.dol", 0xDB544, 0x10
.global @312
@312:
	.incbin "baserom.dol", 0xDB554, 0x14
.global sMessageBuffer__13JKRAramStream
sMessageBuffer__13JKRAramStream:
	.incbin "baserom.dol", 0xDB568, 0x10
.global sMessageQueue__13JKRAramStream
sMessageQueue__13JKRAramStream:
	.incbin "baserom.dol", 0xDB578, 0x20
.global @331
@331:
	.incbin "baserom.dol", 0xDB598, 0x14
.global @392
@392:
	.incbin "baserom.dol", 0xDB5AC, 0x10
.global @394
@394:
	.incbin "baserom.dol", 0xDB5BC, 0xC
.global @395
@395:
	.incbin "baserom.dol", 0xDB5C8, 0xC
.global @396
@396:
	.incbin "baserom.dol", 0xDB5D4, 0xC
.global @393
@393:
	.incbin "baserom.dol", 0xDB5E0, 0x14
.global __vt__13JKRAramStream
__vt__13JKRAramStream:
	.incbin "baserom.dol", 0xDB5F4, 0x14
.global @2434
@2434:
	.incbin "baserom.dol", 0xDB608, 0x10
.global @2436
@2436:
	.incbin "baserom.dol", 0xDB618, 0xC
.global @2435
@2435:
	.incbin "baserom.dol", 0xDB624, 0xC
.global __vt__13JKRFileLoader
__vt__13JKRFileLoader:
	.incbin "baserom.dol", 0xDB630, 0x40
.global @292
@292:
	.incbin "baserom.dol", 0xDB670, 0x10
.global @293
@293:
	.incbin "baserom.dol", 0xDB680, 0x10
.global @294
@294:
	.incbin "baserom.dol", 0xDB690, 0xC
.global __vt__12JKRArcFinder
__vt__12JKRArcFinder:
	.incbin "baserom.dol", 0xDB69C, 0x14
.global @2510
@2510:
	.incbin "baserom.dol", 0xDB6B0, 0xC
.global @2512
@2512:
	.incbin "baserom.dol", 0xDB6BC, 0xC
.global @2513
@2513:
	.incbin "baserom.dol", 0xDB6C8, 0x10
.global @2514
@2514:
	.incbin "baserom.dol", 0xDB6D8, 0xC
.global @2511
@2511:
	.incbin "baserom.dol", 0xDB6E4, 0x14
.global __vt__10JKRArchive
__vt__10JKRArchive:
	.incbin "baserom.dol", 0xDB6F8, 0x48
.global @2311
@2311:
	.incbin "baserom.dol", 0xDB740, 0x14
.global @2312
@2312:
	.incbin "baserom.dol", 0xDB754, 0x18
.global @2313
@2313:
	.incbin "baserom.dol", 0xDB76C, 0x10
.global @2315
@2315:
	.incbin "baserom.dol", 0xDB77C, 0xC
.global @2316
@2316:
	.incbin "baserom.dol", 0xDB788, 0x10
.global @2317
@2317:
	.incbin "baserom.dol", 0xDB798, 0xC
.global @2318
@2318:
	.incbin "baserom.dol", 0xDB7A4, 0xC
.global @2319
@2319:
	.incbin "baserom.dol", 0xDB7B0, 0x14
.global @2314
@2314:
	.incbin "baserom.dol", 0xDB7C4, 0x1C
.global __vt__13JKRMemArchive
__vt__13JKRMemArchive:
	.incbin "baserom.dol", 0xDB7E0, 0x48
.global @2368
@2368:
	.incbin "baserom.dol", 0xDB828, 0x14
.global @2369
@2369:
	.incbin "baserom.dol", 0xDB83C, 0x18
.global @2389
@2389:
	.incbin "baserom.dol", 0xDB854, 0xC
.global @2388
@2388:
	.incbin "baserom.dol", 0xDB860, 0xC
.global __vt__7JKRFile
__vt__7JKRFile:
	.incbin "baserom.dol", 0xDB86C, 0x20
.global @2390
@2390:
	.incbin "baserom.dol", 0xDB88C, 0x10
.global @2392
@2392:
	.incbin "baserom.dol", 0xDB89C, 0x10
.global @2393
@2393:
	.incbin "baserom.dol", 0xDB8AC, 0xC
.global @2394
@2394:
	.incbin "baserom.dol", 0xDB8B8, 0xC
.global @2395
@2395:
	.incbin "baserom.dol", 0xDB8C4, 0x14
.global @2391
@2391:
	.incbin "baserom.dol", 0xDB8D8, 0x1C
.global __vt__14JKRAramArchive
__vt__14JKRAramArchive:
	.incbin "baserom.dol", 0xDB8F4, 0x44
.global @787
@787:
	.incbin "baserom.dol", 0xDB938, 0x14
.global @788
@788:
	.incbin "baserom.dol", 0xDB94C, 0x28
.global @789
@789:
	.incbin "baserom.dol", 0xDB974, 0x18
.global @816
@816:
	.incbin "baserom.dol", 0xDB98C, 0xC
.global @815
@815:
	.incbin "baserom.dol", 0xDB998, 0x2C
.global @817
@817:
	.incbin "baserom.dol", 0xDB9C4, 0x10
.global @819
@819:
	.incbin "baserom.dol", 0xDB9D4, 0x10
.global @820
@820:
	.incbin "baserom.dol", 0xDB9E4, 0xC
.global @821
@821:
	.incbin "baserom.dol", 0xDB9F0, 0xC
.global @822
@822:
	.incbin "baserom.dol", 0xDB9FC, 0x14
.global @818
@818:
	.incbin "baserom.dol", 0xDBA10, 0x1C
.global __vt__13JKRDvdArchive
__vt__13JKRDvdArchive:
	.incbin "baserom.dol", 0xDBA2C, 0x44
.global @2441
@2441:
	.incbin "baserom.dol", 0xDBA70, 0x14
.global @2442
@2442:
	.incbin "baserom.dol", 0xDBA84, 0x20
.global @2443
@2443:
	.incbin "baserom.dol", 0xDBAA4, 0x1C
.global @2478
@2478:
	.incbin "baserom.dol", 0xDBAC0, 0xC
.global @2477
@2477:
	.incbin "baserom.dol", 0xDBACC, 0x2C
.global @2479
@2479:
	.incbin "baserom.dol", 0xDBAF8, 0x10
.global @2481
@2481:
	.incbin "baserom.dol", 0xDBB08, 0x10
.global @2482
@2482:
	.incbin "baserom.dol", 0xDBB18, 0xC
.global @2483
@2483:
	.incbin "baserom.dol", 0xDBB24, 0xC
.global @2484
@2484:
	.incbin "baserom.dol", 0xDBB30, 0x14
.global @2480
@2480:
	.incbin "baserom.dol", 0xDBB44, 0x1C
.global __vt__14JKRCompArchive
__vt__14JKRCompArchive:
	.incbin "baserom.dol", 0xDBB60, 0x48
.global @652
@652:
	.incbin "baserom.dol", 0xDBBA8, 0x10
.global @653
@653:
	.incbin "baserom.dol", 0xDBBB8, 0x18
.global @748
@748:
	.incbin "baserom.dol", 0xDBBD0, 0xC
.global @750
@750:
	.incbin "baserom.dol", 0xDBBDC, 0xC
.global @752
@752:
	.incbin "baserom.dol", 0xDBBE8, 0xC
.global @749
@749:
	.incbin "baserom.dol", 0xDBBF4, 0x14
.global __vt__10JKRDvdFile
__vt__10JKRDvdFile:
	.incbin "baserom.dol", 0xDBC08, 0x28
.global @393
@393:
	.incbin "baserom.dol", 0xDBC30, 0x14
.global @394
@394:
	.incbin "baserom.dol", 0xDBC44, 0x28
.global @395
@395:
	.incbin "baserom.dol", 0xDBC6C, 0x24
.global sMessageBuffer__9JKRDecomp
sMessageBuffer__9JKRDecomp:
	.incbin "baserom.dol", 0xDBC90, 0x10
.global sMessageQueue__9JKRDecomp
sMessageQueue__9JKRDecomp:
	.incbin "baserom.dol", 0xDBCA0, 0x20
.global @432
@432:
	.incbin "baserom.dol", 0xDBCC0, 0xC
.global @434
@434:
	.incbin "baserom.dol", 0xDBCCC, 0xC
.global @435
@435:
	.incbin "baserom.dol", 0xDBCD8, 0xC
.global @436
@436:
	.incbin "baserom.dol", 0xDBCE4, 0xC
.global @433
@433:
	.incbin "baserom.dol", 0xDBCF0, 0x14
.global __vt__9JKRDecomp
__vt__9JKRDecomp:
	.incbin "baserom.dol", 0xDBD04, 0x14
.global @342
@342:
	.incbin "baserom.dol", 0xDBD18, 0x18
.global @344
@344:
	.incbin "baserom.dol", 0xDBD30, 0xC
.global @345
@345:
	.incbin "baserom.dol", 0xDBD3C, 0x10
.global @346
@346:
	.incbin "baserom.dol", 0xDBD4C, 0xC
.global @343
@343:
	.incbin "baserom.dol", 0xDBD58, 0x14
.global __vt__20JSURandomInputStream
__vt__20JSURandomInputStream:
	.incbin "baserom.dol", 0xDBD6C, 0x24
.global __vt__10JSUIosBase
__vt__10JSUIosBase:
	.incbin "baserom.dol", 0xDBD90, 0xC
.global __vt__14JSUInputStream
__vt__14JSUInputStream:
	.incbin "baserom.dol", 0xDBD9C, 0x1C
.global @337
@337:
	.incbin "baserom.dol", 0xDBDB8, 0xC
.global @353
@353:
	.incbin "baserom.dol", 0xDBDC4, 0x14
.global @355
@355:
	.incbin "baserom.dol", 0xDBDD8, 0x10
.global @356
@356:
	.incbin "baserom.dol", 0xDBDE8, 0xC
.global @357
@357:
	.incbin "baserom.dol", 0xDBDF4, 0x18
.global @358
@358:
	.incbin "baserom.dol", 0xDBE0C, 0x14
.global @354
@354:
	.incbin "baserom.dol", 0xDBE20, 0x1C
.global __vt__18JSUFileInputStream
__vt__18JSUFileInputStream:
	.incbin "baserom.dol", 0xDBE3C, 0x24
.global @360
@360:
	.incbin "baserom.dol", 0xDBE60, 0x10
.global __vt__12JUTGraphFifo
__vt__12JUTGraphFifo:
	.incbin "baserom.dol", 0xDBE70, 0x10
.global __vt__7JUTFont
__vt__7JUTFont:
	.incbin "baserom.dol", 0xDBE80, 0x48
.global @518
@518:
	.incbin "baserom.dol", 0xDBEC8, 0x20
.global @538
@538:
	.incbin "baserom.dol", 0xDBEE8, 0x14
.global @761
@761:
	.incbin "baserom.dol", 0xDBEFC, 0xC
.global @762
@762:
	.incbin "baserom.dol", 0xDBF08, 0xC
.global __vt__10JUTResFont
__vt__10JUTResFont:
	.incbin "baserom.dol", 0xDBF14, 0x4C
.global channel_mask
channel_mask:
	.incbin "baserom.dol", 0xDBF60, 0x10
.global @1211
@1211:
	.incbin "baserom.dol", 0xDBF70, 0xC
.global @1213
@1213:
	.incbin "baserom.dol", 0xDBF7C, 0xC
.global @1212
@1212:
	.incbin "baserom.dol", 0xDBF88, 0xC
.global __vt__10JUTGamePad
__vt__10JUTGamePad:
	.incbin "baserom.dol", 0xDBF94, 0xC
.global sMessageQueue__12JUTException
sMessageQueue__12JUTException:
	.incbin "baserom.dol", 0xDBFA0, 0x20
.global c3bcnt
c3bcnt:
	.incbin "baserom.dol", 0xDBFC0, 0x20
.global @2095
@2095:
	.incbin "baserom.dol", 0xDBFE0, 0x10
.global @2096
@2096:
	.incbin "baserom.dol", 0xDBFF0, 0x10
.global @2099
@2099:
	.incbin "baserom.dol", 0xDC000, 0x14
.global @2100
@2100:
	.incbin "baserom.dol", 0xDC014, 0xC
.global @2102
@2102:
	.incbin "baserom.dol", 0xDC020, 0x10
.global @2103
@2103:
	.incbin "baserom.dol", 0xDC030, 0xC
.global @2104
@2104:
	.incbin "baserom.dol", 0xDC03C, 0xC
.global @2106
@2106:
	.incbin "baserom.dol", 0xDC048, 0x14
.global @2107
@2107:
	.incbin "baserom.dol", 0xDC05C, 0xC
.global @2108
@2108:
	.incbin "baserom.dol", 0xDC068, 0x14
.global @2109
@2109:
	.incbin "baserom.dol", 0xDC07C, 0x14
.global @2110
@2110:
	.incbin "baserom.dol", 0xDC090, 0xC
.global sCpuExpName__12JUTException
sCpuExpName__12JUTException:
	.incbin "baserom.dol", 0xDC09C, 0x40
.global @2185
@2185:
	.incbin "baserom.dol", 0xDC0DC, 0x14
.global @2186
@2186:
	.incbin "baserom.dol", 0xDC0F0, 0x10
.global @2187
@2187:
	.incbin "baserom.dol", 0xDC100, 0x10
.global @2189
@2189:
	.incbin "baserom.dol", 0xDC110, 0x14
.global @2190
@2190:
	.incbin "baserom.dol", 0xDC124, 0xC
.global @2204
@2204:
	.incbin "baserom.dol", 0xDC130, 0x28
.global @2278
@2278:
	.incbin "baserom.dol", 0xDC158, 0x28
.global @2279
@2279:
	.incbin "baserom.dol", 0xDC180, 0x20
.global @2280
@2280:
	.incbin "baserom.dol", 0xDC1A0, 0x14
.global @2281
@2281:
	.incbin "baserom.dol", 0xDC1B4, 0x18
.global @2289
@2289:
	.incbin "baserom.dol", 0xDC1CC, 0x20
.global @2290
@2290:
	.incbin "baserom.dol", 0xDC1EC, 0x1C
.global @2291
@2291:
	.incbin "baserom.dol", 0xDC208, 0x1C
.global @2305
@2305:
	.incbin "baserom.dol", 0xDC224, 0x28
.global @2306
@2306:
	.incbin "baserom.dol", 0xDC24C, 0x28
.global @2307
@2307:
	.incbin "baserom.dol", 0xDC274, 0x1C
.global @2343
@2343:
	.incbin "baserom.dol", 0xDC290, 0x18
.global @2364
@2364:
	.incbin "baserom.dol", 0xDC2A8, 0x2C
.global @2365
@2365:
	.incbin "baserom.dol", 0xDC2D4, 0x10
.global @2366
@2366:
	.incbin "baserom.dol", 0xDC2E4, 0x14
.global @2367
@2367:
	.incbin "baserom.dol", 0xDC2F8, 0x28
.global @2380
@2380:
	.incbin "baserom.dol", 0xDC320, 0x1C
.global @2639
@2639:
	.incbin "baserom.dol", 0xDC33C, 0x38
.global @2640
@2640:
	.incbin "baserom.dol", 0xDC374, 0x24
.global @2864
@2864:
	.incbin "baserom.dol", 0xDC398, 0x20
.global @2904
@2904:
	.incbin "baserom.dol", 0xDC3B8, 0x10
.global @2906
@2906:
	.incbin "baserom.dol", 0xDC3C8, 0xC
.global @2907
@2907:
	.incbin "baserom.dol", 0xDC3D4, 0xC
.global @2908
@2908:
	.incbin "baserom.dol", 0xDC3E0, 0xC
.global @2905
@2905:
	.incbin "baserom.dol", 0xDC3EC, 0x14
.global __vt__12JUTException
__vt__12JUTException:
	.incbin "baserom.dol", 0xDC400, 0x10
.global sAsciiTable__14JUTDirectPrint
sAsciiTable__14JUTDirectPrint:
	.incbin "baserom.dol", 0xDC410, 0x80
.global sFontData__14JUTDirectPrint
sFontData__14JUTDirectPrint:
	.incbin "baserom.dol", 0xDC490, 0x100
.global sFontData2__14JUTDirectPrint
sFontData2__14JUTDirectPrint:
	.incbin "baserom.dol", 0xDC590, 0x138
.global @2278
@2278:
	.incbin "baserom.dol", 0xDC6C8, 0xC
.global __vt__8JUTVideo
__vt__8JUTVideo:
	.incbin "baserom.dol", 0xDC6D4, 0xC
.global @2190
@2190:
	.incbin "baserom.dol", 0xDC6E0, 0xC
.global __vt__8JUTFader
__vt__8JUTFader:
	.incbin "baserom.dol", 0xDC6EC, 0x1C
.global @2540
@2540:
	.incbin "baserom.dol", 0xDC708, 0xC
.global @3028
@3028:
	.incbin "baserom.dol", 0xDC714, 0xC
.global __vt__10JUTConsole
__vt__10JUTConsole:
	.incbin "baserom.dol", 0xDC720, 0x10
.global @873
@873:
	.incbin "baserom.dol", 0xDC730, 0x10
.global __vt__14J2DGrafContext
__vt__14J2DGrafContext:
	.incbin "baserom.dol", 0xDC740, 0x28
.global @666
@666:
	.incbin "baserom.dol", 0xDC768, 0x10
.global @668
@668:
	.incbin "baserom.dol", 0xDC778, 0x10
.global @667
@667:
	.incbin "baserom.dol", 0xDC788, 0xC
.global __vt__13J2DOrthoGraph
__vt__13J2DOrthoGraph:
	.incbin "baserom.dol", 0xDC794, 0x2C
.global @84
@84:
	.incbin "baserom.dol", 0xDC7C0, 0x20
.global @85
@85:
	.incbin "baserom.dol", 0xDC7E0, 0x18
.global @86
@86:
	.incbin "baserom.dol", 0xDC7F8, 0xC
.global @87
@87:
	.incbin "baserom.dol", 0xDC804, 0xC
.global @88
@88:
	.incbin "baserom.dol", 0xDC810, 0x10
.global @89
@89:
	.incbin "baserom.dol", 0xDC820, 0xC
.global @90
@90:
	.incbin "baserom.dol", 0xDC82C, 0x10
.global @91
@91:
	.incbin "baserom.dol", 0xDC83C, 0x10
.global @92
@92:
	.incbin "baserom.dol", 0xDC84C, 0x10
.global @93
@93:
	.incbin "baserom.dol", 0xDC85C, 0x10
.global @94
@94:
	.incbin "baserom.dol", 0xDC86C, 0x14
.global @95
@95:
	.incbin "baserom.dol", 0xDC880, 0x10
.global @96
@96:
	.incbin "baserom.dol", 0xDC890, 0x18
.global __OSExceptionLocations
__OSExceptionLocations:
	.incbin "baserom.dol", 0xDC8A8, 0x3C
.global @130
@130:
	.incbin "baserom.dol", 0xDC8E4, 0x1C
.global @131
@131:
	.incbin "baserom.dol", 0xDC900, 0x30
.global @132
@132:
	.incbin "baserom.dol", 0xDC930, 0x30
.global @133
@133:
	.incbin "baserom.dol", 0xDC960, 0x20
.global DSPInitCode
DSPInitCode:
	.incbin "baserom.dol", 0xDC980, 0x80
.global @69
@69:
	.incbin "baserom.dol", 0xDCA00, 0x2C
.global @90
@90:
	.incbin "baserom.dol", 0xDCA2C, 0x18
.global @91
@91:
	.incbin "baserom.dol", 0xDCA44, 0x1C
.global @92
@92:
	.incbin "baserom.dol", 0xDCA60, 0x30
.global @93
@93:
	.incbin "baserom.dol", 0xDCA90, 0x3C
.global @94
@94:
	.incbin "baserom.dol", 0xDCACC, 0x38
.global @95
@95:
	.incbin "baserom.dol", 0xDCB04, 0x40
.global @96
@96:
	.incbin "baserom.dol", 0xDCB44, 0x2C
.global @97
@97:
	.incbin "baserom.dol", 0xDCB70, 0x20
.global @98
@98:
	.incbin "baserom.dol", 0xDCB90, 0x1C
.global @110
@110:
	.incbin "baserom.dol", 0xDCBAC, 0x1C
.global @111
@111:
	.incbin "baserom.dol", 0xDCBC8, 0x1C
.global @112
@112:
	.incbin "baserom.dol", 0xDCBE4, 0x18
.global @113
@113:
	.incbin "baserom.dol", 0xDCBFC, 0x34
.global @59
@59:
	.incbin "baserom.dol", 0xDCC30, 0x44
.global @60
@60:
	.incbin "baserom.dol", 0xDCC74, 0x30
.global @61
@61:
	.incbin "baserom.dol", 0xDCCA4, 0x30
.global @62
@62:
	.incbin "baserom.dol", 0xDCCD4, 0x30
.global @63
@63:
	.incbin "baserom.dol", 0xDCD04, 0x14
.global @64
@64:
	.incbin "baserom.dol", 0xDCD18, 0x24
.global @65
@65:
	.incbin "baserom.dol", 0xDCD3C, 0x14
.global @66
@66:
	.incbin "baserom.dol", 0xDCD50, 0x1C
.global @67
@67:
	.incbin "baserom.dol", 0xDCD6C, 0x14
.global @68
@68:
	.incbin "baserom.dol", 0xDCD80, 0x20
.global @69
@69:
	.incbin "baserom.dol", 0xDCDA0, 0x28
.global @70
@70:
	.incbin "baserom.dol", 0xDCDC8, 0x1C
.global @74
@74:
	.incbin "baserom.dol", 0xDCDE4, 0x24
.global @10
@10:
	.incbin "baserom.dol", 0xDCE08, 0x18
.global @11
@11:
	.incbin "baserom.dol", 0xDCE20, 0x28
.global @12
@12:
	.incbin "baserom.dol", 0xDCE48, 0x1C
.global @30
@30:
	.incbin "baserom.dol", 0xDCE64, 0x20
.global @31
@31:
	.incbin "baserom.dol", 0xDCE84, 0x18
.global @33
@33:
	.incbin "baserom.dol", 0xDCE9C, 0x34
.global @34
@34:
	.incbin "baserom.dol", 0xDCED0, 0x10
.global @35
@35:
	.incbin "baserom.dol", 0xDCEE0, 0x60
.global @36
@36:
	.incbin "baserom.dol", 0xDCF40, 0x4C
.global @37
@37:
	.incbin "baserom.dol", 0xDCF8C, 0x64
.global @38
@38:
	.incbin "baserom.dol", 0xDCFF0, 0x60
.global @39
@39:
	.incbin "baserom.dol", 0xDD050, 0x20
.global @40
@40:
	.incbin "baserom.dol", 0xDD070, 0x20
.global @41
@41:
	.incbin "baserom.dol", 0xDD090, 0x1C
.global @42
@42:
	.incbin "baserom.dol", 0xDD0AC, 0x38
.global @43
@43:
	.incbin "baserom.dol", 0xDD0E4, 0x44
.global InterruptPrioTable
InterruptPrioTable:
	.incbin "baserom.dol", 0xDD128, 0x30
.global @54
@54:
	.incbin "baserom.dol", 0xDD158, 0x28
.global @153
@153:
	.incbin "baserom.dol", 0xDD180, 0x28
.global ResetFunctionInfo
ResetFunctionInfo:
	.incbin "baserom.dol", 0xDD1A8, 0x10
.global @794
@794:
	.incbin "baserom.dol", 0xDD1B8, 0x60
.global @795
@795:
	.incbin "baserom.dol", 0xDD218, 0xC
.global @797
@797:
	.incbin "baserom.dol", 0xDD224, 0x60
.global @798
@798:
	.incbin "baserom.dol", 0xDD284, 0x48
.global @799
@799:
	.incbin "baserom.dol", 0xDD2CC, 0x80
.global @800
@800:
	.incbin "baserom.dol", 0xDD34C, 0x80
.global @801
@801:
	.incbin "baserom.dol", 0xDD3CC, 0x7C
.global @802
@802:
	.incbin "baserom.dol", 0xDD448, 0x7C
.global @803
@803:
	.incbin "baserom.dol", 0xDD4C4, 0x54
.global @804
@804:
	.incbin "baserom.dol", 0xDD518, 0x74
.global @805
@805:
	.incbin "baserom.dol", 0xDD58C, 0x3C
.global @806
@806:
	.incbin "baserom.dol", 0xDD5C8, 0x4C
.global @807
@807:
	.incbin "baserom.dol", 0xDD614, 0x54
.global @808
@808:
	.incbin "baserom.dol", 0xDD668, 0x54
.global @809
@809:
	.incbin "baserom.dol", 0xDD6BC, 0x5C
.global @810
@810:
	.incbin "baserom.dol", 0xDD718, 0x44
.global @811
@811:
	.incbin "baserom.dol", 0xDD75C, 0x3C
.global @812
@812:
	.incbin "baserom.dol", 0xDD798, 0x3C
.global @813
@813:
	.incbin "baserom.dol", 0xDD7D4, 0x44
.global @814
@814:
	.incbin "baserom.dol", 0xDD818, 0x44
.global @815
@815:
	.incbin "baserom.dol", 0xDD85C, 0x3C
.global @816
@816:
	.incbin "baserom.dol", 0xDD898, 0x40
.global @817
@817:
	.incbin "baserom.dol", 0xDD8D8, 0x68
.global @818
@818:
	.incbin "baserom.dol", 0xDD940, 0x48
.global @819
@819:
	.incbin "baserom.dol", 0xDD988, 0x40
.global YearDays
YearDays:
	.incbin "baserom.dol", 0xDD9C8, 0x30
.global LeapYearDays
LeapYearDays:
	.incbin "baserom.dol", 0xDD9F8, 0x30
.global Si
Si:
	.incbin "baserom.dol", 0xDDA28, 0x14
.global Type
Type:
	.incbin "baserom.dol", 0xDDA3C, 0x10
.global @456
@456:
	.incbin "baserom.dol", 0xDDA4C, 0xC
.global @458
@458:
	.incbin "baserom.dol", 0xDDA58, 0x10
.global @459
@459:
	.incbin "baserom.dol", 0xDDA68, 0x10
.global @460
@460:
	.incbin "baserom.dol", 0xDDA78, 0x10
.global @461
@461:
	.incbin "baserom.dol", 0xDDA88, 0xC
.global @462
@462:
	.incbin "baserom.dol", 0xDDA94, 0x10
.global @463
@463:
	.incbin "baserom.dol", 0xDDAA4, 0x14
.global @464
@464:
	.incbin "baserom.dol", 0xDDAB8, 0x14
.global @465
@465:
	.incbin "baserom.dol", 0xDDACC, 0x14
.global @466
@466:
	.incbin "baserom.dol", 0xDDAE0, 0xC
.global @467
@467:
	.incbin "baserom.dol", 0xDDAEC, 0xC
.global XYNTSC
XYNTSC:
	.incbin "baserom.dol", 0xDDAF8, 0x30
.global XYPAL
XYPAL:
	.incbin "baserom.dol", 0xDDB28, 0x30
.global @16
@16:
	.incbin "baserom.dol", 0xDDB58, 0x38
.global @7
@7:
	.incbin "baserom.dol", 0xDDB90, 0x18
.global @117
@117:
	.incbin "baserom.dol", 0xDDBA8, 0xC8
.global @138
@138:
	.incbin "baserom.dol", 0xDDC70, 0x38
.global @237
@237:
	.incbin "baserom.dol", 0xDDCA8, 0x34
.global @263
@263:
	.incbin "baserom.dol", 0xDDCDC, 0x30
.global @269
@269:
	.incbin "baserom.dol", 0xDDD0C, 0x28
.global @309
@309:
	.incbin "baserom.dol", 0xDDD34, 0x3C
.global @340
@340:
	.incbin "baserom.dol", 0xDDD70, 0x68
.global @341
@341:
	.incbin "baserom.dol", 0xDDDD8, 0x58
.global @342
@342:
	.incbin "baserom.dol", 0xDDE30, 0x5C
.global @373
@373:
	.incbin "baserom.dol", 0xDDE8C, 0x64
.global @374
@374:
	.incbin "baserom.dol", 0xDDEF0, 0x50
.global @375
@375:
	.incbin "baserom.dol", 0xDDF40, 0x58
.global @13
@13:
	.incbin "baserom.dol", 0xDDF98, 0x18
.global @14
@14:
	.incbin "baserom.dol", 0xDDFB0, 0xC
.global @15
@15:
	.incbin "baserom.dol", 0xDDFBC, 0x1C
.global @16
@16:
	.incbin "baserom.dol", 0xDDFD8, 0xC
.global @293
@293:
	.incbin "baserom.dol", 0xDDFE4, 0x20
.global @331
@331:
	.incbin "baserom.dol", 0xDE004, 0x40
.global @835
@835:
	.incbin "baserom.dol", 0xDE044, 0x34
.global @936
@936:
	.incbin "baserom.dol", 0xDE078, 0x38
.global ErrorTable
ErrorTable:
	.incbin "baserom.dol", 0xDE0B0, 0x48
.global @36
@36:
	.incbin "baserom.dol", 0xDE0F8, 0x1C
.global @37
@37:
	.incbin "baserom.dol", 0xDE114, 0x18
.global @38
@38:
	.incbin "baserom.dol", 0xDE12C, 0x14
.global @39
@39:
	.incbin "baserom.dol", 0xDE140, 0x14
.global @42
@42:
	.incbin "baserom.dol", 0xDE154, 0x14
.global timing
timing:
	.incbin "baserom.dol", 0xDE168, 0x130
.global taps
taps:
	.incbin "baserom.dol", 0xDE298, 0x34
.global @92
@92:
	.incbin "baserom.dol", 0xDE2CC, 0x58
.global @336
@336:
	.incbin "baserom.dol", 0xDE324, 0x2C
.global @337
@337:
	.incbin "baserom.dol", 0xDE350, 0x2C
.global @338
@338:
	.incbin "baserom.dol", 0xDE37C, 0x2C
.global @339
@339:
	.incbin "baserom.dol", 0xDE3A8, 0x2C
.global @340
@340:
	.incbin "baserom.dol", 0xDE3D4, 0x2C
.global @341
@341:
	.incbin "baserom.dol", 0xDE400, 0x30
.global ResetFunctionInfo
ResetFunctionInfo:
	.incbin "baserom.dol", 0xDE430, 0x10
.global ResetFunctionInfo
ResetFunctionInfo:
	.incbin "baserom.dol", 0xDE440, 0x10
.global SectorSizeTable
SectorSizeTable:
	.incbin "baserom.dol", 0xDE450, 0x20
.global LatencyTable
LatencyTable:
	.incbin "baserom.dol", 0xDE470, 0x20
.global @140
@140:
	.incbin "baserom.dol", 0xDE490, 0x68
.global @314
@314:
	.incbin "baserom.dol", 0xDE4F8, 0x44
.global @511
@511:
	.incbin "baserom.dol", 0xDE53C, 0x1C
.global @510
@510:
	.incbin "baserom.dol", 0xDE558, 0x58
.global GXNtsc480IntDf
GXNtsc480IntDf:
	.incbin "baserom.dol", 0xDE5B0, 0x3C
.global GXNtsc480Int
GXNtsc480Int:
	.incbin "baserom.dol", 0xDE5EC, 0x3C
.global GXMpal480IntDf
GXMpal480IntDf:
	.incbin "baserom.dol", 0xDE628, 0x3C
.global GXPal528IntDf
GXPal528IntDf:
	.incbin "baserom.dol", 0xDE664, 0x3C
.global GXEurgb60Hz480IntDf
GXEurgb60Hz480IntDf:
	.incbin "baserom.dol", 0xDE6A0, 0x40
.global @145
@145:
	.incbin "baserom.dol", 0xDE6E0, 0xF4
.global @180
@180:
	.incbin "baserom.dol", 0xDE7D4, 0x3C
.global c2r$83
c2r$83:
	.incbin "baserom.dol", 0xDE810, 0x28
.global p2f$206
p2f$206:
	.incbin "baserom.dol", 0xDE838, 0x20
.global @254
@254:
	.incbin "baserom.dol", 0xDE858, 0x5C
.global @253
@253:
	.incbin "baserom.dol", 0xDE8B4, 0x94
.global __files
__files:
	.incbin "baserom.dol", 0xDE948, 0x140
.global @904
@904:
	.incbin "baserom.dol", 0xDEA88, 0x128
.global __ctype_map
__ctype_map:
	.incbin "baserom.dol", 0xDEBB0, 0x100
.global __lower_map
__lower_map:
	.incbin "baserom.dol", 0xDECB0, 0x100
.global __upper_map
__upper_map:
	.incbin "baserom.dol", 0xDEDB0, 0x100
.global @1235
@1235:
	.incbin "baserom.dol", 0xDEEB0, 0x84
.global @1293
@1293:
	.incbin "baserom.dol", 0xDEF34, 0x84
.global @1428
@1428:
	.incbin "baserom.dol", 0xDEFB8, 0xE0
.global @1427
@1427:
	.incbin "baserom.dol", 0xDF098, 0x48
.global @425
@425:
	.incbin "baserom.dol", 0xDF0E0, 0x48
.global gTRKDispatchTable
gTRKDispatchTable:
	.incbin "baserom.dol", 0xDF128, 0x88
.global @893
@893:
	.incbin "baserom.dol", 0xDF1B0, 0x1C
.global @989
@989:
	.incbin "baserom.dol", 0xDF1CC, 0x1C
.global gTRKRestoreFlags
gTRKRestoreFlags:
	.incbin "baserom.dol", 0xDF1E8, 0xC
.global gTRKExceptionStatus
gTRKExceptionStatus:
	.incbin "baserom.dol", 0xDF1F4, 0x10
.global gTRKStepStatus
gTRKStepStatus:
	.incbin "baserom.dol", 0xDF204, 0x14
.global TRK_ISR_OFFSETS
TRK_ISR_OFFSETS:
	.incbin "baserom.dol", 0xDF218, 0x40
.global gDBCommTable
gDBCommTable:
	.incbin "baserom.dol", 0xDF258, 0x1C
.global lbl_800E2274
lbl_800E2274:
	.incbin "baserom.dol", 0xDF274, 0xC

.section .data6, "wa"  # 0x80217B80 - 0x80218280
.global lbl_80217B80
lbl_80217B80:
	.incbin "baserom.dol", 0xDF280, 0x8
.global DISK_SUB_GAIN
DISK_SUB_GAIN:
	.incbin "baserom.dol", 0xDF288, 0x8
.global ROM_TOP_C000
ROM_TOP_C000:
	.incbin "baserom.dol", 0xDF290, 0x4
.global ROM_TOP_E000
ROM_TOP_E000:
	.incbin "baserom.dol", 0xDF294, 0x4
.global DISK_FRAME_SAMPLE
DISK_FRAME_SAMPLE:
	.incbin "baserom.dol", 0xDF298, 0x4
.global FRAME_SAMPLE
FRAME_SAMPLE:
	.incbin "baserom.dol", 0xDF29C, 0x4
.global PHASE_SAMPLE
PHASE_SAMPLE:
	.incbin "baserom.dol", 0xDF2A0, 0x4
.global NOISE_MASTER
NOISE_MASTER:
	.incbin "baserom.dol", 0xDF2A4, 0x4
.global NOISE_SHIFT
NOISE_SHIFT:
	.incbin "baserom.dol", 0xDF2A8, 0x4
.global write_pointer
write_pointer:
	.incbin "baserom.dol", 0xDF2AC, 0x4
.global buffer_remain
buffer_remain:
	.incbin "baserom.dol", 0xDF2B0, 0x4
.global _STOP
_STOP:
	.incbin "baserom.dol", 0xDF2B4, 0xC
.global lbl_80217BC0
lbl_80217BC0:
	.incbin "baserom.dol", 0xDF2C0, 0x4
.global SOU_ONGEN_AREA1
SOU_ONGEN_AREA1:
	.incbin "baserom.dol", 0xDF2C4, 0x4
.global SOU_ONGEN_AREA2
SOU_ONGEN_AREA2:
	.incbin "baserom.dol", 0xDF2C8, 0x4
.global sou_md_bgm_boost_pasent
sou_md_bgm_boost_pasent:
	.incbin "baserom.dol", 0xDF2CC, 0x4
.global rhythm_beat_type
rhythm_beat_type:
	.incbin "baserom.dol", 0xDF2D0, 0x8
.global AD2
AD2:
	.incbin "baserom.dol", 0xDF2D8, 0x8
.global tasks$192
tasks$192:
	.incbin "baserom.dol", 0xDF2E0, 0x8
.global JAC_DAC_RATE
JAC_DAC_RATE:
	.incbin "baserom.dol", 0xDF2E8, 0x4
.global JAC_SUBFRAMES
JAC_SUBFRAMES:
	.incbin "baserom.dol", 0xDF2EC, 0x4
.global JAC_FRAMESAMPLES
JAC_FRAMESAMPLES:
	.incbin "baserom.dol", 0xDF2F0, 0x4
.global DAC_SIZE
DAC_SIZE:
	.incbin "baserom.dol", 0xDF2F4, 0x4
.global Env_DataH
Env_DataH:
	.incbin "baserom.dol", 0xDF2F8, 0x4
.global Env_Data_L1
Env_Data_L1:
	.incbin "baserom.dol", 0xDF2FC, 0x4
.global Env_Data_L2
Env_Data_L2:
	.incbin "baserom.dol", 0xDF300, 0x4
.global Env_Data_L3
Env_Data_L3:
	.incbin "baserom.dol", 0xDF304, 0x4
.global NA_DMA_PROC
NA_DMA_PROC:
	.incbin "baserom.dol", 0xDF308, 0x4
.global NA_SYNC_PROC
NA_SYNC_PROC:
	.incbin "baserom.dol", 0xDF30C, 0x4
.global updates_all$167
updates_all$167:
	.incbin "baserom.dol", 0xDF310, 0x8
.global DSP_MIXERLEVEL
DSP_MIXERLEVEL:
	.incbin "baserom.dol", 0xDF318, 0x8
.global MAX_MIXERLEVEL
MAX_MIXERLEVEL:
	.incbin "baserom.dol", 0xDF320, 0x4
.global JAC_SYSTEM_OUTPUT_MODE
JAC_SYSTEM_OUTPUT_MODE:
	.incbin "baserom.dol", 0xDF324, 0x4
.global COMP_BLOCKSAMPLES$178
COMP_BLOCKSAMPLES$178:
	.incbin "baserom.dol", 0xDF328, 0x8
.global COMP_BLOCKBYTES$179
COMP_BLOCKBYTES$179:
	.incbin "baserom.dol", 0xDF330, 0x8
.global v0
v0:
	.incbin "baserom.dol", 0xDF338, 0x4
.global v1
v1:
	.incbin "baserom.dol", 0xDF33C, 0x4
.global ARCALL
ARCALL:
	.incbin "baserom.dol", 0xDF340, 0x4
.global first
first:
	.incbin "baserom.dol", 0xDF344, 0x4
.global osc_table
osc_table:
	.incbin "baserom.dol", 0xDF348, 0x8
.global OSC_REL
OSC_REL:
	.incbin "baserom.dol", 0xDF350, 0x8
.global black_color
black_color:
	.incbin "baserom.dol", 0xDF358, 0x4
.global white_color
white_color:
	.incbin "baserom.dol", 0xDF35C, 0x4
.global @688
@688:
	.incbin "baserom.dol", 0xDF360, 0x8
.global @689
@689:
	.incbin "baserom.dol", 0xDF368, 0x8
.global @690
@690:
	.incbin "baserom.dol", 0xDF370, 0x8
.global @691
@691:
	.incbin "baserom.dol", 0xDF378, 0x4
.global @692
@692:
	.incbin "baserom.dol", 0xDF37C, 0x8
.global @693
@693:
	.incbin "baserom.dol", 0xDF384, 0x4
.global @694
@694:
	.incbin "baserom.dol", 0xDF388, 0x4
.global @695
@695:
	.incbin "baserom.dol", 0xDF38C, 0x4
.global @696
@696:
	.incbin "baserom.dol", 0xDF390, 0x4
.global @697
@697:
	.incbin "baserom.dol", 0xDF394, 0x8
.global @698
@698:
	.incbin "baserom.dol", 0xDF39C, 0x8
.global @699
@699:
	.incbin "baserom.dol", 0xDF3A4, 0x4
.global @700
@700:
	.incbin "baserom.dol", 0xDF3A8, 0x8
.global @702
@702:
	.incbin "baserom.dol", 0xDF3B0, 0x4
.global @703
@703:
	.incbin "baserom.dol", 0xDF3B4, 0x4
.global @704
@704:
	.incbin "baserom.dol", 0xDF3B8, 0x8
.global @705
@705:
	.incbin "baserom.dol", 0xDF3C0, 0x4
.global @706
@706:
	.incbin "baserom.dol", 0xDF3C4, 0x4
.global @707
@707:
	.incbin "baserom.dol", 0xDF3C8, 0x4
.global @708
@708:
	.incbin "baserom.dol", 0xDF3CC, 0x4
.global @709
@709:
	.incbin "baserom.dol", 0xDF3D0, 0x8
.global @710
@710:
	.incbin "baserom.dol", 0xDF3D8, 0x8
.global @713
@713:
	.incbin "baserom.dol", 0xDF3E0, 0x8
.global @717
@717:
	.incbin "baserom.dol", 0xDF3E8, 0x8
.global @721
@721:
	.incbin "baserom.dol", 0xDF3F0, 0x8
.global @748
@748:
	.incbin "baserom.dol", 0xDF3F8, 0x4
.global @827
@827:
	.incbin "baserom.dol", 0xDF3FC, 0x4
.global @864
@864:
	.incbin "baserom.dol", 0xDF400, 0x8
.global @950
@950:
	.incbin "baserom.dol", 0xDF408, 0x8
.global @1012
@1012:
	.incbin "baserom.dol", 0xDF410, 0x8
.global @1013
@1013:
	.incbin "baserom.dol", 0xDF418, 0x8
.global @1015
@1015:
	.incbin "baserom.dol", 0xDF420, 0x8
.global @1017
@1017:
	.incbin "baserom.dol", 0xDF428, 0x8
.global @1018
@1018:
	.incbin "baserom.dol", 0xDF430, 0x8
.global @1019
@1019:
	.incbin "baserom.dol", 0xDF438, 0x4
.global @1020
@1020:
	.incbin "baserom.dol", 0xDF43C, 0x8
.global @1021
@1021:
	.incbin "baserom.dol", 0xDF444, 0x4
.global @1023
@1023:
	.incbin "baserom.dol", 0xDF448, 0x4
.global @1031
@1031:
	.incbin "baserom.dol", 0xDF44C, 0x4
.global @1075
@1075:
	.incbin "baserom.dol", 0xDF450, 0x8
.global @1076
@1076:
	.incbin "baserom.dol", 0xDF458, 0x8
.global @1077
@1077:
	.incbin "baserom.dol", 0xDF460, 0x8
.global @1128
@1128:
	.incbin "baserom.dol", 0xDF468, 0x4
.global @1129
@1129:
	.incbin "baserom.dol", 0xDF46C, 0x4
.global @1135
@1135:
	.incbin "baserom.dol", 0xDF470, 0x8
.global @1136
@1136:
	.incbin "baserom.dol", 0xDF478, 0x8
.global @1137
@1137:
	.incbin "baserom.dol", 0xDF480, 0x8
.global @1138
@1138:
	.incbin "baserom.dol", 0xDF488, 0x8
.global @1159
@1159:
	.incbin "baserom.dol", 0xDF490, 0x8
.global @1162
@1162:
	.incbin "baserom.dol", 0xDF498, 0x8
.global @1193
@1193:
	.incbin "baserom.dol", 0xDF4A0, 0x4
.global @2033
@2033:
	.incbin "baserom.dol", 0xDF4A4, 0x8
.global @2525
@2525:
	.incbin "baserom.dol", 0xDF4AC, 0x8
.global @2779
@2779:
	.incbin "baserom.dol", 0xDF4B4, 0x8
.global @7203
@7203:
	.incbin "baserom.dol", 0xDF4BC, 0x8
.global @7204
@7204:
	.incbin "baserom.dol", 0xDF4C4, 0xC
.global @320
@320:
	.incbin "baserom.dol", 0xDF4D0, 0x4
.global @788
@788:
	.incbin "baserom.dol", 0xDF4D4, 0x8
.global @789
@789:
	.incbin "baserom.dol", 0xDF4DC, 0x8
.global @793
@793:
	.incbin "baserom.dol", 0xDF4E4, 0x4
.global __qrand_idum
__qrand_idum:
	.incbin "baserom.dol", 0xDF4E8, 0x8
.global dtor$258
dtor$258:
	.incbin "baserom.dol", 0xDF4F0, 0x8
.global @105
@105:
	.incbin "baserom.dol", 0xDF4F8, 0x4
.global @106
@106:
	.incbin "baserom.dol", 0xDF4FC, 0x4
.global @218
@218:
	.incbin "baserom.dol", 0xDF500, 0x8
.global @196
@196:
	.incbin "baserom.dol", 0xDF508, 0x8
.global __osFinalrom
__osFinalrom:
	.incbin "baserom.dol", 0xDF510, 0x8
.global __osTimerList
__osTimerList:
	.incbin "baserom.dol", 0xDF518, 0x8
.global maxStdHeaps__Q29JFWSystem11CSetUpParam
maxStdHeaps__Q29JFWSystem11CSetUpParam:
	.incbin "baserom.dol", 0xDF520, 0x4
.global sysHeapSize__Q29JFWSystem11CSetUpParam
sysHeapSize__Q29JFWSystem11CSetUpParam:
	.incbin "baserom.dol", 0xDF524, 0x4
.global fifoBufSize__Q29JFWSystem11CSetUpParam
fifoBufSize__Q29JFWSystem11CSetUpParam:
	.incbin "baserom.dol", 0xDF528, 0x4
.global aramAudioBufSize__Q29JFWSystem11CSetUpParam
aramAudioBufSize__Q29JFWSystem11CSetUpParam:
	.incbin "baserom.dol", 0xDF52C, 0x4
.global aramGraphBufSize__Q29JFWSystem11CSetUpParam
aramGraphBufSize__Q29JFWSystem11CSetUpParam:
	.incbin "baserom.dol", 0xDF530, 0x4
.global streamPriority__Q29JFWSystem11CSetUpParam
streamPriority__Q29JFWSystem11CSetUpParam:
	.incbin "baserom.dol", 0xDF534, 0x4
.global decompPriority__Q29JFWSystem11CSetUpParam
decompPriority__Q29JFWSystem11CSetUpParam:
	.incbin "baserom.dol", 0xDF538, 0x4
.global aPiecePriority__Q29JFWSystem11CSetUpParam
aPiecePriority__Q29JFWSystem11CSetUpParam:
	.incbin "baserom.dol", 0xDF53C, 0x4
.global systemFontRes__Q29JFWSystem11CSetUpParam
systemFontRes__Q29JFWSystem11CSetUpParam:
	.incbin "baserom.dol", 0xDF540, 0x4
.global renderMode__Q29JFWSystem11CSetUpParam
renderMode__Q29JFWSystem11CSetUpParam:
	.incbin "baserom.dol", 0xDF544, 0x4
.global exConsoleBufferSize__Q29JFWSystem11CSetUpParam
exConsoleBufferSize__Q29JFWSystem11CSetUpParam:
	.incbin "baserom.dol", 0xDF548, 0x8
.global __RTTI__10JFWDisplay
__RTTI__10JFWDisplay:
	.incbin "baserom.dol", 0xDF550, 0x8
.global lbl_80217E58
lbl_80217E58:
	.incbin "baserom.dol", 0xDF558, 0x4
.global @664
@664:
	.incbin "baserom.dol", 0xDF55C, 0x8
.global @807
@807:
	.incbin "baserom.dol", 0xDF564, 0x8
.global __RTTI__11JKRDisposer
__RTTI__11JKRDisposer:
	.incbin "baserom.dol", 0xDF56C, 0x8
.global __RTTI__7JKRHeap
__RTTI__7JKRHeap:
	.incbin "baserom.dol", 0xDF574, 0xC
.global @1022
@1022:
	.incbin "baserom.dol", 0xDF580, 0x8
.global @1025
@1025:
	.incbin "baserom.dol", 0xDF588, 0x8
.global @1026
@1026:
	.incbin "baserom.dol", 0xDF590, 0x8
.global @1028
@1028:
	.incbin "baserom.dol", 0xDF598, 0x8
.global __RTTI__11JKRDisposer
__RTTI__11JKRDisposer:
	.incbin "baserom.dol", 0xDF5A0, 0x8
.global @1189
@1189:
	.incbin "baserom.dol", 0xDF5A8, 0x8
.global __RTTI__7JKRHeap
__RTTI__7JKRHeap:
	.incbin "baserom.dol", 0xDF5B0, 0x8
.global __RTTI__10JKRExpHeap
__RTTI__10JKRExpHeap:
	.incbin "baserom.dol", 0xDF5B8, 0x8
.global __RTTI__11JKRDisposer
__RTTI__11JKRDisposer:
	.incbin "baserom.dol", 0xDF5C0, 0x8
.global __RTTI__11JKRDisposer
__RTTI__11JKRDisposer:
	.incbin "baserom.dol", 0xDF5C8, 0x8
.global __RTTI__9JKRThread
__RTTI__9JKRThread:
	.incbin "baserom.dol", 0xDF5D0, 0x8
.global @925
@925:
	.incbin "baserom.dol", 0xDF5D8, 0x8
.global __RTTI__11JKRDisposer
__RTTI__11JKRDisposer:
	.incbin "baserom.dol", 0xDF5E0, 0x8
.global __RTTI__9JKRThread
__RTTI__9JKRThread:
	.incbin "baserom.dol", 0xDF5E8, 0x8
.global __RTTI__7JKRAram
__RTTI__7JKRAram:
	.incbin "baserom.dol", 0xDF5F0, 0x8
.global __RTTI__11JKRDisposer
__RTTI__11JKRDisposer:
	.incbin "baserom.dol", 0xDF5F8, 0x8
.global __RTTI__11JKRAramHeap
__RTTI__11JKRAramHeap:
	.incbin "baserom.dol", 0xDF600, 0x8
.global __RTTI__12JKRAramBlock
__RTTI__12JKRAramBlock:
	.incbin "baserom.dol", 0xDF608, 0x8
.global @313
@313:
	.incbin "baserom.dol", 0xDF610, 0x8
.global @332
@332:
	.incbin "baserom.dol", 0xDF618, 0x8
.global __RTTI__11JKRDisposer
__RTTI__11JKRDisposer:
	.incbin "baserom.dol", 0xDF620, 0x8
.global __RTTI__9JKRThread
__RTTI__9JKRThread:
	.incbin "baserom.dol", 0xDF628, 0x8
.global __RTTI__13JKRAramStream
__RTTI__13JKRAramStream:
	.incbin "baserom.dol", 0xDF630, 0x8
.global rootPath$2412
rootPath$2412:
	.incbin "baserom.dol", 0xDF638, 0x4
.global @2432
@2432:
	.incbin "baserom.dol", 0xDF63C, 0x4
.global __RTTI__11JKRDisposer
__RTTI__11JKRDisposer:
	.incbin "baserom.dol", 0xDF640, 0x8
.global __RTTI__13JKRFileLoader
__RTTI__13JKRFileLoader:
	.incbin "baserom.dol", 0xDF648, 0x8
.global __RTTI__13JKRFileFinder
__RTTI__13JKRFileFinder:
	.incbin "baserom.dol", 0xDF650, 0x8
.global __RTTI__12JKRArcFinder
__RTTI__12JKRArcFinder:
	.incbin "baserom.dol", 0xDF658, 0x8
.global __RTTI__11JKRDisposer
__RTTI__11JKRDisposer:
	.incbin "baserom.dol", 0xDF660, 0x8
.global __RTTI__13JKRFileLoader
__RTTI__13JKRFileLoader:
	.incbin "baserom.dol", 0xDF668, 0x8
.global __RTTI__10JKRArchive
__RTTI__10JKRArchive:
	.incbin "baserom.dol", 0xDF670, 0x8
.global __RTTI__11JKRDisposer
__RTTI__11JKRDisposer:
	.incbin "baserom.dol", 0xDF678, 0x8
.global __RTTI__13JKRFileLoader
__RTTI__13JKRFileLoader:
	.incbin "baserom.dol", 0xDF680, 0x8
.global __RTTI__10JKRArchive
__RTTI__10JKRArchive:
	.incbin "baserom.dol", 0xDF688, 0x8
.global __RTTI__13JKRMemArchive
__RTTI__13JKRMemArchive:
	.incbin "baserom.dol", 0xDF690, 0x8
.global @2387
@2387:
	.incbin "baserom.dol", 0xDF698, 0x8
.global __RTTI__11JKRDisposer
__RTTI__11JKRDisposer:
	.incbin "baserom.dol", 0xDF6A0, 0x8
.global __RTTI__7JKRFile
__RTTI__7JKRFile:
	.incbin "baserom.dol", 0xDF6A8, 0x8
.global __RTTI__13JKRFileLoader
__RTTI__13JKRFileLoader:
	.incbin "baserom.dol", 0xDF6B0, 0x8
.global __RTTI__10JKRArchive
__RTTI__10JKRArchive:
	.incbin "baserom.dol", 0xDF6B8, 0x8
.global __RTTI__14JKRAramArchive
__RTTI__14JKRAramArchive:
	.incbin "baserom.dol", 0xDF6C0, 0x8
.global __RTTI__11JKRDisposer
__RTTI__11JKRDisposer:
	.incbin "baserom.dol", 0xDF6C8, 0x8
.global __RTTI__13JKRFileLoader
__RTTI__13JKRFileLoader:
	.incbin "baserom.dol", 0xDF6D0, 0x8
.global __RTTI__10JKRArchive
__RTTI__10JKRArchive:
	.incbin "baserom.dol", 0xDF6D8, 0x8
.global __RTTI__13JKRDvdArchive
__RTTI__13JKRDvdArchive:
	.incbin "baserom.dol", 0xDF6E0, 0x8
.global __RTTI__11JKRDisposer
__RTTI__11JKRDisposer:
	.incbin "baserom.dol", 0xDF6E8, 0x8
.global __RTTI__13JKRFileLoader
__RTTI__13JKRFileLoader:
	.incbin "baserom.dol", 0xDF6F0, 0x8
.global __RTTI__10JKRArchive
__RTTI__10JKRArchive:
	.incbin "baserom.dol", 0xDF6F8, 0x8
.global __RTTI__14JKRCompArchive
__RTTI__14JKRCompArchive:
	.incbin "baserom.dol", 0xDF700, 0x8
.global __RTTI__11JKRDisposer
__RTTI__11JKRDisposer:
	.incbin "baserom.dol", 0xDF708, 0x8
.global @751
@751:
	.incbin "baserom.dol", 0xDF710, 0x8
.global __RTTI__7JKRFile
__RTTI__7JKRFile:
	.incbin "baserom.dol", 0xDF718, 0x8
.global __RTTI__10JKRDvdFile
__RTTI__10JKRDvdFile:
	.incbin "baserom.dol", 0xDF720, 0x8
.global lbl_80218028
lbl_80218028:
	.incbin "baserom.dol", 0xDF728, 0x8
.global lbl_80218030
lbl_80218030:
	.incbin "baserom.dol", 0xDF730, 0x8
.global __RTTI__11JKRDisposer
__RTTI__11JKRDisposer:
	.incbin "baserom.dol", 0xDF738, 0x8
.global __RTTI__9JKRThread
__RTTI__9JKRThread:
	.incbin "baserom.dol", 0xDF740, 0x8
.global __RTTI__9JKRDecomp
__RTTI__9JKRDecomp:
	.incbin "baserom.dol", 0xDF748, 0x8
.global __RTTI__10JSUIosBase
__RTTI__10JSUIosBase:
	.incbin "baserom.dol", 0xDF750, 0x8
.global __RTTI__14JSUInputStream
__RTTI__14JSUInputStream:
	.incbin "baserom.dol", 0xDF758, 0x8
.global __RTTI__20JSURandomInputStream
__RTTI__20JSURandomInputStream:
	.incbin "baserom.dol", 0xDF760, 0x8
.global __RTTI__10JSUIosBase
__RTTI__10JSUIosBase:
	.incbin "baserom.dol", 0xDF768, 0x8
.global __RTTI__14JSUInputStream
__RTTI__14JSUInputStream:
	.incbin "baserom.dol", 0xDF770, 0x8
.global __RTTI__20JSURandomInputStream
__RTTI__20JSURandomInputStream:
	.incbin "baserom.dol", 0xDF778, 0x8
.global __RTTI__18JSUFileInputStream
__RTTI__18JSUFileInputStream:
	.incbin "baserom.dol", 0xDF780, 0x8
.global __RTTI__12JUTGraphFifo
__RTTI__12JUTGraphFifo:
	.incbin "baserom.dol", 0xDF788, 0x8
.global @351
@351:
	.incbin "baserom.dol", 0xDF790, 0x8
.global __RTTI__7JUTFont
__RTTI__7JUTFont:
	.incbin "baserom.dol", 0xDF798, 0x8
.global @763
@763:
	.incbin "baserom.dol", 0xDF7A0, 0x8
.global __RTTI__7JUTFont
__RTTI__7JUTFont:
	.incbin "baserom.dol", 0xDF7A8, 0x8
.global __RTTI__10JUTResFont
__RTTI__10JUTResFont:
	.incbin "baserom.dol", 0xDF7B0, 0x8
.global mStickMode__10JUTGamePad
mStickMode__10JUTGamePad:
	.incbin "baserom.dol", 0xDF7B8, 0x4
.global sResetPattern__Q210JUTGamePad13C3ButtonReset
sResetPattern__Q210JUTGamePad13C3ButtonReset:
	.incbin "baserom.dol", 0xDF7BC, 0x4
.global __RTTI__11JKRDisposer
__RTTI__11JKRDisposer:
	.incbin "baserom.dol", 0xDF7C0, 0x8
.global __RTTI__10JUTGamePad
__RTTI__10JUTGamePad:
	.incbin "baserom.dol", 0xDF7C8, 0x8
.global sMessageBuffer__12JUTException
sMessageBuffer__12JUTException:
	.incbin "baserom.dol", 0xDF7D0, 0x4
.global @2097
@2097:
	.incbin "baserom.dol", 0xDF7D4, 0x4
.global @2098
@2098:
	.incbin "baserom.dol", 0xDF7D8, 0x4
.global @2101
@2101:
	.incbin "baserom.dol", 0xDF7DC, 0x8
.global @2105
@2105:
	.incbin "baserom.dol", 0xDF7E4, 0x8
.global @2205
@2205:
	.incbin "baserom.dol", 0xDF7EC, 0x4
.global @2206
@2206:
	.incbin "baserom.dol", 0xDF7F0, 0x4
.global @2342
@2342:
	.incbin "baserom.dol", 0xDF7F4, 0x4
.global @2757
@2757:
	.incbin "baserom.dol", 0xDF7F8, 0x8
.global __RTTI__11JKRDisposer
__RTTI__11JKRDisposer:
	.incbin "baserom.dol", 0xDF800, 0x8
.global __RTTI__9JKRThread
__RTTI__9JKRThread:
	.incbin "baserom.dol", 0xDF808, 0x8
.global __RTTI__12JUTException
__RTTI__12JUTException:
	.incbin "baserom.dol", 0xDF810, 0x8
.global @410
@410:
	.incbin "baserom.dol", 0xDF818, 0x8
.global sDisplayTime__Q212JUTAssertion23@unnamed@JUTAssert_cpp@
sDisplayTime__Q212JUTAssertion23@unnamed@JUTAssert_cpp@:
	.incbin "baserom.dol", 0xDF820, 0x4
.global sDevice__Q212JUTAssertion23@unnamed@JUTAssert_cpp@
sDevice__Q212JUTAssertion23@unnamed@JUTAssert_cpp@:
	.incbin "baserom.dol", 0xDF824, 0x4
.global lbl_80218128
lbl_80218128:
	.incbin "baserom.dol", 0xDF828, 0x8
.global __RTTI__8JUTVideo
__RTTI__8JUTVideo:
	.incbin "baserom.dol", 0xDF830, 0x8
.global __RTTI__8JUTFader
__RTTI__8JUTFader:
	.incbin "baserom.dol", 0xDF838, 0x8
.global oneFrameRate
oneFrameRate:
	.incbin "baserom.dol", 0xDF840, 0x4
.global oneFrameRateUser
oneFrameRateUser:
	.incbin "baserom.dol", 0xDF844, 0x4
.global @2541
@2541:
	.incbin "baserom.dol", 0xDF848, 0x4
.global @3002
@3002:
	.incbin "baserom.dol", 0xDF84C, 0x4
.global __RTTI__10JUTConsole
__RTTI__10JUTConsole:
	.incbin "baserom.dol", 0xDF850, 0x8
.global __RTTI__14J2DGrafContext
__RTTI__14J2DGrafContext:
	.incbin "baserom.dol", 0xDF858, 0x8
.global __RTTI__14J2DGrafContext
__RTTI__14J2DGrafContext:
	.incbin "baserom.dol", 0xDF860, 0x8
.global __RTTI__13J2DOrthoGraph
__RTTI__13J2DOrthoGraph:
	.incbin "baserom.dol", 0xDF868, 0x8
.global __OSCurrHeap
__OSCurrHeap:
	.incbin "baserom.dol", 0xDF870, 0x8
.global __OSArenaLo
__OSArenaLo:
	.incbin "baserom.dol", 0xDF878, 0x8
.global @32
@32:
	.incbin "baserom.dol", 0xDF880, 0x8
.global fontEncode$80
fontEncode$80:
	.incbin "baserom.dol", 0xDF888, 0x8
.global @796
@796:
	.incbin "baserom.dol", 0xDF890, 0x8
.global Unit01
Unit01:
	.incbin "baserom.dol", 0xDF898, 0x8
.global FirstRead
FirstRead:
	.incbin "baserom.dol", 0xDF8A0, 0x8
.global @116
@116:
	.incbin "baserom.dol", 0xDF8A8, 0x8
.global autoInvalidation
autoInvalidation:
	.incbin "baserom.dol", 0xDF8B0, 0x8
.global @35
@35:
	.incbin "baserom.dol", 0xDF8B8, 0x4
.global @40
@40:
	.incbin "baserom.dol", 0xDF8BC, 0x4
.global @41
@41:
	.incbin "baserom.dol", 0xDF8C0, 0x8
.global ClampRegion
ClampRegion:
	.incbin "baserom.dol", 0xDF8C8, 0x8
.global ResettingChan
ResettingChan:
	.incbin "baserom.dol", 0xDF8D0, 0x4
.global XPatchBits
XPatchBits:
	.incbin "baserom.dol", 0xDF8D4, 0x4
.global AnalogMode
AnalogMode:
	.incbin "baserom.dol", 0xDF8D8, 0x4
.global Spec
Spec:
	.incbin "baserom.dol", 0xDF8DC, 0x4
.global MakeStatus
MakeStatus:
	.incbin "baserom.dol", 0xDF8E0, 0x4
.global CmdReadOrigin
CmdReadOrigin:
	.incbin "baserom.dol", 0xDF8E4, 0x4
.global CmdCalibrate
CmdCalibrate:
	.incbin "baserom.dol", 0xDF8E8, 0x8
.global __CARDVendorID
__CARDVendorID:
	.incbin "baserom.dol", 0xDF8F0, 0x8
.global gx
gx:
	.incbin "baserom.dol", 0xDF8F8, 0x8
.global tbl1$227
tbl1$227:
	.incbin "baserom.dol", 0xDF900, 0x4
.global tbl2$228
tbl2$228:
	.incbin "baserom.dol", 0xDF904, 0x4
.global tbl3$229
tbl3$229:
	.incbin "baserom.dol", 0xDF908, 0x8
.global GXTexMode0Ids
GXTexMode0Ids:
	.incbin "baserom.dol", 0xDF910, 0x8
.global GXTexMode1Ids
GXTexMode1Ids:
	.incbin "baserom.dol", 0xDF918, 0x8
.global GXTexImage0Ids
GXTexImage0Ids:
	.incbin "baserom.dol", 0xDF920, 0x8
.global GXTexImage1Ids
GXTexImage1Ids:
	.incbin "baserom.dol", 0xDF928, 0x8
.global GXTexImage2Ids
GXTexImage2Ids:
	.incbin "baserom.dol", 0xDF930, 0x8
.global GXTexImage3Ids
GXTexImage3Ids:
	.incbin "baserom.dol", 0xDF938, 0x8
.global GXTexTlutIds
GXTexTlutIds:
	.incbin "baserom.dol", 0xDF940, 0x8
.global GX2HWFiltConv
GX2HWFiltConv:
	.incbin "baserom.dol", 0xDF948, 0x8
.global fragmentID
fragmentID:
	.incbin "baserom.dol", 0xDF950, 0x8
.global @wstringBase0
@wstringBase0:
	.incbin "baserom.dol", 0xDF958, 0x8
.global next
next:
	.incbin "baserom.dol", 0xDF960, 0x8
.global __float_nan
__float_nan:
	.incbin "baserom.dol", 0xDF968, 0x4
.global __float_huge
__float_huge:
	.incbin "baserom.dol", 0xDF96C, 0x4
.global lbl_80218270
lbl_80218270:
	.incbin "baserom.dol", 0xDF970, 0x10

.section .data7, "wa"  # 0x80218BE0 - 0x80219720
.global @191
@191:
	.incbin "baserom.dol", 0xDF980, 0x4
.global @192
@192:
	.incbin "baserom.dol", 0xDF984, 0x4
.global @193
@193:
	.incbin "baserom.dol", 0xDF988, 0x8
.global @195
@195:
	.incbin "baserom.dol", 0xDF990, 0x8
.global @200
@200:
	.incbin "baserom.dol", 0xDF998, 0x4
.global @206
@206:
	.incbin "baserom.dol", 0xDF99C, 0x4
.global @504
@504:
	.incbin "baserom.dol", 0xDF9A0, 0x4
.global @505
@505:
	.incbin "baserom.dol", 0xDF9A4, 0x4
.global @506
@506:
	.incbin "baserom.dol", 0xDF9A8, 0x8
.global @507
@507:
	.incbin "baserom.dol", 0xDF9B0, 0x8
.global @508
@508:
	.incbin "baserom.dol", 0xDF9B8, 0x4
.global @693
@693:
	.incbin "baserom.dol", 0xDF9BC, 0x4
.global @789
@789:
	.incbin "baserom.dol", 0xDF9C0, 0x4
.global @790
@790:
	.incbin "baserom.dol", 0xDF9C4, 0x4
.global @791
@791:
	.incbin "baserom.dol", 0xDF9C8, 0x4
.global @792
@792:
	.incbin "baserom.dol", 0xDF9CC, 0x4
.global @793
@793:
	.incbin "baserom.dol", 0xDF9D0, 0x4
.global @1000
@1000:
	.incbin "baserom.dol", 0xDF9D4, 0x4
.global @1001
@1001:
	.incbin "baserom.dol", 0xDF9D8, 0x4
.global @1316
@1316:
	.incbin "baserom.dol", 0xDF9DC, 0x4
.global @1317
@1317:
	.incbin "baserom.dol", 0xDF9E0, 0x4
.global @1318
@1318:
	.incbin "baserom.dol", 0xDF9E4, 0x4
.global @1319
@1319:
	.incbin "baserom.dol", 0xDF9E8, 0x8
.global @1320
@1320:
	.incbin "baserom.dol", 0xDF9F0, 0x8
.global @1321
@1321:
	.incbin "baserom.dol", 0xDF9F8, 0x8
.global lbl_80218C60
lbl_80218C60:
	.incbin "baserom.dol", 0xDFA00, 0x8
.global lbl_80218C68
lbl_80218C68:
	.incbin "baserom.dol", 0xDFA08, 0x4
.global sou_room_ins_init
sou_room_ins_init:
	.incbin "baserom.dol", 0xDFA0C, 0x8
.global @290
@290:
	.incbin "baserom.dol", 0xDFA14, 0x4
.global @291
@291:
	.incbin "baserom.dol", 0xDFA18, 0x4
.global @292
@292:
	.incbin "baserom.dol", 0xDFA1C, 0x4
.global @345
@345:
	.incbin "baserom.dol", 0xDFA20, 0x4
.global @358
@358:
	.incbin "baserom.dol", 0xDFA24, 0x4
.global @359
@359:
	.incbin "baserom.dol", 0xDFA28, 0x8
.global @361
@361:
	.incbin "baserom.dol", 0xDFA30, 0x8
.global @386
@386:
	.incbin "baserom.dol", 0xDFA38, 0x4
.global @387
@387:
	.incbin "baserom.dol", 0xDFA3C, 0x4
.global @396
@396:
	.incbin "baserom.dol", 0xDFA40, 0x4
.global @397
@397:
	.incbin "baserom.dol", 0xDFA44, 0x4
.global @409
@409:
	.incbin "baserom.dol", 0xDFA48, 0x4
.global @410
@410:
	.incbin "baserom.dol", 0xDFA4C, 0x4
.global @610
@610:
	.incbin "baserom.dol", 0xDFA50, 0x8
.global @885
@885:
	.incbin "baserom.dol", 0xDFA58, 0x8
.global @1034
@1034:
	.incbin "baserom.dol", 0xDFA60, 0x4
.global @1035
@1035:
	.incbin "baserom.dol", 0xDFA64, 0x4
.global @1187
@1187:
	.incbin "baserom.dol", 0xDFA68, 0x4
.global @1205
@1205:
	.incbin "baserom.dol", 0xDFA6C, 0x4
.global @1206
@1206:
	.incbin "baserom.dol", 0xDFA70, 0x4
.global @1207
@1207:
	.incbin "baserom.dol", 0xDFA74, 0x4
.global @1215
@1215:
	.incbin "baserom.dol", 0xDFA78, 0x4
.global @1227
@1227:
	.incbin "baserom.dol", 0xDFA7C, 0x4
.global @1664
@1664:
	.incbin "baserom.dol", 0xDFA80, 0x4
.global @1665
@1665:
	.incbin "baserom.dol", 0xDFA84, 0x4
.global @1666
@1666:
	.incbin "baserom.dol", 0xDFA88, 0x4
.global @1667
@1667:
	.incbin "baserom.dol", 0xDFA8C, 0x4
.global @1668
@1668:
	.incbin "baserom.dol", 0xDFA90, 0x4
.global @1669
@1669:
	.incbin "baserom.dol", 0xDFA94, 0x4
.global @1670
@1670:
	.incbin "baserom.dol", 0xDFA98, 0x4
.global @1671
@1671:
	.incbin "baserom.dol", 0xDFA9C, 0x4
.global @1672
@1672:
	.incbin "baserom.dol", 0xDFAA0, 0x4
.global @1673
@1673:
	.incbin "baserom.dol", 0xDFAA4, 0x4
.global @1674
@1674:
	.incbin "baserom.dol", 0xDFAA8, 0x4
.global @1675
@1675:
	.incbin "baserom.dol", 0xDFAAC, 0x4
.global @1676
@1676:
	.incbin "baserom.dol", 0xDFAB0, 0x4
.global @1677
@1677:
	.incbin "baserom.dol", 0xDFAB4, 0x4
.global @1678
@1678:
	.incbin "baserom.dol", 0xDFAB8, 0x4
.global @1825
@1825:
	.incbin "baserom.dol", 0xDFABC, 0x4
.global @1839
@1839:
	.incbin "baserom.dol", 0xDFAC0, 0x4
.global @1877
@1877:
	.incbin "baserom.dol", 0xDFAC4, 0x4
.global @1966
@1966:
	.incbin "baserom.dol", 0xDFAC8, 0x4
.global @1967
@1967:
	.incbin "baserom.dol", 0xDFACC, 0x4
.global @2017
@2017:
	.incbin "baserom.dol", 0xDFAD0, 0x4
.global @2018
@2018:
	.incbin "baserom.dol", 0xDFAD4, 0x4
.global @2093
@2093:
	.incbin "baserom.dol", 0xDFAD8, 0x4
.global @2094
@2094:
	.incbin "baserom.dol", 0xDFADC, 0x4
.global @2095
@2095:
	.incbin "baserom.dol", 0xDFAE0, 0x4
.global @2096
@2096:
	.incbin "baserom.dol", 0xDFAE4, 0x4
.global @2333
@2333:
	.incbin "baserom.dol", 0xDFAE8, 0x4
.global @2334
@2334:
	.incbin "baserom.dol", 0xDFAEC, 0x4
.global @2335
@2335:
	.incbin "baserom.dol", 0xDFAF0, 0x4
.global @2336
@2336:
	.incbin "baserom.dol", 0xDFAF4, 0x4
.global @184
@184:
	.incbin "baserom.dol", 0xDFAF8, 0x4
.global @238
@238:
	.incbin "baserom.dol", 0xDFAFC, 0x4
.global @274
@274:
	.incbin "baserom.dol", 0xDFB00, 0x4
.global @275
@275:
	.incbin "baserom.dol", 0xDFB04, 0x4
.global @276
@276:
	.incbin "baserom.dol", 0xDFB08, 0x8
.global @278
@278:
	.incbin "baserom.dol", 0xDFB10, 0x8
.global @184
@184:
	.incbin "baserom.dol", 0xDFB18, 0x4
.global @185
@185:
	.incbin "baserom.dol", 0xDFB1C, 0x4
.global @187
@187:
	.incbin "baserom.dol", 0xDFB20, 0x8
.global @178
@178:
	.incbin "baserom.dol", 0xDFB28, 0x8
.global @180
@180:
	.incbin "baserom.dol", 0xDFB30, 0x8
.global @274
@274:
	.incbin "baserom.dol", 0xDFB38, 0x8
.global @432
@432:
	.incbin "baserom.dol", 0xDFB40, 0x8
.global @327
@327:
	.incbin "baserom.dol", 0xDFB48, 0x8
.global @328
@328:
	.incbin "baserom.dol", 0xDFB50, 0x8
.global @194
@194:
	.incbin "baserom.dol", 0xDFB58, 0x8
.global @97
@97:
	.incbin "baserom.dol", 0xDFB60, 0x8
.global @175
@175:
	.incbin "baserom.dol", 0xDFB68, 0x8
.global @928
@928:
	.incbin "baserom.dol", 0xDFB70, 0x4
.global @929
@929:
	.incbin "baserom.dol", 0xDFB74, 0x4
.global @930
@930:
	.incbin "baserom.dol", 0xDFB78, 0x4
.global @931
@931:
	.incbin "baserom.dol", 0xDFB7C, 0x4
.global @933
@933:
	.incbin "baserom.dol", 0xDFB80, 0x8
.global @935
@935:
	.incbin "baserom.dol", 0xDFB88, 0x8
.global @168
@168:
	.incbin "baserom.dol", 0xDFB90, 0x4
.global @194
@194:
	.incbin "baserom.dol", 0xDFB94, 0x4
.global @195
@195:
	.incbin "baserom.dol", 0xDFB98, 0x4
.global @196
@196:
	.incbin "baserom.dol", 0xDFB9C, 0x4
.global @197
@197:
	.incbin "baserom.dol", 0xDFBA0, 0x4
.global @198
@198:
	.incbin "baserom.dol", 0xDFBA4, 0x4
.global @199
@199:
	.incbin "baserom.dol", 0xDFBA8, 0x8
.global @201
@201:
	.incbin "baserom.dol", 0xDFBB0, 0x8
.global @955
@955:
	.incbin "baserom.dol", 0xDFBB8, 0x4
.global @956
@956:
	.incbin "baserom.dol", 0xDFBBC, 0x4
.global @957
@957:
	.incbin "baserom.dol", 0xDFBC0, 0x4
.global @958
@958:
	.incbin "baserom.dol", 0xDFBC4, 0x4
.global @959
@959:
	.incbin "baserom.dol", 0xDFBC8, 0x8
.global @966
@966:
	.incbin "baserom.dol", 0xDFBD0, 0x8
.global @998
@998:
	.incbin "baserom.dol", 0xDFBD8, 0x4
.global @1269
@1269:
	.incbin "baserom.dol", 0xDFBDC, 0xC
.global @382
@382:
	.incbin "baserom.dol", 0xDFBE8, 0x8
.global @389
@389:
	.incbin "baserom.dol", 0xDFBF0, 0x4
.global @621
@621:
	.incbin "baserom.dol", 0xDFBF4, 0x4
.global @622
@622:
	.incbin "baserom.dol", 0xDFBF8, 0x4
.global @623
@623:
	.incbin "baserom.dol", 0xDFBFC, 0x4
.global @226
@226:
	.incbin "baserom.dol", 0xDFC00, 0x4
.global @227
@227:
	.incbin "baserom.dol", 0xDFC04, 0x4
.global @228
@228:
	.incbin "baserom.dol", 0xDFC08, 0x4
.global @229
@229:
	.incbin "baserom.dol", 0xDFC0C, 0x4
.global @250
@250:
	.incbin "baserom.dol", 0xDFC10, 0x4
.global @251
@251:
	.incbin "baserom.dol", 0xDFC14, 0x4
.global @252
@252:
	.incbin "baserom.dol", 0xDFC18, 0x4
.global @253
@253:
	.incbin "baserom.dol", 0xDFC1C, 0x4
.global @254
@254:
	.incbin "baserom.dol", 0xDFC20, 0x4
.global @561
@561:
	.incbin "baserom.dol", 0xDFC24, 0x4
.global @563
@563:
	.incbin "baserom.dol", 0xDFC28, 0x8
.global @703
@703:
	.incbin "baserom.dol", 0xDFC30, 0x8
.global @209
@209:
	.incbin "baserom.dol", 0xDFC38, 0x8
.global @236
@236:
	.incbin "baserom.dol", 0xDFC40, 0x4
.global @237
@237:
	.incbin "baserom.dol", 0xDFC44, 0x4
.global @281
@281:
	.incbin "baserom.dol", 0xDFC48, 0x4
.global @282
@282:
	.incbin "baserom.dol", 0xDFC4C, 0x4
.global @283
@283:
	.incbin "baserom.dol", 0xDFC50, 0x8
.global @285
@285:
	.incbin "baserom.dol", 0xDFC58, 0x8
.global @373
@373:
	.incbin "baserom.dol", 0xDFC60, 0x4
.global @374
@374:
	.incbin "baserom.dol", 0xDFC64, 0x4
.global @227
@227:
	.incbin "baserom.dol", 0xDFC68, 0x4
.global @244
@244:
	.incbin "baserom.dol", 0xDFC6C, 0x4
.global @544
@544:
	.incbin "baserom.dol", 0xDFC70, 0x8
.global @547
@547:
	.incbin "baserom.dol", 0xDFC78, 0x8
.global @670
@670:
	.incbin "baserom.dol", 0xDFC80, 0x8
.global @672
@672:
	.incbin "baserom.dol", 0xDFC88, 0x8
.global @729
@729:
	.incbin "baserom.dol", 0xDFC90, 0x4
.global @771
@771:
	.incbin "baserom.dol", 0xDFC94, 0x4
.global @1055
@1055:
	.incbin "baserom.dol", 0xDFC98, 0x4
.global @1056
@1056:
	.incbin "baserom.dol", 0xDFC9C, 0x4
.global @1285
@1285:
	.incbin "baserom.dol", 0xDFCA0, 0x8
.global @283
@283:
	.incbin "baserom.dol", 0xDFCA8, 0x8
.global @304
@304:
	.incbin "baserom.dol", 0xDFCB0, 0x4
.global @322
@322:
	.incbin "baserom.dol", 0xDFCB4, 0x4
.global @323
@323:
	.incbin "baserom.dol", 0xDFCB8, 0x4
.global @470
@470:
	.incbin "baserom.dol", 0xDFCBC, 0x4
.global @474
@474:
	.incbin "baserom.dol", 0xDFCC0, 0x8
.global @339
@339:
	.incbin "baserom.dol", 0xDFCC8, 0x8
.global @341
@341:
	.incbin "baserom.dol", 0xDFCD0, 0x8
.global @201
@201:
	.incbin "baserom.dol", 0xDFCD8, 0x4
.global @202
@202:
	.incbin "baserom.dol", 0xDFCDC, 0x4
.global @204
@204:
	.incbin "baserom.dol", 0xDFCE0, 0x8
.global @206
@206:
	.incbin "baserom.dol", 0xDFCE8, 0x8
.global @279
@279:
	.incbin "baserom.dol", 0xDFCF0, 0x4
.global @280
@280:
	.incbin "baserom.dol", 0xDFCF4, 0x4
.global @281
@281:
	.incbin "baserom.dol", 0xDFCF8, 0x4
.global @282
@282:
	.incbin "baserom.dol", 0xDFCFC, 0x4
.global @134
@134:
	.incbin "baserom.dol", 0xDFD00, 0x8
.global @136
@136:
	.incbin "baserom.dol", 0xDFD08, 0x8
.global @135
@135:
	.incbin "baserom.dol", 0xDFD10, 0x8
.global @136
@136:
	.incbin "baserom.dol", 0xDFD18, 0x8
.global @137
@137:
	.incbin "baserom.dol", 0xDFD20, 0x8
.global @161
@161:
	.incbin "baserom.dol", 0xDFD28, 0x4
.global @162
@162:
	.incbin "baserom.dol", 0xDFD2C, 0x4
.global @164
@164:
	.incbin "baserom.dol", 0xDFD30, 0x8
.global @169
@169:
	.incbin "baserom.dol", 0xDFD38, 0x8
.global @211
@211:
	.incbin "baserom.dol", 0xDFD40, 0x4
.global @212
@212:
	.incbin "baserom.dol", 0xDFD44, 0x4
.global @214
@214:
	.incbin "baserom.dol", 0xDFD48, 0x8
.global @216
@216:
	.incbin "baserom.dol", 0xDFD50, 0x8
.global @248
@248:
	.incbin "baserom.dol", 0xDFD58, 0x4
.global @249
@249:
	.incbin "baserom.dol", 0xDFD5C, 0x4
.global @250
@250:
	.incbin "baserom.dol", 0xDFD60, 0x4
.global @759
@759:
	.incbin "baserom.dol", 0xDFD64, 0x4
.global @818
@818:
	.incbin "baserom.dol", 0xDFD68, 0x4
.global @971
@971:
	.incbin "baserom.dol", 0xDFD6C, 0x4
.global @972
@972:
	.incbin "baserom.dol", 0xDFD70, 0x4
.global @1402
@1402:
	.incbin "baserom.dol", 0xDFD74, 0x4
.global @1426
@1426:
	.incbin "baserom.dol", 0xDFD78, 0x4
.global lbl_80218FDC
lbl_80218FDC:
	.incbin "baserom.dol", 0xDFD7C, 0x2
.global lbl_80218FDE
lbl_80218FDE:
	.incbin "baserom.dol", 0xDFD7E, 0x2
.global @1427
@1427:
	.incbin "baserom.dol", 0xDFD80, 0x4
.global lbl_80218FE4
lbl_80218FE4:
	.incbin "baserom.dol", 0xDFD84, 0x2
.global lbl_80218FE6
lbl_80218FE6:
	.incbin "baserom.dol", 0xDFD86, 0x2
.global @1812
@1812:
	.incbin "baserom.dol", 0xDFD88, 0x8
.global @1814
@1814:
	.incbin "baserom.dol", 0xDFD90, 0x8
.global @262
@262:
	.incbin "baserom.dol", 0xDFD98, 0x8
.global @274
@274:
	.incbin "baserom.dol", 0xDFDA0, 0x4
.global @275
@275:
	.incbin "baserom.dol", 0xDFDA4, 0x4
.global @276
@276:
	.incbin "baserom.dol", 0xDFDA8, 0x8
.global @136
@136:
	.incbin "baserom.dol", 0xDFDB0, 0x4
.global @137
@137:
	.incbin "baserom.dol", 0xDFDB4, 0x4
.global @138
@138:
	.incbin "baserom.dol", 0xDFDB8, 0x4
.global @139
@139:
	.incbin "baserom.dol", 0xDFDBC, 0x4
.global @142
@142:
	.incbin "baserom.dol", 0xDFDC0, 0x8
.global @216
@216:
	.incbin "baserom.dol", 0xDFDC8, 0x8
.global @133
@133:
	.incbin "baserom.dol", 0xDFDD0, 0x4
.global @134
@134:
	.incbin "baserom.dol", 0xDFDD4, 0x4
.global @186
@186:
	.incbin "baserom.dol", 0xDFDD8, 0x8
.global @433
@433:
	.incbin "baserom.dol", 0xDFDE0, 0x8
.global @473
@473:
	.incbin "baserom.dol", 0xDFDE8, 0x8
.global @699
@699:
	.incbin "baserom.dol", 0xDFDF0, 0x8
.global @714
@714:
	.incbin "baserom.dol", 0xDFDF8, 0x8
.global @537
@537:
	.incbin "baserom.dol", 0xDFE00, 0x4
.global @545
@545:
	.incbin "baserom.dol", 0xDFE04, 0x4
.global @606
@606:
	.incbin "baserom.dol", 0xDFE08, 0x8
.global @607
@607:
	.incbin "baserom.dol", 0xDFE10, 0x8
.global @608
@608:
	.incbin "baserom.dol", 0xDFE18, 0x8
.global @643
@643:
	.incbin "baserom.dol", 0xDFE20, 0x4
.global @1632
@1632:
	.incbin "baserom.dol", 0xDFE24, 0x4
.global @1633
@1633:
	.incbin "baserom.dol", 0xDFE28, 0x8
.global @1726
@1726:
	.incbin "baserom.dol", 0xDFE30, 0x8
.global @1915
@1915:
	.incbin "baserom.dol", 0xDFE38, 0x8
.global @1917
@1917:
	.incbin "baserom.dol", 0xDFE40, 0x8
.global @1959
@1959:
	.incbin "baserom.dol", 0xDFE48, 0x4
.global blk_tbl$localstatic3$get_blk_wd_ht__FUiPUiPUi
blk_tbl$localstatic3$get_blk_wd_ht__FUiPUiPUi:
	.incbin "baserom.dol", 0xDFE4C, 0x8
.global @3378
@3378:
	.incbin "baserom.dol", 0xDFE54, 0x4
.global @3379
@3379:
	.incbin "baserom.dol", 0xDFE58, 0x4
.global @3380
@3380:
	.incbin "baserom.dol", 0xDFE5C, 0x4
.global @3381
@3381:
	.incbin "baserom.dol", 0xDFE60, 0x4
.global @3475
@3475:
	.incbin "baserom.dol", 0xDFE64, 0x4
.global @3476
@3476:
	.incbin "baserom.dol", 0xDFE68, 0x4
.global @3658
@3658:
	.incbin "baserom.dol", 0xDFE6C, 0x4
.global @3816
@3816:
	.incbin "baserom.dol", 0xDFE70, 0x4
.global @3817
@3817:
	.incbin "baserom.dol", 0xDFE74, 0x4
.global @3888
@3888:
	.incbin "baserom.dol", 0xDFE78, 0x4
.global @3889
@3889:
	.incbin "baserom.dol", 0xDFE7C, 0x4
.global @3890
@3890:
	.incbin "baserom.dol", 0xDFE80, 0x4
.global @4180
@4180:
	.incbin "baserom.dol", 0xDFE84, 0x4
.global @4181
@4181:
	.incbin "baserom.dol", 0xDFE88, 0x4
.global @4182
@4182:
	.incbin "baserom.dol", 0xDFE8C, 0x4
.global @4183
@4183:
	.incbin "baserom.dol", 0xDFE90, 0x4
.global @4184
@4184:
	.incbin "baserom.dol", 0xDFE94, 0x4
.global @4185
@4185:
	.incbin "baserom.dol", 0xDFE98, 0x4
.global @4186
@4186:
	.incbin "baserom.dol", 0xDFE9C, 0x4
.global @7569
@7569:
	.incbin "baserom.dol", 0xDFEA0, 0x4
.global @7571
@7571:
	.incbin "baserom.dol", 0xDFEA4, 0x4
.global @7572
@7572:
	.incbin "baserom.dol", 0xDFEA8, 0x4
.global @7573
@7573:
	.incbin "baserom.dol", 0xDFEAC, 0x4
.global @7574
@7574:
	.incbin "baserom.dol", 0xDFEB0, 0x8
.global @283
@283:
	.incbin "baserom.dol", 0xDFEB8, 0x8
.global @284
@284:
	.incbin "baserom.dol", 0xDFEC0, 0x8
.global @285
@285:
	.incbin "baserom.dol", 0xDFEC8, 0x8
.global @14
@14:
	.incbin "baserom.dol", 0xDFED0, 0x4
.global @20
@20:
	.incbin "baserom.dol", 0xDFED4, 0x4
.global @288
@288:
	.incbin "baserom.dol", 0xDFED8, 0x8
.global @289
@289:
	.incbin "baserom.dol", 0xDFEE0, 0x8
.global @290
@290:
	.incbin "baserom.dol", 0xDFEE8, 0x8
.global @291
@291:
	.incbin "baserom.dol", 0xDFEF0, 0x4
.global @292
@292:
	.incbin "baserom.dol", 0xDFEF4, 0x4
.global @361
@361:
	.incbin "baserom.dol", 0xDFEF8, 0x8
.global @362
@362:
	.incbin "baserom.dol", 0xDFF00, 0x8
.global @363
@363:
	.incbin "baserom.dol", 0xDFF08, 0x8
.global @364
@364:
	.incbin "baserom.dol", 0xDFF10, 0x4
.global @365
@365:
	.incbin "baserom.dol", 0xDFF14, 0x4
.global @366
@366:
	.incbin "baserom.dol", 0xDFF18, 0x8
.global @367
@367:
	.incbin "baserom.dol", 0xDFF20, 0x4
.global @368
@368:
	.incbin "baserom.dol", 0xDFF24, 0x4
.global @369
@369:
	.incbin "baserom.dol", 0xDFF28, 0x8
.global @371
@371:
	.incbin "baserom.dol", 0xDFF30, 0x8
.global @278
@278:
	.incbin "baserom.dol", 0xDFF38, 0x4
.global @330
@330:
	.incbin "baserom.dol", 0xDFF3C, 0x4
.global @331
@331:
	.incbin "baserom.dol", 0xDFF40, 0x8
.global @271
@271:
	.incbin "baserom.dol", 0xDFF48, 0x8
.global @272
@272:
	.incbin "baserom.dol", 0xDFF50, 0x8
.global @273
@273:
	.incbin "baserom.dol", 0xDFF58, 0x8
.global @274
@274:
	.incbin "baserom.dol", 0xDFF60, 0x8
.global @279
@279:
	.incbin "baserom.dol", 0xDFF68, 0x4
.global @280
@280:
	.incbin "baserom.dol", 0xDFF6C, 0x4
.global @281
@281:
	.incbin "baserom.dol", 0xDFF70, 0x8
.global @288
@288:
	.incbin "baserom.dol", 0xDFF78, 0x8
.global @289
@289:
	.incbin "baserom.dol", 0xDFF80, 0x4
.global @290
@290:
	.incbin "baserom.dol", 0xDFF84, 0x4
.global @291
@291:
	.incbin "baserom.dol", 0xDFF88, 0x4
.global @292
@292:
	.incbin "baserom.dol", 0xDFF8C, 0x4
.global @293
@293:
	.incbin "baserom.dol", 0xDFF90, 0x8
.global @294
@294:
	.incbin "baserom.dol", 0xDFF98, 0x8
.global @271
@271:
	.incbin "baserom.dol", 0xDFFA0, 0x8
.global @259
@259:
	.incbin "baserom.dol", 0xDFFA8, 0x8
.global @107
@107:
	.incbin "baserom.dol", 0xDFFB0, 0x8
.global @108
@108:
	.incbin "baserom.dol", 0xDFFB8, 0x8
.global @109
@109:
	.incbin "baserom.dol", 0xDFFC0, 0x8
.global @112
@112:
	.incbin "baserom.dol", 0xDFFC8, 0x8
.global fchar$7
fchar$7:
	.incbin "baserom.dol", 0xDFFD0, 0x8
.global @2244
@2244:
	.incbin "baserom.dol", 0xDFFD8, 0x4
.global @2245
@2245:
	.incbin "baserom.dol", 0xDFFDC, 0x4
.global @2247
@2247:
	.incbin "baserom.dol", 0xDFFE0, 0x8
.global @2152
@2152:
	.incbin "baserom.dol", 0xDFFE8, 0x4
.global @2153
@2153:
	.incbin "baserom.dol", 0xDFFEC, 0x4
.global @2155
@2155:
	.incbin "baserom.dol", 0xDFFF0, 0x8
.global @2114
@2114:
	.incbin "baserom.dol", 0xDFFF8, 0x8
.global @2267
@2267:
	.incbin "baserom.dol", 0xE0000, 0x8
.global @2399
@2399:
	.incbin "baserom.dol", 0xE0008, 0x4
.global @2400
@2400:
	.incbin "baserom.dol", 0xE000C, 0x4
.global @2749
@2749:
	.incbin "baserom.dol", 0xE0010, 0x8
.global @1030
@1030:
	.incbin "baserom.dol", 0xE0018, 0x8
.global @1032
@1032:
	.incbin "baserom.dol", 0xE0020, 0x8
.global @599
@599:
	.incbin "baserom.dol", 0xE0028, 0x8
.global @601
@601:
	.incbin "baserom.dol", 0xE0030, 0x8
.global @603
@603:
	.incbin "baserom.dol", 0xE0038, 0x8
.global @719
@719:
	.incbin "baserom.dol", 0xE0040, 0x4
.global @720
@720:
	.incbin "baserom.dol", 0xE0044, 0x4
.global @721
@721:
	.incbin "baserom.dol", 0xE0048, 0x4
.global @722
@722:
	.incbin "baserom.dol", 0xE004C, 0x4
.global @723
@723:
	.incbin "baserom.dol", 0xE0050, 0x8
.global @736
@736:
	.incbin "baserom.dol", 0xE0058, 0x8
.global @798
@798:
	.incbin "baserom.dol", 0xE0060, 0x8
.global @801
@801:
	.incbin "baserom.dol", 0xE0068, 0x8
.global @807
@807:
	.incbin "baserom.dol", 0xE0070, 0x8
.global @844
@844:
	.incbin "baserom.dol", 0xE0078, 0x8
.global @845
@845:
	.incbin "baserom.dol", 0xE0080, 0x8
.global @846
@846:
	.incbin "baserom.dol", 0xE0088, 0x4
.global @847
@847:
	.incbin "baserom.dol", 0xE008C, 0x4
.global @878
@878:
	.incbin "baserom.dol", 0xE0090, 0x4
.global @879
@879:
	.incbin "baserom.dol", 0xE0094, 0x4
.global @880
@880:
	.incbin "baserom.dol", 0xE0098, 0x4
.global @881
@881:
	.incbin "baserom.dol", 0xE009C, 0x4
.global @2188
@2188:
	.incbin "baserom.dol", 0xE00A0, 0x4
.global @2890
@2890:
	.incbin "baserom.dol", 0xE00A4, 0x4
.global @2891
@2891:
	.incbin "baserom.dol", 0xE00A8, 0x8
.global @610
@610:
	.incbin "baserom.dol", 0xE00B0, 0x4
.global @611
@611:
	.incbin "baserom.dol", 0xE00B4, 0x4
.global @612
@612:
	.incbin "baserom.dol", 0xE00B8, 0x8
.global @614
@614:
	.incbin "baserom.dol", 0xE00C0, 0x8
.global @2108
@2108:
	.incbin "baserom.dol", 0xE00C8, 0x8
.global @2174
@2174:
	.incbin "baserom.dol", 0xE00D0, 0x4
.global @2175
@2175:
	.incbin "baserom.dol", 0xE00D4, 0x4
.global @2195
@2195:
	.incbin "baserom.dol", 0xE00D8, 0x8
.global @2197
@2197:
	.incbin "baserom.dol", 0xE00E0, 0x8
.global @2224
@2224:
	.incbin "baserom.dol", 0xE00E8, 0x4
.global @2225
@2225:
	.incbin "baserom.dol", 0xE00EC, 0x4
.global @2226
@2226:
	.incbin "baserom.dol", 0xE00F0, 0x4
.global @2227
@2227:
	.incbin "baserom.dol", 0xE00F4, 0x4
.global @2228
@2228:
	.incbin "baserom.dol", 0xE00F8, 0x4
.global @2229
@2229:
	.incbin "baserom.dol", 0xE00FC, 0x4
.global @2231
@2231:
	.incbin "baserom.dol", 0xE0100, 0x8
.global @2496
@2496:
	.incbin "baserom.dol", 0xE0108, 0x4
.global @2497
@2497:
	.incbin "baserom.dol", 0xE010C, 0x4
.global @2366
@2366:
	.incbin "baserom.dol", 0xE0110, 0x4
.global @2367
@2367:
	.incbin "baserom.dol", 0xE0114, 0x4
.global @2368
@2368:
	.incbin "baserom.dol", 0xE0118, 0x4
.global @2369
@2369:
	.incbin "baserom.dol", 0xE011C, 0x4
.global @2370
@2370:
	.incbin "baserom.dol", 0xE0120, 0x4
.global @2371
@2371:
	.incbin "baserom.dol", 0xE0124, 0x4
.global @2372
@2372:
	.incbin "baserom.dol", 0xE0128, 0x8
.global @2375
@2375:
	.incbin "baserom.dol", 0xE0130, 0x8
.global @2377
@2377:
	.incbin "baserom.dol", 0xE0138, 0x8
.global @514
@514:
	.incbin "baserom.dol", 0xE0140, 0x4
.global @515
@515:
	.incbin "baserom.dol", 0xE0144, 0x4
.global @627
@627:
	.incbin "baserom.dol", 0xE0148, 0x4
.global @628
@628:
	.incbin "baserom.dol", 0xE014C, 0x4
.global @629
@629:
	.incbin "baserom.dol", 0xE0150, 0x8
.global @427
@427:
	.incbin "baserom.dol", 0xE0158, 0x4
.global @477
@477:
	.incbin "baserom.dol", 0xE015C, 0x4
.global @94
@94:
	.incbin "baserom.dol", 0xE0160, 0x4
.global @95
@95:
	.incbin "baserom.dol", 0xE0164, 0x4
.global @193
@193:
	.incbin "baserom.dol", 0xE0168, 0x8
.global @97
@97:
	.incbin "baserom.dol", 0xE0170, 0x4
.global @98
@98:
	.incbin "baserom.dol", 0xE0174, 0x4
.global @99
@99:
	.incbin "baserom.dol", 0xE0178, 0x4
.global @100
@100:
	.incbin "baserom.dol", 0xE017C, 0x4
.global @116
@116:
	.incbin "baserom.dol", 0xE0180, 0x4
.global @117
@117:
	.incbin "baserom.dol", 0xE0184, 0x4
.global @133
@133:
	.incbin "baserom.dol", 0xE0188, 0x4
.global @134
@134:
	.incbin "baserom.dol", 0xE018C, 0x4
.global @135
@135:
	.incbin "baserom.dol", 0xE0190, 0x4
.global @189
@189:
	.incbin "baserom.dol", 0xE0194, 0x4
.global @190
@190:
	.incbin "baserom.dol", 0xE0198, 0x4
.global @191
@191:
	.incbin "baserom.dol", 0xE019C, 0x4
.global @193
@193:
	.incbin "baserom.dol", 0xE01A0, 0x8
.global @95
@95:
	.incbin "baserom.dol", 0xE01A8, 0x8
.global @176
@176:
	.incbin "baserom.dol", 0xE01B0, 0x8
.global @178
@178:
	.incbin "baserom.dol", 0xE01B8, 0x8
.global @204
@204:
	.incbin "baserom.dol", 0xE01C0, 0x4
.global @205
@205:
	.incbin "baserom.dol", 0xE01C4, 0x4
.global @206
@206:
	.incbin "baserom.dol", 0xE01C8, 0x4
.global @207
@207:
	.incbin "baserom.dol", 0xE01CC, 0x4
.global @208
@208:
	.incbin "baserom.dol", 0xE01D0, 0x4
.global @209
@209:
	.incbin "baserom.dol", 0xE01D4, 0x4
.global @57
@57:
	.incbin "baserom.dol", 0xE01D8, 0x8
.global @137
@137:
	.incbin "baserom.dol", 0xE01E0, 0x4
.global @138
@138:
	.incbin "baserom.dol", 0xE01E4, 0x4
.global @139
@139:
	.incbin "baserom.dol", 0xE01E8, 0x8
.global @140
@140:
	.incbin "baserom.dol", 0xE01F0, 0x8
.global @141
@141:
	.incbin "baserom.dol", 0xE01F8, 0x8
.global @142
@142:
	.incbin "baserom.dol", 0xE0200, 0x8
.global @144
@144:
	.incbin "baserom.dol", 0xE0208, 0x8
.global @28
@28:
	.incbin "baserom.dol", 0xE0210, 0x4
.global @75
@75:
	.incbin "baserom.dol", 0xE0214, 0x4
.global @76
@76:
	.incbin "baserom.dol", 0xE0218, 0x8
.global @620
@620:
	.incbin "baserom.dol", 0xE0220, 0x8
.global @74
@74:
	.incbin "baserom.dol", 0xE0228, 0x8
.global @1079
@1079:
	.incbin "baserom.dol", 0xE0230, 0x8
.global @103
@103:
	.incbin "baserom.dol", 0xE0238, 0x8
.global @104
@104:
	.incbin "baserom.dol", 0xE0240, 0x8
.global @105
@105:
	.incbin "baserom.dol", 0xE0248, 0x8
.global @106
@106:
	.incbin "baserom.dol", 0xE0250, 0x8
.global @107
@107:
	.incbin "baserom.dol", 0xE0258, 0x8
.global @108
@108:
	.incbin "baserom.dol", 0xE0260, 0x8
.global @109
@109:
	.incbin "baserom.dol", 0xE0268, 0x8
.global @110
@110:
	.incbin "baserom.dol", 0xE0270, 0x8
.global @111
@111:
	.incbin "baserom.dol", 0xE0278, 0x8
.global @112
@112:
	.incbin "baserom.dol", 0xE0280, 0x8
.global @113
@113:
	.incbin "baserom.dol", 0xE0288, 0x8
.global @114
@114:
	.incbin "baserom.dol", 0xE0290, 0x8
.global @115
@115:
	.incbin "baserom.dol", 0xE0298, 0x8
.global @116
@116:
	.incbin "baserom.dol", 0xE02A0, 0x8
.global @117
@117:
	.incbin "baserom.dol", 0xE02A8, 0x8
.global @118
@118:
	.incbin "baserom.dol", 0xE02B0, 0x8
.global @119
@119:
	.incbin "baserom.dol", 0xE02B8, 0x8
.global @120
@120:
	.incbin "baserom.dol", 0xE02C0, 0x8
.global @146
@146:
	.incbin "baserom.dol", 0xE02C8, 0x8
.global @147
@147:
	.incbin "baserom.dol", 0xE02D0, 0x8
.global @148
@148:
	.incbin "baserom.dol", 0xE02D8, 0x8
.global @149
@149:
	.incbin "baserom.dol", 0xE02E0, 0x8
.global @150
@150:
	.incbin "baserom.dol", 0xE02E8, 0x8
.global @151
@151:
	.incbin "baserom.dol", 0xE02F0, 0x8
.global @152
@152:
	.incbin "baserom.dol", 0xE02F8, 0x8
.global @153
@153:
	.incbin "baserom.dol", 0xE0300, 0x8
.global @154
@154:
	.incbin "baserom.dol", 0xE0308, 0x8
.global @155
@155:
	.incbin "baserom.dol", 0xE0310, 0x8
.global @156
@156:
	.incbin "baserom.dol", 0xE0318, 0x8
.global @146
@146:
	.incbin "baserom.dol", 0xE0320, 0x8
.global @147
@147:
	.incbin "baserom.dol", 0xE0328, 0x8
.global @148
@148:
	.incbin "baserom.dol", 0xE0330, 0x8
.global @149
@149:
	.incbin "baserom.dol", 0xE0338, 0x8
.global @150
@150:
	.incbin "baserom.dol", 0xE0340, 0x8
.global @151
@151:
	.incbin "baserom.dol", 0xE0348, 0x8
.global @152
@152:
	.incbin "baserom.dol", 0xE0350, 0x8
.global @153
@153:
	.incbin "baserom.dol", 0xE0358, 0x8
.global @154
@154:
	.incbin "baserom.dol", 0xE0360, 0x8
.global @155
@155:
	.incbin "baserom.dol", 0xE0368, 0x8
.global @158
@158:
	.incbin "baserom.dol", 0xE0370, 0x8
.global @71
@71:
	.incbin "baserom.dol", 0xE0378, 0x8
.global @72
@72:
	.incbin "baserom.dol", 0xE0380, 0x8
.global @73
@73:
	.incbin "baserom.dol", 0xE0388, 0x8
.global @74
@74:
	.incbin "baserom.dol", 0xE0390, 0x8
.global @75
@75:
	.incbin "baserom.dol", 0xE0398, 0x8
.global @76
@76:
	.incbin "baserom.dol", 0xE03A0, 0x8
.global @77
@77:
	.incbin "baserom.dol", 0xE03A8, 0x8
.global @78
@78:
	.incbin "baserom.dol", 0xE03B0, 0x8
.global @79
@79:
	.incbin "baserom.dol", 0xE03B8, 0x8
.global @437
@437:
	.incbin "baserom.dol", 0xE03C0, 0x8
.global @438
@438:
	.incbin "baserom.dol", 0xE03C8, 0x8
.global @439
@439:
	.incbin "baserom.dol", 0xE03D0, 0x8
.global @440
@440:
	.incbin "baserom.dol", 0xE03D8, 0x8
.global @441
@441:
	.incbin "baserom.dol", 0xE03E0, 0x8
.global @442
@442:
	.incbin "baserom.dol", 0xE03E8, 0x8
.global @443
@443:
	.incbin "baserom.dol", 0xE03F0, 0x8
.global @445
@445:
	.incbin "baserom.dol", 0xE03F8, 0x8
.global @61
@61:
	.incbin "baserom.dol", 0xE0400, 0x8
.global @62
@62:
	.incbin "baserom.dol", 0xE0408, 0x8
.global @63
@63:
	.incbin "baserom.dol", 0xE0410, 0x8
.global @64
@64:
	.incbin "baserom.dol", 0xE0418, 0x8
.global @65
@65:
	.incbin "baserom.dol", 0xE0420, 0x8
.global @66
@66:
	.incbin "baserom.dol", 0xE0428, 0x8
.global @67
@67:
	.incbin "baserom.dol", 0xE0430, 0x8
.global @116
@116:
	.incbin "baserom.dol", 0xE0438, 0x8
.global @117
@117:
	.incbin "baserom.dol", 0xE0440, 0x8
.global @118
@118:
	.incbin "baserom.dol", 0xE0448, 0x8
.global @119
@119:
	.incbin "baserom.dol", 0xE0450, 0x8
.global @120
@120:
	.incbin "baserom.dol", 0xE0458, 0x8
.global @73
@73:
	.incbin "baserom.dol", 0xE0460, 0x8
.global @125
@125:
	.incbin "baserom.dol", 0xE0468, 0x8
.global @126
@126:
	.incbin "baserom.dol", 0xE0470, 0x8
.global @60
@60:
	.incbin "baserom.dol", 0xE0478, 0x8
.global @102
@102:
	.incbin "baserom.dol", 0xE0480, 0x8
.global @103
@103:
	.incbin "baserom.dol", 0xE0488, 0x8
.global @104
@104:
	.incbin "baserom.dol", 0xE0490, 0x8
.global @105
@105:
	.incbin "baserom.dol", 0xE0498, 0x8
.global @106
@106:
	.incbin "baserom.dol", 0xE04A0, 0x8
.global @73
@73:
	.incbin "baserom.dol", 0xE04A8, 0x8
.global lbl_80219710
lbl_80219710:
	.incbin "baserom.dol", 0xE04B0, 0x10

.section .bss, "wa"  # 0x800E2280 - 0x80218BDD
.global StringTable
StringTable:
	.skip 0x4
.global fakemain_check
fakemain_check:
	.skip 0x4
.global InitialStartTime
InitialStartTime:
	.skip 0x8
.global my_fault_client5$550
my_fault_client5$550:
	.skip 0x14
.global my_fault_client1$546
my_fault_client1$546:
	.skip 0x14
.global my_fault_client2$547
my_fault_client2$547:
	.skip 0x14
.global my_fault_client3$548
my_fault_client3$548:
	.skip 0x14
.global my_fault_client6$551
my_fault_client6$551:
	.skip 0x14
.global my_fault_client4$549
my_fault_client4$549:
	.skip 0x14
.global boot_copyDate
boot_copyDate:
	.skip 0x4
.global moduleA
moduleA:
	.skip 0x4
.global HotStartEntry
HotStartEntry:
	.skip 0x8
.global @935
@935:
	.skip 0x4
.global @936
@936:
	.skip 0x4
.global @938
@938:
	.skip 0x4
.global @940
@940:
	.skip 0x4
.global @978
@978:
	.skip 0x4
.global @979
@979:
	.skip 0x4
.global @981
@981:
	.skip 0x4
.global @983
@983:
	.skip 0x4
.global @1020
@1020:
	.skip 0x4
.global @1021
@1021:
	.skip 0x4
.global @1023
@1023:
	.skip 0x4
.global @1025
@1025:
	.skip 0x4
.global @1030
@1030:
	.skip 0x4
.global @1031
@1031:
	.skip 0x4
.global @1033
@1033:
	.skip 0x4
.global @1035
@1035:
	.skip 0x4
.global @2136
@2136:
	.skip 0x10
.global gamePad
gamePad:
	.skip 0x2A0
.global jc_fader
jc_fader:
	.skip 0x4
.global forest_arc_aram_p
forest_arc_aram_p:
	.skip 0x4
.global forest_arc_aram2_p
forest_arc_aram2_p:
	.skip 0x4
.global gameheap_base
gameheap_base:
	.skip 0x4
.global jc_gport
jc_gport:
	.skip 0x4
.global jc_sysConsole
jc_sysConsole:
	.skip 0x4
.global lbl_800E2620
lbl_800E2620:
	.skip 0x1
.global lbl_800E2621
lbl_800E2621:
	.skip 0x1
.global lbl_800E2622
lbl_800E2622:
	.skip 0x1
.global lbl_800E2623
lbl_800E2623:
	.skip 0x3
.global video_pan_xorg
video_pan_xorg:
	.skip 0x2
.global video_pan_yorg
video_pan_yorg:
	.skip 0x2
.global video_pan_width
video_pan_width:
	.skip 0x2
.global video_pan_height
video_pan_height:
	.skip 0x4
.global last_pad_read$2201
last_pad_read$2201:
	.skip 0x8
.global lbl_800E2638
lbl_800E2638:
	.skip 0x4
.global clear_color$2268
clear_color$2268:
	.skip 0x4
.global model_cursor
model_cursor:
	.skip 0x40
.global lbl_800E2680
lbl_800E2680:
	.skip 0x1
.global lbl_800E2681
lbl_800E2681:
	.skip 0x7
.global start_time
start_time:
	.skip 0x8
.global button
button:
	.skip 0x4
.global trigger
trigger:
	.skip 0x4
.global frame_count
frame_count:
	.skip 0x8
.global limit_time
limit_time:
	.skip 0x8
.global select_done
select_done:
	.skip 0x8
.global commandQ
commandQ:
	.skip 0x20
.global fadeout_step
fadeout_step:
	.skip 0x4
.global load_game_done
load_game_done:
	.skip 0x4
.global gfxbuf
gfxbuf:
	.skip 0x80
.global statusQ
statusQ:
	.skip 0x20
.global Thread_p
Thread_p:
	.skip 0x4
.global initialMenuStack
initialMenuStack:
	.skip 0x4
.global commandMsgBuf
commandMsgBuf:
	.skip 0x8
.global statusMsgBuf
statusMsgBuf:
	.skip 0x8
.global Dvderr_work
Dvderr_work:
	.skip 0x3F8
.global PCMH2
PCMH2:
	.skip 0x10
.global SoundA
SoundA:
	.skip 0x4C
.global SoundB
SoundB:
	.skip 0x4C
.global SoundC
SoundC:
	.skip 0x4C
.global SoundD
SoundD:
	.skip 0x4C
.global SoundE
SoundE:
	.skip 0x24
.global SoundX
SoundX:
	.skip 0x4C
.global SoundY
SoundY:
	.skip 0x4C
.global SoundZ
SoundZ:
	.skip 0x4C
.global SoundM
SoundM:
	.skip 0x4C
.global SoundN
SoundN:
	.skip 0x4C
.global SoundF
SoundF:
	.skip 0x4C
.global SoundP
SoundP:
	.skip 0x18
.global DUMMY_ACTIVE
DUMMY_ACTIVE:
	.skip 0xC
.global DISKFM_TABLE
DISKFM_TABLE:
	.skip 0x40
.global DISKSUB_TABLE
DISKSUB_TABLE:
	.skip 0x20
.global disksubwave
disksubwave:
	.skip 0x80
.global SoundQ
SoundQ:
	.skip 0x20
.global SoundQbuf
SoundQbuf:
	.skip 0x4000
.global sound_loop_buffer
sound_loop_buffer:
	.skip 0x4000
.global buf$1289
buf$1289:
	.skip 0x20
.global buf$1331
buf$1331:
	.skip 0x648
.global lbl_800EB640
lbl_800EB640:
	.skip 0x30
.global sou_trg_se
sou_trg_se:
	.skip 0xC0
.global sou_voice_se
sou_voice_se:
	.skip 0x48
.global sou_lev_se
sou_lev_se:
	.skip 0x78
.global sou_lev_ongen_data
sou_lev_ongen_data:
	.skip 0x50
.global sou_ongen_entry
sou_ongen_entry:
	.skip 0x320
.global sou_room_ins
sou_room_ins:
	.skip 0x190
.global sou_se_fade
sou_se_fade:
	.skip 0xD0
.global audiomemory
audiomemory:
	.skip 0x90000
.global SOU_FIR_STATE_COPY
SOU_FIR_STATE_COPY:
	.skip 0x18
.global rhythm_buffer
rhythm_buffer:
	.skip 0xA8
.global DMEM
DMEM:
	.skip 0x1000
.global ADPCM_BOOKBUF
ADPCM_BOOKBUF:
	.skip 0x100
.global FINALR_STATE_BUF
FINALR_STATE_BUF:
	.skip 0x20
.global dac
dac:
	.skip 0xC
.global audio_hp
audio_hp:
	.skip 0x14
.global audioStack
audioStack:
	.skip 0x1000
.global neosStack
neosStack:
	.skip 0x1000
.global dvdStack
dvdStack:
	.skip 0x1000
.global audioproc_mq
audioproc_mq:
	.skip 0x20
.global msgbuf
msgbuf:
	.skip 0x40
.global neosproc_mq
neosproc_mq:
	.skip 0x20
.global task_buf$191
task_buf$191:
	.skip 0x6400
.global finfo$116
finfo$116:
	.skip 0x3C
.global cmd$117
cmd$117:
	.skip 0x34
.global dsp_buf
dsp_buf:
	.skip 0x10
.global dsp_buf
dsp_buf:
	.skip 0x10
.global PLAYER_CALLLIST
PLAYER_CALLLIST:
	.skip 0xC0
.global mq
mq:
	.skip 0x20
.global msgbuf
msgbuf:
	.skip 0x200
.global CALLSTACK
CALLSTACK:
	.skip 0x8000
.global finfo$348
finfo$348:
	.skip 0x3C
.global req$349
req$349:
	.skip 0x80
.global req$405
req$405:
	.skip 0x20
.global req$417
req$417:
	.skip 0x20
.global finfo$444
finfo$444:
	.skip 0x3C
.global finfo$471
finfo$471:
	.skip 0x3C
.global dvd_file
dvd_file:
	.skip 0x800
.global dvd_entrynum
dvd_entrynum:
	.skip 0x84
.global awheap$1312
awheap$1312:
	.skip 0x18
.global GLOBAL_CHANNEL
GLOBAL_CHANNEL:
	.skip 0x80
.global CHANNEL
CHANNEL:
	.skip 0x14000
.global waitp
waitp:
	.skip 0x80
.global waittime
waittime:
	.skip 0x80
.global DSPCH
DSPCH:
	.skip 0x400
.global CH_BUF
CH_BUF:
	.skip 0x6000
.global FX_BUF
FX_BUF:
	.skip 0x80
.global bankp
bankp:
	.skip 0x400
.global wavearc
wavearc:
	.skip 0x400
.global wavegroup
wavegroup:
	.skip 0x400
.global WS_V2P_TABLE
WS_V2P_TABLE:
	.skip 0x200
.global BNK_V2P_TABLE
BNK_V2P_TABLE:
	.skip 0x200
.global SINTABLE
SINTABLE:
	.skip 0x408
.global FH_TO_FAT
FH_TO_FAT:
	.skip 0x400
.global FAT
FAT:
	.skip 0x800
.global TRACK_LIST
TRACK_LIST:
	.skip 0x100
.global SEQ_ARG
SEQ_ARG:
	.skip 0x20
.global seq
seq:
	.skip 0x4718
.global lbl_801B0000
lbl_801B0000:
	.skip 0x4
.global lbl_801B0004
lbl_801B0004:
	.skip 0x3ECE4
.global ROOT_OUTER
ROOT_OUTER:
	.skip 0x400
.global rootseq
rootseq:
	.skip 0x40
.global FREE_SEQP_QUEUE
FREE_SEQP_QUEUE:
	.skip 0x418
.global @909
@909:
	.skip 0x4
.global @910
@910:
	.skip 0x4
.global @912
@912:
	.skip 0x4
.global @914
@914:
	.skip 0x4
.global @952
@952:
	.skip 0x4
.global @953
@953:
	.skip 0x4
.global @955
@955:
	.skip 0x4
.global @957
@957:
	.skip 0x4
.global @994
@994:
	.skip 0x4
.global @995
@995:
	.skip 0x4
.global @997
@997:
	.skip 0x4
.global @999
@999:
	.skip 0x4
.global @1004
@1004:
	.skip 0x4
.global @1005
@1005:
	.skip 0x4
.global @1007
@1007:
	.skip 0x4
.global @1009
@1009:
	.skip 0x4
.global commentImageBuffer
commentImageBuffer:
	.skip 0xA84
.global lbl_801F0004
lbl_801F0004:
	.skip 0x4DC0
.global famicomCommon
famicomCommon:
	.skip 0xB8
.global famicomCommonSave
famicomCommonSave:
	.skip 0x19C0
.global nesrom_filename_ptrs
nesrom_filename_ptrs:
	.skip 0x4
.global nesrom_filename_strbuf
nesrom_filename_strbuf:
	.skip 0x4
.global InputValid
InputValid:
	.skip 0x4
.global InputData
InputData:
	.skip 0x10
.global InputButton
InputButton:
	.skip 0x10
.global InputTrigger
InputTrigger:
	.skip 0x10
.global InputRepeat
InputRepeat:
	.skip 0x10
.global InputRepeatCount
InputRepeatCount:
	.skip 0x14
.global filer_demo_count
filer_demo_count:
	.skip 0x4
.global nesrom_idx_loaded
nesrom_idx_loaded:
	.skip 0x4
.global nesrom_idx
nesrom_idx:
	.skip 0x4
.global nesrom_count
nesrom_count:
	.skip 0x4
.global rapid_count
rapid_count:
	.skip 0xC
.global famicom_getSaveChanCallback
famicom_getSaveChanCallback:
	.skip 0x4
.global my_malloc_current
my_malloc_current:
	.skip 0x4
.global famicom_arc
famicom_arc:
	.skip 0x4
.global lbl_801F68C4
lbl_801F68C4:
	.skip 0x4
.global ksnes_thread
ksnes_thread:
	.skip 0x310
.global @909
@909:
	.skip 0x4
.global @910
@910:
	.skip 0x4
.global @912
@912:
	.skip 0x4
.global @914
@914:
	.skip 0x4
.global @952
@952:
	.skip 0x4
.global @953
@953:
	.skip 0x4
.global @955
@955:
	.skip 0x4
.global @957
@957:
	.skip 0x4
.global @994
@994:
	.skip 0x4
.global @995
@995:
	.skip 0x4
.global @997
@997:
	.skip 0x4
.global @999
@999:
	.skip 0x4
.global @1004
@1004:
	.skip 0x4
.global @1005
@1005:
	.skip 0x4
.global @1007
@1007:
	.skip 0x4
.global @1009
@1009:
	.skip 0x1
.global lbl_801F6C15
lbl_801F6C15:
	.skip 0x1
.global lbl_801F6C16
lbl_801F6C16:
	.skip 0x2
.global highscore_flags
highscore_flags:
	.skip 0x8
.global nesinfo_mcrd_game_name
nesinfo_mcrd_game_name:
	.skip 0x24
.global nesinfo_ptr
nesinfo_ptr:
	.skip 0x4
.global nesinfo_tags_size
nesinfo_tags_size:
	.skip 0x4
.global nesinfo_tags_start
nesinfo_tags_start:
	.skip 0x4
.global nesinfo_tags_end
nesinfo_tags_end:
	.skip 0x4
.global nesinfo_tags_gameName
nesinfo_tags_gameName:
	.skip 0x4
.global nesinfo_tags_kanjiName
nesinfo_tags_kanjiName:
	.skip 0x4
.global nesinfo_tags_moriName
nesinfo_tags_moriName:
	.skip 0x4
.global nesinfo_data_size
nesinfo_data_size:
	.skip 0x4
.global nesinfo_data_start
nesinfo_data_start:
	.skip 0x4
.global nesinfo_data_end
nesinfo_data_end:
	.skip 0x4
.global nesinfo_rom_size
nesinfo_rom_size:
	.skip 0x4
.global nesinfo_rom_start
nesinfo_rom_start:
	.skip 0x4
.global nesinfo_rom_end
nesinfo_rom_end:
	.skip 0x4
.global nesinfo_expand_rom_size
nesinfo_expand_rom_size:
	.skip 0x4
.global lbl_801F6C7C
lbl_801F6C7C:
	.skip 0x1
.global lbl_801F6C7D
lbl_801F6C7D:
	.skip 0x3
.global SecParams
SecParams:
	.skip 0x100
.global __GBA
__GBA:
	.skip 0x400
.global g_Joy_wrk
g_Joy_wrk:
	.skip 0x30
.global Port
Port:
	.skip 0x10
.global texture_buffer_data
texture_buffer_data:
	.skip 0xC000
.global texture_buffer_bss
texture_buffer_bss:
	.skip 0x400
.global tmem_map
tmem_map:
	.skip 0xE00
.global texture_cache_list
texture_cache_list:
	.skip 0x800
.global str$868
str$868:
	.skip 0x40
.global texture_cache_data_entry_tbl
texture_cache_data_entry_tbl:
	.skip 0x50
.global highlow_errs$2642
highlow_errs$2642:
	.skip 0x50
.global s$4209
s$4209:
	.skip 0x100
.global emu64_class
emu64_class:
	.skip 0x2080
.global warningString__5emu64
warningString__5emu64:
	.skip 0x28
.global warningTime__5emu64
warningTime__5emu64:
	.skip 0x28
.global s1$7136
s1$7136:
	.skip 0x14
.global s2$7137
s2$7137:
	.skip 0x40
.global s3$7138
s3$7138:
	.skip 0x44
.global print_mutex
print_mutex:
	.skip 0x18
.global fault_class
fault_class:
	.skip 0x10
.global malloc_arena
malloc_arena:
	.skip 0x30
.global osAppNMIBuffer
osAppNMIBuffer:
	.skip 0x40
.global __osBaseTimer
__osBaseTimer:
	.skip 0x48
.global clear_z_tobj
clear_z_tobj:
	.skip 0x20
.global @231
@231:
	.skip 0xC
.global sThreadList__9JKRThread
sThreadList__9JKRThread:
	.skip 0xC
.global @266
@266:
	.skip 0xC
.global sAramCommandList__7JKRAram
sAramCommandList__7JKRAram:
	.skip 0xC
.global @262
@262:
	.skip 0xC
.global sAramList__11JKRAramHeap
sAramList__11JKRAramHeap:
	.skip 0xC
.global @266
@266:
	.skip 0xC
.global sAramPieceCommandList__12JKRAramPiece
sAramPieceCommandList__12JKRAramPiece:
	.skip 0xC
.global mMutex__12JKRAramPiece
mMutex__12JKRAramPiece:
	.skip 0x18
.global @2094
@2094:
	.skip 0xC
.global sVolumeList__13JKRFileLoader
sVolumeList__13JKRFileLoader:
	.skip 0xC
.global @554
@554:
	.skip 0xC
.global sDvdList__10JKRDvdFile
sDvdList__10JKRDvdFile:
	.skip 0xC
.global @262
@262:
	.skip 0xC
.global sDvdAsyncList__12JKRDvdRipper
sDvdAsyncList__12JKRDvdRipper:
	.skip 0xC
.global @266
@266:
	.skip 0xC
.global sDvdAramAsyncList__16JKRDvdAramRipper
sDvdAramAsyncList__16JKRDvdAramRipper:
	.skip 0xC
.global @477
@477:
	.skip 0xC
.global mPadList__10JUTGamePad
mPadList__10JUTGamePad:
	.skip 0xC
.global mPadStatus__10JUTGamePad
mPadStatus__10JUTGamePad:
	.skip 0x30
.global mPadButton__10JUTGamePad
mPadButton__10JUTGamePad:
	.skip 0xC0
.global mPadMStick__10JUTGamePad
mPadMStick__10JUTGamePad:
	.skip 0x40
.global mPadSStick__10JUTGamePad
mPadSStick__10JUTGamePad:
	.skip 0x40
.global exCallbackObject
exCallbackObject:
	.skip 0x14
.global @2094
@2094:
	.skip 0xC
.global sMapFileList__12JUTException
sMapFileList__12JUTException:
	.skip 0x10
.global sMessageFileLine__Q212JUTAssertion23@unnamed@JUTAssert_cpp@
sMessageFileLine__Q212JUTAssertion23@unnamed@JUTAssert_cpp@:
	.skip 0x40
.global sMessageString__Q212JUTAssertion23@unnamed@JUTAssert_cpp@
sMessageString__Q212JUTAssertion23@unnamed@JUTAssert_cpp@:
	.skip 0x68
.global DriveInfo
DriveInfo:
	.skip 0x20
.global DriveBlock
DriveBlock:
	.skip 0x30
.global __OSErrorTable
__OSErrorTable:
	.skip 0x50
.global Header
Header:
	.skip 0x20
.global Scb
Scb:
	.skip 0x58
.global RunQueue
RunQueue:
	.skip 0x100
.global IdleThread
IdleThread:
	.skip 0x310
.global DefaultThread
DefaultThread:
	.skip 0x310
.global IdleContext
IdleContext:
	.skip 0x2C8
.global Ecb
Ecb:
	.skip 0xC0
.global Packet
Packet:
	.skip 0x80
.global Alarm
Alarm:
	.skip 0xA0
.global TypeTime
TypeTime:
	.skip 0x20
.global XferTime
XferTime:
	.skip 0x20
.global TypeCallback
TypeCallback:
	.skip 0x40
.global RDSTHandler
RDSTHandler:
	.skip 0x10
.global InputBufferValid
InputBufferValid:
	.skip 0x10
.global InputBuffer
InputBuffer:
	.skip 0x20
.global InputBufferVcount
InputBufferVcount:
	.skip 0x10
.global cmdFixDevice$326
cmdFixDevice$326:
	.skip 0x10
.global CommandList
CommandList:
	.skip 0x40
.global AlarmForWA
AlarmForWA:
	.skip 0x28
.global AlarmForTimeout
AlarmForTimeout:
	.skip 0x28
.global AlarmForBreak
AlarmForBreak:
	.skip 0x28
.global Prev
Prev:
	.skip 0xC
.global Curr
Curr:
	.skip 0x1C
.global tmpBuffer
tmpBuffer:
	.skip 0x80
.global DummyCommandBlock
DummyCommandBlock:
	.skip 0x30
.global ResetAlarm
ResetAlarm:
	.skip 0x28
.global WaitingQueue
WaitingQueue:
	.skip 0x20
.global bb2Buf
bb2Buf:
	.skip 0x40
.global block$16
block$16:
	.skip 0x30
.global regs
regs:
	.skip 0x78
.global shdwRegs
shdwRegs:
	.skip 0x78
.global HorVer
HorVer:
	.skip 0x58
.global Type
Type:
	.skip 0x10
.global Origin
Origin:
	.skip 0x30
.global CmdProbeDevice
CmdProbeDevice:
	.skip 0x10
.global __CARDBlock
__CARDBlock:
	.skip 0x220
.global __CARDDiskNone
__CARDDiskNone:
	.skip 0x20
.global gxData
gxData:
	.skip 0x4F8
.global FifoObj
FifoObj:
	.skip 0x80
.global DisplayListFifo
DisplayListFifo:
	.skip 0x24
.global __savedGXdata
__savedGXdata:
	.skip 0x4FC
.global fragmentinfo
fragmentinfo:
	.skip 0x10
.global __atexit_funcs
__atexit_funcs:
	.skip 0x100
.global stderr_buff
stderr_buff:
	.skip 0x100
.global stdout_buff
stdout_buff:
	.skip 0x100
.global stdin_buff
stdin_buff:
	.skip 0x100
.global gTRKEventQueue
gTRKEventQueue:
	.skip 0x28
.global gTRKBigEndian
gTRKBigEndian:
	.skip 0x8
.global gTRKMsgBufs
gTRKMsgBufs:
	.skip 0x19B0
.global gTRKInputPendingPtr
gTRKInputPendingPtr:
	.skip 0x4
.global gTRKFramingState
gTRKFramingState:
	.skip 0x14
.global gTRKDispatchTableSize
gTRKDispatchTableSize:
	.skip 0x8
.global IsTRKConnected
IsTRKConnected:
	.skip 0x8
.global TRK_saved_exceptionID
TRK_saved_exceptionID:
	.skip 0x4
.global gTRKState
gTRKState:
	.skip 0xA4
.global gTRKCPUState
gTRKCPUState:
	.skip 0x430
.global gTRKSaveState
gTRKSaveState:
	.skip 0x94
.global TRKvalue128_temp
TRKvalue128_temp:
	.skip 0x14
.global lc_base
lc_base:
	.skip 0x8
.global TRK_mainError
TRK_mainError:
	.skip 0x8
.global gWritePos
gWritePos:
	.skip 0x4
.global gReadPos
gReadPos:
	.skip 0x4
.global gReadCount
gReadCount:
	.skip 0x4
.global _MetroTRK_Has_Framing
_MetroTRK_Has_Framing:
	.skip 0x4
.global gReadBuf
gReadBuf:
	.skip 0x110C
.global gWriteBuf
gWriteBuf:
	.skip 0x110C
.global lbl_8020D788
lbl_8020D788:
	.skip 0x4
.global aram_hp
aram_hp:
	.skip 0x14
.global jac_audioThread
jac_audioThread:
	.skip 0x930
.global jac_neosThread
jac_neosThread:
	.skip 0x310
.global jac_dvdThread
jac_dvdThread:
	.skip 0x310
.global MK_QUEUE
MK_QUEUE:
	.skip 0x98
.global MK_QBUF
MK_QBUF:
	.skip 0x40
.global MK_RMES
MK_RMES:
	.skip 0x40
.global AG
AG:
	.skip 0x92B0
.global EX_DSPTASK
EX_DSPTASK:
	.skip 0x40
.global CGRP_ARRAY
CGRP_ARRAY:
	.skip 0x40
.global aram_mother
aram_mother:
	.skip 0x748
.global lbl_80218280
lbl_80218280:
	.skip 0x1
.global lbl_80218281
lbl_80218281:
	.skip 0x1
.global lbl_80218282
lbl_80218282:
	.skip 0x2
.global NOISE_DTABLE
NOISE_DTABLE:
	.skip 0x4
.global PHASE_SYNC_FLAG
PHASE_SYNC_FLAG:
	.skip 0x4
.global FRAME_SYNC_FLAG
FRAME_SYNC_FLAG:
	.skip 0x4
.global PHASE_SYNC_COUNTER
PHASE_SYNC_COUNTER:
	.skip 0x4
.global FRAME_SYNC_COUNTER
FRAME_SYNC_COUNTER:
	.skip 0x4
.global lbl_80218298
lbl_80218298:
	.skip 0x1
.global lbl_80218299
lbl_80218299:
	.skip 0x1
.global lbl_8021829A
lbl_8021829A:
	.skip 0x2
.global delta_counter
delta_counter:
	.skip 0x4
.global lbl_802182A0
lbl_802182A0:
	.skip 0x4
.global bias_move
bias_move:
	.skip 0x4
.global bias
bias:
	.skip 0x4
.global voltage
voltage:
	.skip 0x4
.global voltage_out
voltage_out:
	.skip 0x4
.global sample_timer
sample_timer:
	.skip 0x4
.global abs_timer
abs_timer:
	.skip 0x4
.global timer$919
timer$919:
	.skip 0x2
.global lbl_802182BE
lbl_802182BE:
	.skip 0x2
.global shiftr$1006
shiftr$1006:
	.skip 0x4
.global lbl_802182C4
lbl_802182C4:
	.skip 0x4
.global lastsample$1251
lastsample$1251:
	.skip 0x4
.global read_pointer
read_pointer:
	.skip 0x4
.global create_counter$1290
create_counter$1290:
	.skip 0x4
.global lbl_802182D4
lbl_802182D4:
	.skip 0x4
.global create_speed$1293
create_speed$1293:
	.skip 0x4
.global exitflag
exitflag:
	.skip 0x4
.global old_mixcall
old_mixcall:
	.skip 0x4
.global lbl_802182E4
lbl_802182E4:
	.skip 0x4
.global bootsound_ptr
bootsound_ptr:
	.skip 0x4
.global bootsound_size
bootsound_size:
	.skip 0x4
.global sou_now_spec
sou_now_spec:
	.skip 0x4
.global lbl_802182F4
lbl_802182F4:
	.skip 0x1
.global lbl_802182F5
lbl_802182F5:
	.skip 0x3
.global fatalErrorCallback
fatalErrorCallback:
	.skip 0x4
.global lbl_802182FC
lbl_802182FC:
	.skip 0x1
.global lbl_802182FD
lbl_802182FD:
	.skip 0x1
.global lbl_802182FE
lbl_802182FE:
	.skip 0x2
.global sou_last_sys_trg_num
sou_last_sys_trg_num:
	.skip 0x2
.global lbl_80218302
lbl_80218302:
	.skip 0x2
.global sou_kazaguruma_speed
sou_kazaguruma_speed:
	.skip 0x4
.global lbl_80218308
lbl_80218308:
	.skip 0x1
.global lbl_80218309
lbl_80218309:
	.skip 0x1
.global lbl_8021830A
lbl_8021830A:
	.skip 0x1
.global lbl_8021830B
lbl_8021830B:
	.skip 0x1
.global lbl_8021830C
lbl_8021830C:
	.skip 0x4
.global sou_player_speed
sou_player_speed:
	.skip 0x4
.global lbl_80218314
lbl_80218314:
	.skip 0x1
.global lbl_80218315
lbl_80218315:
	.skip 0x1
.global lbl_80218316
lbl_80218316:
	.skip 0x1
.global lbl_80218317
lbl_80218317:
	.skip 0x1
.global lbl_80218318
lbl_80218318:
	.skip 0x1
.global lbl_80218319
lbl_80218319:
	.skip 0x1
.global lbl_8021831A
lbl_8021831A:
	.skip 0x1
.global lbl_8021831B
lbl_8021831B:
	.skip 0x1
.global sou_last_perio
sou_last_perio:
	.skip 0x2
.global sou_last_uchiwa
sou_last_uchiwa:
	.skip 0x2
.global lbl_80218320
lbl_80218320:
	.skip 0x1
.global lbl_80218321
lbl_80218321:
	.skip 0x1
.global sou_kiteki_random
sou_kiteki_random:
	.skip 0x2
.global sou_kiteki_counter
sou_kiteki_counter:
	.skip 0x4
.global sou_camera2ground
sou_camera2ground:
	.skip 0x4
.global lbl_8021832C
lbl_8021832C:
	.skip 0x1
.global lbl_8021832D
lbl_8021832D:
	.skip 0x1
.global lbl_8021832E
lbl_8021832E:
	.skip 0x1
.global lbl_8021832F
lbl_8021832F:
	.skip 0x1
.global sou_bgm_vol_move_target
sou_bgm_vol_move_target:
	.skip 0x4
.global sou_bgm_vol_move_delta
sou_bgm_vol_move_delta:
	.skip 0x4
.global sou_bgm1_vol_now
sou_bgm1_vol_now:
	.skip 0x4
.global sou_bgm2_vol_now
sou_bgm2_vol_now:
	.skip 0x4
.global sou_bgm_vol_move_time
sou_bgm_vol_move_time:
	.skip 0x2
.global sou_bgm_vol_move_counter
sou_bgm_vol_move_counter:
	.skip 0x2
.global sou_kisha_angle
sou_kisha_angle:
	.skip 0x4
.global sou_kisha_distance
sou_kisha_distance:
	.skip 0x4
.global sou_kisha_angle2
sou_kisha_angle2:
	.skip 0x4
.global sou_kisha_distance2
sou_kisha_distance2:
	.skip 0x4
.global sou_kisha_status
sou_kisha_status:
	.skip 0x2
.global sou_shu_count
sou_shu_count:
	.skip 0x2
.global sou_tonton_count
sou_tonton_count:
	.skip 0x2
.global lbl_8021835A
lbl_8021835A:
	.skip 0x1
.global lbl_8021835B
lbl_8021835B:
	.skip 0x1
.global lbl_8021835C
lbl_8021835C:
	.skip 0x1
.global lbl_8021835D
lbl_8021835D:
	.skip 0x1
.global lbl_8021835E
lbl_8021835E:
	.skip 0x1
.global lbl_8021835F
lbl_8021835F:
	.skip 0x1
.global lbl_80218360
lbl_80218360:
	.skip 0x1
.global lbl_80218361
lbl_80218361:
	.skip 0x1
.global lbl_80218362
lbl_80218362:
	.skip 0x2
.global sou_bgm_call_buffer_u16
sou_bgm_call_buffer_u16:
	.skip 0x2
.global sou_ongenpos_kill_countdown
sou_ongenpos_kill_countdown:
	.skip 0x2
.global sou_chime_volume
sou_chime_volume:
	.skip 0x4
.global lbl_8021836C
lbl_8021836C:
	.skip 0x1
.global lbl_8021836D
lbl_8021836D:
	.skip 0x1
.global lbl_8021836E
lbl_8021836E:
	.skip 0x1
.global lbl_8021836F
lbl_8021836F:
	.skip 0x1
.global lbl_80218370
lbl_80218370:
	.skip 0x1
.global lbl_80218371
lbl_80218371:
	.skip 0x1
.global lbl_80218372
lbl_80218372:
	.skip 0x1
.global lbl_80218373
lbl_80218373:
	.skip 0x1
.global lbl_80218374
lbl_80218374:
	.skip 0x1
.global lbl_80218375
lbl_80218375:
	.skip 0x1
.global sou_num2_animal_id
sou_num2_animal_id:
	.skip 0x2
.global lbl_80218378
lbl_80218378:
	.skip 0x1
.global lbl_80218379
lbl_80218379:
	.skip 0x1
.global lbl_8021837A
lbl_8021837A:
	.skip 0x1
.global lbl_8021837B
lbl_8021837B:
	.skip 0x1
.global lbl_8021837C
lbl_8021837C:
	.skip 0x1
.global lbl_8021837D
lbl_8021837D:
	.skip 0x1
.global lbl_8021837E
lbl_8021837E:
	.skip 0x6
.global SOU_FIR_STATE
SOU_FIR_STATE:
	.skip 0x4
.global init$2308
init$2308:
	.skip 0x4
.global lbl_8021838C
lbl_8021838C:
	.skip 0x4
.global current_sub_track
current_sub_track:
	.skip 0x4
.global na_melody_id_hist
na_melody_id_hist:
	.skip 0xC
.global pre_beat_type$427
pre_beat_type$427:
	.skip 0x4
.global lbl_802183A4
lbl_802183A4:
	.skip 0x4
.global pre_frame_per_step$430
pre_frame_per_step$430:
	.skip 0x4
.global lbl_802183AC
lbl_802183AC:
	.skip 0x4
.global kappa_seq_handle
kappa_seq_handle:
	.skip 0x8
.global start_flag
start_flag:
	.skip 0x4
.global mouth_num
mouth_num:
	.skip 0x4
.global seq_num
seq_num:
	.skip 0x8
.global ADPCM_BOOKBUF_SIZE
ADPCM_BOOKBUF_SIZE:
	.skip 0x4
.global taskp$90
taskp$90:
	.skip 0x4
.global alltasks$91
alltasks$91:
	.skip 0x4
.global consumes$92
consumes$92:
	.skip 0x4
.global init$105
init$105:
	.skip 0x4
.global lbl_802183DC
lbl_802183DC:
	.skip 0x4
.global flag$227
flag$227:
	.skip 0x4
.global lbl_802183E4
lbl_802183E4:
	.skip 0x2
.global finalr_phase$230
finalr_phase$230:
	.skip 0x2
.global finalr_state$231
finalr_state$231:
	.skip 0x8
.global UNIVERSAL_DACCOUNTER
UNIVERSAL_DACCOUNTER:
	.skip 0x4
.global audio_hp_exist
audio_hp_exist:
	.skip 0x4
.global last_rsp_madep
last_rsp_madep:
	.skip 0x4
.global use_rsp_madep
use_rsp_madep:
	.skip 0x4
.global vframe_work_running
vframe_work_running:
	.skip 0x4
.global DAC_CALLBACK_FUNC
DAC_CALLBACK_FUNC:
	.skip 0x4
.global JAC_VFRAME_COUNTER
JAC_VFRAME_COUNTER:
	.skip 0x4
.global ext_mixcallback
ext_mixcallback:
	.skip 0x4
.global lbl_80218410
lbl_80218410:
	.skip 0x4
.global dacp$354
dacp$354:
	.skip 0x4
.global lbl_80218418
lbl_80218418:
	.skip 0x8
.global JAC_ARAM_DMA_BUFFER_TOP
JAC_ARAM_DMA_BUFFER_TOP:
	.skip 0x4
.global AUDIO_ARAM_TOP
AUDIO_ARAM_TOP:
	.skip 0x4
.global CARD_SECURITY_BUFFER
CARD_SECURITY_BUFFER:
	.skip 0x4
.global init_load_size
init_load_size:
	.skip 0x4
.global init_load_addr
init_load_addr:
	.skip 0x4
.global init_cut_flag
init_cut_flag:
	.skip 0x4
.global SELECTED_ARAM_SIZE
SELECTED_ARAM_SIZE:
	.skip 0x8
.global audioproc_mq_init
audioproc_mq_init:
	.skip 0x4
.global intcount
intcount:
	.skip 0x4
.global first$150
first$150:
	.skip 0x4
.global lbl_8021844C
lbl_8021844C:
	.skip 0x4
.global priority_set
priority_set:
	.skip 0x4
.global pri
pri:
	.skip 0x4
.global pri2
pri2:
	.skip 0x4
.global pri3
pri3:
	.skip 0x4
.global neosproc_mq_init
neosproc_mq_init:
	.skip 0x4
.global tmp_buf
tmp_buf:
	.skip 0x4
.global neos_ready
neos_ready:
	.skip 0x4
.global msgbuf$190
msgbuf$190:
	.skip 0x4
.global cur$193
cur$193:
	.skip 0x4
.global lbl_80218474
lbl_80218474:
	.skip 0x4
.global lbl_80218478
lbl_80218478:
	.skip 0x1
.global lbl_80218479
lbl_80218479:
	.skip 0x1
.global lbl_8021847A
lbl_8021847A:
	.skip 0x2
.global dac_sync_counter
dac_sync_counter:
	.skip 0x4
.global cur$266
cur$266:
	.skip 0x4
.global lbl_80218484
lbl_80218484:
	.skip 0x4
.global lbl_80218488
lbl_80218488:
	.skip 0x1
.global lbl_80218489
lbl_80218489:
	.skip 0x1
.global lbl_8021848A
lbl_8021848A:
	.skip 0x2
.global cur$257
cur$257:
	.skip 0x4
.global lbl_80218490
lbl_80218490:
	.skip 0x8
.global mq_init
mq_init:
	.skip 0x4
.global buffersize
buffersize:
	.skip 0x4
.global buffers
buffers:
	.skip 0x4
.global next_buffersize
next_buffersize:
	.skip 0x4
.global next_buffertop
next_buffertop:
	.skip 0x4
.global next_buffers
next_buffers:
	.skip 0x4
.global cur_q
cur_q:
	.skip 0x4
.global dvdt_sleep
dvdt_sleep:
	.skip 0x8
.global DVDT_PAUSE_FLAG
DVDT_PAUSE_FLAG:
	.skip 0x4
.global error_callback
error_callback:
	.skip 0x4
.global ADVD_BUFFER
ADVD_BUFFER:
	.skip 0x8
.global buffer_load
buffer_load:
	.skip 0x4
.global buffer_full
buffer_full:
	.skip 0x4
.global arq_index$350
arq_index$350:
	.skip 0x4
.global lbl_802184D8
lbl_802184D8:
	.skip 0x4
.global buffer_full2
buffer_full2:
	.skip 0x4
.global dvdfile_dics
dvdfile_dics:
	.skip 0x8
.global JAC_AI_SETTING
JAC_AI_SETTING:
	.skip 0x8
.global STOP_VELOCONV
STOP_VELOCONV:
	.skip 0x8
.global EXGTYPE
EXGTYPE:
	.skip 0x8
.global AUDIO_SYSTEM_READY
AUDIO_SYSTEM_READY:
	.skip 0x4
.global FASTDMA_BUFFER
FASTDMA_BUFFER:
	.skip 0x4
.global use$1616
use$1616:
	.skip 0x4
.global lbl_8021850C
lbl_8021850C:
	.skip 0x4
.global lbl_80218510
lbl_80218510:
	.skip 0x1
.global lbl_80218511
lbl_80218511:
	.skip 0x1
.global lbl_80218512
lbl_80218512:
	.skip 0x1
.global lbl_80218513
lbl_80218513:
	.skip 0x1
.global get$780
get$780:
	.skip 0x4
.global lbl_80218518
lbl_80218518:
	.skip 0x4
.global oldGetCount$783
oldGetCount$783:
	.skip 0x4
.global lbl_80218520
lbl_80218520:
	.skip 0x8
.global NA_VFRAME_CALLBACK
NA_VFRAME_CALLBACK:
	.skip 0x4
.global NA_CALLBACK
NA_CALLBACK:
	.skip 0x4
.global NA_GRP_CALLBACK
NA_GRP_CALLBACK:
	.skip 0x4
.global NA_SOUND_CALLBACK
NA_SOUND_CALLBACK:
	.skip 0x4
.global NA_DACOUT_CALLBACK
NA_DACOUT_CALLBACK:
	.skip 0x8
.global first$334
first$334:
	.skip 0x4
.global lbl_80218544
lbl_80218544:
	.skip 0x4
.global lbl_80218548
lbl_80218548:
	.skip 0x1
.global lbl_80218549
lbl_80218549:
	.skip 0x1
.global lbl_8021854A
lbl_8021854A:
	.skip 0x6
.global cur_waits
cur_waits:
	.skip 0x4
.global cur_top
cur_top:
	.skip 0x4
.global cur_tail
cur_tail:
	.skip 0x8
.global old_time
old_time:
	.skip 0x8
.global inited$149
inited$149:
	.skip 0x4
.global lbl_8021856C
lbl_8021856C:
	.skip 0x4
.global ACTIVE_FATS
ACTIVE_FATS:
	.skip 0x4
.global USEFAT_TAIL
USEFAT_TAIL:
	.skip 0x4
.global cmd_once
cmd_once:
	.skip 0x8
.global cmd_stay
cmd_stay:
	.skip 0x8
.global global_id
global_id:
	.skip 0x8
.global JAM_CALLBACK_FUNC
JAM_CALLBACK_FUNC:
	.skip 0x4
.global T_LISTS
T_LISTS:
	.skip 0x4
.global SEQ_P
SEQ_P:
	.skip 0x4
.global lbl_8021859C
lbl_8021859C:
	.skip 0x4
.global BACK_P
BACK_P:
	.skip 0x4
.global GET_P
GET_P:
	.skip 0x4
.global SEQ_REMAIN
SEQ_REMAIN:
	.skip 0x8
.global __GBAReset
__GBAReset:
	.skip 0x8
.global texture_cache_num
texture_cache_num:
	.skip 0x4
.global texture_cache_data_entry_num
texture_cache_data_entry_num:
	.skip 0x4
.global AAnear$1922
AAnear$1922:
	.skip 0x4
.global lbl_802185C4
lbl_802185C4:
	.skip 0x4
.global AAfar$1925
AAfar$1925:
	.skip 0x4
.global lbl_802185CC
lbl_802185CC:
	.skip 0x1
.global lbl_802185CD
lbl_802185CD:
	.skip 0x1
.global lbl_802185CE
lbl_802185CE:
	.skip 0x2
.global tex_offsets$1936
tex_offsets$1936:
	.skip 0x4
.global lbl_802185D4
lbl_802185D4:
	.skip 0x4
.global last_highlow$2641
last_highlow$2641:
	.skip 0x4
.global lbl_802185DC
lbl_802185DC:
	.skip 0x1
.global lbl_802185DD
lbl_802185DD:
	.skip 0x3
.global compare_func$3262
compare_func$3262:
	.skip 0x4
.global lbl_802185E4
lbl_802185E4:
	.skip 0x1
.global lbl_802185E5
lbl_802185E5:
	.skip 0x1
.global lbl_802185E6
lbl_802185E6:
	.skip 0x1
.global lbl_802185E7
lbl_802185E7:
	.skip 0x1
.global lbl_802185E8
lbl_802185E8:
	.skip 0x4
.global scaleS$3400
scaleS$3400:
	.skip 0x4
.global lbl_802185F0
lbl_802185F0:
	.skip 0x4
.global scaleT$3403
scaleT$3403:
	.skip 0x4
.global lbl_802185F8
lbl_802185F8:
	.skip 0x4
.global transS$3406
transS$3406:
	.skip 0x4
.global lbl_80218600
lbl_80218600:
	.skip 0x4
.global transT$3409
transT$3409:
	.skip 0x4
.global lbl_80218608
lbl_80218608:
	.skip 0x1
.global lbl_80218609
lbl_80218609:
	.skip 0x1
.global lbl_8021860A
lbl_8021860A:
	.skip 0x2
.global flag$8033
flag$8033:
	.skip 0x4
.global lbl_80218610
lbl_80218610:
	.skip 0x8
.global lbl_80218618
lbl_80218618:
	.skip 0x4
.global __OSReport_MonopolyThread
__OSReport_MonopolyThread:
	.skip 0x4
.global __OSReport_disable
__OSReport_disable:
	.skip 0x8
.global this
this:
	.skip 0x8
.global lbl_80218630
lbl_80218630:
	.skip 0x8
.global __osMalloc_FreeBlockTest_Enable
__osMalloc_FreeBlockTest_Enable:
	.skip 0x4
.global arena_lock_msg$299
arena_lock_msg$299:
	.skip 0x4
.global __qrand_itemp
__qrand_itemp:
	.skip 0x8
.global __osTimeOffset
__osTimeOffset:
	.skip 0x4
.global lbl_8021864C
lbl_8021864C:
	.skip 0x4
.global lbl_80218650
lbl_80218650:
	.skip 0x4
.global osShutdown
osShutdown:
	.skip 0x4
.global __osShutdownDisable
__osShutdownDisable:
	.skip 0x4
.global __osShutdown
__osShutdown:
	.skip 0x4
.global __osDisableShutdownTime
__osDisableShutdownTime:
	.skip 0x4
.global lbl_80218664
lbl_80218664:
	.skip 0x4
.global __osDisableShutdownLevel
__osDisableShutdownLevel:
	.skip 0x8
.global __osShutdownTime
__osShutdownTime:
	.skip 0x4
.global lbl_80218674
lbl_80218674:
	.skip 0x4
.global last_button$254
last_button$254:
	.skip 0x4
.global reset_t0$253
reset_t0$253:
	.skip 0x4
.global lbl_80218680
lbl_80218680:
	.skip 0x1
.global lbl_80218681
lbl_80218681:
	.skip 0x7
.global __osContinitialized
__osContinitialized:
	.skip 0x4
.global lbl_8021868C
lbl_8021868C:
	.skip 0x4
.global rootHeap__9JFWSystem
rootHeap__9JFWSystem:
	.skip 0x4
.global systemHeap__9JFWSystem
systemHeap__9JFWSystem:
	.skip 0x4
.global mainThread__9JFWSystem
mainThread__9JFWSystem:
	.skip 0x4
.global debugPrint__9JFWSystem
debugPrint__9JFWSystem:
	.skip 0x4
.global systemFont__9JFWSystem
systemFont__9JFWSystem:
	.skip 0x4
.global systemConsoleManager__9JFWSystem
systemConsoleManager__9JFWSystem:
	.skip 0x4
.global systemConsole__9JFWSystem
systemConsole__9JFWSystem:
	.skip 0x4
.global lbl_802186AC
lbl_802186AC:
	.skip 0x4
.global sManager__10JFWDisplay
sManager__10JFWDisplay:
	.skip 0x4
.global prevFrame$2481
prevFrame$2481:
	.skip 0x4
.global lbl_802186B8
lbl_802186B8:
	.skip 0x8
.global nextTick$2526
nextTick$2526:
	.skip 0x4
.global lbl_802186C4
lbl_802186C4:
	.skip 0x4
.global lbl_802186C8
lbl_802186C8:
	.skip 0x4
.global nextCount$2534
nextCount$2534:
	.skip 0x4
.global lbl_802186D0
lbl_802186D0:
	.skip 0x8
.global sSystemHeap__7JKRHeap
sSystemHeap__7JKRHeap:
	.skip 0x4
.global sCurrentHeap__7JKRHeap
sCurrentHeap__7JKRHeap:
	.skip 0x4
.global sRootHeap__7JKRHeap
sRootHeap__7JKRHeap:
	.skip 0x4
.global mErrorHandler__7JKRHeap
mErrorHandler__7JKRHeap:
	.skip 0x4
.global mCodeStart__7JKRHeap
mCodeStart__7JKRHeap:
	.skip 0x4
.global mCodeEnd__7JKRHeap
mCodeEnd__7JKRHeap:
	.skip 0x4
.global mUserRamStart__7JKRHeap
mUserRamStart__7JKRHeap:
	.skip 0x4
.global mUserRamEnd__7JKRHeap
mUserRamEnd__7JKRHeap:
	.skip 0x4
.global mMemorySize__7JKRHeap
mMemorySize__7JKRHeap:
	.skip 0x8
.global whatdo
whatdo:
	.skip 0x4
.global whatdo2
whatdo2:
	.skip 0x4
.global DBfoundSize
DBfoundSize:
	.skip 0x4
.global DBfoundOffset
DBfoundOffset:
	.skip 0x4
.global DBfoundBlock
DBfoundBlock:
	.skip 0x4
.global DBnewFreeBlock
DBnewFreeBlock:
	.skip 0x4
.global DBnewUsedBlock
DBnewUsedBlock:
	.skip 0x8
.global sAramObject__7JKRAram
sAramObject__7JKRAram:
	.skip 0x4
.global szpBuf
szpBuf:
	.skip 0x4
.global szpEnd
szpEnd:
	.skip 0x4
.global refBuf
refBuf:
	.skip 0x4
.global refEnd
refEnd:
	.skip 0x4
.global refCurrent
refCurrent:
	.skip 0x4
.global srcOffset
srcOffset:
	.skip 0x4
.global transLeft
transLeft:
	.skip 0x4
.global srcLimit
srcLimit:
	.skip 0x4
.global srcAddress
srcAddress:
	.skip 0x4
.global fileOffset
fileOffset:
	.skip 0x4
.global readCount
readCount:
	.skip 0x4
.global maxDest
maxDest:
	.skip 0x8
.global sAramStreamObject__13JKRAramStream
sAramStreamObject__13JKRAramStream:
	.skip 0x4
.global transBuffer__13JKRAramStream
transBuffer__13JKRAramStream:
	.skip 0x4
.global transSize__13JKRAramStream
transSize__13JKRAramStream:
	.skip 0x4
.global transHeap__13JKRAramStream
transHeap__13JKRAramStream:
	.skip 0x4
.global sCurrentVolume__13JKRFileLoader
sCurrentVolume__13JKRFileLoader:
	.skip 0x8
.global sCurrentDirID__10JKRArchive
sCurrentDirID__10JKRArchive:
	.skip 0x8
.global szpBuf
szpBuf:
	.skip 0x4
.global szpEnd
szpEnd:
	.skip 0x4
.global refBuf
refBuf:
	.skip 0x4
.global refEnd
refEnd:
	.skip 0x4
.global refCurrent
refCurrent:
	.skip 0x4
.global srcOffset
srcOffset:
	.skip 0x4
.global transLeft
transLeft:
	.skip 0x4
.global srcLimit
srcLimit:
	.skip 0x4
.global srcFile
srcFile:
	.skip 0x4
.global fileOffset
fileOffset:
	.skip 0x4
.global readCount
readCount:
	.skip 0x4
.global maxDest
maxDest:
	.skip 0x4
.global szpBuf
szpBuf:
	.skip 0x4
.global szpEnd
szpEnd:
	.skip 0x4
.global refBuf
refBuf:
	.skip 0x4
.global refEnd
refEnd:
	.skip 0x4
.global refCurrent
refCurrent:
	.skip 0x4
.global dmaBuf
dmaBuf:
	.skip 0x4
.global dmaEnd
dmaEnd:
	.skip 0x4
.global dmaCurrent
dmaCurrent:
	.skip 0x4
.global srcOffset
srcOffset:
	.skip 0x4
.global transLeft
transLeft:
	.skip 0x4
.global srcLimit
srcLimit:
	.skip 0x4
.global srcFile
srcFile:
	.skip 0x4
.global fileOffset
fileOffset:
	.skip 0x4
.global readCount
readCount:
	.skip 0x4
.global maxDest
maxDest:
	.skip 0x8
.global sDecompObject__9JKRDecomp
sDecompObject__9JKRDecomp:
	.skip 0x8
.global lbl_802187F0
lbl_802187F0:
	.skip 0x4
.global sCurrentFifo__12JUTGraphFifo
sCurrentFifo__12JUTGraphFifo:
	.skip 0x4
.global mGpStatus__12JUTGraphFifo
mGpStatus__12JUTGraphFifo:
	.skip 0x8
.global sDebugPrint__10JUTDbPrint
sDebugPrint__10JUTDbPrint:
	.skip 0x8
.global lbl_80218808
lbl_80218808:
	.skip 0x4
.global mPadAssign__10JUTGamePad
mPadAssign__10JUTGamePad:
	.skip 0x4
.global mSuppressPadReset__10JUTGamePad
mSuppressPadReset__10JUTGamePad:
	.skip 0x4
.global sAnalogMode__10JUTGamePad
sAnalogMode__10JUTGamePad:
	.skip 0x4
.global mStatus__Q210JUTGamePad7CRumble
mStatus__Q210JUTGamePad7CRumble:
	.skip 0x4
.global mEnabled__Q210JUTGamePad7CRumble
mEnabled__Q210JUTGamePad7CRumble:
	.skip 0x4
.global sCallback__Q210JUTGamePad13C3ButtonReset
sCallback__Q210JUTGamePad13C3ButtonReset:
	.skip 0x4
.global sCallbackArg__Q210JUTGamePad13C3ButtonReset
sCallbackArg__Q210JUTGamePad13C3ButtonReset:
	.skip 0x4
.global sThreshold__Q210JUTGamePad13C3ButtonReset
sThreshold__Q210JUTGamePad13C3ButtonReset:
	.skip 0x4
.global lbl_8021882C
lbl_8021882C:
	.skip 0x4
.global lbl_80218830
lbl_80218830:
	.skip 0x1
.global lbl_80218831
lbl_80218831:
	.skip 0x3
.global sResetOccurredPort__Q210JUTGamePad13C3ButtonReset
sResetOccurredPort__Q210JUTGamePad13C3ButtonReset:
	.skip 0x4
.global sErrorManager__12JUTException
sErrorManager__12JUTException:
	.skip 0x4
.global sPreUserCallback__12JUTException
sPreUserCallback__12JUTException:
	.skip 0x4
.global sPostUserCallback__12JUTException
sPostUserCallback__12JUTException:
	.skip 0x4
.global sConsoleBuffer__12JUTException
sConsoleBuffer__12JUTException:
	.skip 0x4
.global sConsoleBufferSize__12JUTException
sConsoleBufferSize__12JUTException:
	.skip 0x4
.global sConsole__12JUTException
sConsole__12JUTException:
	.skip 0x4
.global msr__12JUTException
msr__12JUTException:
	.skip 0x4
.global fpscr__12JUTException
fpscr__12JUTException:
	.skip 0x4
.global sDirectPrint__14JUTDirectPrint
sDirectPrint__14JUTDirectPrint:
	.skip 0x8
.global sMessageLife__Q212JUTAssertion23@unnamed@JUTAssert_cpp@
sMessageLife__Q212JUTAssertion23@unnamed@JUTAssert_cpp@:
	.skip 0x8
.global sManager__8JUTVideo
sManager__8JUTVideo:
	.skip 0x4
.global sVideoLastTick__8JUTVideo
sVideoLastTick__8JUTVideo:
	.skip 0x4
.global sVideoInterval__8JUTVideo
sVideoInterval__8JUTVideo:
	.skip 0x4
.global lbl_80218874
lbl_80218874:
	.skip 0x4
.global frameBuffer$2132
frameBuffer$2132:
	.skip 0x4
.global lbl_8021887C
lbl_8021887C:
	.skip 0x4
.global sManager__6JUTXfb
sManager__6JUTXfb:
	.skip 0x8
.global sManager__10JUTProcBar
sManager__10JUTProcBar:
	.skip 0x4
.global cnt$2246
cnt$2246:
	.skip 0x4
.global lbl_80218890
lbl_80218890:
	.skip 0x4
.global cntUser$2295
cntUser$2295:
	.skip 0x4
.global lbl_80218898
lbl_80218898:
	.skip 0x8
.global sManager__17JUTConsoleManager
sManager__17JUTConsoleManager:
	.skip 0x4
.global sReportConsole
sReportConsole:
	.skip 0x4
.global sWarningConsole
sWarningConsole:
	.skip 0x8
.global BootInfo
BootInfo:
	.skip 0x4
.global BI2DebugFlag
BI2DebugFlag:
	.skip 0x4
.global BI2DebugFlagHolder
BI2DebugFlagHolder:
	.skip 0x4
.global __OSIsGcam
__OSIsGcam:
	.skip 0x4
.global AreWeInitialized
AreWeInitialized:
	.skip 0x4
.global OSExceptionTable
OSExceptionTable:
	.skip 0x4
.global __OSSavedRegionEnd
__OSSavedRegionEnd:
	.skip 0x4
.global __OSSavedRegionStart
__OSSavedRegionStart:
	.skip 0x4
.global __OSInIPL
__OSInIPL:
	.skip 0x8
.global __OSStartTime
__OSStartTime:
	.skip 0x4
.global lbl_802188DC
lbl_802188DC:
	.skip 0x4
.global AlarmQueue
AlarmQueue:
	.skip 0x8
.global HeapArray
HeapArray:
	.skip 0x4
.global NumHeaps
NumHeaps:
	.skip 0x4
.global ArenaStart
ArenaStart:
	.skip 0x4
.global ArenaEnd
ArenaEnd:
	.skip 0x4
.global __OSArenaHi
__OSArenaHi:
	.skip 0x8
.global InterruptHandlerTable
InterruptHandlerTable:
	.skip 0x4
.global __OSLastInterruptSrr0
__OSLastInterruptSrr0:
	.skip 0x4
.global __OSLastInterrupt
__OSLastInterrupt:
	.skip 0x8
.global __OSLastInterruptTime
__OSLastInterruptTime:
	.skip 0x4
.global lbl_80218914
lbl_80218914:
	.skip 0x4
.global SaveStart
SaveStart:
	.skip 0x4
.global SaveEnd
SaveEnd:
	.skip 0x4
.global Prepared
Prepared:
	.skip 0x8
.global ResetFunctionQueue
ResetFunctionQueue:
	.skip 0x8
.global ResetCallback
ResetCallback:
	.skip 0x4
.global Down
Down:
	.skip 0x4
.global LastState
LastState:
	.skip 0x8
.global HoldUp
HoldUp:
	.skip 0x4
.global lbl_80218944
lbl_80218944:
	.skip 0x4
.global HoldDown
HoldDown:
	.skip 0x4
.global lbl_8021894C
lbl_8021894C:
	.skip 0x4
.global RunQueueBits
RunQueueBits:
	.skip 0x4
.global RunQueueHint
RunQueueHint:
	.skip 0x4
.global Reschedule
Reschedule:
	.skip 0x8
.global Chan
Chan:
	.skip 0x4
.global Dev
Dev:
	.skip 0x4
.global Enabled
Enabled:
	.skip 0x4
.global BarnacleEnabled
BarnacleEnabled:
	.skip 0x4
.global cmdTypeAndStatus$77
cmdTypeAndStatus$77:
	.skip 0x4
.global cmdTypeAndStatus$371
cmdTypeAndStatus$371:
	.skip 0x4
.global __PADFixBits
__PADFixBits:
	.skip 0x8
.global SamplingRate
SamplingRate:
	.skip 0x8
.global __DBInterface
__DBInterface:
	.skip 0x4
.global DBVerbose
DBVerbose:
	.skip 0x4
.global StopAtNextInt
StopAtNextInt:
	.skip 0x4
.global LastLength
LastLength:
	.skip 0x4
.global Callback
Callback:
	.skip 0x4
.global ResetCoverCallback
ResetCoverCallback:
	.skip 0x4
.global LastResetEnd
LastResetEnd:
	.skip 0x4
.global lbl_802189A4
lbl_802189A4:
	.skip 0x4
.global ResetOccurred
ResetOccurred:
	.skip 0x4
.global WaitingCoverClose
WaitingCoverClose:
	.skip 0x4
.global Breaking
Breaking:
	.skip 0x4
.global WorkAroundType
WorkAroundType:
	.skip 0x4
.global WorkAroundSeekLocation
WorkAroundSeekLocation:
	.skip 0x8
.global LastReadFinished
LastReadFinished:
	.skip 0x4
.global lbl_802189C4
lbl_802189C4:
	.skip 0x4
.global LastReadIssued
LastReadIssued:
	.skip 0x4
.global lbl_802189CC
lbl_802189CC:
	.skip 0x4
.global LastCommandWasRead
LastCommandWasRead:
	.skip 0x4
.global NextCommandNumber
NextCommandNumber:
	.skip 0x4
.global BootInfo
BootInfo:
	.skip 0x4
.global FstStart
FstStart:
	.skip 0x4
.global FstStringStart
FstStringStart:
	.skip 0x4
.global MaxEntryNum
MaxEntryNum:
	.skip 0x4
.global currentDirectory
currentDirectory:
	.skip 0x4
.global __DVDLongFileNameFlag
__DVDLongFileNameFlag:
	.skip 0x4
.global __DVDThreadQueue
__DVDThreadQueue:
	.skip 0x8
.global executing
executing:
	.skip 0x4
.global currID
currID:
	.skip 0x4
.global bootInfo
bootInfo:
	.skip 0x4
.global PauseFlag
PauseFlag:
	.skip 0x4
.global PausingFlag
PausingFlag:
	.skip 0x4
.global AutoFinishing
AutoFinishing:
	.skip 0x4
.global FatalErrorFlag
FatalErrorFlag:
	.skip 0x4
.global CurrCommand
CurrCommand:
	.skip 0x4
.global Canceling
Canceling:
	.skip 0x4
.global CancelCallback
CancelCallback:
	.skip 0x4
.global ResumeFromHere
ResumeFromHere:
	.skip 0x4
.global CancelLastError
CancelLastError:
	.skip 0x4
.global LastError
LastError:
	.skip 0x4
.global NumInternalRetry
NumInternalRetry:
	.skip 0x4
.global ResetRequired
ResetRequired:
	.skip 0x4
.global FirstTimeInBootrom
FirstTimeInBootrom:
	.skip 0x4
.global DVDInitialized
DVDInitialized:
	.skip 0x4
.global LastState
LastState:
	.skip 0x4
.global status
status:
	.skip 0x4
.global bb2
bb2:
	.skip 0x4
.global idTmp
idTmp:
	.skip 0x8
.global retraceCount
retraceCount:
	.skip 0x4
.global flushFlag
flushFlag:
	.skip 0x4
.global retraceQueue
retraceQueue:
	.skip 0x8
.global PreCB
PreCB:
	.skip 0x4
.global PostCB
PostCB:
	.skip 0x4
.global encoderType
encoderType:
	.skip 0x4
.global displayOffsetH
displayOffsetH:
	.skip 0x2
.global displayOffsetV
displayOffsetV:
	.skip 0x2
.global changeMode
changeMode:
	.skip 0x8
.global changed
changed:
	.skip 0x4
.global lbl_80218A7C
lbl_80218A7C:
	.skip 0x4
.global shdwChangeMode
shdwChangeMode:
	.skip 0x8
.global shdwChanged
shdwChanged:
	.skip 0x4
.global lbl_80218A8C
lbl_80218A8C:
	.skip 0x4
.global CurrTiming
CurrTiming:
	.skip 0x4
.global CurrTvMode
CurrTvMode:
	.skip 0x4
.global FBSet
FBSet:
	.skip 0x4
.global message$332
message$332:
	.skip 0x4
.global Initialized
Initialized:
	.skip 0x4
.global EnabledBits
EnabledBits:
	.skip 0x4
.global ResettingBits
ResettingBits:
	.skip 0x4
.global RecalibrateBits
RecalibrateBits:
	.skip 0x4
.global WaitingBits
WaitingBits:
	.skip 0x4
.global CheckingBits
CheckingBits:
	.skip 0x4
.global PendingBits
PendingBits:
	.skip 0x4
.global SamplingCallback
SamplingCallback:
	.skip 0x4
.global recalibrated$396
recalibrated$396:
	.skip 0x4
.global __PADSpec
__PADSpec:
	.skip 0x4
.global __AIS_Callback
__AIS_Callback:
	.skip 0x4
.global __AID_Callback
__AID_Callback:
	.skip 0x4
.global __CallbackStack
__CallbackStack:
	.skip 0x4
.global __OldStack
__OldStack:
	.skip 0x4
.global __AI_init_flag
__AI_init_flag:
	.skip 0x8
.global bound_32KHz
bound_32KHz:
	.skip 0x4
.global lbl_80218AE4
lbl_80218AE4:
	.skip 0x4
.global bound_48KHz
bound_48KHz:
	.skip 0x4
.global lbl_80218AEC
lbl_80218AEC:
	.skip 0x4
.global min_wait
min_wait:
	.skip 0x4
.global lbl_80218AF4
lbl_80218AF4:
	.skip 0x4
.global max_wait
max_wait:
	.skip 0x4
.global lbl_80218AFC
lbl_80218AFC:
	.skip 0x4
.global buffer
buffer:
	.skip 0x4
.global lbl_80218B04
lbl_80218B04:
	.skip 0x4
.global __AR_Callback
__AR_Callback:
	.skip 0x4
.global __AR_Size
__AR_Size:
	.skip 0x4
.global __AR_InternalSize
__AR_InternalSize:
	.skip 0x4
.global __AR_ExpansionSize
__AR_ExpansionSize:
	.skip 0x4
.global __AR_StackPointer
__AR_StackPointer:
	.skip 0x4
.global __AR_FreeBlocks
__AR_FreeBlocks:
	.skip 0x4
.global __AR_BlockLength
__AR_BlockLength:
	.skip 0x4
.global __AR_init_flag
__AR_init_flag:
	.skip 0x4
.global __ARQRequestQueueHi
__ARQRequestQueueHi:
	.skip 0x4
.global __ARQRequestTailHi
__ARQRequestTailHi:
	.skip 0x4
.global __ARQRequestQueueLo
__ARQRequestQueueLo:
	.skip 0x4
.global __ARQRequestTailLo
__ARQRequestTailLo:
	.skip 0x4
.global __ARQRequestPendingHi
__ARQRequestPendingHi:
	.skip 0x4
.global __ARQRequestPendingLo
__ARQRequestPendingLo:
	.skip 0x4
.global __ARQCallbackHi
__ARQCallbackHi:
	.skip 0x4
.global __ARQCallbackLo
__ARQCallbackLo:
	.skip 0x4
.global __ARQChunkSize
__ARQChunkSize:
	.skip 0x4
.global __ARQ_init_flag
__ARQ_init_flag:
	.skip 0x4
.global __piReg
__piReg:
	.skip 0x4
.global __cpReg
__cpReg:
	.skip 0x4
.global __peReg
__peReg:
	.skip 0x4
.global __memReg
__memReg:
	.skip 0x4
.global CPUFifo
CPUFifo:
	.skip 0x4
.global GPFifo
GPFifo:
	.skip 0x4
.global __GXCurrentThread
__GXCurrentThread:
	.skip 0x4
.global lbl_80218B6C
lbl_80218B6C:
	.skip 0x4
.global GXOverflowSuspendInProgress
GXOverflowSuspendInProgress:
	.skip 0x4
.global BreakPointCB
BreakPointCB:
	.skip 0x4
.global __GXOverflowCount
__GXOverflowCount:
	.skip 0x8
.global TokenCB
TokenCB:
	.skip 0x4
.global DrawDoneCB
DrawDoneCB:
	.skip 0x4
.global lbl_80218B88
lbl_80218B88:
	.skip 0x4
.global FinishQueue
FinishQueue:
	.skip 0xC
.global OldCPUFifo
OldCPUFifo:
	.skip 0x8
.global __global_destructor_chain
__global_destructor_chain:
	.skip 0x8
.global __aborting
__aborting:
	.skip 0x4
.global __atexit_curr_func
__atexit_curr_func:
	.skip 0x4
.global __stdio_exit
__stdio_exit:
	.skip 0x4
.global __console_exit
__console_exit:
	.skip 0x4
.global errno
errno:
	.skip 0x8
.global initialized$16
initialized$16:
	.skip 0x8
.global MTRCallback
MTRCallback:
	.skip 0x4
.global DBGCallback
DBGCallback:
	.skip 0x4
.global SendMailData
SendMailData:
	.skip 0x4
.global RecvDataLeng
RecvDataLeng:
	.skip 0x4
.global pEXIInputFlag
pEXIInputFlag:
	.skip 0x4
.global lbl_80218BDC
lbl_80218BDC:
	.skip 0x1
