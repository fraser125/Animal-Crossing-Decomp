lbl_803F1E2C:
/* 803F1E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F1E30  7C 08 02 A6 */	mflr r0
/* 803F1E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F1E38  4B C6 AE BD */	bl fqrand
/* 803F1E3C  3C 80 80 64 */	lis r4, lit_446@ha /* 0x8064323C@ha */
/* 803F1E40  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F1E44  C0 04 32 3C */	lfs f0, lit_446@l(r4)  /* 0x8064323C@l */
/* 803F1E48  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F1E4C  3C 63 00 03 */	addis r3, r3, 3
/* 803F1E50  EC 00 00 72 */	fmuls f0, f0, f1
/* 803F1E54  FC 00 00 1E */	fctiwz f0, f0
/* 803F1E58  D8 01 00 08 */	stfd f0, 8(r1)
/* 803F1E5C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803F1E60  90 03 85 28 */	stw r0, -0x7ad8(r3)
/* 803F1E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F1E68  7C 08 03 A6 */	mtlr r0
/* 803F1E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 803F1E70  4E 80 00 20 */	blr 
