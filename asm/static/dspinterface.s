.include "macros.inc"

.section .text

.org 0x8002FDC0

.global GetDspHandle__FUc
GetDspHandle__FUc:
/* 8002FDC0 0002CD20  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002FDC4 0002CD24  3C 60 80 1A */	lis r3, CH_BUF@ha
/* 8002FDC8 0002CD28  1C 80 01 80 */	mulli r4, r0, 0x180
/* 8002FDCC 0002CD2C  38 03 37 40 */	addi r0, r3, CH_BUF@l
/* 8002FDD0 0002CD30  7C 60 22 14 */	add r3, r0, r4
/* 8002FDD4 0002CD34  4E 80 00 20 */	blr 
/* 8002FDD8 0002CD38  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8002FDDC 0002CD3C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global GetFxHandle__FUc
GetFxHandle__FUc:
/* 8002FDE0 0002CD40  3C 80 80 1B */	lis r4, FX_BUF@ha
/* 8002FDE4 0002CD44  54 63 2C F4 */	rlwinm r3, r3, 5, 0x13, 0x1a
/* 8002FDE8 0002CD48  38 04 97 40 */	addi r0, r4, FX_BUF@l
/* 8002FDEC 0002CD4C  7C 60 1A 14 */	add r3, r0, r3
/* 8002FDF0 0002CD50  4E 80 00 20 */	blr 
/* 8002FDF4 0002CD54  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8002FDF8 0002CD58  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8002FDFC 0002CD5C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_SetPitch__FUcUs
DSP_SetPitch__FUcUs:
/* 8002FE00 0002CD60  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8002FE04 0002CD64  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 8002FE08 0002CD68  1C A5 01 80 */	mulli r5, r5, 0x180
/* 8002FE0C 0002CD6C  3C 60 80 1A */	lis r3, CH_BUF@ha
/* 8002FE10 0002CD70  28 00 7F FF */	cmplwi r0, 0x7fff
/* 8002FE14 0002CD74  38 63 37 40 */	addi r3, r3, CH_BUF@l
/* 8002FE18 0002CD78  7C 63 2A 14 */	add r3, r3, r5
/* 8002FE1C 0002CD7C  41 80 00 08 */	blt lbl_8002FE24
/* 8002FE20 0002CD80  38 80 7F FF */	li r4, 0x7fff
lbl_8002FE24:
/* 8002FE24 0002CD84  B0 83 00 04 */	sth r4, 4(r3)
/* 8002FE28 0002CD88  4E 80 00 20 */	blr 
/* 8002FE2C 0002CD8C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8002FE30 0002CD90  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8002FE34 0002CD94  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8002FE38 0002CD98  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8002FE3C 0002CD9C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_SetMixerInitDelayMax__FUcUc
DSP_SetMixerInitDelayMax__FUcUc:
/* 8002FE40 0002CDA0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002FE44 0002CDA4  3C 60 80 1A */	lis r3, CH_BUF@ha
/* 8002FE48 0002CDA8  1C A0 01 80 */	mulli r5, r0, 0x180
/* 8002FE4C 0002CDAC  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 8002FE50 0002CDB0  38 03 37 40 */	addi r0, r3, CH_BUF@l
/* 8002FE54 0002CDB4  7C 60 2A 14 */	add r3, r0, r5
/* 8002FE58 0002CDB8  B0 83 00 0E */	sth r4, 0xe(r3)
/* 8002FE5C 0002CDBC  4E 80 00 20 */	blr 

