lbl_80629AA8:
/* 80629AA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80629AAC  7C 08 02 A6 */	mflr r0
/* 80629AB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80629AB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80629AB8  4B A7 14 1D */	bl func_8009AED4
/* 80629ABC  3C 80 80 63 */	lis r4, select_main@ha /* 0x80629A4C@ha */
/* 80629AC0  7C 7F 1B 78 */	mr r31, r3
/* 80629AC4  38 04 9A 4C */	addi r0, r4, select_main@l /* 0x80629A4C@l */
/* 80629AC8  3C 60 80 63 */	lis r3, select_cleanup@ha /* 0x80629AA4@ha */
/* 80629ACC  90 1F 00 04 */	stw r0, 4(r31)
/* 80629AD0  38 63 9A A4 */	addi r3, r3, select_cleanup@l /* 0x80629AA4@l */
/* 80629AD4  38 80 00 00 */	li r4, 0
/* 80629AD8  38 00 00 0A */	li r0, 0xa
/* 80629ADC  90 7F 00 08 */	stw r3, 8(r31)
/* 80629AE0  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 80629AE4  90 9F 02 00 */	stw r4, 0x200(r31)
/* 80629AE8  90 1F 02 08 */	stw r0, 0x208(r31)
/* 80629AEC  90 9F 02 0C */	stw r4, 0x20c(r31)
/* 80629AF0  90 9F 02 10 */	stw r4, 0x210(r31)
/* 80629AF4  80 9F 00 00 */	lwz r4, 0(r31)
/* 80629AF8  4B DC A2 DD */	bl initView
/* 80629AFC  38 00 00 0A */	li r0, 0xa
/* 80629B00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80629B04  90 1F 01 F8 */	stw r0, 0x1f8(r31)
/* 80629B08  38 00 00 00 */	li r0, 0
/* 80629B0C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80629B10  3B A0 00 00 */	li r29, 0
/* 80629B14  90 1F 02 2C */	stw r0, 0x22c(r31)
/* 80629B18  3F C3 00 02 */	addis r30, r3, 2
/* 80629B1C  90 1F 02 30 */	stw r0, 0x230(r31)
/* 80629B20  90 1F 02 34 */	stw r0, 0x234(r31)
lbl_80629B24:
/* 80629B24  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80629B28  7C 63 E8 AE */	lbzx r3, r3, r29
/* 80629B2C  4B FF E4 05 */	bl fcode2data
/* 80629B30  38 1D 02 24 */	addi r0, r29, 0x224
/* 80629B34  3B BD 00 01 */	addi r29, r29, 1
/* 80629B38  2C 1D 00 08 */	cmpwi r29, 8
/* 80629B3C  7C 7F 01 AE */	stbx r3, r31, r0
/* 80629B40  41 80 FF E4 */	blt lbl_80629B24
/* 80629B44  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80629B48  38 60 00 01 */	li r3, 1
/* 80629B4C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80629B50  3C 84 00 03 */	addis r4, r4, 3
/* 80629B54  A0 04 DB 42 */	lhz r0, -0x24be(r4)
/* 80629B58  90 1F 02 14 */	stw r0, 0x214(r31)
/* 80629B5C  A0 04 DB 44 */	lhz r0, -0x24bc(r4)
/* 80629B60  90 1F 02 18 */	stw r0, 0x218(r31)
/* 80629B64  4B DD B2 D1 */	bl SetGameFrame
/* 80629B68  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80629B6C  38 00 00 00 */	li r0, 0
/* 80629B70  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 80629B74  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80629B78  80 85 00 14 */	lwz r4, 0x14(r5)
/* 80629B7C  3F C5 00 02 */	addis r30, r5, 2
/* 80629B80  98 1E 65 21 */	stb r0, 0x6521(r30)
/* 80629B84  38 00 03 E8 */	li r0, 0x3e8
/* 80629B88  90 9E 60 04 */	stw r4, 0x6004(r30)
/* 80629B8C  90 03 00 90 */	stw r0, 0x90(r3)
/* 80629B90  4B DA 50 25 */	bl mNpc_ClearEventNpc
/* 80629B94  4B DA 52 5D */	bl mNpc_ClearMaskNpc
/* 80629B98  38 60 00 00 */	li r3, 0
/* 80629B9C  4B D8 17 B9 */	bl mFI_SetClimate
/* 80629BA0  38 00 00 00 */	li r0, 0
/* 80629BA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80629BA8  90 1E 60 04 */	stw r0, 0x6004(r30)
/* 80629BAC  4B A7 13 75 */	bl func_8009AF20
/* 80629BB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80629BB4  7C 08 03 A6 */	mtlr r0
/* 80629BB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80629BBC  4E 80 00 20 */	blr 
