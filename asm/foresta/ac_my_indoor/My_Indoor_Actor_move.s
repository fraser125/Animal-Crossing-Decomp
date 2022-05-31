lbl_8046FE18:
/* 8046FE18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046FE1C  7C 08 02 A6 */	mflr r0
/* 8046FE20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046FE24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046FE28  7C 9F 23 78 */	mr r31, r4
/* 8046FE2C  93 C1 00 08 */	stw r30, 8(r1)
/* 8046FE30  7C 7E 1B 78 */	mr r30, r3
/* 8046FE34  4B FF FD E9 */	bl aMI_Change2ReservedWall
/* 8046FE38  7F C3 F3 78 */	mr r3, r30
/* 8046FE3C  7F E4 FB 78 */	mr r4, r31
/* 8046FE40  4B FF FE D9 */	bl aMI_Change2ReservedFloor
/* 8046FE44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046FE48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046FE4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046FE50  7C 08 03 A6 */	mtlr r0
/* 8046FE54  38 21 00 10 */	addi r1, r1, 0x10
/* 8046FE58  4E 80 00 20 */	blr 
