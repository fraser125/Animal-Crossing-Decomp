lbl_805B2868:
/* 805B2868  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B286C  7C 08 02 A6 */	mflr r0
/* 805B2870  38 A0 00 00 */	li r5, 0
/* 805B2874  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B2878  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B287C  7C 9F 23 78 */	mr r31, r4
/* 805B2880  38 81 00 08 */	addi r4, r1, 8
/* 805B2884  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B2888  7C 7E 1B 78 */	mr r30, r3
/* 805B288C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F114@ha */
/* 805B2890  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805B2894  38 63 F1 14 */	addi r3, r3, 0xF114 /* 0x0000F114@l */
/* 805B2898  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805B289C  90 C1 00 08 */	stw r6, 8(r1)
/* 805B28A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B28A4  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805B28A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B28AC  4B DF 4F 85 */	bl mFI_SetFG_common
/* 805B28B0  7F C3 F3 78 */	mr r3, r30
/* 805B28B4  7F E4 FB 78 */	mr r4, r31
/* 805B28B8  4B FF FF 49 */	bl aKOI_actor_move
/* 805B28BC  3C 60 80 5B */	lis r3, aKOI_actor_move@ha /* 0x805B2800@ha */
/* 805B28C0  38 03 28 00 */	addi r0, r3, aKOI_actor_move@l /* 0x805B2800@l */
/* 805B28C4  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805B28C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B28CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B28D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B28D4  7C 08 03 A6 */	mtlr r0
/* 805B28D8  38 21 00 20 */	addi r1, r1, 0x20
/* 805B28DC  4E 80 00 20 */	blr 
