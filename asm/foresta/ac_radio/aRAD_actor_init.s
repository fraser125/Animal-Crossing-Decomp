lbl_805B8A38:
/* 805B8A38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B8A3C  7C 08 02 A6 */	mflr r0
/* 805B8A40  38 A0 00 00 */	li r5, 0
/* 805B8A44  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B8A48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B8A4C  7C 9F 23 78 */	mr r31, r4
/* 805B8A50  38 81 00 08 */	addi r4, r1, 8
/* 805B8A54  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B8A58  7C 7E 1B 78 */	mr r30, r3
/* 805B8A5C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F109@ha */
/* 805B8A60  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805B8A64  38 63 F1 09 */	addi r3, r3, 0xF109 /* 0x0000F109@l */
/* 805B8A68  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805B8A6C  90 C1 00 08 */	stw r6, 8(r1)
/* 805B8A70  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B8A74  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805B8A78  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B8A7C  4B DE ED B5 */	bl mFI_SetFG_common
/* 805B8A80  7F C3 F3 78 */	mr r3, r30
/* 805B8A84  7F E4 FB 78 */	mr r4, r31
/* 805B8A88  4B FF FE A5 */	bl aRAD_actor_move
/* 805B8A8C  3C 60 80 5C */	lis r3, aRAD_actor_move@ha /* 0x805B892C@ha */
/* 805B8A90  38 03 89 2C */	addi r0, r3, aRAD_actor_move@l /* 0x805B892C@l */
/* 805B8A94  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805B8A98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B8A9C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B8AA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B8AA4  7C 08 03 A6 */	mtlr r0
/* 805B8AA8  38 21 00 20 */	addi r1, r1, 0x20
/* 805B8AAC  4E 80 00 20 */	blr 
