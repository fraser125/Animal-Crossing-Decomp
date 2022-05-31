lbl_8059B0B8:
/* 8059B0B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059B0BC  7C 08 02 A6 */	mflr r0
/* 8059B0C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059B0C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059B0C8  7C 7F 1B 78 */	mr r31, r3
/* 8059B0CC  4B FF FF 2D */	bl aIHD_avoid_init_sub
/* 8059B0D0  3C 60 80 65 */	lis r3, lit_585@ha /* 0x8064A014@ha */
/* 8059B0D4  38 00 00 FF */	li r0, 0xff
/* 8059B0D8  C0 03 A0 14 */	lfs f0, lit_585@l(r3)  /* 0x8064A014@l */
/* 8059B0DC  D0 1F 01 E0 */	stfs f0, 0x1e0(r31)
/* 8059B0E0  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 8059B0E4  D0 1F 01 E4 */	stfs f0, 0x1e4(r31)
/* 8059B0E8  90 1F 02 5C */	stw r0, 0x25c(r31)
/* 8059B0EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059B0F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059B0F4  7C 08 03 A6 */	mtlr r0
/* 8059B0F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8059B0FC  4E 80 00 20 */	blr 
