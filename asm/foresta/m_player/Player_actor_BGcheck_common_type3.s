lbl_804D7D34:
/* 804D7D34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D7D38  7C 08 02 A6 */	mflr r0
/* 804D7D3C  3C A0 80 64 */	lis r5, lit_1077@ha /* 0x80646A1C@ha */
/* 804D7D40  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804D7D44  C0 25 6A 1C */	lfs f1, lit_1077@l(r5)  /* 0x80646A1C@l */
/* 804D7D48  38 A0 00 00 */	li r5, 0
/* 804D7D4C  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804D7D50  7C 64 1B 78 */	mr r4, r3
/* 804D7D54  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D7D58  38 60 00 00 */	li r3, 0
/* 804D7D5C  4B EB 21 D1 */	bl mCoBG_GroundCheckOnly
/* 804D7D60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D7D64  7C 08 03 A6 */	mtlr r0
/* 804D7D68  38 21 00 10 */	addi r1, r1, 0x10
/* 804D7D6C  4E 80 00 20 */	blr 
