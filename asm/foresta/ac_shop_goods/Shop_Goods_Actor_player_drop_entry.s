lbl_8049D4F8:
/* 8049D4F8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8049D4FC  7C 08 02 A6 */	mflr r0
/* 8049D500  90 01 00 94 */	stw r0, 0x94(r1)
/* 8049D504  39 61 00 90 */	addi r11, r1, 0x90
/* 8049D508  4B BF D9 BD */	bl func_8009AEC4
/* 8049D50C  7C 99 23 78 */	mr r25, r4
/* 8049D510  7C BA 2B 78 */	mr r26, r5
/* 8049D514  7C DB 33 78 */	mr r27, r6
/* 8049D518  7C FC 3B 78 */	mr r28, r7
/* 8049D51C  7D 1D 43 78 */	mr r29, r8
/* 8049D520  4B F3 C1 21 */	bl get_player_actor_withoutCheck
/* 8049D524  3C 80 80 64 */	lis r4, lit_531@ha /* 0x80645B74@ha */
/* 8049D528  7C 7F 1B 78 */	mr r31, r3
/* 8049D52C  38 64 5B 74 */	addi r3, r4, lit_531@l /* 0x80645B74@l */
/* 8049D530  7F 44 D3 78 */	mr r4, r26
/* 8049D534  C0 03 00 00 */	lfs f0, 0(r3)
/* 8049D538  7F 65 DB 78 */	mr r5, r27
/* 8049D53C  38 61 00 50 */	addi r3, r1, 0x50
/* 8049D540  3B C0 00 00 */	li r30, 0
/* 8049D544  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8049D548  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8049D54C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8049D550  4B F0 7F 2D */	bl mFI_UtNum2CenterWpos
/* 8049D554  2C 1C 00 00 */	cmpwi r28, 0
/* 8049D558  40 82 00 38 */	bne lbl_8049D590
/* 8049D55C  80 C1 00 50 */	lwz r6, 0x50(r1)
/* 8049D560  3C 60 80 64 */	lis r3, lit_532@ha /* 0x80645B78@ha */
/* 8049D564  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 8049D568  38 83 5B 78 */	addi r4, r3, lit_532@l /* 0x80645B78@l */
/* 8049D56C  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8049D570  38 61 00 44 */	addi r3, r1, 0x44
/* 8049D574  90 C1 00 44 */	stw r6, 0x44(r1)
/* 8049D578  C0 24 00 00 */	lfs f1, 0(r4)
/* 8049D57C  90 A1 00 48 */	stw r5, 0x48(r1)
/* 8049D580  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8049D584  4B EF 24 15 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8049D588  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8049D58C  48 00 00 38 */	b lbl_8049D5C4
lbl_8049D590:
/* 8049D590  80 E1 00 50 */	lwz r7, 0x50(r1)
/* 8049D594  3C 60 80 64 */	lis r3, lit_532@ha /* 0x80645B78@ha */
/* 8049D598  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 8049D59C  38 A3 5B 78 */	addi r5, r3, lit_532@l /* 0x80645B78@l */
/* 8049D5A0  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8049D5A4  38 81 00 38 */	addi r4, r1, 0x38
/* 8049D5A8  90 E1 00 38 */	stw r7, 0x38(r1)
/* 8049D5AC  38 60 00 00 */	li r3, 0
/* 8049D5B0  C0 25 00 00 */	lfs f1, 0(r5)
/* 8049D5B4  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 8049D5B8  90 01 00 40 */	stw r0, 0x40(r1)
/* 8049D5BC  4B EF 20 FD */	bl func_8038F6B8
/* 8049D5C0  D0 21 00 54 */	stfs f1, 0x54(r1)
lbl_8049D5C4:
/* 8049D5C4  2C 1C 00 00 */	cmpwi r28, 0
/* 8049D5C8  40 82 00 28 */	bne lbl_8049D5F0
/* 8049D5CC  80 A1 00 50 */	lwz r5, 0x50(r1)
/* 8049D5D0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8049D5D4  80 81 00 54 */	lwz r4, 0x54(r1)
/* 8049D5D8  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8049D5DC  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8049D5E0  90 81 00 30 */	stw r4, 0x30(r1)
/* 8049D5E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049D5E8  4B F0 9E 49 */	bl mFI_GetUnitFG
/* 8049D5EC  48 00 00 24 */	b lbl_8049D610
lbl_8049D5F0:
/* 8049D5F0  80 A1 00 50 */	lwz r5, 0x50(r1)
/* 8049D5F4  38 61 00 20 */	addi r3, r1, 0x20
/* 8049D5F8  80 81 00 54 */	lwz r4, 0x54(r1)
/* 8049D5FC  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8049D600  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8049D604  90 81 00 24 */	stw r4, 0x24(r1)
/* 8049D608  90 01 00 28 */	stw r0, 0x28(r1)
/* 8049D60C  4B F0 9E 85 */	bl mFI_GetUnitFG2
lbl_8049D610:
/* 8049D610  A0 03 00 00 */	lhz r0, 0(r3)
/* 8049D614  28 00 00 00 */	cmplwi r0, 0
/* 8049D618  40 82 00 E4 */	bne lbl_8049D6FC
/* 8049D61C  38 61 00 5C */	addi r3, r1, 0x5c
/* 8049D620  38 9F 00 28 */	addi r4, r31, 0x28
/* 8049D624  4B F1 D8 99 */	bl xyz_t_move
/* 8049D628  3C 80 80 64 */	lis r4, lit_533@ha /* 0x80645B7C@ha */
/* 8049D62C  3C 60 81 1D */	lis r3, Glb_shop_goods_actor@ha /* 0x811CF5A8@ha */
/* 8049D630  C0 04 5B 7C */	lfs f0, lit_533@l(r4)  /* 0x80645B7C@l */
/* 8049D634  38 63 F5 A8 */	addi r3, r3, Glb_shop_goods_actor@l /* 0x811CF5A8@l */
/* 8049D638  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 8049D63C  7F 24 CB 78 */	mr r4, r25
/* 8049D640  80 63 00 00 */	lwz r3, 0(r3)
/* 8049D644  7F A8 EB 78 */	mr r8, r29
/* 8049D648  EC 01 00 2A */	fadds f0, f1, f0
/* 8049D64C  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8049D650  38 C1 00 50 */	addi r6, r1, 0x50
/* 8049D654  7F 87 07 34 */	extsh r7, r28
/* 8049D658  39 20 00 01 */	li r9, 1
/* 8049D65C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8049D660  48 00 00 BD */	bl Shop_Goods_Actor_drop_entry
/* 8049D664  2C 03 00 00 */	cmpwi r3, 0
/* 8049D668  41 82 00 98 */	beq lbl_8049D700
/* 8049D66C  2C 1C 00 00 */	cmpwi r28, 0
/* 8049D670  40 82 00 34 */	bne lbl_8049D6A4
/* 8049D674  80 A1 00 50 */	lwz r5, 0x50(r1)
/* 8049D678  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8049D67C  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 8049D680  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8049D684  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8049D688  38 81 00 14 */	addi r4, r1, 0x14
/* 8049D68C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8049D690  38 A0 00 00 */	li r5, 0
/* 8049D694  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8049D698  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8049D69C  4B F0 A1 95 */	bl mFI_SetFG_common
/* 8049D6A0  48 00 00 2C */	b lbl_8049D6CC
lbl_8049D6A4:
/* 8049D6A4  80 C1 00 50 */	lwz r6, 0x50(r1)
/* 8049D6A8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8049D6AC  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 8049D6B0  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8049D6B4  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8049D6B8  38 81 00 08 */	addi r4, r1, 8
/* 8049D6BC  90 C1 00 08 */	stw r6, 8(r1)
/* 8049D6C0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8049D6C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8049D6C8  4B F0 A1 E9 */	bl mFI_SetFG2
lbl_8049D6CC:
/* 8049D6CC  2C 1C 00 01 */	cmpwi r28, 1
/* 8049D6D0  40 82 00 20 */	bne lbl_8049D6F0
/* 8049D6D4  3C 60 81 1D */	lis r3, data_811CF3A8@ha /* 0x811CF3A8@ha */
/* 8049D6D8  57 64 28 34 */	slwi r4, r27, 5
/* 8049D6DC  38 63 F3 A8 */	addi r3, r3, data_811CF3A8@l /* 0x811CF3A8@l */
/* 8049D6E0  57 40 08 3C */	slwi r0, r26, 1
/* 8049D6E4  7C 63 22 14 */	add r3, r3, r4
/* 8049D6E8  38 80 00 00 */	li r4, 0
/* 8049D6EC  7C 83 03 2E */	sthx r4, r3, r0
lbl_8049D6F0:
/* 8049D6F0  3B C0 00 01 */	li r30, 1
/* 8049D6F4  4B FD 68 79 */	bl aMR_ThrowItem_FurnitureLock
/* 8049D6F8  48 00 00 08 */	b lbl_8049D700
lbl_8049D6FC:
/* 8049D6FC  3B C0 FF FF */	li r30, -1
lbl_8049D700:
/* 8049D700  7F C3 F3 78 */	mr r3, r30
/* 8049D704  39 61 00 90 */	addi r11, r1, 0x90
/* 8049D708  4B BF D8 09 */	bl func_8009AF10
/* 8049D70C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8049D710  7C 08 03 A6 */	mtlr r0
/* 8049D714  38 21 00 90 */	addi r1, r1, 0x90
/* 8049D718  4E 80 00 20 */	blr 
