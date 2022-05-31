lbl_803731DC:
/* 803731DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803731E0  7C 08 02 A6 */	mflr r0
/* 803731E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803731E8  4B FF FE B1 */	bl RagrangeInt
/* 803731EC  FC 00 08 1E */	fctiwz f0, f1
/* 803731F0  D8 01 00 08 */	stfd f0, 8(r1)
/* 803731F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803731F8  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 803731FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80373200  7C 08 03 A6 */	mtlr r0
/* 80373204  38 21 00 10 */	addi r1, r1, 0x10
/* 80373208  4E 80 00 20 */	blr 
