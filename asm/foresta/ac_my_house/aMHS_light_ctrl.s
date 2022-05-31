lbl_805B582C:
/* 805B582C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B5830  7C 08 02 A6 */	mflr r0
/* 805B5834  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B5838  80 03 02 B4 */	lwz r0, 0x2b4(r3)
/* 805B583C  54 03 0F 7C */	rlwinm r3, r0, 1, 0x1d, 0x1e
/* 805B5840  4B E3 1A 8D */	bl mRmTp_Index2LightSwitchStatus
/* 805B5844  30 03 FF FF */	addic r0, r3, -1
/* 805B5848  7C 60 19 10 */	subfe r3, r0, r3
/* 805B584C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B5850  7C 08 03 A6 */	mtlr r0
/* 805B5854  38 21 00 10 */	addi r1, r1, 0x10
/* 805B5858  4E 80 00 20 */	blr 
