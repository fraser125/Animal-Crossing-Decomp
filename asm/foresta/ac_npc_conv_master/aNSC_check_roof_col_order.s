lbl_805480B0:
/* 805480B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805480B4  7C 08 02 A6 */	mflr r0
/* 805480B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805480BC  39 61 00 20 */	addi r11, r1, 0x20
/* 805480C0  4B B5 2E 11 */	bl func_8009AED0
/* 805480C4  7C 7E 1B 78 */	mr r30, r3
/* 805480C8  7C 9F 23 78 */	mr r31, r4
/* 805480CC  38 60 00 04 */	li r3, 4
/* 805480D0  38 80 00 09 */	li r4, 9
/* 805480D4  4B E5 03 A9 */	bl mDemo_Get_OrderValue
/* 805480D8  3C 80 80 65 */	lis r4, lit_1343@ha /* 0x806494BC@ha */
/* 805480DC  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805480E0  C0 04 94 BC */	lfs f0, lit_1343@l(r4)  /* 0x806494BC@l */
/* 805480E4  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 805480E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805480EC  40 81 00 38 */	ble lbl_80548124
/* 805480F0  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 805480F4  7F C3 F3 78 */	mr r3, r30
/* 805480F8  4B FF DD 01 */	bl aNSC_set_stop_spd
/* 805480FC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80548100  7F C3 F3 78 */	mr r3, r30
/* 80548104  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80548108  38 80 00 05 */	li r4, 5
/* 8054810C  3C C5 00 02 */	addis r6, r5, 2
/* 80548110  38 A0 00 01 */	li r5, 1
/* 80548114  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 80548118  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8054811C  7D 89 03 A6 */	mtctr r12
/* 80548120  4E 80 04 21 */	bctrl 
lbl_80548124:
/* 80548124  2C 1D 00 00 */	cmpwi r29, 0
/* 80548128  41 82 00 A8 */	beq lbl_805481D0
/* 8054812C  4B E7 75 7D */	bl func_803BF6A8
/* 80548130  4B E7 8B 69 */	bl mMsg_Check_MainNormalContinue
/* 80548134  2C 03 00 01 */	cmpwi r3, 1
/* 80548138  40 82 00 98 */	bne lbl_805481D0
/* 8054813C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80548140  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80548144  3C 63 00 02 */	addis r3, r3, 2
/* 80548148  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8054814C  4B E6 B4 6D */	bl mHS_get_arrange_idx
/* 80548150  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 80548154  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80548158  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8054815C  7C 60 22 14 */	add r3, r0, r4
/* 80548160  3F A3 00 01 */	addis r29, r3, 1
/* 80548164  3B BD 9C E8 */	addi r29, r29, -25368
/* 80548168  4B E3 B3 D9 */	bl func_80383540
/* 8054816C  4B E3 BA 01 */	bl mChoice_Get_ChoseNum
/* 80548170  2C 03 00 03 */	cmpwi r3, 3
/* 80548174  40 80 00 38 */	bge lbl_805481AC
/* 80548178  2C 03 00 00 */	cmpwi r3, 0
/* 8054817C  40 80 00 08 */	bge lbl_80548184
/* 80548180  48 00 00 2C */	b lbl_805481AC
lbl_80548184:
/* 80548184  88 BD 00 2A */	lbz r5, 0x2a(r29)
/* 80548188  3B 80 00 02 */	li r28, 2
/* 8054818C  54 A4 F7 7E */	rlwinm r4, r5, 0x1e, 0x1d, 0x1f
/* 80548190  38 04 00 01 */	addi r0, r4, 1
/* 80548194  50 05 16 FA */	rlwimi r5, r0, 2, 0x1b, 0x1d
/* 80548198  98 BD 00 2A */	stb r5, 0x2a(r29)
/* 8054819C  98 7D 00 2D */	stb r3, 0x2d(r29)
/* 805481A0  7F A3 EB 78 */	mr r3, r29
/* 805481A4  4B FF DC C9 */	bl aNSC_set_rehouse_order_date
/* 805481A8  48 00 00 08 */	b lbl_805481B0
lbl_805481AC:
/* 805481AC  3B 80 00 05 */	li r28, 5
lbl_805481B0:
/* 805481B0  38 60 00 04 */	li r3, 4
/* 805481B4  38 80 00 09 */	li r4, 9
/* 805481B8  38 A0 00 00 */	li r5, 0
/* 805481BC  4B E5 02 7D */	bl mDemo_Set_OrderValue
/* 805481C0  7F C3 F3 78 */	mr r3, r30
/* 805481C4  7F E4 FB 78 */	mr r4, r31
/* 805481C8  7F 85 E3 78 */	mr r5, r28
/* 805481CC  48 00 2D 51 */	bl aNSC_setupAction
lbl_805481D0:
/* 805481D0  39 61 00 20 */	addi r11, r1, 0x20
/* 805481D4  4B B5 2D 49 */	bl func_8009AF1C
/* 805481D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805481DC  7C 08 03 A6 */	mtlr r0
/* 805481E0  38 21 00 20 */	addi r1, r1, 0x20
/* 805481E4  4E 80 00 20 */	blr 
