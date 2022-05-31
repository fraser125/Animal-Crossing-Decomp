lbl_805C10C0:
/* 805C10C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C10C4  7C 08 02 A6 */	mflr r0
/* 805C10C8  38 80 00 00 */	li r4, 0
/* 805C10CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C10D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C10D4  7C 7F 1B 78 */	mr r31, r3
/* 805C10D8  A0 A3 00 06 */	lhz r5, 6(r3)
/* 805C10DC  38 05 A7 C8 */	addi r0, r5, -22584
/* 805C10E0  90 03 02 B8 */	stw r0, 0x2b8(r3)
/* 805C10E4  80 A3 02 B8 */	lwz r5, 0x2b8(r3)
/* 805C10E8  38 05 00 25 */	addi r0, r5, 0x25
/* 805C10EC  90 03 02 A8 */	stw r0, 0x2a8(r3)
/* 805C10F0  80 A3 02 B8 */	lwz r5, 0x2b8(r3)
/* 805C10F4  38 05 00 4E */	addi r0, r5, 0x4e
/* 805C10F8  90 03 02 AC */	stw r0, 0x2ac(r3)
/* 805C10FC  48 00 06 31 */	bl aTUR_setup_action
/* 805C1100  80 9F 02 B8 */	lwz r4, 0x2b8(r31)
/* 805C1104  7F E3 FB 78 */	mr r3, r31
/* 805C1108  38 84 00 02 */	addi r4, r4, 2
/* 805C110C  48 00 04 A5 */	bl func_805C15B0
/* 805C1110  48 00 00 39 */	bl func_805C1148
/* 805C1114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C1118  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C111C  7C 08 03 A6 */	mtlr r0
/* 805C1120  38 21 00 10 */	addi r1, r1, 0x10
/* 805C1124  4E 80 00 20 */	blr 
