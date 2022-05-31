lbl_804BE914:
/* 804BE914  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804BE918  7C 08 02 A6 */	mflr r0
/* 804BE91C  90 01 00 54 */	stw r0, 0x54(r1)
/* 804BE920  39 61 00 50 */	addi r11, r1, 0x50
/* 804BE924  4B BD C5 91 */	bl func_8009AEB4
/* 804BE928  7C 7B 1B 78 */	mr r27, r3
/* 804BE92C  3C A0 80 69 */	lis r5, data_80695C98@ha /* 0x80695C98@ha */
/* 804BE930  3B DB 01 74 */	addi r30, r27, 0x174
/* 804BE934  7C 9C 23 78 */	mr r28, r4
/* 804BE938  3B E5 5C 98 */	addi r31, r5, data_80695C98@l /* 0x80695C98@l */
/* 804BE93C  3F BE 00 01 */	addis r29, r30, 1
/* 804BE940  48 00 04 91 */	bl bIT_clip_ct
/* 804BE944  7F 83 E3 78 */	mr r3, r28
/* 804BE948  4B F1 AC F9 */	bl get_player_actor_withoutCheck
/* 804BE94C  7C 78 1B 78 */	mr r24, r3
/* 804BE950  4B EE 0B 5D */	bl mEvMN_GetEventTypeMap
/* 804BE954  28 18 00 00 */	cmplwi r24, 0
/* 804BE958  7C 75 1B 78 */	mr r21, r3
/* 804BE95C  41 82 00 38 */	beq lbl_804BE994
/* 804BE960  80 D8 00 28 */	lwz r6, 0x28(r24)
/* 804BE964  3C 7B 00 01 */	addis r3, r27, 1
/* 804BE968  80 18 00 2C */	lwz r0, 0x2c(r24)
/* 804BE96C  38 81 00 14 */	addi r4, r1, 0x14
/* 804BE970  38 BF 2F 4C */	addi r5, r31, 0x2f4c
/* 804BE974  38 63 26 C8 */	addi r3, r3, 0x26c8
/* 804BE978  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804BE97C  38 C0 00 F4 */	li r6, 0xf4
/* 804BE980  90 01 00 18 */	stw r0, 0x18(r1)
/* 804BE984  80 18 00 30 */	lwz r0, 0x30(r24)
/* 804BE988  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804BE98C  4B EE 94 0D */	bl mFI_GetItemTable
/* 804BE990  4B EE 94 E1 */	bl mFI_BornItemON
lbl_804BE994:
/* 804BE994  3F 1E 00 01 */	addis r24, r30, 1
/* 804BE998  3A C0 00 00 */	li r22, 0
/* 804BE99C  3B 20 00 00 */	li r25, 0
/* 804BE9A0  3B 40 00 00 */	li r26, 0
/* 804BE9A4  48 00 00 64 */	b lbl_804BEA08
lbl_804BE9A8:
/* 804BE9A8  7C 7E D2 14 */	add r3, r30, r26
/* 804BE9AC  3C B9 00 01 */	addis r5, r25, 1
/* 804BE9B0  3E E3 00 01 */	addis r23, r3, 1
/* 804BE9B4  88 77 25 58 */	lbz r3, 0x2558(r23)
/* 804BE9B8  38 A5 21 54 */	addi r5, r5, 0x2154
/* 804BE9BC  88 97 25 59 */	lbz r4, 0x2559(r23)
/* 804BE9C0  7C BE 2A 14 */	add r5, r30, r5
/* 804BE9C4  7C 63 07 74 */	extsb r3, r3
/* 804BE9C8  7C 84 07 74 */	extsb r4, r4
/* 804BE9CC  48 00 4F 95 */	bl bIT_common_clear_treeatr
/* 804BE9D0  2C 15 FF FF */	cmpwi r21, -1
/* 804BE9D4  41 82 00 14 */	beq lbl_804BE9E8
/* 804BE9D8  7E A3 AB 78 */	mr r3, r21
/* 804BE9DC  4B EE 0A 8D */	bl mEvMN_GetMapIdx
/* 804BE9E0  2C 03 FF FF */	cmpwi r3, -1
/* 804BE9E4  40 82 00 18 */	bne lbl_804BE9FC
lbl_804BE9E8:
/* 804BE9E8  88 77 25 58 */	lbz r3, 0x2558(r23)
/* 804BE9EC  88 97 25 59 */	lbz r4, 0x2559(r23)
/* 804BE9F0  7C 63 07 74 */	extsb r3, r3
/* 804BE9F4  7C 84 07 74 */	extsb r4, r4
/* 804BE9F8  4B EE AC 29 */	bl mFI_ClearHoleBlock
lbl_804BE9FC:
/* 804BE9FC  3A D6 00 01 */	addi r22, r22, 1
/* 804BEA00  3B 39 01 00 */	addi r25, r25, 0x100
/* 804BEA04  3B 5A 00 10 */	addi r26, r26, 0x10
lbl_804BEA08:
/* 804BEA08  80 18 25 54 */	lwz r0, 0x2554(r24)
/* 804BEA0C  7C 16 00 00 */	cmpw r22, r0
/* 804BEA10  41 80 FF 98 */	blt lbl_804BE9A8
/* 804BEA14  3C 7B 00 01 */	addis r3, r27, 1
/* 804BEA18  38 63 26 C8 */	addi r3, r3, 0x26c8
/* 804BEA1C  4B EE 8F 15 */	bl mFI_InitItemTable
/* 804BEA20  7F 83 E3 78 */	mr r3, r28
/* 804BEA24  4B F1 AC 1D */	bl get_player_actor_withoutCheck
/* 804BEA28  28 03 00 00 */	cmplwi r3, 0
/* 804BEA2C  41 82 00 34 */	beq lbl_804BEA60
/* 804BEA30  80 E3 00 28 */	lwz r7, 0x28(r3)
/* 804BEA34  38 81 00 08 */	addi r4, r1, 8
/* 804BEA38  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 804BEA3C  38 BF 2F 4C */	addi r5, r31, 0x2f4c
/* 804BEA40  38 C0 01 16 */	li r6, 0x116
/* 804BEA44  90 E1 00 08 */	stw r7, 8(r1)
/* 804BEA48  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BEA4C  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804BEA50  3C 7B 00 01 */	addis r3, r27, 1
/* 804BEA54  38 63 26 C8 */	addi r3, r3, 0x26c8
/* 804BEA58  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BEA5C  4B EE 93 3D */	bl mFI_GetItemTable
lbl_804BEA60:
/* 804BEA60  3F 1B 00 01 */	addis r24, r27, 1
/* 804BEA64  3A E0 00 00 */	li r23, 0
/* 804BEA68  3B 40 00 00 */	li r26, 0
/* 804BEA6C  3B 20 00 00 */	li r25, 0
/* 804BEA70  48 00 00 38 */	b lbl_804BEAA8
lbl_804BEA74:
/* 804BEA74  7C 7E CA 14 */	add r3, r30, r25
/* 804BEA78  3C BA 00 01 */	addis r5, r26, 1
/* 804BEA7C  3C 83 00 01 */	addis r4, r3, 1
/* 804BEA80  88 64 25 58 */	lbz r3, 0x2558(r4)
/* 804BEA84  38 A5 21 54 */	addi r5, r5, 0x2154
/* 804BEA88  88 84 25 59 */	lbz r4, 0x2559(r4)
/* 804BEA8C  7C BE 2A 14 */	add r5, r30, r5
/* 804BEA90  7C 63 07 74 */	extsb r3, r3
/* 804BEA94  7C 84 07 74 */	extsb r4, r4
/* 804BEA98  48 00 4E C9 */	bl bIT_common_clear_treeatr
/* 804BEA9C  3A F7 00 01 */	addi r23, r23, 1
/* 804BEAA0  3B 5A 01 00 */	addi r26, r26, 0x100
/* 804BEAA4  3B 39 00 10 */	addi r25, r25, 0x10
lbl_804BEAA8:
/* 804BEAA8  80 18 26 C8 */	lwz r0, 0x26c8(r24)
/* 804BEAAC  7C 17 00 00 */	cmpw r23, r0
/* 804BEAB0  41 80 FF C4 */	blt lbl_804BEA74
/* 804BEAB4  38 00 00 04 */	li r0, 4
/* 804BEAB8  38 A0 00 00 */	li r5, 0
/* 804BEABC  38 60 00 00 */	li r3, 0
/* 804BEAC0  7C 09 03 A6 */	mtctr r0
lbl_804BEAC4:
/* 804BEAC4  3C 83 00 01 */	addis r4, r3, 1
/* 804BEAC8  38 63 00 04 */	addi r3, r3, 4
/* 804BEACC  38 84 39 F4 */	addi r4, r4, 0x39f4
/* 804BEAD0  7C BE 21 2E */	stwx r5, r30, r4
/* 804BEAD4  38 A5 00 01 */	addi r5, r5, 1
/* 804BEAD8  42 00 FF EC */	bdnz lbl_804BEAC4
/* 804BEADC  38 00 00 25 */	li r0, 0x25
/* 804BEAE0  3C A0 81 16 */	lis r5, g_fdinfo@ha /* 0x81167A58@ha */
/* 804BEAE4  B0 1D 25 C8 */	sth r0, 0x25c8(r29)
/* 804BEAE8  38 1F 27 AC */	addi r0, r31, 0x27ac
/* 804BEAEC  3C 60 80 75 */	lis r3, data_807522C0@ha /* 0x807522C0@ha */
/* 804BEAF0  39 45 7A 58 */	addi r10, r5, g_fdinfo@l /* 0x81167A58@l */
/* 804BEAF4  90 1D 25 98 */	stw r0, 0x2598(r29)
/* 804BEAF8  38 E3 22 C0 */	addi r7, r3, data_807522C0@l /* 0x807522C0@l */
/* 804BEAFC  3C 80 80 75 */	lis r4, obj_g_hole_pal@ha /* 0x807522E0@ha */
/* 804BEB00  3C BE 00 01 */	addis r5, r30, 1
/* 804BEB04  80 6A 00 00 */	lwz r3, 0(r10)
/* 804BEB08  39 04 22 E0 */	addi r8, r4, obj_g_hole_pal@l /* 0x807522E0@l */
/* 804BEB0C  38 00 00 04 */	li r0, 4
/* 804BEB10  38 80 00 00 */	li r4, 0
/* 804BEB14  81 23 00 54 */	lwz r9, 0x54(r3)
/* 804BEB18  38 60 00 00 */	li r3, 0
/* 804BEB1C  38 C0 00 7A */	li r6, 0x7a
/* 804BEB20  91 3D 25 A4 */	stw r9, 0x25a4(r29)
/* 804BEB24  81 2A 00 00 */	lwz r9, 0(r10)
/* 804BEB28  81 29 00 58 */	lwz r9, 0x58(r9)
/* 804BEB2C  91 3D 25 A8 */	stw r9, 0x25a8(r29)
/* 804BEB30  81 2A 00 00 */	lwz r9, 0(r10)
/* 804BEB34  81 29 00 5C */	lwz r9, 0x5c(r9)
/* 804BEB38  91 3D 25 AC */	stw r9, 0x25ac(r29)
/* 804BEB3C  81 2A 00 00 */	lwz r9, 0(r10)
/* 804BEB40  81 29 00 60 */	lwz r9, 0x60(r9)
/* 804BEB44  91 3D 25 B0 */	stw r9, 0x25b0(r29)
/* 804BEB48  81 2A 00 00 */	lwz r9, 0(r10)
/* 804BEB4C  81 29 00 68 */	lwz r9, 0x68(r9)
/* 804BEB50  91 3D 25 BC */	stw r9, 0x25bc(r29)
/* 804BEB54  81 2A 00 00 */	lwz r9, 0(r10)
/* 804BEB58  81 29 00 6C */	lwz r9, 0x6c(r9)
/* 804BEB5C  91 3D 25 C0 */	stw r9, 0x25c0(r29)
/* 804BEB60  81 2A 00 00 */	lwz r9, 0(r10)
/* 804BEB64  81 29 00 70 */	lwz r9, 0x70(r9)
/* 804BEB68  91 3D 25 C4 */	stw r9, 0x25c4(r29)
/* 804BEB6C  91 1D 25 B4 */	stw r8, 0x25b4(r29)
/* 804BEB70  90 FD 25 B8 */	stw r7, 0x25b8(r29)
/* 804BEB74  93 65 39 DC */	stw r27, 0x39dc(r5)
/* 804BEB78  7C 09 03 A6 */	mtctr r0
lbl_804BEB7C:
/* 804BEB7C  7C FB 22 14 */	add r7, r27, r4
/* 804BEB80  3C A3 00 01 */	addis r5, r3, 1
/* 804BEB84  38 A5 3B 78 */	addi r5, r5, 0x3b78
/* 804BEB88  B0 C7 49 C0 */	sth r6, 0x49c0(r7)
/* 804BEB8C  7C 1B 2A 14 */	add r0, r27, r5
/* 804BEB90  38 84 48 54 */	addi r4, r4, 0x4854
/* 804BEB94  90 07 49 BC */	stw r0, 0x49bc(r7)
/* 804BEB98  38 63 00 F6 */	addi r3, r3, 0xf6
/* 804BEB9C  42 00 FF E0 */	bdnz lbl_804BEB7C
/* 804BEBA0  38 1F 00 24 */	addi r0, r31, 0x24
/* 804BEBA4  7F C3 F3 78 */	mr r3, r30
/* 804BEBA8  90 1D 25 A0 */	stw r0, 0x25a0(r29)
/* 804BEBAC  48 00 57 91 */	bl bg_item_common_chg_BGDataR
/* 804BEBB0  7F 83 E3 78 */	mr r3, r28
/* 804BEBB4  7F C4 F3 78 */	mr r4, r30
/* 804BEBB8  48 00 70 35 */	bl bg_item_common_construct
/* 804BEBBC  39 61 00 50 */	addi r11, r1, 0x50
/* 804BEBC0  4B BD C3 41 */	bl func_8009AF00
/* 804BEBC4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804BEBC8  7C 08 03 A6 */	mtlr r0
/* 804BEBCC  38 21 00 50 */	addi r1, r1, 0x50
/* 804BEBD0  4E 80 00 20 */	blr 
