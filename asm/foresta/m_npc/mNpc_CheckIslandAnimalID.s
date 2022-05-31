lbl_803D5CA8:
/* 803D5CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D5CAC  7C 08 02 A6 */	mflr r0
/* 803D5CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D5CB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D5CB8  3B E0 00 00 */	li r31, 0
/* 803D5CBC  93 C1 00 08 */	stw r30, 8(r1)
/* 803D5CC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 803D5CC4  41 82 00 1C */	beq lbl_803D5CE0
/* 803D5CC8  4B FF 57 15 */	bl mNpc_CheckFreeAnimalPersonalID
/* 803D5CCC  2C 03 00 00 */	cmpwi r3, 0
/* 803D5CD0  40 82 00 10 */	bne lbl_803D5CE0
/* 803D5CD4  A0 7E 00 00 */	lhz r3, 0(r30)
/* 803D5CD8  4B FF FF 91 */	bl mNpc_CheckIslandAnimalTableNo
/* 803D5CDC  7C 7F 1B 78 */	mr r31, r3
lbl_803D5CE0:
/* 803D5CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D5CE4  7F E3 FB 78 */	mr r3, r31
/* 803D5CE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D5CEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D5CF0  7C 08 03 A6 */	mtlr r0
/* 803D5CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 803D5CF8  4E 80 00 20 */	blr 
