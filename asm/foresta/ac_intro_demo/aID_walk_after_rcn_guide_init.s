lbl_8042B394:
/* 8042B394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042B398  7C 08 02 A6 */	mflr r0
/* 8042B39C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042B3A0  80 A3 01 88 */	lwz r5, 0x188(r3)
/* 8042B3A4  3C 60 80 64 */	lis r3, lit_626@ha /* 0x80644064@ha */
/* 8042B3A8  C0 43 40 64 */	lfs f2, lit_626@l(r3)  /* 0x80644064@l */
/* 8042B3AC  7C 83 23 78 */	mr r3, r4
/* 8042B3B0  C0 05 00 74 */	lfs f0, 0x74(r5)
/* 8042B3B4  38 80 00 00 */	li r4, 0
/* 8042B3B8  C0 25 00 28 */	lfs f1, 0x28(r5)
/* 8042B3BC  EC 62 00 32 */	fmuls f3, f2, f0
/* 8042B3C0  C0 45 00 30 */	lfs f2, 0x30(r5)
/* 8042B3C4  4B FA FA 19 */	bl mPlib_request_main_demo_walk_type1
/* 8042B3C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042B3CC  7C 08 03 A6 */	mtlr r0
/* 8042B3D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8042B3D4  4E 80 00 20 */	blr 
