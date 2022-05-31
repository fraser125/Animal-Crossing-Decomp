lbl_803F21D0:
/* 803F21D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F21D4  7C 08 02 A6 */	mflr r0
/* 803F21D8  38 80 00 0A */	li r4, 0xa
/* 803F21DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F21E0  38 00 00 03 */	li r0, 3
/* 803F21E4  98 83 20 D0 */	stb r4, 0x20d0(r3)
/* 803F21E8  98 03 20 D1 */	stb r0, 0x20d1(r3)
/* 803F21EC  4B FE 7F 65 */	bl mPlib_request_main_invade_type1
/* 803F21F0  38 60 52 1C */	li r3, 0x521c
/* 803F21F4  4B F8 99 19 */	bl mBGMPsComp_make_ps_wipe
/* 803F21F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F21FC  7C 08 03 A6 */	mtlr r0
/* 803F2200  38 21 00 10 */	addi r1, r1, 0x10
/* 803F2204  4E 80 00 20 */	blr 
