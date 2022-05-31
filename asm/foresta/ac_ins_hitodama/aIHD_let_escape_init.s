lbl_8059B100:
/* 8059B100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059B104  7C 08 02 A6 */	mflr r0
/* 8059B108  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059B10C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059B110  7C 7F 1B 78 */	mr r31, r3
/* 8059B114  4B FF FE E5 */	bl aIHD_avoid_init_sub
/* 8059B118  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 8059B11C  38 60 00 01 */	li r3, 1
/* 8059B120  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8059B124  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 8059B128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059B12C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059B130  7C 08 03 A6 */	mtlr r0
/* 8059B134  38 21 00 10 */	addi r1, r1, 0x10
/* 8059B138  4E 80 00 20 */	blr 
