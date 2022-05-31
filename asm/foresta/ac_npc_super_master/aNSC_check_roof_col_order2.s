lbl_8058328C:
/* 8058328C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80583290  7C 08 02 A6 */	mflr r0
/* 80583294  90 01 00 24 */	stw r0, 0x24(r1)
/* 80583298  39 61 00 20 */	addi r11, r1, 0x20
/* 8058329C  4B B1 7C 35 */	bl func_8009AED0
/* 805832A0  7C 7E 1B 78 */	mr r30, r3
/* 805832A4  7C 9F 23 78 */	mr r31, r4
/* 805832A8  4B E3 C4 01 */	bl func_803BF6A8
/* 805832AC  4B E3 D9 ED */	bl mMsg_Check_MainNormalContinue
/* 805832B0  2C 03 00 01 */	cmpwi r3, 1
/* 805832B4  40 82 00 B4 */	bne lbl_80583368
/* 805832B8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805832BC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805832C0  3C 63 00 02 */	addis r3, r3, 2
/* 805832C4  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 805832C8  4B E3 02 F1 */	bl mHS_get_arrange_idx
/* 805832CC  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 805832D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805832D4  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 805832D8  7C 60 22 14 */	add r3, r0, r4
/* 805832DC  3F 83 00 01 */	addis r28, r3, 1
/* 805832E0  3B 9C 9C E8 */	addi r28, r28, -25368
/* 805832E4  4B E0 02 5D */	bl func_80383540
/* 805832E8  4B E0 08 85 */	bl mChoice_Get_ChoseNum
/* 805832EC  7C 7D 1B 78 */	mr r29, r3
/* 805832F0  38 60 00 04 */	li r3, 4
/* 805832F4  38 80 00 09 */	li r4, 9
/* 805832F8  4B E1 51 85 */	bl mDemo_Get_OrderValue
/* 805832FC  2C 1D 00 03 */	cmpwi r29, 3
/* 80583300  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80583304  40 80 00 40 */	bge lbl_80583344
/* 80583308  2C 1D 00 00 */	cmpwi r29, 0
/* 8058330C  40 80 00 08 */	bge lbl_80583314
/* 80583310  48 00 00 34 */	b lbl_80583344
lbl_80583314:
/* 80583314  88 BC 00 2A */	lbz r5, 0x2a(r28)
/* 80583318  1C 00 00 03 */	mulli r0, r0, 3
/* 8058331C  7F 83 E3 78 */	mr r3, r28
/* 80583320  54 A4 F7 7E */	rlwinm r4, r5, 0x1e, 0x1d, 0x1f
/* 80583324  38 84 00 01 */	addi r4, r4, 1
/* 80583328  50 85 16 FA */	rlwimi r5, r4, 2, 0x1b, 0x1d
/* 8058332C  7C 1D 02 14 */	add r0, r29, r0
/* 80583330  98 BC 00 2A */	stb r5, 0x2a(r28)
/* 80583334  3B A0 00 02 */	li r29, 2
/* 80583338  98 1C 00 2D */	stb r0, 0x2d(r28)
/* 8058333C  4B FF DB D5 */	bl aNSC_set_rehouse_order_date
/* 80583340  48 00 00 08 */	b lbl_80583348
lbl_80583344:
/* 80583344  3B A0 00 05 */	li r29, 5
lbl_80583348:
/* 80583348  38 60 00 04 */	li r3, 4
/* 8058334C  38 80 00 09 */	li r4, 9
/* 80583350  38 A0 00 00 */	li r5, 0
/* 80583354  4B E1 50 E5 */	bl mDemo_Set_OrderValue
/* 80583358  7F C3 F3 78 */	mr r3, r30
/* 8058335C  7F E4 FB 78 */	mr r4, r31
/* 80583360  7F A5 EB 78 */	mr r5, r29
/* 80583364  48 00 2C 5D */	bl aNSC_setupAction
lbl_80583368:
/* 80583368  39 61 00 20 */	addi r11, r1, 0x20
/* 8058336C  4B B1 7B B1 */	bl func_8009AF1C
/* 80583370  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80583374  7C 08 03 A6 */	mtlr r0
/* 80583378  38 21 00 20 */	addi r1, r1, 0x20
/* 8058337C  4E 80 00 20 */	blr 
