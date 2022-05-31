lbl_8055C9A8:
/* 8055C9A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055C9AC  7C 08 02 A6 */	mflr r0
/* 8055C9B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055C9B4  88 04 1F 4E */	lbz r0, 0x1f4e(r4)
/* 8055C9B8  28 00 00 00 */	cmplwi r0, 0
/* 8055C9BC  40 82 00 10 */	bne lbl_8055C9CC
/* 8055C9C0  80 A3 09 94 */	lwz r5, 0x994(r3)
/* 8055C9C4  38 A5 00 01 */	addi r5, r5, 1
/* 8055C9C8  48 00 24 09 */	bl aNSC_setupAction
lbl_8055C9CC:
/* 8055C9CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055C9D0  7C 08 03 A6 */	mtlr r0
/* 8055C9D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8055C9D8  4E 80 00 20 */	blr 
