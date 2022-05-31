lbl_805B6464:
/* 805B6464  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B6468  7C 08 02 A6 */	mflr r0
/* 805B646C  38 A0 00 00 */	li r5, 0
/* 805B6470  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B6474  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B6478  7C 9F 23 78 */	mr r31, r4
/* 805B647C  38 81 00 08 */	addi r4, r1, 8
/* 805B6480  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B6484  7C 7E 1B 78 */	mr r30, r3
/* 805B6488  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F11F@ha */
/* 805B648C  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805B6490  38 63 F1 1F */	addi r3, r3, 0xF11F /* 0x0000F11F@l */
/* 805B6494  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805B6498  90 C1 00 08 */	stw r6, 8(r1)
/* 805B649C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B64A0  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805B64A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B64A8  4B DF 13 89 */	bl mFI_SetFG_common
/* 805B64AC  7F C3 F3 78 */	mr r3, r30
/* 805B64B0  7F E4 FB 78 */	mr r4, r31
/* 805B64B4  4B FF FF 01 */	bl aNP_actor_move
/* 805B64B8  3C 60 80 5B */	lis r3, aNP_actor_move@ha /* 0x805B63B4@ha */
/* 805B64BC  38 03 63 B4 */	addi r0, r3, aNP_actor_move@l /* 0x805B63B4@l */
/* 805B64C0  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805B64C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B64C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B64CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B64D0  7C 08 03 A6 */	mtlr r0
/* 805B64D4  38 21 00 20 */	addi r1, r1, 0x20
/* 805B64D8  4E 80 00 20 */	blr 