.global DSP_SetMixerInitVolume__FUcUcsUc
DSP_SetMixerInitVolume__FUcUcsUc:
/* 8002FE60 0002CDC0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002FE64 0002CDC4  3C 60 80 1A */	lis r3, CH_BUF@ha
/* 8002FE68 0002CDC8  1C E0 01 80 */	mulli r7, r0, 0x180
/* 8002FE6C 0002CDCC  38 63 37 40 */	addi r3, r3, CH_BUF@l
/* 8002FE70 0002CDD0  54 C0 44 2E */	rlwinm r0, r6, 8, 0x10, 0x17
/* 8002FE74 0002CDD4  7C E3 3A 14 */	add r7, r3, r7
/* 8002FE78 0002CDD8  54 83 1D 78 */	rlwinm r3, r4, 3, 0x15, 0x1c
/* 8002FE7C 0002CDDC  7C 67 1A 14 */	add r3, r7, r3
/* 8002FE80 0002CDE0  50 C0 06 3E */	rlwimi r0, r6, 0, 0x18, 0x1f
/* 8002FE84 0002CDE4  38 63 00 10 */	addi r3, r3, 0x10
/* 8002FE88 0002CDE8  B0 A3 00 04 */	sth r5, 4(r3)
/* 8002FE8C 0002CDEC  B0 A3 00 02 */	sth r5, 2(r3)
/* 8002FE90 0002CDF0  B0 03 00 06 */	sth r0, 6(r3)
/* 8002FE94 0002CDF4  4E 80 00 20 */	blr 
/* 8002FE98 0002CDF8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8002FE9C 0002CDFC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_SetMixerVolume__FUcUcsUc
DSP_SetMixerVolume__FUcUcsUc:
/* 8002FEA0 0002CE00  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002FEA4 0002CE04  54 83 1D 78 */	rlwinm r3, r4, 3, 0x15, 0x1c
/* 8002FEA8 0002CE08  1D 00 01 80 */	mulli r8, r0, 0x180
/* 8002FEAC 0002CE0C  3C E0 80 1A */	lis r7, CH_BUF@ha
/* 8002FEB0 0002CE10  38 83 00 10 */	addi r4, r3, 0x10
/* 8002FEB4 0002CE14  38 07 37 40 */	addi r0, r7, CH_BUF@l
/* 8002FEB8 0002CE18  7C 60 42 14 */	add r3, r0, r8
/* 8002FEBC 0002CE1C  A0 03 01 0A */	lhz r0, 0x10a(r3)
/* 8002FEC0 0002CE20  7C 83 22 14 */	add r4, r3, r4
/* 8002FEC4 0002CE24  28 00 00 00 */	cmplwi r0, 0
/* 8002FEC8 0002CE28  4C 82 00 20 */	bnelr 
/* 8002FECC 0002CE2C  B0 A4 00 02 */	sth r5, 2(r4)
/* 8002FED0 0002CE30  A0 04 00 06 */	lhz r0, 6(r4)
/* 8002FED4 0002CE34  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8002FED8 0002CE38  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 8002FEDC 0002CE3C  B0 04 00 06 */	sth r0, 6(r4)
/* 8002FEE0 0002CE40  4E 80 00 20 */	blr 
/* 8002FEE4 0002CE44  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8002FEE8 0002CE48  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8002FEEC 0002CE4C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8002FEF0 0002CE50  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8002FEF4 0002CE54  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8002FEF8 0002CE58  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8002FEFC 0002CE5C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_SetOscInfo__FUcUl
DSP_SetOscInfo__FUcUl:
/* 8002FF00 0002CE60  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002FF04 0002CE64  3C A0 80 1A */	lis r5, CH_BUF@ha
/* 8002FF08 0002CE68  1C C0 01 80 */	mulli r6, r0, 0x180
/* 8002FF0C 0002CE6C  38 60 00 00 */	li r3, 0
/* 8002FF10 0002CE70  38 A5 37 40 */	addi r5, r5, CH_BUF@l
/* 8002FF14 0002CE74  38 00 00 10 */	li r0, 0x10
/* 8002FF18 0002CE78  7C A5 32 14 */	add r5, r5, r6
/* 8002FF1C 0002CE7C  90 65 01 18 */	stw r3, 0x118(r5)
/* 8002FF20 0002CE80  B0 05 00 64 */	sth r0, 0x64(r5)
/* 8002FF24 0002CE84  B0 85 01 00 */	sth r4, 0x100(r5)
/* 8002FF28 0002CE88  4E 80 00 20 */	blr 
/* 8002FF2C 0002CE8C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8002FF30 0002CE90  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8002FF34 0002CE94  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8002FF38 0002CE98  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8002FF3C 0002CE9C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_SetPauseFlag__FUcUc
DSP_SetPauseFlag__FUcUc:
/* 8002FF40 0002CEA0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002FF44 0002CEA4  3C 60 80 1A */	lis r3, CH_BUF@ha
/* 8002FF48 0002CEA8  1C A0 01 80 */	mulli r5, r0, 0x180
/* 8002FF4C 0002CEAC  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 8002FF50 0002CEB0  38 03 37 40 */	addi r0, r3, CH_BUF@l
/* 8002FF54 0002CEB4  7C 60 2A 14 */	add r3, r0, r5
/* 8002FF58 0002CEB8  B0 83 00 0C */	sth r4, 0xc(r3)
/* 8002FF5C 0002CEBC  4E 80 00 20 */	blr 

