lbl_8056E788:
/* 8056E788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056E78C  7C 08 02 A6 */	mflr r0
/* 8056E790  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056E794  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056E798  7C 9F 23 78 */	mr r31, r4
/* 8056E79C  93 C1 00 08 */	stw r30, 8(r1)
/* 8056E7A0  7C 7E 1B 78 */	mr r30, r3
/* 8056E7A4  7F C4 F3 78 */	mr r4, r30
/* 8056E7A8  38 60 00 07 */	li r3, 7
/* 8056E7AC  4B E2 BA B9 */	bl mDemo_Check
/* 8056E7B0  2C 03 00 00 */	cmpwi r3, 0
/* 8056E7B4  40 82 00 28 */	bne lbl_8056E7DC
/* 8056E7B8  88 1E 09 9B */	lbz r0, 0x99b(r30)
/* 8056E7BC  38 A0 00 05 */	li r5, 5
/* 8056E7C0  7C 00 07 74 */	extsb r0, r0
/* 8056E7C4  2C 00 FF FF */	cmpwi r0, -1
/* 8056E7C8  40 82 00 08 */	bne lbl_8056E7D0
/* 8056E7CC  38 A0 00 04 */	li r5, 4
lbl_8056E7D0:
/* 8056E7D0  7F C3 F3 78 */	mr r3, r30
/* 8056E7D4  7F E4 FB 78 */	mr r4, r31
/* 8056E7D8  48 00 04 F9 */	bl aPMAN_setupAction
lbl_8056E7DC:
/* 8056E7DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056E7E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056E7E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056E7E8  7C 08 03 A6 */	mtlr r0
/* 8056E7EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8056E7F0  4E 80 00 20 */	blr 
