lbl_8048A424:
/* 8048A424  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048A428  7C 08 02 A6 */	mflr r0
/* 8048A42C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048A430  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8048A434  7C 7F 1B 78 */	mr r31, r3
/* 8048A438  4B BD 28 BD */	bl fqrand
/* 8048A43C  3C 80 80 64 */	lis r4, data_80644BBC@ha /* 0x80644BBC@ha */
/* 8048A440  3C 60 80 69 */	lis r3, data_8068AF48@ha /* 0x8068AF48@ha */
/* 8048A444  C0 04 4B BC */	lfs f0, data_80644BBC@l(r4)  /* 0x80644BBC@l */
/* 8048A448  38 63 AF 48 */	addi r3, r3, data_8068AF48@l /* 0x8068AF48@l */
/* 8048A44C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048A450  FC 00 00 1E */	fctiwz f0, f0
/* 8048A454  D8 01 00 08 */	stfd f0, 8(r1)
/* 8048A458  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8048A45C  54 00 08 3C */	slwi r0, r0, 1
/* 8048A460  7C 03 02 2E */	lhzx r0, r3, r0
/* 8048A464  B0 1F 00 00 */	sth r0, 0(r31)
/* 8048A468  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048A46C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8048A470  7C 08 03 A6 */	mtlr r0
/* 8048A474  38 21 00 20 */	addi r1, r1, 0x20
/* 8048A478  4E 80 00 20 */	blr 
