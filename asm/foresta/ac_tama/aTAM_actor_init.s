lbl_805BDE24:
/* 805BDE24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BDE28  7C 08 02 A6 */	mflr r0
/* 805BDE2C  38 A0 00 00 */	li r5, 0
/* 805BDE30  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BDE34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805BDE38  7C 9F 23 78 */	mr r31, r4
/* 805BDE3C  38 81 00 08 */	addi r4, r1, 8
/* 805BDE40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805BDE44  7C 7E 1B 78 */	mr r30, r3
/* 805BDE48  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F110@ha */
/* 805BDE4C  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805BDE50  38 63 F1 10 */	addi r3, r3, 0xF110 /* 0x0000F110@l */
/* 805BDE54  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805BDE58  90 C1 00 08 */	stw r6, 8(r1)
/* 805BDE5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805BDE60  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805BDE64  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BDE68  4B DE 99 C9 */	bl mFI_SetFG_common
/* 805BDE6C  7F C3 F3 78 */	mr r3, r30
/* 805BDE70  7F E4 FB 78 */	mr r4, r31
/* 805BDE74  4B FF FE C1 */	bl func_805BDD34
/* 805BDE78  3C 60 80 5C */	lis r3, func_805BDD34@ha /* 0x805BDD34@ha */
/* 805BDE7C  38 03 DD 34 */	addi r0, r3, func_805BDD34@l /* 0x805BDD34@l */
/* 805BDE80  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805BDE84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BDE88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805BDE8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BDE90  7C 08 03 A6 */	mtlr r0
/* 805BDE94  38 21 00 20 */	addi r1, r1, 0x20
/* 805BDE98  4E 80 00 20 */	blr 
