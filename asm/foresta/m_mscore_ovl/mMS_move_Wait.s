lbl_805E7C78:
/* 805E7C78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E7C7C  7C 08 02 A6 */	mflr r0
/* 805E7C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E7C84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E7C88  7C 9F 23 78 */	mr r31, r4
/* 805E7C8C  93 C1 00 08 */	stw r30, 8(r1)
/* 805E7C90  7C 7E 1B 78 */	mr r30, r3
/* 805E7C94  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805E7C98  80 04 04 90 */	lwz r0, 0x490(r4)
/* 805E7C9C  80 64 09 B0 */	lwz r3, 0x9b0(r4)
/* 805E7CA0  2C 00 00 00 */	cmpwi r0, 0
/* 805E7CA4  40 82 00 7C */	bne lbl_805E7D20
/* 805E7CA8  80 04 04 BC */	lwz r0, 0x4bc(r4)
/* 805E7CAC  2C 00 00 04 */	cmpwi r0, 4
/* 805E7CB0  40 82 00 70 */	bne lbl_805E7D20
/* 805E7CB4  80 04 04 C8 */	lwz r0, 0x4c8(r4)
/* 805E7CB8  2C 00 00 00 */	cmpwi r0, 0
/* 805E7CBC  40 82 00 24 */	bne lbl_805E7CE0
/* 805E7CC0  4B DD 75 B9 */	bl mMld_SetSaveMelody
/* 805E7CC4  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805E7CC8  7F E3 FB 78 */	mr r3, r31
/* 805E7CCC  38 80 00 04 */	li r4, 4
/* 805E7CD0  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805E7CD4  7D 89 03 A6 */	mtctr r12
/* 805E7CD8  4E 80 04 21 */	bctrl 
/* 805E7CDC  48 00 00 44 */	b lbl_805E7D20
lbl_805E7CE0:
/* 805E7CE0  2C 00 00 01 */	cmpwi r0, 1
/* 805E7CE4  40 82 00 1C */	bne lbl_805E7D00
/* 805E7CE8  38 80 00 00 */	li r4, 0
/* 805E7CEC  38 00 00 01 */	li r0, 1
/* 805E7CF0  90 83 00 14 */	stw r4, 0x14(r3)
/* 805E7CF4  90 83 00 10 */	stw r4, 0x10(r3)
/* 805E7CF8  90 1F 00 04 */	stw r0, 4(r31)
/* 805E7CFC  48 00 00 24 */	b lbl_805E7D20
lbl_805E7D00:
/* 805E7D00  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 805E7D04  4B DD 75 75 */	bl mMld_SetSaveMelody
/* 805E7D08  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805E7D0C  7F E3 FB 78 */	mr r3, r31
/* 805E7D10  38 80 00 04 */	li r4, 4
/* 805E7D14  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805E7D18  7D 89 03 A6 */	mtctr r12
/* 805E7D1C  4E 80 04 21 */	bctrl 
lbl_805E7D20:
/* 805E7D20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E7D24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E7D28  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E7D2C  7C 08 03 A6 */	mtlr r0
/* 805E7D30  38 21 00 10 */	addi r1, r1, 0x10
/* 805E7D34  4E 80 00 20 */	blr 
