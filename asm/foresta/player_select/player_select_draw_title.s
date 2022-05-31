lbl_8062C2DC:
/* 8062C2DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062C2E0  7C 08 02 A6 */	mflr r0
/* 8062C2E4  38 80 00 01 */	li r4, 1
/* 8062C2E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062C2EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8062C2F0  7C 7F 1B 78 */	mr r31, r3
/* 8062C2F4  80 63 00 00 */	lwz r3, 0(r3)
/* 8062C2F8  4B D8 3E 41 */	bl mFont_SetMatrix
/* 8062C2FC  39 00 00 01 */	li r8, 1
/* 8062C300  3C 60 80 65 */	lis r3, lit_536@ha /* 0x8064D0E4@ha */
/* 8062C304  91 01 00 08 */	stw r8, 8(r1)
/* 8062C308  38 00 00 00 */	li r0, 0
/* 8062C30C  C0 63 D0 E4 */	lfs f3, lit_536@l(r3)  /* 0x8064D0E4@l */
/* 8062C310  3C 80 80 65 */	lis r4, data_8064D0DC@ha /* 0x8064D0DC@ha */
/* 8062C314  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062C318  3C 60 80 65 */	lis r3, lit_535@ha /* 0x8064D0E0@ha */
/* 8062C31C  38 A3 D0 E0 */	addi r5, r3, lit_535@l /* 0x8064D0E0@l */
/* 8062C320  38 C4 D0 DC */	addi r6, r4, data_8064D0DC@l /* 0x8064D0DC@l */
/* 8062C324  3C E0 80 6D */	lis r7, _debug_player_select@ha /* 0x806D4A70@ha */
/* 8062C328  91 01 00 10 */	stw r8, 0x10(r1)
/* 8062C32C  C0 26 00 00 */	lfs f1, 0(r6)
/* 8062C330  38 87 4A 70 */	addi r4, r7, _debug_player_select@l /* 0x806D4A70@l */
/* 8062C334  C0 45 00 00 */	lfs f2, 0(r5)
/* 8062C338  FC 80 18 90 */	fmr f4, f3
/* 8062C33C  7F E3 FB 78 */	mr r3, r31
/* 8062C340  38 A0 00 0A */	li r5, 0xa
/* 8062C344  38 C0 00 C8 */	li r6, 0xc8
/* 8062C348  38 E0 00 C8 */	li r7, 0xc8
/* 8062C34C  39 00 00 C8 */	li r8, 0xc8
/* 8062C350  39 20 00 FF */	li r9, 0xff
/* 8062C354  39 40 00 00 */	li r10, 0
/* 8062C358  4B D8 3D 19 */	bl mFont_SetLineStrings_AndSpace
/* 8062C35C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8062C360  38 80 00 01 */	li r4, 1
/* 8062C364  4B D8 3E D5 */	bl mFont_UnSetMatrix
/* 8062C368  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062C36C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062C370  7C 08 03 A6 */	mtlr r0
/* 8062C374  38 21 00 20 */	addi r1, r1, 0x20
/* 8062C378  4E 80 00 20 */	blr 
