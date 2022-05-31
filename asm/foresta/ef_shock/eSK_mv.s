lbl_8061B988:
/* 8061B988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061B98C  7C 08 02 A6 */	mflr r0
/* 8061B990  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061B994  A8 03 00 00 */	lha r0, 0(r3)
/* 8061B998  20 00 00 0E */	subfic r0, r0, 0xe
/* 8061B99C  7C 00 07 35 */	extsh. r0, r0
/* 8061B9A0  40 82 00 10 */	bne lbl_8061B9B0
/* 8061B9A4  38 83 00 10 */	addi r4, r3, 0x10
/* 8061B9A8  38 60 00 2D */	li r3, 0x2d
/* 8061B9AC  48 01 25 FD */	bl sAdo_OngenTrgStart
lbl_8061B9B0:
/* 8061B9B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061B9B4  7C 08 03 A6 */	mtlr r0
/* 8061B9B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8061B9BC  4E 80 00 20 */	blr 
