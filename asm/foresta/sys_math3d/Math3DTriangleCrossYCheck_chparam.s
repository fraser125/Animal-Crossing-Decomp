lbl_804095F8:
/* 804095F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804095FC  7C 08 02 A6 */	mflr r0
/* 80409600  FC A0 20 90 */	fmr f5, f4
/* 80409604  3C C0 80 64 */	lis r6, lit_276@ha /* 0x806436EC@ha */
/* 80409608  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040960C  C0 86 36 EC */	lfs f4, lit_276@l(r6)  /* 0x806436EC@l */
/* 80409610  4B FF FD 55 */	bl Math3DTriangleCrossYCheck_general
/* 80409614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80409618  7C 08 03 A6 */	mtlr r0
/* 8040961C  38 21 00 10 */	addi r1, r1, 0x10
/* 80409620  4E 80 00 20 */	blr 
