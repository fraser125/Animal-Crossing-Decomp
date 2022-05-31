lbl_805B2430:
/* 805B2430  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B2434  7C 08 02 A6 */	mflr r0
/* 805B2438  38 A0 00 00 */	li r5, 0
/* 805B243C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B2440  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B2444  7C 9F 23 78 */	mr r31, r4
/* 805B2448  38 81 00 08 */	addi r4, r1, 8
/* 805B244C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B2450  7C 7E 1B 78 */	mr r30, r3
/* 805B2454  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F107@ha */
/* 805B2458  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805B245C  38 63 F1 07 */	addi r3, r3, 0xF107 /* 0x0000F107@l */
/* 805B2460  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805B2464  90 C1 00 08 */	stw r6, 8(r1)
/* 805B2468  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B246C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805B2470  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B2474  4B DF 53 BD */	bl mFI_SetFG_common
/* 805B2478  7F C3 F3 78 */	mr r3, r30
/* 805B247C  7F E4 FB 78 */	mr r4, r31
/* 805B2480  4B FF FE 6D */	bl aKKR_actor_move
/* 805B2484  3C 60 80 5B */	lis r3, aKKR_actor_move@ha /* 0x805B22EC@ha */
/* 805B2488  38 03 22 EC */	addi r0, r3, aKKR_actor_move@l /* 0x805B22EC@l */
/* 805B248C  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805B2490  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B2494  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B2498  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B249C  7C 08 03 A6 */	mtlr r0
/* 805B24A0  38 21 00 20 */	addi r1, r1, 0x20
/* 805B24A4  4E 80 00 20 */	blr 
