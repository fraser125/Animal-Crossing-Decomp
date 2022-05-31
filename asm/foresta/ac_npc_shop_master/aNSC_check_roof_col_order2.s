lbl_80579780:
/* 80579780  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80579784  7C 08 02 A6 */	mflr r0
/* 80579788  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057978C  39 61 00 20 */	addi r11, r1, 0x20
/* 80579790  4B B2 17 41 */	bl func_8009AED0
/* 80579794  7C 7E 1B 78 */	mr r30, r3
/* 80579798  7C 9F 23 78 */	mr r31, r4
/* 8057979C  4B E4 5F 0D */	bl func_803BF6A8
/* 805797A0  4B E4 74 F9 */	bl mMsg_Check_MainNormalContinue
/* 805797A4  2C 03 00 01 */	cmpwi r3, 1
/* 805797A8  40 82 00 B4 */	bne lbl_8057985C
/* 805797AC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805797B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805797B4  3C 63 00 02 */	addis r3, r3, 2
/* 805797B8  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 805797BC  4B E3 9D FD */	bl mHS_get_arrange_idx
/* 805797C0  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 805797C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805797C8  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 805797CC  7C 60 22 14 */	add r3, r0, r4
/* 805797D0  3F 83 00 01 */	addis r28, r3, 1
/* 805797D4  3B 9C 9C E8 */	addi r28, r28, -25368
/* 805797D8  4B E0 9D 69 */	bl func_80383540
/* 805797DC  4B E0 A3 91 */	bl mChoice_Get_ChoseNum
/* 805797E0  7C 7D 1B 78 */	mr r29, r3
/* 805797E4  38 60 00 04 */	li r3, 4
/* 805797E8  38 80 00 09 */	li r4, 9
/* 805797EC  4B E1 EC 91 */	bl mDemo_Get_OrderValue
/* 805797F0  2C 1D 00 03 */	cmpwi r29, 3
/* 805797F4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805797F8  40 80 00 40 */	bge lbl_80579838
/* 805797FC  2C 1D 00 00 */	cmpwi r29, 0
/* 80579800  40 80 00 08 */	bge lbl_80579808
/* 80579804  48 00 00 34 */	b lbl_80579838
lbl_80579808:
/* 80579808  88 BC 00 2A */	lbz r5, 0x2a(r28)
/* 8057980C  1C 00 00 03 */	mulli r0, r0, 3
/* 80579810  7F 83 E3 78 */	mr r3, r28
/* 80579814  54 A4 F7 7E */	rlwinm r4, r5, 0x1e, 0x1d, 0x1f
/* 80579818  38 84 00 01 */	addi r4, r4, 1
/* 8057981C  50 85 16 FA */	rlwimi r5, r4, 2, 0x1b, 0x1d
/* 80579820  7C 1D 02 14 */	add r0, r29, r0
/* 80579824  98 BC 00 2A */	stb r5, 0x2a(r28)
/* 80579828  3B A0 00 02 */	li r29, 2
/* 8057982C  98 1C 00 2D */	stb r0, 0x2d(r28)
/* 80579830  4B FF DB D5 */	bl aNSC_set_rehouse_order_date
/* 80579834  48 00 00 08 */	b lbl_8057983C
lbl_80579838:
/* 80579838  3B A0 00 05 */	li r29, 5
lbl_8057983C:
/* 8057983C  38 60 00 04 */	li r3, 4
/* 80579840  38 80 00 09 */	li r4, 9
/* 80579844  38 A0 00 00 */	li r5, 0
/* 80579848  4B E1 EB F1 */	bl mDemo_Set_OrderValue
/* 8057984C  7F C3 F3 78 */	mr r3, r30
/* 80579850  7F E4 FB 78 */	mr r4, r31
/* 80579854  7F A5 EB 78 */	mr r5, r29
/* 80579858  48 00 2C 5D */	bl aNSC_setupAction
lbl_8057985C:
/* 8057985C  39 61 00 20 */	addi r11, r1, 0x20
/* 80579860  4B B2 16 BD */	bl func_8009AF1C
/* 80579864  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80579868  7C 08 03 A6 */	mtlr r0
/* 8057986C  38 21 00 20 */	addi r1, r1, 0x20
/* 80579870  4E 80 00 20 */	blr 
