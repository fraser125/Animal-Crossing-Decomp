lbl_8059E208:
/* 8059E208  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059E20C  7C 08 02 A6 */	mflr r0
/* 8059E210  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059E214  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059E218  7C 7F 1B 78 */	mr r31, r3
/* 8059E21C  80 03 02 2C */	lwz r0, 0x22c(r3)
/* 8059E220  7C 03 07 34 */	extsh r3, r0
/* 8059E224  38 63 01 00 */	addi r3, r3, 0x100
/* 8059E228  7C 60 07 34 */	extsh r0, r3
/* 8059E22C  90 1F 02 2C */	stw r0, 0x22c(r31)
/* 8059E230  4B E1 C8 C1 */	bl sin_s
/* 8059E234  3C 60 80 65 */	lis r3, lit_482@ha /* 0x8064A1A4@ha */
/* 8059E238  C0 03 A1 A4 */	lfs f0, lit_482@l(r3)  /* 0x8064A1A4@l */
/* 8059E23C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059E240  FC 00 00 1E */	fctiwz f0, f0
/* 8059E244  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059E248  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8059E24C  B0 1F 00 E0 */	sth r0, 0xe0(r31)
/* 8059E250  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059E254  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059E258  7C 08 03 A6 */	mtlr r0
/* 8059E25C  38 21 00 20 */	addi r1, r1, 0x20
/* 8059E260  4E 80 00 20 */	blr 
