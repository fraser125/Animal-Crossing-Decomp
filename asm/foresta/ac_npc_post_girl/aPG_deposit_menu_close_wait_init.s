lbl_8056D7A0:
/* 8056D7A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056D7A4  7C 08 02 A6 */	mflr r0
/* 8056D7A8  38 64 1D EC */	addi r3, r4, 0x1dec
/* 8056D7AC  38 80 00 16 */	li r4, 0x16
/* 8056D7B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D7B4  38 A0 00 00 */	li r5, 0
/* 8056D7B8  38 C0 00 00 */	li r6, 0
/* 8056D7BC  4B E8 1F 21 */	bl mSM_open_submenu
/* 8056D7C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D7C4  7C 08 03 A6 */	mtlr r0
/* 8056D7C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D7CC  4E 80 00 20 */	blr 
