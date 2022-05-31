lbl_803EB630:
/* 803EB630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EB634  7C 08 02 A6 */	mflr r0
/* 803EB638  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EB63C  4B C7 16 B9 */	bl fqrand
/* 803EB640  3C 80 80 64 */	lis r4, lit_893@ha /* 0x806431AC@ha */
/* 803EB644  3C 60 80 66 */	lis r3, trash_table@ha /* 0x8065D98C@ha */
/* 803EB648  C0 04 31 AC */	lfs f0, lit_893@l(r4)  /* 0x806431AC@l */
/* 803EB64C  38 63 D9 8C */	addi r3, r3, trash_table@l /* 0x8065D98C@l */
/* 803EB650  EC 00 00 72 */	fmuls f0, f0, f1
/* 803EB654  FC 00 00 1E */	fctiwz f0, f0
/* 803EB658  D8 01 00 08 */	stfd f0, 8(r1)
/* 803EB65C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803EB660  54 00 08 3C */	slwi r0, r0, 1
/* 803EB664  7C 63 02 2E */	lhzx r3, r3, r0
/* 803EB668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EB66C  7C 08 03 A6 */	mtlr r0
/* 803EB670  38 21 00 10 */	addi r1, r1, 0x10
/* 803EB674  4E 80 00 20 */	blr 
