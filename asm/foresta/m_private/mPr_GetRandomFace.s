lbl_803E02D4:
/* 803E02D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E02D8  7C 08 02 A6 */	mflr r0
/* 803E02DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E02E0  4B C7 CA 15 */	bl fqrand
/* 803E02E4  3C 60 80 64 */	lis r3, data_806430EC@ha /* 0x806430EC@ha */
/* 803E02E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E02EC  C0 03 30 EC */	lfs f0, data_806430EC@l(r3)  /* 0x806430EC@l */
/* 803E02F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E02F4  FC 00 00 1E */	fctiwz f0, f0
/* 803E02F8  D8 01 00 08 */	stfd f0, 8(r1)
/* 803E02FC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803E0300  7C 08 03 A6 */	mtlr r0
/* 803E0304  38 21 00 10 */	addi r1, r1, 0x10
/* 803E0308  4E 80 00 20 */	blr 
