lbl_805C1C4C:
/* 805C1C4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C1C50  7C 08 02 A6 */	mflr r0
/* 805C1C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C1C58  A0 83 00 06 */	lhz r4, 6(r3)
/* 805C1C5C  38 04 A7 D3 */	addi r0, r4, -22573
/* 805C1C60  90 03 02 B8 */	stw r0, 0x2b8(r3)
/* 805C1C64  80 83 02 B8 */	lwz r4, 0x2b8(r3)
/* 805C1C68  38 84 00 02 */	addi r4, r4, 2
/* 805C1C6C  48 00 00 15 */	bl func_805C1C80
/* 805C1C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C1C74  7C 08 03 A6 */	mtlr r0
/* 805C1C78  38 21 00 10 */	addi r1, r1, 0x10
/* 805C1C7C  4E 80 00 20 */	blr 