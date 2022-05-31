lbl_805B07C0:
/* 805B07C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B07C4  7C 08 02 A6 */	mflr r0
/* 805B07C8  38 A0 00 00 */	li r5, 0
/* 805B07CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B07D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B07D4  7C 9F 23 78 */	mr r31, r4
/* 805B07D8  38 81 00 08 */	addi r4, r1, 8
/* 805B07DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B07E0  7C 7E 1B 78 */	mr r30, r3
/* 805B07E4  A0 C3 00 06 */	lhz r6, 6(r3)
/* 805B07E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B07EC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805B07F0  3C C6 00 01 */	addis r6, r6, 1
/* 805B07F4  38 C6 A0 05 */	addi r6, r6, -24571
/* 805B07F8  90 61 00 08 */	stw r3, 8(r1)
/* 805B07FC  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 805B0800  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B0804  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805B0808  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B080C  4B DF 70 25 */	bl mFI_SetFG_common
/* 805B0810  7F C3 F3 78 */	mr r3, r30
/* 805B0814  7F E4 FB 78 */	mr r4, r31
/* 805B0818  4B FF FF 45 */	bl aHUS_actor_move
/* 805B081C  3C 60 80 5B */	lis r3, aHUS_actor_move@ha /* 0x805B075C@ha */
/* 805B0820  38 03 07 5C */	addi r0, r3, aHUS_actor_move@l /* 0x805B075C@l */
/* 805B0824  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805B0828  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B082C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B0830  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B0834  7C 08 03 A6 */	mtlr r0
/* 805B0838  38 21 00 20 */	addi r1, r1, 0x20
/* 805B083C  4E 80 00 20 */	blr 
