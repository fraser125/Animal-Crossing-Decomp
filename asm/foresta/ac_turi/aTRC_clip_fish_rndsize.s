lbl_805C1288:
/* 805C1288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C128C  7C 08 02 A6 */	mflr r0
/* 805C1290  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C1294  4B DE A6 B5 */	bl mFR_fish_rndsize
/* 805C1298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C129C  7C 08 03 A6 */	mtlr r0
/* 805C12A0  38 21 00 10 */	addi r1, r1, 0x10
/* 805C12A4  4E 80 00 20 */	blr 
