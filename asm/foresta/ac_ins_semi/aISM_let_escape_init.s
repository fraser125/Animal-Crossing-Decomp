lbl_8059F82C:
/* 8059F82C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059F830  7C 08 02 A6 */	mflr r0
/* 8059F834  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059F838  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059F83C  7C 7F 1B 78 */	mr r31, r3
/* 8059F840  4B FF FE AD */	bl aISM_avoid_init
/* 8059F844  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 8059F848  38 60 00 01 */	li r3, 1
/* 8059F84C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8059F850  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 8059F854  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059F858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059F85C  7C 08 03 A6 */	mtlr r0
/* 8059F860  38 21 00 10 */	addi r1, r1, 0x10
/* 8059F864  4E 80 00 20 */	blr 
