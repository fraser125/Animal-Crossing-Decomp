lbl_803D5CFC:
/* 803D5CFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D5D00  7C 08 02 A6 */	mflr r0
/* 803D5D04  28 03 00 00 */	cmplwi r3, 0
/* 803D5D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D5D0C  38 00 00 00 */	li r0, 0
/* 803D5D10  41 82 00 0C */	beq lbl_803D5D1C
/* 803D5D14  4B FF FF 95 */	bl mNpc_CheckIslandAnimalID
/* 803D5D18  7C 60 1B 78 */	mr r0, r3
lbl_803D5D1C:
/* 803D5D1C  7C 03 03 78 */	mr r3, r0
/* 803D5D20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D5D24  7C 08 03 A6 */	mtlr r0
/* 803D5D28  38 21 00 10 */	addi r1, r1, 0x10
/* 803D5D2C  4E 80 00 20 */	blr 
