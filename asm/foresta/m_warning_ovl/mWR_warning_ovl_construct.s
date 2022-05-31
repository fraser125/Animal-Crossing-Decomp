lbl_80600998:
/* 80600998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060099C  7C 08 02 A6 */	mflr r0
/* 806009A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806009A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806009A8  93 C1 00 08 */	stw r30, 8(r1)
/* 806009AC  7C 7E 1B 78 */	mr r30, r3
/* 806009B0  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 806009B4  80 1F 09 A8 */	lwz r0, 0x9a8(r31)
/* 806009B8  28 00 00 00 */	cmplwi r0, 0
/* 806009BC  40 82 00 24 */	bne lbl_806009E0
/* 806009C0  3C 60 81 21 */	lis r3, wr_ovl_data@ha /* 0x812134E8@ha */
/* 806009C4  38 80 00 08 */	li r4, 8
/* 806009C8  38 63 34 E8 */	addi r3, r3, wr_ovl_data@l /* 0x812134E8@l */
/* 806009CC  38 A0 00 00 */	li r5, 0
/* 806009D0  4B DB A0 79 */	bl mem_clear
/* 806009D4  3C 60 81 21 */	lis r3, wr_ovl_data@ha /* 0x812134E8@ha */
/* 806009D8  38 03 34 E8 */	addi r0, r3, wr_ovl_data@l /* 0x812134E8@l */
/* 806009DC  90 1F 09 A8 */	stw r0, 0x9a8(r31)
lbl_806009E0:
/* 806009E0  7F C3 F3 78 */	mr r3, r30
/* 806009E4  4B FF FF 81 */	bl mWR_warning_ovl_init
/* 806009E8  7F C3 F3 78 */	mr r3, r30
/* 806009EC  4B FF FF 59 */	bl mWR_warning_ovl_set_proc
/* 806009F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806009F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806009F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 806009FC  7C 08 03 A6 */	mtlr r0
/* 80600A00  38 21 00 10 */	addi r1, r1, 0x10
/* 80600A04  4E 80 00 20 */	blr 
