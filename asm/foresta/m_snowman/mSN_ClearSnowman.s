lbl_803F1B6C:
/* 803F1B6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F1B70  7C 08 02 A6 */	mflr r0
/* 803F1B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F1B78  38 00 00 00 */	li r0, 0
/* 803F1B7C  A0 83 00 00 */	lhz r4, 0(r3)
/* 803F1B80  28 04 A0 08 */	cmplwi r4, 0xa008
/* 803F1B84  41 80 00 24 */	blt lbl_803F1BA8
/* 803F1B88  28 04 A0 10 */	cmplwi r4, 0xa010
/* 803F1B8C  41 81 00 1C */	bgt lbl_803F1BA8
/* 803F1B90  3C 84 FF FF */	addis r4, r4, 0xffff
/* 803F1B94  38 00 00 03 */	li r0, 3
/* 803F1B98  38 84 5F F8 */	addi r4, r4, 0x5ff8
/* 803F1B9C  7C 84 03 D6 */	divw r4, r4, r0
/* 803F1BA0  4B FF FF 7D */	bl mSN_ClearSnowmanData
/* 803F1BA4  38 00 00 01 */	li r0, 1
lbl_803F1BA8:
/* 803F1BA8  7C 03 03 78 */	mr r3, r0
/* 803F1BAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F1BB0  7C 08 03 A6 */	mtlr r0
/* 803F1BB4  38 21 00 10 */	addi r1, r1, 0x10
/* 803F1BB8  4E 80 00 20 */	blr 
