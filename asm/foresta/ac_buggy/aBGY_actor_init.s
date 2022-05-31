lbl_805AA700:
/* 805AA700  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AA704  7C 08 02 A6 */	mflr r0
/* 805AA708  38 A0 00 00 */	li r5, 0
/* 805AA70C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AA710  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805AA714  7C 9F 23 78 */	mr r31, r4
/* 805AA718  38 81 00 08 */	addi r4, r1, 8
/* 805AA71C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805AA720  7C 7E 1B 78 */	mr r30, r3
/* 805AA724  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F105@ha */
/* 805AA728  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805AA72C  38 63 F1 05 */	addi r3, r3, 0xF105 /* 0x0000F105@l */
/* 805AA730  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805AA734  90 C1 00 08 */	stw r6, 8(r1)
/* 805AA738  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AA73C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805AA740  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AA744  4B DF D0 ED */	bl mFI_SetFG_common
/* 805AA748  7F C3 F3 78 */	mr r3, r30
/* 805AA74C  7F E4 FB 78 */	mr r4, r31
/* 805AA750  4B FF FE 61 */	bl aBGY_actor_move
/* 805AA754  3C 60 80 5B */	lis r3, aBGY_actor_move@ha /* 0x805AA5B0@ha */
/* 805AA758  38 03 A5 B0 */	addi r0, r3, aBGY_actor_move@l /* 0x805AA5B0@l */
/* 805AA75C  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805AA760  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805AA764  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805AA768  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AA76C  7C 08 03 A6 */	mtlr r0
/* 805AA770  38 21 00 20 */	addi r1, r1, 0x20
/* 805AA774  4E 80 00 20 */	blr 
