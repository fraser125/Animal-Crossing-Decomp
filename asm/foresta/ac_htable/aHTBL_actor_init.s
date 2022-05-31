lbl_805B179C:
/* 805B179C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B17A0  7C 08 02 A6 */	mflr r0
/* 805B17A4  38 A0 00 00 */	li r5, 0
/* 805B17A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B17AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B17B0  7C 9F 23 78 */	mr r31, r4
/* 805B17B4  38 81 00 08 */	addi r4, r1, 8
/* 805B17B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B17BC  7C 7E 1B 78 */	mr r30, r3
/* 805B17C0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F126@ha */
/* 805B17C4  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805B17C8  38 63 F1 26 */	addi r3, r3, 0xF126 /* 0x0000F126@l */
/* 805B17CC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805B17D0  90 C1 00 08 */	stw r6, 8(r1)
/* 805B17D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B17D8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805B17DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B17E0  4B DF 60 51 */	bl mFI_SetFG_common
/* 805B17E4  7F C3 F3 78 */	mr r3, r30
/* 805B17E8  7F E4 FB 78 */	mr r4, r31
/* 805B17EC  4B FF FF 09 */	bl aHTBL_actor_move
/* 805B17F0  3C 60 80 5B */	lis r3, aHTBL_actor_move@ha /* 0x805B16F4@ha */
/* 805B17F4  38 03 16 F4 */	addi r0, r3, aHTBL_actor_move@l /* 0x805B16F4@l */
/* 805B17F8  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805B17FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B1800  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B1804  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B1808  7C 08 03 A6 */	mtlr r0
/* 805B180C  38 21 00 20 */	addi r1, r1, 0x20
/* 805B1810  4E 80 00 20 */	blr 
