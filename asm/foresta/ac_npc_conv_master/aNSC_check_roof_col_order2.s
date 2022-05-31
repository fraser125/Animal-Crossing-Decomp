lbl_805481E8:
/* 805481E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805481EC  7C 08 02 A6 */	mflr r0
/* 805481F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805481F4  39 61 00 20 */	addi r11, r1, 0x20
/* 805481F8  4B B5 2C D9 */	bl func_8009AED0
/* 805481FC  7C 7E 1B 78 */	mr r30, r3
/* 80548200  7C 9F 23 78 */	mr r31, r4
/* 80548204  4B E7 74 A5 */	bl func_803BF6A8
/* 80548208  4B E7 8A 91 */	bl mMsg_Check_MainNormalContinue
/* 8054820C  2C 03 00 01 */	cmpwi r3, 1
/* 80548210  40 82 00 B4 */	bne lbl_805482C4
/* 80548214  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80548218  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054821C  3C 63 00 02 */	addis r3, r3, 2
/* 80548220  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 80548224  4B E6 B3 95 */	bl mHS_get_arrange_idx
/* 80548228  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 8054822C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80548230  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 80548234  7C 60 22 14 */	add r3, r0, r4
/* 80548238  3F 83 00 01 */	addis r28, r3, 1
/* 8054823C  3B 9C 9C E8 */	addi r28, r28, -25368
/* 80548240  4B E3 B3 01 */	bl func_80383540
/* 80548244  4B E3 B9 29 */	bl mChoice_Get_ChoseNum
/* 80548248  7C 7D 1B 78 */	mr r29, r3
/* 8054824C  38 60 00 04 */	li r3, 4
/* 80548250  38 80 00 09 */	li r4, 9
/* 80548254  4B E5 02 29 */	bl mDemo_Get_OrderValue
/* 80548258  2C 1D 00 03 */	cmpwi r29, 3
/* 8054825C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80548260  40 80 00 40 */	bge lbl_805482A0
/* 80548264  2C 1D 00 00 */	cmpwi r29, 0
/* 80548268  40 80 00 08 */	bge lbl_80548270
/* 8054826C  48 00 00 34 */	b lbl_805482A0
lbl_80548270:
/* 80548270  88 BC 00 2A */	lbz r5, 0x2a(r28)
/* 80548274  1C 00 00 03 */	mulli r0, r0, 3
/* 80548278  7F 83 E3 78 */	mr r3, r28
/* 8054827C  54 A4 F7 7E */	rlwinm r4, r5, 0x1e, 0x1d, 0x1f
/* 80548280  38 84 00 01 */	addi r4, r4, 1
/* 80548284  50 85 16 FA */	rlwimi r5, r4, 2, 0x1b, 0x1d
/* 80548288  7C 1D 02 14 */	add r0, r29, r0
/* 8054828C  98 BC 00 2A */	stb r5, 0x2a(r28)
/* 80548290  3B A0 00 02 */	li r29, 2
/* 80548294  98 1C 00 2D */	stb r0, 0x2d(r28)
/* 80548298  4B FF DB D5 */	bl aNSC_set_rehouse_order_date
/* 8054829C  48 00 00 08 */	b lbl_805482A4
lbl_805482A0:
/* 805482A0  3B A0 00 05 */	li r29, 5
lbl_805482A4:
/* 805482A4  38 60 00 04 */	li r3, 4
/* 805482A8  38 80 00 09 */	li r4, 9
/* 805482AC  38 A0 00 00 */	li r5, 0
/* 805482B0  4B E5 01 89 */	bl mDemo_Set_OrderValue
/* 805482B4  7F C3 F3 78 */	mr r3, r30
/* 805482B8  7F E4 FB 78 */	mr r4, r31
/* 805482BC  7F A5 EB 78 */	mr r5, r29
/* 805482C0  48 00 2C 5D */	bl aNSC_setupAction
lbl_805482C4:
/* 805482C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805482C8  4B B5 2C 55 */	bl func_8009AF1C
/* 805482CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805482D0  7C 08 03 A6 */	mtlr r0
/* 805482D4  38 21 00 20 */	addi r1, r1, 0x20
/* 805482D8  4E 80 00 20 */	blr 
