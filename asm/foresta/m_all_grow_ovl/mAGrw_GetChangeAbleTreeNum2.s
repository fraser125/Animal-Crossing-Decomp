lbl_80510E4C:
/* 80510E4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80510E50  7C 08 02 A6 */	mflr r0
/* 80510E54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80510E58  39 61 00 20 */	addi r11, r1, 0x20
/* 80510E5C  4B B8 A0 79 */	bl func_8009AED4
/* 80510E60  7C 7D 1B 79 */	or. r29, r3, r3
/* 80510E64  3B E0 00 00 */	li r31, 0
/* 80510E68  41 82 00 2C */	beq lbl_80510E94
/* 80510E6C  3B C0 00 00 */	li r30, 0
lbl_80510E70:
/* 80510E70  A0 7D 00 00 */	lhz r3, 0(r29)
/* 80510E74  4B FF FE D9 */	bl mAGrw_CheckChangeTree
/* 80510E78  2C 03 00 01 */	cmpwi r3, 1
/* 80510E7C  40 82 00 08 */	bne lbl_80510E84
/* 80510E80  3B FF 00 01 */	addi r31, r31, 1
lbl_80510E84:
/* 80510E84  3B DE 00 01 */	addi r30, r30, 1
/* 80510E88  3B BD 00 02 */	addi r29, r29, 2
/* 80510E8C  2C 1E 01 00 */	cmpwi r30, 0x100
/* 80510E90  41 80 FF E0 */	blt lbl_80510E70
lbl_80510E94:
/* 80510E94  7F E3 FB 78 */	mr r3, r31
/* 80510E98  39 61 00 20 */	addi r11, r1, 0x20
/* 80510E9C  4B B8 A0 85 */	bl func_8009AF20
/* 80510EA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80510EA4  7C 08 03 A6 */	mtlr r0
/* 80510EA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80510EAC  4E 80 00 20 */	blr 
