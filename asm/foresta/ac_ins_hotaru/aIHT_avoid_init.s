lbl_8059BEF0:
/* 8059BEF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059BEF4  7C 08 02 A6 */	mflr r0
/* 8059BEF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059BEFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059BF00  7C 7F 1B 78 */	mr r31, r3
/* 8059BF04  4B FF FF 39 */	bl aIHT_avoid_init_sub
/* 8059BF08  3C 80 80 65 */	lis r4, lit_465@ha /* 0x8064A028@ha */
/* 8059BF0C  38 60 00 FF */	li r3, 0xff
/* 8059BF10  C0 04 A0 28 */	lfs f0, lit_465@l(r4)  /* 0x8064A028@l */
/* 8059BF14  38 00 00 00 */	li r0, 0
/* 8059BF18  D0 1F 01 E0 */	stfs f0, 0x1e0(r31)
/* 8059BF1C  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 8059BF20  D0 1F 01 E4 */	stfs f0, 0x1e4(r31)
/* 8059BF24  90 7F 02 5C */	stw r3, 0x25c(r31)
/* 8059BF28  90 7F 02 60 */	stw r3, 0x260(r31)
/* 8059BF2C  90 1F 02 64 */	stw r0, 0x264(r31)
/* 8059BF30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059BF34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059BF38  7C 08 03 A6 */	mtlr r0
/* 8059BF3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8059BF40  4E 80 00 20 */	blr 