.global DSP_SetWaveInfo__FUcP5Wave_Ul
DSP_SetWaveInfo__FUcP5Wave_Ul:
/* 8002FF60 0002CEC0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002FF64 0002CEC4  3C 60 80 1A */	lis r3, CH_BUF@ha
/* 8002FF68 0002CEC8  1C E0 01 80 */	mulli r7, r0, 0x180
/* 8002FF6C 0002CECC  38 CD 80 A8 */	addi r6, r13, COMP_BLOCKSAMPLES$178-_SDA_BASE_
/* 8002FF70 0002CED0  38 03 37 40 */	addi r0, r3, CH_BUF@l
/* 8002FF74 0002CED4  38 6D 80 B0 */	addi r3, r13, COMP_BLOCKBYTES$179-_SDA_BASE_
/* 8002FF78 0002CED8  7C E0 3A 14 */	add r7, r0, r7
/* 8002FF7C 0002CEDC  90 A7 01 18 */	stw r5, 0x118(r7)
/* 8002FF80 0002CEE0  88 04 00 01 */	lbz r0, 1(r4)
/* 8002FF84 0002CEE4  7C 06 00 AE */	lbzx r0, r6, r0
/* 8002FF88 0002CEE8  B0 07 00 64 */	sth r0, 0x64(r7)
/* 8002FF8C 0002CEEC  88 04 00 01 */	lbz r0, 1(r4)
/* 8002FF90 0002CEF0  7C 03 00 AE */	lbzx r0, r3, r0
/* 8002FF94 0002CEF4  B0 07 01 00 */	sth r0, 0x100(r7)
/* 8002FF98 0002CEF8  A0 07 01 00 */	lhz r0, 0x100(r7)
/* 8002FF9C 0002CEFC  28 00 00 04 */	cmplwi r0, 4
/* 8002FFA0 0002CF00  4D 80 00 20 */	bltlr 
/* 8002FFA4 0002CF04  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8002FFA8 0002CF08  90 07 01 1C */	stw r0, 0x11c(r7)
/* 8002FFAC 0002CF0C  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8002FFB0 0002CF10  B0 07 01 02 */	sth r0, 0x102(r7)
/* 8002FFB4 0002CF14  A0 07 01 02 */	lhz r0, 0x102(r7)
/* 8002FFB8 0002CF18  28 00 00 00 */	cmplwi r0, 0
/* 8002FFBC 0002CF1C  41 82 00 28 */	beq lbl_8002FFE4
/* 8002FFC0 0002CF20  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8002FFC4 0002CF24  90 07 01 10 */	stw r0, 0x110(r7)
/* 8002FFC8 0002CF28  80 04 00 18 */	lwz r0, 0x18(r4)
/* 8002FFCC 0002CF2C  90 07 01 14 */	stw r0, 0x114(r7)
/* 8002FFD0 0002CF30  A8 04 00 20 */	lha r0, 0x20(r4)
/* 8002FFD4 0002CF34  B0 07 01 04 */	sth r0, 0x104(r7)
/* 8002FFD8 0002CF38  A8 04 00 22 */	lha r0, 0x22(r4)
/* 8002FFDC 0002CF3C  B0 07 01 06 */	sth r0, 0x106(r7)
/* 8002FFE0 0002CF40  48 00 00 0C */	b lbl_8002FFEC
lbl_8002FFE4:
/* 8002FFE4 0002CF44  80 07 01 1C */	lwz r0, 0x11c(r7)
/* 8002FFE8 0002CF48  90 07 01 14 */	stw r0, 0x114(r7)
lbl_8002FFEC:
/* 8002FFEC 0002CF4C  38 60 00 00 */	li r3, 0
/* 8002FFF0 0002CF50  38 00 00 10 */	li r0, 0x10
/* 8002FFF4 0002CF54  7C 64 1B 78 */	mr r4, r3
/* 8002FFF8 0002CF58  7C 09 03 A6 */	mtctr r0
/* 8002FFFC 0002CF5C  60 00 00 00 */	nop 
lbl_80030000:
/* 80030000 0002CF60  38 03 00 B0 */	addi r0, r3, 0xb0
/* 80030004 0002CF64  38 63 00 02 */	addi r3, r3, 2
/* 80030008 0002CF68  7C 87 03 2E */	sthx r4, r7, r0
/* 8003000C 0002CF6C  42 00 FF F4 */	bdnz lbl_80030000
/* 80030010 0002CF70  4E 80 00 20 */	blr 
/* 80030014 0002CF74  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80030018 0002CF78  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003001C 0002CF7C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_SetBusConnect__FUcUcUc
DSP_SetBusConnect__FUcUcUc:
/* 80030020 0002CF80  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80030024 0002CF84  3C 60 80 1A */	lis r3, CH_BUF@ha
/* 80030028 0002CF88  1C C0 01 80 */	mulli r6, r0, 0x180
/* 8003002C 0002CF8C  3C E0 80 0D */	lis r7, connect_table$194@ha
/* 80030030 0002CF90  54 A8 0D FC */	rlwinm r8, r5, 1, 0x17, 0x1e
/* 80030034 0002CF94  38 63 37 40 */	addi r3, r3, CH_BUF@l
/* 80030038 0002CF98  38 A7 55 C0 */	addi r5, r7, connect_table$194@l
/* 8003003C 0002CF9C  54 80 1D 78 */	rlwinm r0, r4, 3, 0x15, 0x1c
/* 80030040 0002CFA0  7C 63 32 14 */	add r3, r3, r6
/* 80030044 0002CFA4  7C 85 42 2E */	lhzx r4, r5, r8
/* 80030048 0002CFA8  7C 63 02 14 */	add r3, r3, r0
/* 8003004C 0002CFAC  B0 83 00 10 */	sth r4, 0x10(r3)
/* 80030050 0002CFB0  4E 80 00 20 */	blr 
/* 80030054 0002CFB4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80030058 0002CFB8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003005C 0002CFBC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_PlayStop__FUc
DSP_PlayStop__FUc:
/* 80030060 0002CFC0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80030064 0002CFC4  3C 60 80 1A */	lis r3, CH_BUF@ha
/* 80030068 0002CFC8  1C 00 01 80 */	mulli r0, r0, 0x180
/* 8003006C 0002CFCC  38 80 00 00 */	li r4, 0
/* 80030070 0002CFD0  38 63 37 40 */	addi r3, r3, CH_BUF@l
/* 80030074 0002CFD4  7C 83 03 2E */	sthx r4, r3, r0
/* 80030078 0002CFD8  4E 80 00 20 */	blr 
/* 8003007C 0002CFDC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_AllocInit__FUc
DSP_AllocInit__FUc:
/* 80030080 0002CFE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80030084 0002CFE4  7C 08 02 A6 */	mflr r0
/* 80030088 0002CFE8  3C 80 80 1A */	lis r4, CH_BUF@ha
/* 8003008C 0002CFEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030090 0002CFF0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80030094 0002CFF4  1C A0 01 80 */	mulli r5, r0, 0x180
/* 80030098 0002CFF8  38 84 37 40 */	addi r4, r4, CH_BUF@l
/* 8003009C 0002CFFC  38 00 00 00 */	li r0, 0
/* 800300A0 0002D000  7C 84 2A 14 */	add r4, r4, r5
/* 800300A4 0002D004  B0 04 00 0C */	sth r0, 0xc(r4)
/* 800300A8 0002D008  B0 04 00 02 */	sth r0, 2(r4)
/* 800300AC 0002D00C  B0 04 01 0A */	sth r0, 0x10a(r4)
/* 800300B0 0002D010  B0 04 00 00 */	sth r0, 0(r4)
/* 800300B4 0002D014  48 00 02 4D */	bl DSP_FlushChannel__FUc
/* 800300B8 0002D018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800300BC 0002D01C  7C 08 03 A6 */	mtlr r0
/* 800300C0 0002D020  38 21 00 10 */	addi r1, r1, 0x10
/* 800300C4 0002D024  4E 80 00 20 */	blr 
/* 800300C8 0002D028  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800300CC 0002D02C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800300D0 0002D030  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800300D4 0002D034  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800300D8 0002D038  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800300DC 0002D03C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_PlayStart__FUc
DSP_PlayStart__FUc:
/* 800300E0 0002D040  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800300E4 0002D044  3C 60 80 1A */	lis r3, CH_BUF@ha
/* 800300E8 0002D048  1C C0 01 80 */	mulli r6, r0, 0x180
/* 800300EC 0002D04C  38 A0 00 00 */	li r5, 0
/* 800300F0 0002D050  38 03 37 40 */	addi r0, r3, CH_BUF@l
/* 800300F4 0002D054  38 80 00 01 */	li r4, 1
/* 800300F8 0002D058  7C C0 32 14 */	add r6, r0, r6
/* 800300FC 0002D05C  38 00 00 04 */	li r0, 4
/* 80030100 0002D060  90 A6 01 0C */	stw r5, 0x10c(r6)
/* 80030104 0002D064  7C A3 2B 78 */	mr r3, r5
/* 80030108 0002D068  90 A6 00 68 */	stw r5, 0x68(r6)
/* 8003010C 0002D06C  B0 A6 00 60 */	sth r5, 0x60(r6)
/* 80030110 0002D070  B0 86 00 08 */	sth r4, 8(r6)
/* 80030114 0002D074  B0 A6 00 66 */	sth r5, 0x66(r6)
/* 80030118 0002D078  7C 09 03 A6 */	mtctr r0
/* 8003011C 0002D07C  60 00 00 00 */	nop 
lbl_80030120:
/* 80030120 0002D080  7C 86 1A 14 */	add r4, r6, r3
/* 80030124 0002D084  38 63 00 02 */	addi r3, r3, 2
/* 80030128 0002D088  B0 A4 00 78 */	sth r5, 0x78(r4)
/* 8003012C 0002D08C  B0 A4 00 A8 */	sth r5, 0xa8(r4)
/* 80030130 0002D090  42 00 FF F0 */	bdnz lbl_80030120
/* 80030134 0002D094  38 00 00 14 */	li r0, 0x14
/* 80030138 0002D098  38 80 00 00 */	li r4, 0
/* 8003013C 0002D09C  38 60 00 00 */	li r3, 0
/* 80030140 0002D0A0  7C 09 03 A6 */	mtctr r0
/* 80030144 0002D0A4  60 00 00 00 */	nop 
lbl_80030148:
/* 80030148 0002D0A8  38 03 00 80 */	addi r0, r3, 0x80
/* 8003014C 0002D0AC  38 63 00 02 */	addi r3, r3, 2
/* 80030150 0002D0B0  7C 86 03 2E */	sthx r4, r6, r0
/* 80030154 0002D0B4  42 00 FF F4 */	bdnz lbl_80030148
/* 80030158 0002D0B8  38 00 00 01 */	li r0, 1
/* 8003015C 0002D0BC  B0 06 00 00 */	sth r0, 0(r6)
/* 80030160 0002D0C0  4E 80 00 20 */	blr 
/* 80030164 0002D0C4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80030168 0002D0C8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003016C 0002D0CC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80030170 0002D0D0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80030174 0002D0D4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80030178 0002D0D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003017C 0002D0DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_SetDistFilter__FUcs
DSP_SetDistFilter__FUcs:
/* 80030180 0002D0E0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80030184 0002D0E4  3C 60 80 1A */	lis r3, CH_BUF@ha
/* 80030188 0002D0E8  1C A0 01 80 */	mulli r5, r0, 0x180
/* 8003018C 0002D0EC  38 03 37 40 */	addi r0, r3, CH_BUF@l
/* 80030190 0002D0F0  7C 60 2A 14 */	add r3, r0, r5
/* 80030194 0002D0F4  B0 83 01 50 */	sth r4, 0x150(r3)
/* 80030198 0002D0F8  4E 80 00 20 */	blr 
/* 8003019C 0002D0FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_SetFilterTable__FPsPsUl
DSP_SetFilterTable__FPsPsUl:
/* 800301A0 0002D100  7C A9 03 A6 */	mtctr r5
/* 800301A4 0002D104  28 05 00 00 */	cmplwi r5, 0
/* 800301A8 0002D108  4C 81 00 20 */	blelr 
/* 800301AC 0002D10C  60 00 00 00 */	nop 
lbl_800301B0:
/* 800301B0 0002D110  A8 04 00 00 */	lha r0, 0(r4)
/* 800301B4 0002D114  38 84 00 02 */	addi r4, r4, 2
/* 800301B8 0002D118  B0 03 00 00 */	sth r0, 0(r3)
/* 800301BC 0002D11C  38 63 00 02 */	addi r3, r3, 2
/* 800301C0 0002D120  42 00 FF F0 */	bdnz lbl_800301B0
/* 800301C4 0002D124  4E 80 00 20 */	blr 
/* 800301C8 0002D128  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800301CC 0002D12C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800301D0 0002D130  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800301D4 0002D134  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800301D8 0002D138  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800301DC 0002D13C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_SetIIRFilterParam__FUcPs
DSP_SetIIRFilterParam__FUcPs:
/* 800301E0 0002D140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800301E4 0002D144  7C 08 02 A6 */	mflr r0
/* 800301E8 0002D148  38 A0 00 04 */	li r5, 4
/* 800301EC 0002D14C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800301F0 0002D150  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800301F4 0002D154  1C C0 01 80 */	mulli r6, r0, 0x180
/* 800301F8 0002D158  3C 60 80 1A */	lis r3, CH_BUF@ha
/* 800301FC 0002D15C  38 03 37 40 */	addi r0, r3, CH_BUF@l
/* 80030200 0002D160  7C 60 32 14 */	add r3, r0, r6
/* 80030204 0002D164  38 63 01 48 */	addi r3, r3, 0x148
/* 80030208 0002D168  4B FF FF 99 */	bl DSP_SetFilterTable__FPsPsUl
/* 8003020C 0002D16C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80030210 0002D170  7C 08 03 A6 */	mtlr r0
/* 80030214 0002D174  38 21 00 10 */	addi r1, r1, 0x10
/* 80030218 0002D178  4E 80 00 20 */	blr 
/* 8003021C 0002D17C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_SetFIR8FilterParam__FUcPs
DSP_SetFIR8FilterParam__FUcPs:
/* 80030220 0002D180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80030224 0002D184  7C 08 02 A6 */	mflr r0
/* 80030228 0002D188  38 A0 00 08 */	li r5, 8
/* 8003022C 0002D18C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030230 0002D190  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80030234 0002D194  1C C0 01 80 */	mulli r6, r0, 0x180
/* 80030238 0002D198  3C 60 80 1A */	lis r3, CH_BUF@ha
/* 8003023C 0002D19C  38 03 37 40 */	addi r0, r3, CH_BUF@l
/* 80030240 0002D1A0  7C 60 32 14 */	add r3, r0, r6
/* 80030244 0002D1A4  38 63 01 20 */	addi r3, r3, 0x120
/* 80030248 0002D1A8  4B FF FF 59 */	bl DSP_SetFilterTable__FPsPsUl
/* 8003024C 0002D1AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80030250 0002D1B0  7C 08 03 A6 */	mtlr r0
/* 80030254 0002D1B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80030258 0002D1B8  4E 80 00 20 */	blr 
/* 8003025C 0002D1BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_SetFilterMode__FUcUs
DSP_SetFilterMode__FUcUs:
/* 80030260 0002D1C0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80030264 0002D1C4  3C A0 80 1A */	lis r5, CH_BUF@ha
/* 80030268 0002D1C8  1C C0 01 80 */	mulli r6, r0, 0x180
/* 8003026C 0002D1CC  54 83 06 B5 */	rlwinm. r3, r4, 0, 0x1a, 0x1a
/* 80030270 0002D1D0  38 A5 37 40 */	addi r5, r5, CH_BUF@l
/* 80030274 0002D1D4  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80030278 0002D1D8  7C 85 32 14 */	add r4, r5, r6
/* 8003027C 0002D1DC  41 82 00 14 */	beq lbl_80030290
/* 80030280 0002D1E0  28 00 00 14 */	cmplwi r0, 0x14
/* 80030284 0002D1E4  40 81 00 18 */	ble lbl_8003029C
/* 80030288 0002D1E8  38 00 00 14 */	li r0, 0x14
/* 8003028C 0002D1EC  48 00 00 10 */	b lbl_8003029C
lbl_80030290:
/* 80030290 0002D1F0  28 00 00 18 */	cmplwi r0, 0x18
/* 80030294 0002D1F4  40 81 00 08 */	ble lbl_8003029C
/* 80030298 0002D1F8  38 00 00 18 */	li r0, 0x18
lbl_8003029C:
/* 8003029C 0002D1FC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800302A0 0002D200  7C 03 02 14 */	add r0, r3, r0
/* 800302A4 0002D204  B0 04 01 08 */	sth r0, 0x108(r4)
/* 800302A8 0002D208  4E 80 00 20 */	blr 
/* 800302AC 0002D20C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800302B0 0002D210  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800302B4 0002D214  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800302B8 0002D218  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800302BC 0002D21C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_FlushBuffer__Fv
DSP_FlushBuffer__Fv:
/* 800302C0 0002D220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800302C4 0002D224  7C 08 02 A6 */	mflr r0
/* 800302C8 0002D228  3C 60 80 1A */	lis r3, CH_BUF@ha
/* 800302CC 0002D22C  38 80 60 00 */	li r4, 0x6000
/* 800302D0 0002D230  90 01 00 14 */	stw r0, 0x14(r1)
/* 800302D4 0002D234  38 63 37 40 */	addi r3, r3, CH_BUF@l
/* 800302D8 0002D238  48 04 98 AD */	bl DCFlushRange
/* 800302DC 0002D23C  3C 60 80 1B */	lis r3, FX_BUF@ha
/* 800302E0 0002D240  38 80 00 80 */	li r4, 0x80
/* 800302E4 0002D244  38 63 97 40 */	addi r3, r3, FX_BUF@l
/* 800302E8 0002D248  48 04 98 9D */	bl DCFlushRange
/* 800302EC 0002D24C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800302F0 0002D250  7C 08 03 A6 */	mtlr r0
/* 800302F4 0002D254  38 21 00 10 */	addi r1, r1, 0x10
/* 800302F8 0002D258  4E 80 00 20 */	blr 
/* 800302FC 0002D25C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_FlushChannel__FUc
DSP_FlushChannel__FUc:
/* 80030300 0002D260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80030304 0002D264  7C 08 02 A6 */	mflr r0
/* 80030308 0002D268  38 80 01 80 */	li r4, 0x180
/* 8003030C 0002D26C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030310 0002D270  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80030314 0002D274  1C A0 01 80 */	mulli r5, r0, 0x180
/* 80030318 0002D278  3C 60 80 1A */	lis r3, CH_BUF@ha
/* 8003031C 0002D27C  38 03 37 40 */	addi r0, r3, CH_BUF@l
/* 80030320 0002D280  7C 60 2A 14 */	add r3, r0, r5
/* 80030324 0002D284  48 04 98 C9 */	bl DCFlushRangeNoSync
/* 80030328 0002D288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003032C 0002D28C  7C 08 03 A6 */	mtlr r0
/* 80030330 0002D290  38 21 00 10 */	addi r1, r1, 0x10
/* 80030334 0002D294  4E 80 00 20 */	blr 
/* 80030338 0002D298  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003033C 0002D29C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_InvalChannelAll__Fv
DSP_InvalChannelAll__Fv:
/* 80030340 0002D2A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80030344 0002D2A4  7C 08 02 A6 */	mflr r0
/* 80030348 0002D2A8  3C 60 80 1A */	lis r3, CH_BUF@ha
/* 8003034C 0002D2AC  38 80 60 00 */	li r4, 0x6000
/* 80030350 0002D2B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030354 0002D2B4  38 63 37 40 */	addi r3, r3, CH_BUF@l
/* 80030358 0002D2B8  48 04 97 FD */	bl DCInvalidateRange
/* 8003035C 0002D2BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80030360 0002D2C0  7C 08 03 A6 */	mtlr r0
/* 80030364 0002D2C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80030368 0002D2C8  4E 80 00 20 */	blr 
/* 8003036C 0002D2CC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80030370 0002D2D0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80030374 0002D2D4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80030378 0002D2D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003037C 0002D2DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_ClearBuffer__Fv
DSP_ClearBuffer__Fv:
/* 80030380 0002D2E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80030384 0002D2E4  7C 08 02 A6 */	mflr r0
/* 80030388 0002D2E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003038C 0002D2EC  39 61 00 20 */	addi r11, r1, 0x20
/* 80030390 0002D2F0  48 06 AB 45 */	bl func_8009AED4
/* 80030394 0002D2F4  3C 60 80 1A */	lis r3, CH_BUF@ha
/* 80030398 0002D2F8  3B A0 00 00 */	li r29, 0
/* 8003039C 0002D2FC  3B C3 37 40 */	addi r30, r3, CH_BUF@l
/* 800303A0 0002D300  3B E0 00 00 */	li r31, 0
/* 800303A4 0002D304  60 00 00 00 */	nop 
lbl_800303A8:
/* 800303A8 0002D308  7C 7E FA 14 */	add r3, r30, r31
/* 800303AC 0002D30C  38 80 01 80 */	li r4, 0x180
/* 800303B0 0002D310  4B FE 84 71 */	bl Jac_bzero__FPvl
/* 800303B4 0002D314  3B BD 00 01 */	addi r29, r29, 1
/* 800303B8 0002D318  3B FF 01 80 */	addi r31, r31, 0x180
/* 800303BC 0002D31C  2C 1D 00 40 */	cmpwi r29, 0x40
/* 800303C0 0002D320  41 80 FF E8 */	blt lbl_800303A8
/* 800303C4 0002D324  39 61 00 20 */	addi r11, r1, 0x20
/* 800303C8 0002D328  48 06 AB 59 */	bl func_8009AF20
/* 800303CC 0002D32C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800303D0 0002D330  7C 08 03 A6 */	mtlr r0
/* 800303D4 0002D334  38 21 00 20 */	addi r1, r1, 0x20
/* 800303D8 0002D338  4E 80 00 20 */	blr 
/* 800303DC 0002D33C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_SetupBuffer__Fv
DSP_SetupBuffer__Fv:
/* 800303E0 0002D340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800303E4 0002D344  7C 08 02 A6 */	mflr r0
/* 800303E8 0002D348  3C 80 80 1A */	lis r4, CH_BUF@ha
/* 800303EC 0002D34C  3C A0 80 0D */	lis r5, DSPRES_FILTER@ha
/* 800303F0 0002D350  3C C0 80 0D */	lis r6, DSPADPCM_FILTER@ha
/* 800303F4 0002D354  3C 60 80 1B */	lis r3, FX_BUF@ha
/* 800303F8 0002D358  38 E3 97 40 */	addi r7, r3, FX_BUF@l
/* 800303FC 0002D35C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030400 0002D360  38 84 37 40 */	addi r4, r4, CH_BUF@l
/* 80030404 0002D364  38 A5 56 20 */	addi r5, r5, DSPRES_FILTER@l
/* 80030408 0002D368  38 C6 55 E0 */	addi r6, r6, DSPADPCM_FILTER@l
/* 8003040C 0002D36C  38 60 00 40 */	li r3, 0x40
/* 80030410 0002D370  4B FF CA 51 */	bl DsetupTable__FUlUlUlUlUl
/* 80030414 0002D374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80030418 0002D378  7C 08 03 A6 */	mtlr r0
/* 8003041C 0002D37C  38 21 00 10 */	addi r1, r1, 0x10
/* 80030420 0002D380  4E 80 00 20 */	blr 
/* 80030424 0002D384  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80030428 0002D388  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003042C 0002D38C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80030430 0002D390  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80030434 0002D394  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80030438 0002D398  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003043C 0002D39C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global DSP_InitBuffer__Fv
DSP_InitBuffer__Fv:
/* 80030440 0002D3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80030444 0002D3A4  7C 08 02 A6 */	mflr r0
/* 80030448 0002D3A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003044C 0002D3AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80030450 0002D3B0  3B E0 00 00 */	li r31, 0
/* 80030454 0002D3B4  60 00 00 00 */	nop 
lbl_80030458:
/* 80030458 0002D3B8  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8003045C 0002D3BC  38 80 00 00 */	li r4, 0
/* 80030460 0002D3C0  38 A0 00 00 */	li r5, 0
/* 80030464 0002D3C4  48 00 00 3D */	bl DFX_SetFxLine__FUcPsP13FxlineConfig_
/* 80030468 0002D3C8  3B FF 00 01 */	addi r31, r31, 1
/* 8003046C 0002D3CC  2C 1F 00 04 */	cmpwi r31, 4
/* 80030470 0002D3D0  41 80 FF E8 */	blt lbl_80030458
/* 80030474 0002D3D4  4B FF FF 0D */	bl DSP_ClearBuffer__Fv
/* 80030478 0002D3D8  4B FF FF 69 */	bl DSP_SetupBuffer__Fv
/* 8003047C 0002D3DC  4B FF F0 C5 */	bl InitDSPchannel__Fv
/* 80030480 0002D3E0  4B FF DF 61 */	bl InitGlobalChannel__Fv
/* 80030484 0002D3E4  4B FF FE 3D */	bl DSP_FlushBuffer__Fv
/* 80030488 0002D3E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003048C 0002D3EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80030490 0002D3F0  7C 08 03 A6 */	mtlr r0
/* 80030494 0002D3F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80030498 0002D3F8  4E 80 00 20 */	blr 
/* 8003049C 0002D3FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
