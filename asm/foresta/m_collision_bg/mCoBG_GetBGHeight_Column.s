lbl_8038F070:
/* 8038F070  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8038F074  7C 08 02 A6 */	mflr r0
/* 8038F078  38 A0 00 00 */	li r5, 0
/* 8038F07C  38 C0 00 00 */	li r6, 0
/* 8038F080  90 01 00 34 */	stw r0, 0x34(r1)
/* 8038F084  38 E0 FF FF */	li r7, -1
/* 8038F088  39 00 FF FF */	li r8, -1
/* 8038F08C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8038F090  7C 7F 1B 78 */	mr r31, r3
/* 8038F094  38 61 00 08 */	addi r3, r1, 8
/* 8038F098  4B FF EC 79 */	bl mCoBG_MakeOneColumnCollisionData
/* 8038F09C  2C 03 00 00 */	cmpwi r3, 0
/* 8038F0A0  41 82 00 24 */	beq lbl_8038F0C4
/* 8038F0A4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8038F0A8  7F E3 FB 78 */	mr r3, r31
/* 8038F0AC  38 81 00 08 */	addi r4, r1, 8
/* 8038F0B0  4B FF BF 35 */	bl mCoBG_JudgePointInCircle_Xyz
/* 8038F0B4  2C 03 00 00 */	cmpwi r3, 0
/* 8038F0B8  41 82 00 0C */	beq lbl_8038F0C4
/* 8038F0BC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8038F0C0  48 00 00 0C */	b lbl_8038F0CC
lbl_8038F0C4:
/* 8038F0C4  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038F0C8  C0 23 19 A4 */	lfs f1, data_806419A4@l(r3)  /* 0x806419A4@l */
lbl_8038F0CC:
/* 8038F0CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8038F0D0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8038F0D4  7C 08 03 A6 */	mtlr r0
/* 8038F0D8  38 21 00 30 */	addi r1, r1, 0x30
/* 8038F0DC  4E 80 00 20 */	blr 
