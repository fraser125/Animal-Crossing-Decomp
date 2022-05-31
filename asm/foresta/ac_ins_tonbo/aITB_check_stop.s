lbl_805A0D40:
/* 805A0D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A0D44  7C 08 02 A6 */	mflr r0
/* 805A0D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A0D4C  38 00 00 00 */	li r0, 0
/* 805A0D50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A0D54  3B E0 00 00 */	li r31, 0
/* 805A0D58  93 C1 00 08 */	stw r30, 8(r1)
/* 805A0D5C  7C 7E 1B 78 */	mr r30, r3
/* 805A0D60  90 03 02 34 */	stw r0, 0x234(r3)
/* 805A0D64  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 805A0D68  2C 00 00 0C */	cmpwi r0, 0xc
/* 805A0D6C  41 82 00 2C */	beq lbl_805A0D98
/* 805A0D70  4B FF FE E9 */	bl aITB_check_reserve_dummy
/* 805A0D74  2C 03 00 01 */	cmpwi r3, 1
/* 805A0D78  40 82 00 0C */	bne lbl_805A0D84
/* 805A0D7C  3B E0 00 01 */	li r31, 1
/* 805A0D80  48 00 00 18 */	b lbl_805A0D98
lbl_805A0D84:
/* 805A0D84  7F C3 F3 78 */	mr r3, r30
/* 805A0D88  4B FF FF 81 */	bl aITB_check_wall_and_ground
/* 805A0D8C  2C 03 00 01 */	cmpwi r3, 1
/* 805A0D90  40 82 00 08 */	bne lbl_805A0D98
/* 805A0D94  3B E0 00 01 */	li r31, 1
lbl_805A0D98:
/* 805A0D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A0D9C  7F E3 FB 78 */	mr r3, r31
/* 805A0DA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A0DA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A0DA8  7C 08 03 A6 */	mtlr r0
/* 805A0DAC  38 21 00 10 */	addi r1, r1, 0x10
/* 805A0DB0  4E 80 00 20 */	blr 
