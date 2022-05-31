lbl_803FC2F0:
/* 803FC2F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FC2F4  7C 08 02 A6 */	mflr r0
/* 803FC2F8  7C 67 1B 78 */	mr r7, r3
/* 803FC2FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FC300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FC304  93 C1 00 08 */	stw r30, 8(r1)
/* 803FC308  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803FC30C  80 A7 00 00 */	lwz r5, 0(r7)
/* 803FC310  28 03 00 00 */	cmplwi r3, 0
/* 803FC314  41 82 00 3C */	beq lbl_803FC350
/* 803FC318  2C 05 FF FF */	cmpwi r5, -1
/* 803FC31C  41 82 00 34 */	beq lbl_803FC350
/* 803FC320  1C C5 00 94 */	mulli r6, r5, 0x94
/* 803FC324  80 87 00 04 */	lwz r4, 4(r7)
/* 803FC328  3B E6 00 54 */	addi r31, r6, 0x54
/* 803FC32C  7F E7 FA 14 */	add r31, r7, r31
/* 803FC330  38 DF 00 74 */	addi r6, r31, 0x74
/* 803FC334  4B FF E6 05 */	bl mCD_save_file
/* 803FC338  7C 60 1B 78 */	mr r0, r3
/* 803FC33C  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 803FC340  7C 1E 03 78 */	mr r30, r0
/* 803FC344  4B FF DF 71 */	bl mCD_TransErrorCode
/* 803FC348  90 7F 00 78 */	stw r3, 0x78(r31)
/* 803FC34C  48 00 00 08 */	b lbl_803FC354
lbl_803FC350:
/* 803FC350  3B C0 FF FF */	li r30, -1
lbl_803FC354:
/* 803FC354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FC358  7F C3 F3 78 */	mr r3, r30
/* 803FC35C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FC360  83 C1 00 08 */	lwz r30, 8(r1)
/* 803FC364  7C 08 03 A6 */	mtlr r0
/* 803FC368  38 21 00 10 */	addi r1, r1, 0x10
/* 803FC36C  4E 80 00 20 */	blr 
