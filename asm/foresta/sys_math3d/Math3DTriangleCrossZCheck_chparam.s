lbl_80409D50:
/* 80409D50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80409D54  7C 08 02 A6 */	mflr r0
/* 80409D58  FC A0 20 90 */	fmr f5, f4
/* 80409D5C  3C C0 80 64 */	lis r6, lit_276@ha /* 0x806436EC@ha */
/* 80409D60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80409D64  C0 86 36 EC */	lfs f4, lit_276@l(r6)  /* 0x806436EC@l */
/* 80409D68  4B FF FD 3D */	bl Math3DTriangleCrossZCheck_general
/* 80409D6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80409D70  7C 08 03 A6 */	mtlr r0
/* 80409D74  38 21 00 10 */	addi r1, r1, 0x10
/* 80409D78  4E 80 00 20 */	blr 
