lbl_80476B78:
/* 80476B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80476B7C  7C 08 02 A6 */	mflr r0
/* 80476B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80476B84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80476B88  7C 7F 1B 78 */	mr r31, r3
/* 80476B8C  4B F4 8B 1D */	bl func_803BF6A8
/* 80476B90  4B F4 A1 6D */	bl mMsg_Check_MainDisappear
/* 80476B94  2C 03 00 00 */	cmpwi r3, 0
/* 80476B98  41 82 00 10 */	beq lbl_80476BA8
/* 80476B9C  38 00 00 00 */	li r0, 0
/* 80476BA0  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80476BA4  B0 1F 01 74 */	sth r0, 0x174(r31)
lbl_80476BA8:
/* 80476BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80476BAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80476BB0  7C 08 03 A6 */	mtlr r0
/* 80476BB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80476BB8  4E 80 00 20 */	blr 
