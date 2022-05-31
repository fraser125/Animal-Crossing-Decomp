lbl_803E3A28:
/* 803E3A28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E3A2C  7C 08 02 A6 */	mflr r0
/* 803E3A30  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E3A34  38 00 00 00 */	li r0, 0
/* 803E3A38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803E3A3C  3B E0 00 00 */	li r31, 0
/* 803E3A40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803E3A44  7C 9E 23 78 */	mr r30, r4
/* 803E3A48  7C 64 1B 78 */	mr r4, r3
/* 803E3A4C  38 61 00 08 */	addi r3, r1, 8
/* 803E3A50  90 01 00 08 */	stw r0, 8(r1)
/* 803E3A54  4B FE 94 75 */	bl mNpc_CheckNormalMail_length
/* 803E3A58  80 01 00 08 */	lwz r0, 8(r1)
/* 803E3A5C  2C 00 00 31 */	cmpwi r0, 0x31
/* 803E3A60  41 80 00 0C */	blt lbl_803E3A6C
/* 803E3A64  3B E0 00 02 */	li r31, 2
/* 803E3A68  48 00 00 10 */	b lbl_803E3A78
lbl_803E3A6C:
/* 803E3A6C  2C 00 00 11 */	cmpwi r0, 0x11
/* 803E3A70  41 80 00 08 */	blt lbl_803E3A78
/* 803E3A74  3B E0 00 01 */	li r31, 1
lbl_803E3A78:
/* 803E3A78  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803E3A7C  28 00 00 01 */	cmplwi r0, 1
/* 803E3A80  41 80 00 0C */	blt lbl_803E3A8C
/* 803E3A84  38 1F 00 03 */	addi r0, r31, 3
/* 803E3A88  54 1F 06 3E */	clrlwi r31, r0, 0x18
lbl_803E3A8C:
/* 803E3A8C  57 C0 04 3F */	clrlwi. r0, r30, 0x10
/* 803E3A90  41 82 00 0C */	beq lbl_803E3A9C
/* 803E3A94  38 1F 00 06 */	addi r0, r31, 6
/* 803E3A98  54 1F 06 3E */	clrlwi r31, r0, 0x18
lbl_803E3A9C:
/* 803E3A9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E3AA0  7F E3 FB 78 */	mr r3, r31
/* 803E3AA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803E3AA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803E3AAC  7C 08 03 A6 */	mtlr r0
/* 803E3AB0  38 21 00 20 */	addi r1, r1, 0x20
/* 803E3AB4  4E 80 00 20 */	blr 
