lbl_80376760:
/* 80376760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80376764  3C E0 80 64 */	lis r7, lit_506@ha /* 0x8064128C@ha */
/* 80376768  C0 26 00 10 */	lfs f1, 0x10(r6)
/* 8037676C  C0 06 00 14 */	lfs f0, 0x14(r6)
/* 80376770  C0 45 00 F4 */	lfs f2, 0xf4(r5)
/* 80376774  EC 01 00 32 */	fmuls f0, f1, f0
/* 80376778  C0 66 00 1C */	lfs f3, 0x1c(r6)
/* 8037677C  C0 26 00 18 */	lfs f1, 0x18(r6)
/* 80376780  C0 85 00 F8 */	lfs f4, 0xf8(r5)
/* 80376784  EC 02 00 32 */	fmuls f0, f2, f0
/* 80376788  C0 47 12 8C */	lfs f2, lit_506@l(r7)  /* 0x8064128C@l */
/* 8037678C  EC 23 00 72 */	fmuls f1, f3, f1
/* 80376790  D0 03 00 00 */	stfs f0, 0(r3)
/* 80376794  EC 04 00 72 */	fmuls f0, f4, f1
/* 80376798  80 06 00 38 */	lwz r0, 0x38(r6)
/* 8037679C  2C 00 00 01 */	cmpwi r0, 1
/* 803767A0  EC 22 00 32 */	fmuls f1, f2, f0
/* 803767A4  40 82 00 10 */	bne lbl_803767B4
/* 803767A8  3C 60 80 64 */	lis r3, lit_507@ha /* 0x80641290@ha */
/* 803767AC  C0 03 12 90 */	lfs f0, lit_507@l(r3)  /* 0x80641290@l */
/* 803767B0  EC 21 00 32 */	fmuls f1, f1, f0
lbl_803767B4:
/* 803767B4  FC 00 08 1E */	fctiwz f0, f1
/* 803767B8  D8 01 00 08 */	stfd f0, 8(r1)
/* 803767BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803767C0  98 04 00 00 */	stb r0, 0(r4)
/* 803767C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803767C8  4E 80 00 20 */	blr 
