lbl_805BA024:
/* 805BA024  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BA028  7C 08 02 A6 */	mflr r0
/* 805BA02C  38 A0 00 00 */	li r5, 0
/* 805BA030  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BA034  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805BA038  7C 9F 23 78 */	mr r31, r4
/* 805BA03C  38 81 00 08 */	addi r4, r1, 8
/* 805BA040  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805BA044  7C 7E 1B 78 */	mr r30, r3
/* 805BA048  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F0F7@ha */
/* 805BA04C  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805BA050  38 63 F0 F7 */	addi r3, r3, 0xF0F7 /* 0x0000F0F7@l */
/* 805BA054  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805BA058  90 C1 00 08 */	stw r6, 8(r1)
/* 805BA05C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805BA060  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805BA064  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BA068  4B DE D7 C9 */	bl mFI_SetFG_common
/* 805BA06C  7F C3 F3 78 */	mr r3, r30
/* 805BA070  7F E4 FB 78 */	mr r4, r31
/* 805BA074  4B FF FF 05 */	bl aSHOP_actor_move
/* 805BA078  3C 60 80 5C */	lis r3, aSHOP_actor_move@ha /* 0x805B9F78@ha */
/* 805BA07C  38 03 9F 78 */	addi r0, r3, aSHOP_actor_move@l /* 0x805B9F78@l */
/* 805BA080  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805BA084  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BA088  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805BA08C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BA090  7C 08 03 A6 */	mtlr r0
/* 805BA094  38 21 00 20 */	addi r1, r1, 0x20
/* 805BA098  4E 80 00 20 */	blr 
