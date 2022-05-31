lbl_805C0E54:
/* 805C0E54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C0E58  7C 08 02 A6 */	mflr r0
/* 805C0E5C  38 A0 00 00 */	li r5, 0
/* 805C0E60  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C0E64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805C0E68  7C 9F 23 78 */	mr r31, r4
/* 805C0E6C  38 81 00 08 */	addi r4, r1, 8
/* 805C0E70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805C0E74  7C 7E 1B 78 */	mr r30, r3
/* 805C0E78  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F10A@ha */
/* 805C0E7C  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805C0E80  38 63 F1 0A */	addi r3, r3, 0xF10A /* 0x0000F10A@l */
/* 805C0E84  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805C0E88  90 C1 00 08 */	stw r6, 8(r1)
/* 805C0E8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C0E90  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805C0E94  90 01 00 10 */	stw r0, 0x10(r1)
/* 805C0E98  4B DE 69 99 */	bl mFI_SetFG_common
/* 805C0E9C  7F C3 F3 78 */	mr r3, r30
/* 805C0EA0  7F E4 FB 78 */	mr r4, r31
/* 805C0EA4  4B FF FE B5 */	bl aTUK_actor_move
/* 805C0EA8  3C 60 80 5C */	lis r3, aTUK_actor_move@ha /* 0x805C0D58@ha */
/* 805C0EAC  38 03 0D 58 */	addi r0, r3, aTUK_actor_move@l /* 0x805C0D58@l */
/* 805C0EB0  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805C0EB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805C0EB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805C0EBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C0EC0  7C 08 03 A6 */	mtlr r0
/* 805C0EC4  38 21 00 20 */	addi r1, r1, 0x20
/* 805C0EC8  4E 80 00 20 */	blr 
