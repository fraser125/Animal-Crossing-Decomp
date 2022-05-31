lbl_8049F078:
/* 8049F078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049F07C  7C 08 02 A6 */	mflr r0
/* 8049F080  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049F084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049F088  7C 9F 23 78 */	mr r31, r4
/* 8049F08C  93 C1 00 08 */	stw r30, 8(r1)
/* 8049F090  7C 7E 1B 78 */	mr r30, r3
/* 8049F094  80 03 01 A8 */	lwz r0, 0x1a8(r3)
/* 8049F098  2C 00 00 01 */	cmpwi r0, 1
/* 8049F09C  40 82 00 0C */	bne lbl_8049F0A8
/* 8049F0A0  4B FF FB E5 */	bl aSI_DrawShopFukubiki
/* 8049F0A4  48 00 00 14 */	b lbl_8049F0B8
lbl_8049F0A8:
/* 8049F0A8  4B FF FD 81 */	bl aSI_DrawShopWall
/* 8049F0AC  7F C3 F3 78 */	mr r3, r30
/* 8049F0B0  7F E4 FB 78 */	mr r4, r31
/* 8049F0B4  4B FF F9 45 */	bl aSI_DrawShopFloor
lbl_8049F0B8:
/* 8049F0B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049F0BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049F0C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049F0C4  7C 08 03 A6 */	mtlr r0
/* 8049F0C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8049F0CC  4E 80 00 20 */	blr 
