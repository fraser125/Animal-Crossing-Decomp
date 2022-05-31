lbl_8059BF44:
/* 8059BF44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059BF48  7C 08 02 A6 */	mflr r0
/* 8059BF4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059BF50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059BF54  7C 7F 1B 78 */	mr r31, r3
/* 8059BF58  4B FF FE E5 */	bl aIHT_avoid_init_sub
/* 8059BF5C  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 8059BF60  38 60 00 01 */	li r3, 1
/* 8059BF64  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8059BF68  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 8059BF6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059BF70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059BF74  7C 08 03 A6 */	mtlr r0
/* 8059BF78  38 21 00 10 */	addi r1, r1, 0x10
/* 8059BF7C  4E 80 00 20 */	blr 
