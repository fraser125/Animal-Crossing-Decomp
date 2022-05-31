lbl_803EDE28:
/* 803EDE28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EDE2C  7C 08 02 A6 */	mflr r0
/* 803EDE30  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EDE34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803EDE38  7C 7F 1B 78 */	mr r31, r3
/* 803EDE3C  4B C6 EE B9 */	bl fqrand
/* 803EDE40  3C 60 80 64 */	lis r3, lit_422@ha /* 0x806431F8@ha */
/* 803EDE44  C0 03 31 F8 */	lfs f0, lit_422@l(r3)  /* 0x806431F8@l */
/* 803EDE48  EC 00 00 72 */	fmuls f0, f0, f1
/* 803EDE4C  FC 00 00 1E */	fctiwz f0, f0
/* 803EDE50  D8 01 00 08 */	stfd f0, 8(r1)
/* 803EDE54  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803EDE58  98 1F 00 00 */	stb r0, 0(r31)
/* 803EDE5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EDE60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803EDE64  7C 08 03 A6 */	mtlr r0
/* 803EDE68  38 21 00 20 */	addi r1, r1, 0x20
/* 803EDE6C  4E 80 00 20 */	blr 
