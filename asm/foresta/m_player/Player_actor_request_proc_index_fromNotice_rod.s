lbl_804F6D98:
/* 804F6D98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F6D9C  7C 08 02 A6 */	mflr r0
/* 804F6DA0  2C 05 00 53 */	cmpwi r5, 0x53
/* 804F6DA4  7C 66 1B 78 */	mr r6, r3
/* 804F6DA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F6DAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804F6DB0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804F6DB4  7C 9E 23 78 */	mr r30, r4
/* 804F6DB8  41 82 00 2C */	beq lbl_804F6DE4
/* 804F6DBC  40 80 00 60 */	bge lbl_804F6E1C
/* 804F6DC0  2C 05 00 39 */	cmpwi r5, 0x39
/* 804F6DC4  41 82 00 08 */	beq lbl_804F6DCC
/* 804F6DC8  48 00 00 54 */	b lbl_804F6E1C
lbl_804F6DCC:
/* 804F6DCC  A8 86 0D 24 */	lha r4, 0xd24(r6)
/* 804F6DD0  7F C3 F3 78 */	mr r3, r30
/* 804F6DD4  80 A6 0D 28 */	lwz r5, 0xd28(r6)
/* 804F6DD8  38 C0 00 1D */	li r6, 0x1d
/* 804F6DDC  48 00 01 1D */	bl func_804F6EF8
/* 804F6DE0  48 00 00 3C */	b lbl_804F6E1C
lbl_804F6DE4:
/* 804F6DE4  80 66 0F 30 */	lwz r3, 0xf30(r6)
/* 804F6DE8  28 03 00 00 */	cmplwi r3, 0
/* 804F6DEC  41 82 00 30 */	beq lbl_804F6E1C
/* 804F6DF0  83 E3 01 74 */	lwz r31, 0x174(r3)
/* 804F6DF4  38 61 00 08 */	addi r3, r1, 8
/* 804F6DF8  38 80 00 10 */	li r4, 0x10
/* 804F6DFC  4B B6 62 6D */	bl bzero
/* 804F6E00  7F C3 F3 78 */	mr r3, r30
/* 804F6E04  7F E7 FB 78 */	mr r7, r31
/* 804F6E08  38 C1 00 08 */	addi r6, r1, 8
/* 804F6E0C  38 80 00 01 */	li r4, 1
/* 804F6E10  38 A0 00 00 */	li r5, 0
/* 804F6E14  39 00 00 1E */	li r8, 0x1e
/* 804F6E18  48 00 7D 15 */	bl func_804FEB2C
lbl_804F6E1C:
/* 804F6E1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F6E20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804F6E24  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804F6E28  7C 08 03 A6 */	mtlr r0
/* 804F6E2C  38 21 00 20 */	addi r1, r1, 0x20
/* 804F6E30  4E 80 00 20 */	blr 
