lbl_805B1AF8:
/* 805B1AF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B1AFC  7C 08 02 A6 */	mflr r0
/* 805B1B00  38 A0 00 00 */	li r5, 0
/* 805B1B04  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B1B08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B1B0C  7C 9F 23 78 */	mr r31, r4
/* 805B1B10  38 81 00 08 */	addi r4, r1, 8
/* 805B1B14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B1B18  7C 7E 1B 78 */	mr r30, r3
/* 805B1B1C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F111@ha */
/* 805B1B20  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805B1B24  38 63 F1 11 */	addi r3, r3, 0xF111 /* 0x0000F111@l */
/* 805B1B28  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805B1B2C  90 C1 00 08 */	stw r6, 8(r1)
/* 805B1B30  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B1B34  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805B1B38  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B1B3C  4B DF 5C F5 */	bl mFI_SetFG_common
/* 805B1B40  7F C3 F3 78 */	mr r3, r30
/* 805B1B44  7F E4 FB 78 */	mr r4, r31
/* 805B1B48  4B FF FE A5 */	bl aKAG_actor_move
/* 805B1B4C  3C 60 80 5B */	lis r3, aKAG_actor_move@ha /* 0x805B19EC@ha */
/* 805B1B50  38 03 19 EC */	addi r0, r3, aKAG_actor_move@l /* 0x805B19EC@l */
/* 805B1B54  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805B1B58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B1B5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B1B60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B1B64  7C 08 03 A6 */	mtlr r0
/* 805B1B68  38 21 00 20 */	addi r1, r1, 0x20
/* 805B1B6C  4E 80 00 20 */	blr 
