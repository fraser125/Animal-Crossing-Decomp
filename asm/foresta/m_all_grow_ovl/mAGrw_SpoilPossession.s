lbl_80513E90:
/* 80513E90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80513E94  7C 08 02 A6 */	mflr r0
/* 80513E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80513E9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80513EA0  7C 9F 23 78 */	mr r31, r4
/* 80513EA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80513EA8  7C 7E 1B 78 */	mr r30, r3
/* 80513EAC  48 00 00 18 */	b lbl_80513EC4
lbl_80513EB0:
/* 80513EB0  7F C3 F3 78 */	mr r3, r30
/* 80513EB4  38 80 00 00 */	li r4, 0
/* 80513EB8  4B FF CC D1 */	bl mAGrw_SpoilKabu
/* 80513EBC  3B DE 00 02 */	addi r30, r30, 2
/* 80513EC0  3B FF FF FF */	addi r31, r31, -1
lbl_80513EC4:
/* 80513EC4  2C 1F 00 00 */	cmpwi r31, 0
/* 80513EC8  40 82 FF E8 */	bne lbl_80513EB0
/* 80513ECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80513ED0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80513ED4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80513ED8  7C 08 03 A6 */	mtlr r0
/* 80513EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80513EE0  4E 80 00 20 */	blr 
