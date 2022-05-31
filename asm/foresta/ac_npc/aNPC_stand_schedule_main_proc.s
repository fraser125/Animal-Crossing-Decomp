lbl_80537DA4:
/* 80537DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80537DA8  7C 08 02 A6 */	mflr r0
/* 80537DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80537DB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80537DB4  7C 9F 23 78 */	mr r31, r4
/* 80537DB8  93 C1 00 08 */	stw r30, 8(r1)
/* 80537DBC  7C 7E 1B 78 */	mr r30, r3
/* 80537DC0  4B FF E7 15 */	bl aNPC_think_chk_interrupt_proc
/* 80537DC4  2C 03 00 00 */	cmpwi r3, 0
/* 80537DC8  40 82 00 44 */	bne lbl_80537E0C
/* 80537DCC  88 1E 07 F6 */	lbz r0, 0x7f6(r30)
/* 80537DD0  28 00 00 FF */	cmplwi r0, 0xff
/* 80537DD4  40 82 00 38 */	bne lbl_80537E0C
/* 80537DD8  88 1E 07 F5 */	lbz r0, 0x7f5(r30)
/* 80537DDC  28 00 00 00 */	cmplwi r0, 0
/* 80537DE0  40 82 00 14 */	bne lbl_80537DF4
/* 80537DE4  7F C3 F3 78 */	mr r3, r30
/* 80537DE8  7F E4 FB 78 */	mr r4, r31
/* 80537DEC  4B FF EA AD */	bl aNPC_think_main_proc
/* 80537DF0  48 00 00 14 */	b lbl_80537E04
lbl_80537DF4:
/* 80537DF4  7F C3 F3 78 */	mr r3, r30
/* 80537DF8  7F E4 FB 78 */	mr r4, r31
/* 80537DFC  38 A0 00 00 */	li r5, 0
/* 80537E00  4B FF EA 3D */	bl aNPC_think_init_proc
lbl_80537E04:
/* 80537E04  38 00 00 37 */	li r0, 0x37
/* 80537E08  90 1E 08 40 */	stw r0, 0x840(r30)
lbl_80537E0C:
/* 80537E0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80537E10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80537E14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80537E18  7C 08 03 A6 */	mtlr r0
/* 80537E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80537E20  4E 80 00 20 */	blr 
