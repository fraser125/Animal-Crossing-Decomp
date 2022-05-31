lbl_804D7CF0:
/* 804D7CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D7CF4  7C 08 02 A6 */	mflr r0
/* 804D7CF8  3C A0 80 64 */	lis r5, lit_1077@ha /* 0x80646A1C@ha */
/* 804D7CFC  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804D7D00  C0 25 6A 1C */	lfs f1, lit_1077@l(r5)  /* 0x80646A1C@l */
/* 804D7D04  38 A0 00 01 */	li r5, 1
/* 804D7D08  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804D7D0C  7C 64 1B 78 */	mr r4, r3
/* 804D7D10  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D7D14  38 60 00 00 */	li r3, 0
/* 804D7D18  38 C0 00 00 */	li r6, 0
/* 804D7D1C  38 E0 00 01 */	li r7, 1
/* 804D7D20  4B EB 20 81 */	bl mCoBG_BgCheckControll
/* 804D7D24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D7D28  7C 08 03 A6 */	mtlr r0
/* 804D7D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D7D30  4E 80 00 20 */	blr 
