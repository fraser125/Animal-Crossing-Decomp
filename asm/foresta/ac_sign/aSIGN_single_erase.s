lbl_804A2550:
/* 804A2550  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804A2554  7C 08 02 A6 */	mflr r0
/* 804A2558  90 01 00 64 */	stw r0, 0x64(r1)
/* 804A255C  39 61 00 60 */	addi r11, r1, 0x60
/* 804A2560  4B BF 89 65 */	bl func_8009AEC4
/* 804A2564  7C 7E 1B 78 */	mr r30, r3
/* 804A2568  7C 83 23 78 */	mr r3, r4
/* 804A256C  4B F3 70 D5 */	bl get_player_actor_withoutCheck
/* 804A2570  83 5E 03 EC */	lwz r26, 0x3ec(r30)
/* 804A2574  3B 20 00 00 */	li r25, 0
/* 804A2578  83 7E 03 F0 */	lwz r27, 0x3f0(r30)
/* 804A257C  3B A0 00 00 */	li r29, 0
/* 804A2580  83 9E 03 F4 */	lwz r28, 0x3f4(r30)
/* 804A2584  93 41 00 2C */	stw r26, 0x2c(r1)
/* 804A2588  93 61 00 30 */	stw r27, 0x30(r1)
/* 804A258C  93 81 00 34 */	stw r28, 0x34(r1)
lbl_804A2590:
/* 804A2590  3B FD 02 18 */	addi r31, r29, 0x218
/* 804A2594  7F FE FA 14 */	add r31, r30, r31
/* 804A2598  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 804A259C  2C 00 00 00 */	cmpwi r0, 0
/* 804A25A0  41 82 00 34 */	beq lbl_804A25D4
/* 804A25A4  93 41 00 20 */	stw r26, 0x20(r1)
/* 804A25A8  7F E3 FB 78 */	mr r3, r31
/* 804A25AC  38 81 00 20 */	addi r4, r1, 0x20
/* 804A25B0  93 61 00 24 */	stw r27, 0x24(r1)
/* 804A25B4  93 81 00 28 */	stw r28, 0x28(r1)
/* 804A25B8  4B FF F6 6D */	bl aSIGN_single_anime_check
/* 804A25BC  2C 03 00 00 */	cmpwi r3, 0
/* 804A25C0  41 82 00 9C */	beq lbl_804A265C
/* 804A25C4  7F C3 F3 78 */	mr r3, r30
/* 804A25C8  38 80 00 00 */	li r4, 0
/* 804A25CC  4B FF FD 05 */	bl aSIGN_setup_action
/* 804A25D0  48 00 00 A8 */	b lbl_804A2678
lbl_804A25D4:
/* 804A25D4  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804A25D8  38 61 00 14 */	addi r3, r1, 0x14
/* 804A25DC  80 81 00 30 */	lwz r4, 0x30(r1)
/* 804A25E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A25E4  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804A25E8  90 81 00 18 */	stw r4, 0x18(r1)
/* 804A25EC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804A25F0  4B F0 4E 41 */	bl mFI_GetUnitFG
/* 804A25F4  3C 80 80 64 */	lis r4, lit_777@ha /* 0x80645C58@ha */
/* 804A25F8  7C 7D 1B 78 */	mr r29, r3
/* 804A25FC  C0 04 5C 58 */	lfs f0, lit_777@l(r4)  /* 0x80645C58@l */
/* 804A2600  7F E4 FB 78 */	mr r4, r31
/* 804A2604  81 21 00 2C */	lwz r9, 0x2c(r1)
/* 804A2608  38 7F 00 04 */	addi r3, r31, 4
/* 804A260C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 804A2610  38 BF 00 0C */	addi r5, r31, 0xc
/* 804A2614  81 01 00 30 */	lwz r8, 0x30(r1)
/* 804A2618  38 DF 00 08 */	addi r6, r31, 8
/* 804A261C  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 804A2620  38 E1 00 08 */	addi r7, r1, 8
/* 804A2624  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A2628  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 804A262C  91 21 00 08 */	stw r9, 8(r1)
/* 804A2630  91 01 00 0C */	stw r8, 0xc(r1)
/* 804A2634  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A2638  4B F0 31 89 */	bl mFI_Wpos2BkandUtNuminBlock
/* 804A263C  38 00 00 02 */	li r0, 2
/* 804A2640  7F C3 F3 78 */	mr r3, r30
/* 804A2644  90 1F 00 28 */	stw r0, 0x28(r31)
/* 804A2648  38 80 00 00 */	li r4, 0
/* 804A264C  A0 1D 00 00 */	lhz r0, 0(r29)
/* 804A2650  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 804A2654  4B FF FC 7D */	bl aSIGN_setup_action
/* 804A2658  48 00 00 20 */	b lbl_804A2678
lbl_804A265C:
/* 804A265C  3B 39 00 01 */	addi r25, r25, 1
/* 804A2660  3B BD 00 2C */	addi r29, r29, 0x2c
/* 804A2664  2C 19 00 0A */	cmpwi r25, 0xa
/* 804A2668  41 80 FF 28 */	blt lbl_804A2590
/* 804A266C  7F C3 F3 78 */	mr r3, r30
/* 804A2670  38 80 00 00 */	li r4, 0
/* 804A2674  4B FF FC 5D */	bl aSIGN_setup_action
lbl_804A2678:
/* 804A2678  39 61 00 60 */	addi r11, r1, 0x60
/* 804A267C  4B BF 88 95 */	bl func_8009AF10
/* 804A2680  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804A2684  7C 08 03 A6 */	mtlr r0
/* 804A2688  38 21 00 60 */	addi r1, r1, 0x60
/* 804A268C  4E 80 00 20 */	blr 
