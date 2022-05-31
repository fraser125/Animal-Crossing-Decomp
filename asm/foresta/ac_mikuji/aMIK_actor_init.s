lbl_805B4294:
/* 805B4294  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B4298  7C 08 02 A6 */	mflr r0
/* 805B429C  38 A0 00 00 */	li r5, 0
/* 805B42A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B42A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B42A8  7C 9F 23 78 */	mr r31, r4
/* 805B42AC  38 81 00 08 */	addi r4, r1, 8
/* 805B42B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B42B4  7C 7E 1B 78 */	mr r30, r3
/* 805B42B8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F10D@ha */
/* 805B42BC  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805B42C0  38 63 F1 0D */	addi r3, r3, 0xF10D /* 0x0000F10D@l */
/* 805B42C4  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805B42C8  90 C1 00 08 */	stw r6, 8(r1)
/* 805B42CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B42D0  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805B42D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B42D8  4B DF 35 59 */	bl mFI_SetFG_common
/* 805B42DC  7F C3 F3 78 */	mr r3, r30
/* 805B42E0  7F E4 FB 78 */	mr r4, r31
/* 805B42E4  4B FF FE C1 */	bl aMIK_actor_move
/* 805B42E8  3C 60 80 5B */	lis r3, aMIK_actor_move@ha /* 0x805B41A4@ha */
/* 805B42EC  38 03 41 A4 */	addi r0, r3, aMIK_actor_move@l /* 0x805B41A4@l */
/* 805B42F0  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805B42F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B42F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B42FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B4300  7C 08 03 A6 */	mtlr r0
/* 805B4304  38 21 00 20 */	addi r1, r1, 0x20
/* 805B4308  4E 80 00 20 */	blr 
