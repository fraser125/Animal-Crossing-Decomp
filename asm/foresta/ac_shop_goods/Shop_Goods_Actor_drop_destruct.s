lbl_8049D878:
/* 8049D878  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049D87C  7C 08 02 A6 */	mflr r0
/* 8049D880  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049D884  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8049D888  3B E0 00 00 */	li r31, 0
/* 8049D88C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8049D890  3B C3 01 8C */	addi r30, r3, 0x18c
lbl_8049D894:
/* 8049D894  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 8049D898  28 00 00 00 */	cmplwi r0, 0
/* 8049D89C  41 82 00 60 */	beq lbl_8049D8FC
/* 8049D8A0  A8 1E 00 02 */	lha r0, 2(r30)
/* 8049D8A4  2C 00 00 00 */	cmpwi r0, 0
/* 8049D8A8  40 82 00 30 */	bne lbl_8049D8D8
/* 8049D8AC  80 7E 00 04 */	lwz r3, 4(r30)
/* 8049D8B0  38 81 00 14 */	addi r4, r1, 0x14
/* 8049D8B4  80 1E 00 08 */	lwz r0, 8(r30)
/* 8049D8B8  38 A0 00 00 */	li r5, 0
/* 8049D8BC  90 61 00 14 */	stw r3, 0x14(r1)
/* 8049D8C0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8049D8C4  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8049D8C8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8049D8CC  A0 7E 00 00 */	lhz r3, 0(r30)
/* 8049D8D0  4B F0 9F 61 */	bl mFI_SetFG_common
/* 8049D8D4  48 00 00 28 */	b lbl_8049D8FC
lbl_8049D8D8:
/* 8049D8D8  80 7E 00 04 */	lwz r3, 4(r30)
/* 8049D8DC  38 81 00 08 */	addi r4, r1, 8
/* 8049D8E0  80 1E 00 08 */	lwz r0, 8(r30)
/* 8049D8E4  90 61 00 08 */	stw r3, 8(r1)
/* 8049D8E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8049D8EC  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8049D8F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8049D8F4  A0 7E 00 00 */	lhz r3, 0(r30)
/* 8049D8F8  4B F0 9F B9 */	bl mFI_SetFG2
lbl_8049D8FC:
/* 8049D8FC  3B FF 00 01 */	addi r31, r31, 1
/* 8049D900  3B DE 00 48 */	addi r30, r30, 0x48
/* 8049D904  2C 1F 00 09 */	cmpwi r31, 9
/* 8049D908  41 80 FF 8C */	blt lbl_8049D894
/* 8049D90C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049D910  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8049D914  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8049D918  7C 08 03 A6 */	mtlr r0
/* 8049D91C  38 21 00 30 */	addi r1, r1, 0x30
/* 8049D920  4E 80 00 20 */	blr 
