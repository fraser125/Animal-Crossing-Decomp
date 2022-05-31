lbl_8060D5F4:
/* 8060D5F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060D5F8  7C 08 02 A6 */	mflr r0
/* 8060D5FC  3C 80 80 65 */	lis r4, data_8064C0E4@ha /* 0x8064C0E4@ha */
/* 8060D600  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060D604  38 00 00 12 */	li r0, 0x12
/* 8060D608  C0 24 C0 E4 */	lfs f1, data_8064C0E4@l(r4)  /* 0x8064C0E4@l */
/* 8060D60C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060D610  93 C1 00 08 */	stw r30, 8(r1)
/* 8060D614  7C 7E 1B 78 */	mr r30, r3
/* 8060D618  AB E5 00 00 */	lha r31, 0(r5)
/* 8060D61C  B0 03 00 00 */	sth r0, 0(r3)
/* 8060D620  3C 60 80 65 */	lis r3, lit_385@ha /* 0x8064C0E8@ha */
/* 8060D624  38 83 C0 E8 */	addi r4, r3, lit_385@l /* 0x8064C0E8@l */
/* 8060D628  D0 3E 00 3C */	stfs f1, 0x3c(r30)
/* 8060D62C  7F E3 FB 78 */	mr r3, r31
/* 8060D630  C0 04 00 00 */	lfs f0, 0(r4)
/* 8060D634  D0 3E 00 38 */	stfs f1, 0x38(r30)
/* 8060D638  D0 3E 00 34 */	stfs f1, 0x34(r30)
/* 8060D63C  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 8060D640  4B DA D4 B1 */	bl sin_s
/* 8060D644  3C 80 80 65 */	lis r4, lit_386@ha /* 0x8064C0EC@ha */
/* 8060D648  7F E3 FB 78 */	mr r3, r31
/* 8060D64C  C0 04 C0 EC */	lfs f0, lit_386@l(r4)  /* 0x8064C0EC@l */
/* 8060D650  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8060D654  4B DA D4 49 */	bl cos_s
/* 8060D658  3C 80 80 65 */	lis r4, lit_386@ha /* 0x8064C0EC@ha */
/* 8060D65C  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064C0F0@ha */
/* 8060D660  C0 24 C0 EC */	lfs f1, lit_386@l(r4)  /* 0x8064C0EC@l */
/* 8060D664  C0 03 C0 F0 */	lfs f0, lit_387@l(r3)  /* 0x8064C0F0@l */
/* 8060D668  D0 3E 00 24 */	stfs f1, 0x24(r30)
/* 8060D66C  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 8060D670  D0 3E 00 30 */	stfs f1, 0x30(r30)
/* 8060D674  D0 3E 00 28 */	stfs f1, 0x28(r30)
/* 8060D678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060D67C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060D680  83 C1 00 08 */	lwz r30, 8(r1)
/* 8060D684  7C 08 03 A6 */	mtlr r0
/* 8060D688  38 21 00 10 */	addi r1, r1, 0x10
/* 8060D68C  4E 80 00 20 */	blr 
