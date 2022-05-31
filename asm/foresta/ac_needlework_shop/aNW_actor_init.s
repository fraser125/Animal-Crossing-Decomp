lbl_805B6F00:
/* 805B6F00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B6F04  7C 08 02 A6 */	mflr r0
/* 805B6F08  38 A0 00 00 */	li r5, 0
/* 805B6F0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B6F10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B6F14  7C 9F 23 78 */	mr r31, r4
/* 805B6F18  38 81 00 08 */	addi r4, r1, 8
/* 805B6F1C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B6F20  7C 7E 1B 78 */	mr r30, r3
/* 805B6F24  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F0FF@ha */
/* 805B6F28  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805B6F2C  38 63 F0 FF */	addi r3, r3, 0xF0FF /* 0x0000F0FF@l */
/* 805B6F30  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805B6F34  90 C1 00 08 */	stw r6, 8(r1)
/* 805B6F38  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B6F3C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805B6F40  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B6F44  4B DF 08 ED */	bl mFI_SetFG_common
/* 805B6F48  7F C3 F3 78 */	mr r3, r30
/* 805B6F4C  7F E4 FB 78 */	mr r4, r31
/* 805B6F50  4B FF FF 2D */	bl aNW_actor_move
/* 805B6F54  3C 60 80 5B */	lis r3, aNW_actor_move@ha /* 0x805B6E7C@ha */
/* 805B6F58  38 03 6E 7C */	addi r0, r3, aNW_actor_move@l /* 0x805B6E7C@l */
/* 805B6F5C  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805B6F60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B6F64  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B6F68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B6F6C  7C 08 03 A6 */	mtlr r0
/* 805B6F70  38 21 00 20 */	addi r1, r1, 0x20
/* 805B6F74  4E 80 00 20 */	blr 
