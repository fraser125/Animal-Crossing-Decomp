lbl_8053A99C:
/* 8053A99C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053A9A0  7C 08 02 A6 */	mflr r0
/* 8053A9A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053A9A8  80 03 09 D0 */	lwz r0, 0x9d0(r3)
/* 8053A9AC  7C 00 20 40 */	cmplw r0, r4
/* 8053A9B0  40 82 00 08 */	bne lbl_8053A9B8
/* 8053A9B4  4B FF FF 95 */	bl aNPC_force_reset_umb_open_flg
lbl_8053A9B8:
/* 8053A9B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053A9BC  7C 08 03 A6 */	mtlr r0
/* 8053A9C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8053A9C4  4E 80 00 20 */	blr 
