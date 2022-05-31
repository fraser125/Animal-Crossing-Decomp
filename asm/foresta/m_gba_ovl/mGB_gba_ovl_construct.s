lbl_805DCF58:
/* 805DCF58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DCF5C  7C 08 02 A6 */	mflr r0
/* 805DCF60  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DCF64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DCF68  93 C1 00 08 */	stw r30, 8(r1)
/* 805DCF6C  7C 7E 1B 78 */	mr r30, r3
/* 805DCF70  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805DCF74  80 1F 09 E4 */	lwz r0, 0x9e4(r31)
/* 805DCF78  28 00 00 00 */	cmplwi r0, 0
/* 805DCF7C  40 82 00 30 */	bne lbl_805DCFAC
/* 805DCF80  38 60 0A 20 */	li r3, 0xa20
/* 805DCF84  38 80 00 20 */	li r4, 0x20
/* 805DCF88  4B DD F4 A1 */	bl func_803BC428
/* 805DCF8C  90 7F 09 E4 */	stw r3, 0x9e4(r31)
/* 805DCF90  38 80 00 0C */	li r4, 0xc
/* 805DCF94  38 A0 00 00 */	li r5, 0
/* 805DCF98  80 7F 09 E4 */	lwz r3, 0x9e4(r31)
/* 805DCF9C  4B DD DA AD */	bl mem_clear
/* 805DCFA0  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 805DCFA4  80 7F 09 E4 */	lwz r3, 0x9e4(r31)
/* 805DCFA8  90 03 00 04 */	stw r0, 4(r3)
lbl_805DCFAC:
/* 805DCFAC  7F C3 F3 78 */	mr r3, r30
/* 805DCFB0  4B FF FF 25 */	bl mGB_gba_ovl_init
/* 805DCFB4  7F C3 F3 78 */	mr r3, r30
/* 805DCFB8  4B FF FE B9 */	bl mGB_gba_ovl_set_proc
/* 805DCFBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DCFC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DCFC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DCFC8  7C 08 03 A6 */	mtlr r0
/* 805DCFCC  38 21 00 10 */	addi r1, r1, 0x10
/* 805DCFD0  4E 80 00 20 */	blr 
