lbl_805BB9F4:
/* 805BB9F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BB9F8  7C 08 02 A6 */	mflr r0
/* 805BB9FC  38 A0 00 00 */	li r5, 0
/* 805BBA00  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BBA04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805BBA08  7C 9F 23 78 */	mr r31, r4
/* 805BBA0C  38 81 00 08 */	addi r4, r1, 8
/* 805BBA10  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805BBA14  7C 7E 1B 78 */	mr r30, r3
/* 805BBA18  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F100@ha */
/* 805BBA1C  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805BBA20  38 63 F1 00 */	addi r3, r3, 0xF100 /* 0x0000F100@l */
/* 805BBA24  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805BBA28  90 C1 00 08 */	stw r6, 8(r1)
/* 805BBA2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805BBA30  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805BBA34  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BBA38  4B DE BD F9 */	bl mFI_SetFG_common
/* 805BBA3C  7F C3 F3 78 */	mr r3, r30
/* 805BBA40  7F E4 FB 78 */	mr r4, r31
/* 805BBA44  4B FF FF 89 */	bl aSTA_actor_move
/* 805BBA48  3C 60 80 5C */	lis r3, aSTA_actor_move@ha /* 0x805BB9CC@ha */
/* 805BBA4C  38 03 B9 CC */	addi r0, r3, aSTA_actor_move@l /* 0x805BB9CC@l */
/* 805BBA50  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805BBA54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BBA58  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805BBA5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BBA60  7C 08 03 A6 */	mtlr r0
/* 805BBA64  38 21 00 20 */	addi r1, r1, 0x20
/* 805BBA68  4E 80 00 20 */	blr 
