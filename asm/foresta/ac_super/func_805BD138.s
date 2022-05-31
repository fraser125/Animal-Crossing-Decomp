lbl_805BD138:
/* 805BD138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BD13C  7C 08 02 A6 */	mflr r0
/* 805BD140  7C 65 1B 78 */	mr r5, r3
/* 805BD144  7C 83 23 78 */	mr r3, r4
/* 805BD148  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BD14C  38 85 00 28 */	addi r4, r5, 0x28
/* 805BD150  48 07 0E 59 */	bl sAdo_OngenTrgStart
/* 805BD154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BD158  7C 08 03 A6 */	mtlr r0
/* 805BD15C  38 21 00 10 */	addi r1, r1, 0x10
/* 805BD160  4E 80 00 20 */	blr 
