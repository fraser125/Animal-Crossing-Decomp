lbl_80383C30:
/* 80383C30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383C34  7C 08 02 A6 */	mflr r0
/* 80383C38  7C 68 1B 78 */	mr r8, r3
/* 80383C3C  7C 87 23 78 */	mr r7, r4
/* 80383C40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383C44  7C A0 2B 78 */	mr r0, r5
/* 80383C48  7C C3 33 78 */	mr r3, r6
/* 80383C4C  7C E5 3B 78 */	mr r5, r7
/* 80383C50  7D 04 43 78 */	mr r4, r8
/* 80383C54  7C 06 03 78 */	mr r6, r0
/* 80383C58  38 E0 00 00 */	li r7, 0
/* 80383C5C  48 03 D4 5D */	bl mMsg_CopyTail
/* 80383C60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383C64  7C 08 03 A6 */	mtlr r0
/* 80383C68  38 21 00 10 */	addi r1, r1, 0x10
/* 80383C6C  4E 80 00 20 */	blr 
