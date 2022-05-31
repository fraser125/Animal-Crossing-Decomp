lbl_8054FB00:
/* 8054FB00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054FB04  7C 08 02 A6 */	mflr r0
/* 8054FB08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054FB0C  39 61 00 20 */	addi r11, r1, 0x20
/* 8054FB10  4B B4 B3 C1 */	bl func_8009AED0
/* 8054FB14  7C 7E 1B 78 */	mr r30, r3
/* 8054FB18  7C 9F 23 78 */	mr r31, r4
/* 8054FB1C  4B E6 FB 8D */	bl func_803BF6A8
/* 8054FB20  4B E7 11 79 */	bl mMsg_Check_MainNormalContinue
/* 8054FB24  2C 03 00 01 */	cmpwi r3, 1
/* 8054FB28  40 82 00 B4 */	bne lbl_8054FBDC
/* 8054FB2C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054FB30  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054FB34  3C 63 00 02 */	addis r3, r3, 2
/* 8054FB38  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8054FB3C  4B E6 3A 7D */	bl mHS_get_arrange_idx
/* 8054FB40  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 8054FB44  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054FB48  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8054FB4C  7C 60 22 14 */	add r3, r0, r4
/* 8054FB50  3F 83 00 01 */	addis r28, r3, 1
/* 8054FB54  3B 9C 9C E8 */	addi r28, r28, -25368
/* 8054FB58  4B E3 39 E9 */	bl func_80383540
/* 8054FB5C  4B E3 40 11 */	bl mChoice_Get_ChoseNum
/* 8054FB60  7C 7D 1B 78 */	mr r29, r3
/* 8054FB64  38 60 00 04 */	li r3, 4
/* 8054FB68  38 80 00 09 */	li r4, 9
/* 8054FB6C  4B E4 89 11 */	bl mDemo_Get_OrderValue
/* 8054FB70  2C 1D 00 03 */	cmpwi r29, 3
/* 8054FB74  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8054FB78  40 80 00 40 */	bge lbl_8054FBB8
/* 8054FB7C  2C 1D 00 00 */	cmpwi r29, 0
/* 8054FB80  40 80 00 08 */	bge lbl_8054FB88
/* 8054FB84  48 00 00 34 */	b lbl_8054FBB8
lbl_8054FB88:
/* 8054FB88  88 BC 00 2A */	lbz r5, 0x2a(r28)
/* 8054FB8C  1C 00 00 03 */	mulli r0, r0, 3
/* 8054FB90  7F 83 E3 78 */	mr r3, r28
/* 8054FB94  54 A4 F7 7E */	rlwinm r4, r5, 0x1e, 0x1d, 0x1f
/* 8054FB98  38 84 00 01 */	addi r4, r4, 1
/* 8054FB9C  50 85 16 FA */	rlwimi r5, r4, 2, 0x1b, 0x1d
/* 8054FBA0  7C 1D 02 14 */	add r0, r29, r0
/* 8054FBA4  98 BC 00 2A */	stb r5, 0x2a(r28)
/* 8054FBA8  3B A0 00 02 */	li r29, 2
/* 8054FBAC  98 1C 00 2D */	stb r0, 0x2d(r28)
/* 8054FBB0  4B FF DB D5 */	bl aNSC_set_rehouse_order_date
/* 8054FBB4  48 00 00 08 */	b lbl_8054FBBC
lbl_8054FBB8:
/* 8054FBB8  3B A0 00 05 */	li r29, 5
lbl_8054FBBC:
/* 8054FBBC  38 60 00 04 */	li r3, 4
/* 8054FBC0  38 80 00 09 */	li r4, 9
/* 8054FBC4  38 A0 00 00 */	li r5, 0
/* 8054FBC8  4B E4 88 71 */	bl mDemo_Set_OrderValue
/* 8054FBCC  7F C3 F3 78 */	mr r3, r30
/* 8054FBD0  7F E4 FB 78 */	mr r4, r31
/* 8054FBD4  7F A5 EB 78 */	mr r5, r29
/* 8054FBD8  48 00 2C 5D */	bl aNSC_setupAction
lbl_8054FBDC:
/* 8054FBDC  39 61 00 20 */	addi r11, r1, 0x20
/* 8054FBE0  4B B4 B3 3D */	bl func_8009AF1C
/* 8054FBE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054FBE8  7C 08 03 A6 */	mtlr r0
/* 8054FBEC  38 21 00 20 */	addi r1, r1, 0x20
/* 8054FBF0  4E 80 00 20 */	blr 
