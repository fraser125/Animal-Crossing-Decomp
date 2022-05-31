lbl_8054F9C8:
/* 8054F9C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054F9CC  7C 08 02 A6 */	mflr r0
/* 8054F9D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054F9D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8054F9D8  4B B4 B4 F9 */	bl func_8009AED0
/* 8054F9DC  7C 7E 1B 78 */	mr r30, r3
/* 8054F9E0  7C 9F 23 78 */	mr r31, r4
/* 8054F9E4  38 60 00 04 */	li r3, 4
/* 8054F9E8  38 80 00 09 */	li r4, 9
/* 8054F9EC  4B E4 8A 91 */	bl mDemo_Get_OrderValue
/* 8054F9F0  3C 80 80 65 */	lis r4, lit_1355@ha /* 0x80649528@ha */
/* 8054F9F4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8054F9F8  C0 04 95 28 */	lfs f0, lit_1355@l(r4)  /* 0x80649528@l */
/* 8054F9FC  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 8054FA00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8054FA04  40 81 00 38 */	ble lbl_8054FA3C
/* 8054FA08  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 8054FA0C  7F C3 F3 78 */	mr r3, r30
/* 8054FA10  4B FF DD 01 */	bl aNSC_set_stop_spd
/* 8054FA14  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054FA18  7F C3 F3 78 */	mr r3, r30
/* 8054FA1C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8054FA20  38 80 00 05 */	li r4, 5
/* 8054FA24  3C C5 00 02 */	addis r6, r5, 2
/* 8054FA28  38 A0 00 01 */	li r5, 1
/* 8054FA2C  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 8054FA30  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8054FA34  7D 89 03 A6 */	mtctr r12
/* 8054FA38  4E 80 04 21 */	bctrl 
lbl_8054FA3C:
/* 8054FA3C  2C 1D 00 00 */	cmpwi r29, 0
/* 8054FA40  41 82 00 A8 */	beq lbl_8054FAE8
/* 8054FA44  4B E6 FC 65 */	bl func_803BF6A8
/* 8054FA48  4B E7 12 51 */	bl mMsg_Check_MainNormalContinue
/* 8054FA4C  2C 03 00 01 */	cmpwi r3, 1
/* 8054FA50  40 82 00 98 */	bne lbl_8054FAE8
/* 8054FA54  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054FA58  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054FA5C  3C 63 00 02 */	addis r3, r3, 2
/* 8054FA60  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8054FA64  4B E6 3B 55 */	bl mHS_get_arrange_idx
/* 8054FA68  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 8054FA6C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054FA70  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8054FA74  7C 60 22 14 */	add r3, r0, r4
/* 8054FA78  3F A3 00 01 */	addis r29, r3, 1
/* 8054FA7C  3B BD 9C E8 */	addi r29, r29, -25368
/* 8054FA80  4B E3 3A C1 */	bl func_80383540
/* 8054FA84  4B E3 40 E9 */	bl mChoice_Get_ChoseNum
/* 8054FA88  2C 03 00 03 */	cmpwi r3, 3
/* 8054FA8C  40 80 00 38 */	bge lbl_8054FAC4
/* 8054FA90  2C 03 00 00 */	cmpwi r3, 0
/* 8054FA94  40 80 00 08 */	bge lbl_8054FA9C
/* 8054FA98  48 00 00 2C */	b lbl_8054FAC4
lbl_8054FA9C:
/* 8054FA9C  88 BD 00 2A */	lbz r5, 0x2a(r29)
/* 8054FAA0  3B 80 00 02 */	li r28, 2
/* 8054FAA4  54 A4 F7 7E */	rlwinm r4, r5, 0x1e, 0x1d, 0x1f
/* 8054FAA8  38 04 00 01 */	addi r0, r4, 1
/* 8054FAAC  50 05 16 FA */	rlwimi r5, r0, 2, 0x1b, 0x1d
/* 8054FAB0  98 BD 00 2A */	stb r5, 0x2a(r29)
/* 8054FAB4  98 7D 00 2D */	stb r3, 0x2d(r29)
/* 8054FAB8  7F A3 EB 78 */	mr r3, r29
/* 8054FABC  4B FF DC C9 */	bl aNSC_set_rehouse_order_date
/* 8054FAC0  48 00 00 08 */	b lbl_8054FAC8
lbl_8054FAC4:
/* 8054FAC4  3B 80 00 05 */	li r28, 5
lbl_8054FAC8:
/* 8054FAC8  38 60 00 04 */	li r3, 4
/* 8054FACC  38 80 00 09 */	li r4, 9
/* 8054FAD0  38 A0 00 00 */	li r5, 0
/* 8054FAD4  4B E4 89 65 */	bl mDemo_Set_OrderValue
/* 8054FAD8  7F C3 F3 78 */	mr r3, r30
/* 8054FADC  7F E4 FB 78 */	mr r4, r31
/* 8054FAE0  7F 85 E3 78 */	mr r5, r28
/* 8054FAE4  48 00 2D 51 */	bl aNSC_setupAction
lbl_8054FAE8:
/* 8054FAE8  39 61 00 20 */	addi r11, r1, 0x20
/* 8054FAEC  4B B4 B4 31 */	bl func_8009AF1C
/* 8054FAF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054FAF4  7C 08 03 A6 */	mtlr r0
/* 8054FAF8  38 21 00 20 */	addi r1, r1, 0x20
/* 8054FAFC  4E 80 00 20 */	blr 
