lbl_803CA1BC:
/* 803CA1BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CA1C0  7C 08 02 A6 */	mflr r0
/* 803CA1C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CA1C8  39 61 00 20 */	addi r11, r1, 0x20
/* 803CA1CC  4B CD 0D 09 */	bl func_8009AED4
/* 803CA1D0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CA1D4  3C 60 80 64 */	lis r3, data_806432C4@ha /* 0x806432C4@ha */
/* 803CA1D8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803CA1DC  3B A0 00 00 */	li r29, 0
/* 803CA1E0  3F C4 00 01 */	addis r30, r4, 1
/* 803CA1E4  3B E3 32 C4 */	addi r31, r3, data_806432C4@l /* 0x806432C4@l */
/* 803CA1E8  3B DE 91 2C */	addi r30, r30, -28372
lbl_803CA1EC:
/* 803CA1EC  7F E4 FB 78 */	mr r4, r31
/* 803CA1F0  38 7E 00 C0 */	addi r3, r30, 0xc0
/* 803CA1F4  38 A0 00 7F */	li r5, 0x7f
/* 803CA1F8  48 03 C6 41 */	bl lbRTC_IsEqualTime
/* 803CA1FC  2C 03 00 01 */	cmpwi r3, 1
/* 803CA200  41 82 00 14 */	beq lbl_803CA214
/* 803CA204  3B BD 00 01 */	addi r29, r29, 1
/* 803CA208  3B DE 00 C8 */	addi r30, r30, 0xc8
/* 803CA20C  2C 1D 00 0F */	cmpwi r29, 0xf
/* 803CA210  41 80 FF DC */	blt lbl_803CA1EC
lbl_803CA214:
/* 803CA214  7F A3 EB 78 */	mr r3, r29
/* 803CA218  39 61 00 20 */	addi r11, r1, 0x20
/* 803CA21C  4B CD 0D 05 */	bl func_8009AF20
/* 803CA220  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CA224  7C 08 03 A6 */	mtlr r0
/* 803CA228  38 21 00 20 */	addi r1, r1, 0x20
/* 803CA22C  4E 80 00 20 */	blr 
