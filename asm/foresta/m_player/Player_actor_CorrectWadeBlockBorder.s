lbl_804D64AC:
/* 804D64AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D64B0  7C 08 02 A6 */	mflr r0
/* 804D64B4  3C A0 80 64 */	lis r5, lit_1077@ha /* 0x80646A1C@ha */
/* 804D64B8  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804D64BC  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804D64C0  7C 64 1B 78 */	mr r4, r3
/* 804D64C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D64C8  38 61 00 08 */	addi r3, r1, 8
/* 804D64CC  C0 25 6A 1C */	lfs f1, lit_1077@l(r5)  /* 0x80646A1C@l */
/* 804D64D0  4B EB BB F1 */	bl mCoBG_UniqueWallCheck
/* 804D64D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D64D8  7C 08 03 A6 */	mtlr r0
/* 804D64DC  38 21 00 20 */	addi r1, r1, 0x20
/* 804D64E0  4E 80 00 20 */	blr 
