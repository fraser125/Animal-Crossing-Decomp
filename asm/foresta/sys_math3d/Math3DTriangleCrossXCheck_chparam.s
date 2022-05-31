lbl_80409A78:
/* 80409A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80409A7C  7C 08 02 A6 */	mflr r0
/* 80409A80  FC A0 20 90 */	fmr f5, f4
/* 80409A84  3C C0 80 64 */	lis r6, lit_276@ha /* 0x806436EC@ha */
/* 80409A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80409A8C  C0 86 36 EC */	lfs f4, lit_276@l(r6)  /* 0x806436EC@l */
/* 80409A90  4B FF FD 55 */	bl Math3DTriangleCrossXCheck_general
/* 80409A94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80409A98  7C 08 03 A6 */	mtlr r0
/* 80409A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80409AA0  4E 80 00 20 */	blr 
