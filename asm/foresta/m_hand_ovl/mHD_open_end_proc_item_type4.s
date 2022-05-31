lbl_805DE4E0:
/* 805DE4E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DE4E4  7C 08 02 A6 */	mflr r0
/* 805DE4E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DE4EC  39 61 00 20 */	addi r11, r1, 0x20
/* 805DE4F0  4B AB C9 E5 */	bl func_8009AED4
/* 805DE4F4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805DE4F8  7C 7D 1B 78 */	mr r29, r3
/* 805DE4FC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805DE500  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805DE504  3F E3 00 02 */	addis r31, r3, 2
/* 805DE508  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805DE50C  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805DE510  A0 63 10 84 */	lhz r3, 0x1084(r3)
/* 805DE514  3B C4 00 08 */	addi r30, r4, 8
/* 805DE518  4B E0 26 B5 */	bl mPr_SetItemCollectBit
/* 805DE51C  80 BF 61 3C */	lwz r5, 0x613c(r31)
/* 805DE520  7F A3 EB 78 */	mr r3, r29
/* 805DE524  7F C4 F3 78 */	mr r4, r30
/* 805DE528  38 C0 00 00 */	li r6, 0
/* 805DE52C  38 A5 10 84 */	addi r5, r5, 0x1084
/* 805DE530  4B FF F2 39 */	bl mHD_drop_item
/* 805DE534  4B FF FC 9D */	bl mHD_change_iv_back_segment
/* 805DE538  39 61 00 20 */	addi r11, r1, 0x20
/* 805DE53C  4B AB C9 E5 */	bl func_8009AF20
/* 805DE540  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DE544  7C 08 03 A6 */	mtlr r0
/* 805DE548  38 21 00 20 */	addi r1, r1, 0x20
/* 805DE54C  4E 80 00 20 */	blr 
