lbl_8057B590:
/* 8057B590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057B594  7C 08 02 A6 */	mflr r0
/* 8057B598  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057B59C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057B5A0  7C 9F 23 78 */	mr r31, r4
/* 8057B5A4  38 80 00 01 */	li r4, 1
/* 8057B5A8  93 C1 00 08 */	stw r30, 8(r1)
/* 8057B5AC  7C 7E 1B 78 */	mr r30, r3
/* 8057B5B0  38 60 00 04 */	li r3, 4
/* 8057B5B4  4B E1 CE C9 */	bl mDemo_Get_OrderValue
/* 8057B5B8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8057B5BC  2C 00 00 02 */	cmpwi r0, 2
/* 8057B5C0  40 82 00 14 */	bne lbl_8057B5D4
/* 8057B5C4  7F C3 F3 78 */	mr r3, r30
/* 8057B5C8  7F E4 FB 78 */	mr r4, r31
/* 8057B5CC  38 A0 00 3A */	li r5, 0x3a
/* 8057B5D0  48 00 0E E5 */	bl aNSC_setupAction
lbl_8057B5D4:
/* 8057B5D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057B5D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057B5DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057B5E0  7C 08 03 A6 */	mtlr r0
/* 8057B5E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057B5E8  4E 80 00 20 */	blr 
