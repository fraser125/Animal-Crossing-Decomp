lbl_805C1854:
/* 805C1854  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C1858  7C 08 02 A6 */	mflr r0
/* 805C185C  38 A0 00 00 */	li r5, 0
/* 805C1860  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C1864  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805C1868  7C 9F 23 78 */	mr r31, r4
/* 805C186C  38 81 00 08 */	addi r4, r1, 8
/* 805C1870  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805C1874  7C 7E 1B 78 */	mr r30, r3
/* 805C1878  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F111@ha */
/* 805C187C  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805C1880  38 63 F1 11 */	addi r3, r3, 0xF111 /* 0x0000F111@l */
/* 805C1884  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805C1888  90 C1 00 08 */	stw r6, 8(r1)
/* 805C188C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C1890  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805C1894  90 01 00 10 */	stw r0, 0x10(r1)
/* 805C1898  4B DE 5F 99 */	bl mFI_SetFG_common
/* 805C189C  7F C3 F3 78 */	mr r3, r30
/* 805C18A0  7F E4 FB 78 */	mr r4, r31
/* 805C18A4  4B FF FE A5 */	bl aTUR_actor_move
/* 805C18A8  3C 60 80 5C */	lis r3, aTUR_actor_move@ha /* 0x805C1748@ha */
/* 805C18AC  38 03 17 48 */	addi r0, r3, aTUR_actor_move@l /* 0x805C1748@l */
/* 805C18B0  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805C18B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805C18B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805C18BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C18C0  7C 08 03 A6 */	mtlr r0
/* 805C18C4  38 21 00 20 */	addi r1, r1, 0x20
/* 805C18C8  4E 80 00 20 */	blr 
