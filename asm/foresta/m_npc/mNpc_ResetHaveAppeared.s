lbl_803CF18C:
/* 803CF18C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CF190  7C 08 02 A6 */	mflr r0
/* 803CF194  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CF198  39 61 00 20 */	addi r11, r1, 0x20
/* 803CF19C  4B CC BD 39 */	bl func_8009AED4
/* 803CF1A0  3C 60 80 97 */	lis r3, data_80977350@ha /* 0x80977350@ha */
/* 803CF1A4  3B A0 00 00 */	li r29, 0
/* 803CF1A8  38 03 73 50 */	addi r0, r3, data_80977350@l /* 0x80977350@l */
/* 803CF1AC  7C 1E 03 78 */	mr r30, r0
lbl_803CF1B0:
/* 803CF1B0  7F A3 EB 78 */	mr r3, r29
/* 803CF1B4  7F C4 F3 78 */	mr r4, r30
/* 803CF1B8  38 A0 00 EC */	li r5, 0xec
/* 803CF1BC  4B FF FE A1 */	bl mNpc_GetDefGrowPermission
/* 803CF1C0  7C 7F 1B 78 */	mr r31, r3
/* 803CF1C4  7F A3 EB 78 */	mr r3, r29
/* 803CF1C8  4B FF FE 59 */	bl mNpc_GetHaveAppeared_idx
/* 803CF1CC  2C 03 00 00 */	cmpwi r3, 0
/* 803CF1D0  40 82 00 0C */	bne lbl_803CF1DC
/* 803CF1D4  28 1F 00 01 */	cmplwi r31, 1
/* 803CF1D8  40 81 00 10 */	ble lbl_803CF1E8
lbl_803CF1DC:
/* 803CF1DC  3B BD 00 01 */	addi r29, r29, 1
/* 803CF1E0  2C 1D 00 EC */	cmpwi r29, 0xec
/* 803CF1E4  41 80 FF CC */	blt lbl_803CF1B0
lbl_803CF1E8:
/* 803CF1E8  2C 1D 00 EC */	cmpwi r29, 0xec
/* 803CF1EC  40 82 00 20 */	bne lbl_803CF20C
/* 803CF1F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CF1F4  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803CF1F8  3C 64 00 02 */	addis r3, r4, 2
/* 803CF1FC  3C 84 00 01 */	addis r4, r4, 1
/* 803CF200  38 84 74 38 */	addi r4, r4, 0x7438
/* 803CF204  38 63 13 4E */	addi r3, r3, 0x134e
/* 803CF208  4B FF FF 21 */	bl mNpc_ResetHaveAppeared_common
lbl_803CF20C:
/* 803CF20C  39 61 00 20 */	addi r11, r1, 0x20
/* 803CF210  4B CC BD 11 */	bl func_8009AF20
/* 803CF214  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CF218  7C 08 03 A6 */	mtlr r0
/* 803CF21C  38 21 00 20 */	addi r1, r1, 0x20
/* 803CF220  4E 80 00 20 */	blr 
