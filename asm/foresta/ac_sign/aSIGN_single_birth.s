lbl_804A2388:
/* 804A2388  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804A238C  7C 08 02 A6 */	mflr r0
/* 804A2390  90 01 00 64 */	stw r0, 0x64(r1)
/* 804A2394  39 61 00 60 */	addi r11, r1, 0x60
/* 804A2398  4B BF 8B 39 */	bl func_8009AED0
/* 804A239C  7C 7F 1B 78 */	mr r31, r3
/* 804A23A0  7C 83 23 78 */	mr r3, r4
/* 804A23A4  4B F3 72 9D */	bl get_player_actor_withoutCheck
/* 804A23A8  80 7F 03 EC */	lwz r3, 0x3ec(r31)
/* 804A23AC  3B 80 00 00 */	li r28, 0
/* 804A23B0  80 1F 03 F0 */	lwz r0, 0x3f0(r31)
/* 804A23B4  3B C0 00 00 */	li r30, 0
/* 804A23B8  90 61 00 38 */	stw r3, 0x38(r1)
/* 804A23BC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804A23C0  80 1F 03 F4 */	lwz r0, 0x3f4(r31)
/* 804A23C4  90 01 00 40 */	stw r0, 0x40(r1)
lbl_804A23C8:
/* 804A23C8  7F BF F2 14 */	add r29, r31, r30
/* 804A23CC  80 1D 02 40 */	lwz r0, 0x240(r29)
/* 804A23D0  2C 00 00 00 */	cmpwi r0, 0
/* 804A23D4  41 82 00 40 */	beq lbl_804A2414
/* 804A23D8  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 804A23DC  38 7D 02 18 */	addi r3, r29, 0x218
/* 804A23E0  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 804A23E4  38 81 00 2C */	addi r4, r1, 0x2c
/* 804A23E8  80 01 00 40 */	lwz r0, 0x40(r1)
/* 804A23EC  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 804A23F0  90 A1 00 30 */	stw r5, 0x30(r1)
/* 804A23F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A23F8  4B FF F8 2D */	bl aSIGN_single_anime_check
/* 804A23FC  2C 03 00 00 */	cmpwi r3, 0
/* 804A2400  41 82 01 1C */	beq lbl_804A251C
/* 804A2404  7F E3 FB 78 */	mr r3, r31
/* 804A2408  38 80 00 00 */	li r4, 0
/* 804A240C  4B FF FE C5 */	bl aSIGN_setup_action
/* 804A2410  48 00 01 28 */	b lbl_804A2538
lbl_804A2414:
/* 804A2414  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 804A2418  38 61 00 20 */	addi r3, r1, 0x20
/* 804A241C  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 804A2420  80 01 00 40 */	lwz r0, 0x40(r1)
/* 804A2424  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804A2428  90 81 00 24 */	stw r4, 0x24(r1)
/* 804A242C  90 01 00 28 */	stw r0, 0x28(r1)
/* 804A2430  4B F0 50 01 */	bl mFI_GetUnitFG
/* 804A2434  3C 60 80 64 */	lis r3, lit_884@ha /* 0x80645C60@ha */
/* 804A2438  38 00 09 20 */	li r0, 0x920
/* 804A243C  38 83 5C 60 */	addi r4, r3, lit_884@l /* 0x80645C60@l */
/* 804A2440  B0 1D 02 28 */	sth r0, 0x228(r29)
/* 804A2444  C0 04 00 00 */	lfs f0, 0(r4)
/* 804A2448  38 7D 02 1C */	addi r3, r29, 0x21c
/* 804A244C  38 9D 02 18 */	addi r4, r29, 0x218
/* 804A2450  38 BD 02 24 */	addi r5, r29, 0x224
/* 804A2454  D0 1D 02 2C */	stfs f0, 0x22c(r29)
/* 804A2458  38 DD 02 20 */	addi r6, r29, 0x220
/* 804A245C  38 E1 00 14 */	addi r7, r1, 0x14
/* 804A2460  D0 1D 02 30 */	stfs f0, 0x230(r29)
/* 804A2464  D0 1D 02 34 */	stfs f0, 0x234(r29)
/* 804A2468  81 21 00 38 */	lwz r9, 0x38(r1)
/* 804A246C  81 01 00 3C */	lwz r8, 0x3c(r1)
/* 804A2470  80 01 00 40 */	lwz r0, 0x40(r1)
/* 804A2474  91 21 00 14 */	stw r9, 0x14(r1)
/* 804A2478  91 01 00 18 */	stw r8, 0x18(r1)
/* 804A247C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804A2480  4B F0 33 41 */	bl mFI_Wpos2BkandUtNuminBlock
/* 804A2484  38 00 00 01 */	li r0, 1
/* 804A2488  3C 60 80 64 */	lis r3, lit_885@ha /* 0x80645C64@ha */
/* 804A248C  90 1D 02 40 */	stw r0, 0x240(r29)
/* 804A2490  38 00 00 00 */	li r0, 0
/* 804A2494  C0 03 5C 64 */	lfs f0, lit_885@l(r3)  /* 0x80645C64@l */
/* 804A2498  7F E3 FB 78 */	mr r3, r31
/* 804A249C  B0 1D 02 3C */	sth r0, 0x23c(r29)
/* 804A24A0  38 00 17 70 */	li r0, 0x1770
/* 804A24A4  38 80 00 00 */	li r4, 0
/* 804A24A8  D0 1D 02 38 */	stfs f0, 0x238(r29)
/* 804A24AC  B0 1D 02 3E */	sth r0, 0x23e(r29)
/* 804A24B0  4B FF FE 21 */	bl aSIGN_setup_action
/* 804A24B4  80 9D 02 1C */	lwz r4, 0x21c(r29)
/* 804A24B8  38 61 00 38 */	addi r3, r1, 0x38
/* 804A24BC  80 BD 02 18 */	lwz r5, 0x218(r29)
/* 804A24C0  80 DD 02 24 */	lwz r6, 0x224(r29)
/* 804A24C4  80 FD 02 20 */	lwz r7, 0x220(r29)
/* 804A24C8  4B F0 38 2D */	bl mFI_BkandUtNum2CenterWpos
/* 804A24CC  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 804A24D0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE30@ha */
/* 804A24D4  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 804A24D8  38 63 FE 30 */	addi r3, r3, 0xFE30 /* 0x0000FE30@l */
/* 804A24DC  80 01 00 40 */	lwz r0, 0x40(r1)
/* 804A24E0  38 81 00 08 */	addi r4, r1, 8
/* 804A24E4  90 A1 00 08 */	stw r5, 8(r1)
/* 804A24E8  38 A0 00 01 */	li r5, 1
/* 804A24EC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804A24F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A24F4  4B F0 53 3D */	bl mFI_SetFG_common
/* 804A24F8  3C 60 80 64 */	lis r3, lit_886@ha /* 0x80645C68@ha */
/* 804A24FC  3C 80 80 64 */	lis r4, lit_887@ha /* 0x80645C6C@ha */
/* 804A2500  38 A3 5C 68 */	addi r5, r3, lit_886@l /* 0x80645C68@l */
/* 804A2504  C0 44 5C 6C */	lfs f2, lit_887@l(r4)  /* 0x80645C6C@l */
/* 804A2508  C0 25 00 00 */	lfs f1, 0(r5)
/* 804A250C  38 61 00 38 */	addi r3, r1, 0x38
/* 804A2510  38 80 00 24 */	li r4, 0x24
/* 804A2514  4B EE B6 BD */	bl mCoBG_RegistDecalCircle
/* 804A2518  48 00 00 20 */	b lbl_804A2538
lbl_804A251C:
/* 804A251C  3B 9C 00 01 */	addi r28, r28, 1
/* 804A2520  3B DE 00 2C */	addi r30, r30, 0x2c
/* 804A2524  2C 1C 00 0A */	cmpwi r28, 0xa
/* 804A2528  41 80 FE A0 */	blt lbl_804A23C8
/* 804A252C  7F E3 FB 78 */	mr r3, r31
/* 804A2530  38 80 00 00 */	li r4, 0
/* 804A2534  4B FF FD 9D */	bl aSIGN_setup_action
lbl_804A2538:
/* 804A2538  39 61 00 60 */	addi r11, r1, 0x60
/* 804A253C  4B BF 89 E1 */	bl func_8009AF1C
/* 804A2540  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804A2544  7C 08 03 A6 */	mtlr r0
/* 804A2548  38 21 00 60 */	addi r1, r1, 0x60
/* 804A254C  4E 80 00 20 */	blr 
