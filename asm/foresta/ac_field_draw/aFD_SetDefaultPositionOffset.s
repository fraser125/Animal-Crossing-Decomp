lbl_804231F0:
/* 804231F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804231F4  7C 08 02 A6 */	mflr r0
/* 804231F8  3C 60 80 64 */	lis r3, lit_540@ha /* 0x80643E38@ha */
/* 804231FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80423200  C0 23 3E 38 */	lfs f1, lit_540@l(r3)  /* 0x80643E38@l */
/* 80423204  4B FF FF E1 */	bl aFD_SetPositionOffset
/* 80423208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042320C  7C 08 03 A6 */	mtlr r0
/* 80423210  38 21 00 10 */	addi r1, r1, 0x10
/* 80423214  4E 80 00 20 */	blr 