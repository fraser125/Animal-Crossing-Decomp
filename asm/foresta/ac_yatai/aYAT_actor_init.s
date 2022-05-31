lbl_805C1F04:
/* 805C1F04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C1F08  7C 08 02 A6 */	mflr r0
/* 805C1F0C  38 A0 00 00 */	li r5, 0
/* 805C1F10  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C1F14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805C1F18  7C 9F 23 78 */	mr r31, r4
/* 805C1F1C  38 81 00 08 */	addi r4, r1, 8
/* 805C1F20  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805C1F24  7C 7E 1B 78 */	mr r30, r3
/* 805C1F28  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F10A@ha */
/* 805C1F2C  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805C1F30  38 63 F1 0A */	addi r3, r3, 0xF10A /* 0x0000F10A@l */
/* 805C1F34  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805C1F38  90 C1 00 08 */	stw r6, 8(r1)
/* 805C1F3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C1F40  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805C1F44  90 01 00 10 */	stw r0, 0x10(r1)
/* 805C1F48  4B DE 58 E9 */	bl mFI_SetFG_common
/* 805C1F4C  7F C3 F3 78 */	mr r3, r30
/* 805C1F50  7F E4 FB 78 */	mr r4, r31
/* 805C1F54  4B FF FE C1 */	bl aYAT_actor_move
/* 805C1F58  3C 60 80 5C */	lis r3, aYAT_actor_move@ha /* 0x805C1E14@ha */
/* 805C1F5C  38 03 1E 14 */	addi r0, r3, aYAT_actor_move@l /* 0x805C1E14@l */
/* 805C1F60  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805C1F64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805C1F68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805C1F6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C1F70  7C 08 03 A6 */	mtlr r0
/* 805C1F74  38 21 00 20 */	addi r1, r1, 0x20
/* 805C1F78  4E 80 00 20 */	blr 
