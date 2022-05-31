lbl_8048B560:
/* 8048B560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048B564  7C 08 02 A6 */	mflr r0
/* 8048B568  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048B56C  80 03 09 30 */	lwz r0, 0x930(r3)
/* 8048B570  2C 00 FF FF */	cmpwi r0, -1
/* 8048B574  41 82 00 58 */	beq lbl_8048B5CC
/* 8048B578  1C 80 00 34 */	mulli r4, r0, 0x34
/* 8048B57C  38 04 02 1C */	addi r0, r4, 0x21c
/* 8048B580  7C 63 00 2E */	lwzx r3, r3, r0
/* 8048B584  88 03 00 00 */	lbz r0, 0(r3)
/* 8048B588  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 8048B58C  2C 00 00 01 */	cmpwi r0, 1
/* 8048B590  41 82 00 2C */	beq lbl_8048B5BC
/* 8048B594  40 80 00 10 */	bge lbl_8048B5A4
/* 8048B598  2C 00 00 00 */	cmpwi r0, 0
/* 8048B59C  40 80 00 14 */	bge lbl_8048B5B0
/* 8048B5A0  48 00 00 2C */	b lbl_8048B5CC
lbl_8048B5A4:
/* 8048B5A4  2C 00 00 03 */	cmpwi r0, 3
/* 8048B5A8  40 80 00 24 */	bge lbl_8048B5CC
/* 8048B5AC  48 00 00 1C */	b lbl_8048B5C8
lbl_8048B5B0:
/* 8048B5B0  38 80 00 01 */	li r4, 1
/* 8048B5B4  4B F5 73 35 */	bl mQst_ClearDelivery
/* 8048B5B8  48 00 00 14 */	b lbl_8048B5CC
lbl_8048B5BC:
/* 8048B5BC  38 80 00 01 */	li r4, 1
/* 8048B5C0  4B F5 73 8D */	bl mQst_ClearErrand
/* 8048B5C4  48 00 00 08 */	b lbl_8048B5CC
lbl_8048B5C8:
/* 8048B5C8  4B F5 74 19 */	bl mQst_ClearContest
lbl_8048B5CC:
/* 8048B5CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048B5D0  7C 08 03 A6 */	mtlr r0
/* 8048B5D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048B5D8  4E 80 00 20 */	blr 
