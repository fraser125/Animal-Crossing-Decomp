lbl_8042F1B4:
/* 8042F1B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042F1B8  7C 08 02 A6 */	mflr r0
/* 8042F1BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042F1C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8042F1C4  4B C6 BD 11 */	bl func_8009AED4
/* 8042F1C8  3C 60 80 68 */	lis r3, aMP_art_data_table@ha /* 0x80684D5C@ha */
/* 8042F1CC  7C 9D 23 78 */	mr r29, r4
/* 8042F1D0  38 03 4D 5C */	addi r0, r3, aMP_art_data_table@l /* 0x80684D5C@l */
/* 8042F1D4  3B E0 00 00 */	li r31, 0
/* 8042F1D8  7C 1E 03 78 */	mr r30, r0
lbl_8042F1DC:
/* 8042F1DC  7F E3 FB 78 */	mr r3, r31
/* 8042F1E0  4B F9 82 49 */	bl mMmd_ArtInfo
/* 8042F1E4  7C 64 1B 78 */	mr r4, r3
/* 8042F1E8  38 7E 00 08 */	addi r3, r30, 8
/* 8042F1EC  2C 04 00 01 */	cmpwi r4, 1
/* 8042F1F0  38 00 00 00 */	li r0, 0
/* 8042F1F4  41 80 00 10 */	blt lbl_8042F204
/* 8042F1F8  2C 04 00 05 */	cmpwi r4, 5
/* 8042F1FC  41 81 00 08 */	bgt lbl_8042F204
/* 8042F200  38 00 00 01 */	li r0, 1
lbl_8042F204:
/* 8042F204  7C 00 00 34 */	cntlzw r0, r0
/* 8042F208  7F A5 EB 78 */	mr r5, r29
/* 8042F20C  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 8042F210  7C 9E 00 2E */	lwzx r4, r30, r0
/* 8042F214  4B FF FE 7D */	bl aMP_DrawOneArt
/* 8042F218  3B FF 00 01 */	addi r31, r31, 1
/* 8042F21C  3B DE 00 0C */	addi r30, r30, 0xc
/* 8042F220  2C 1F 00 0F */	cmpwi r31, 0xf
/* 8042F224  41 80 FF B8 */	blt lbl_8042F1DC
/* 8042F228  39 61 00 20 */	addi r11, r1, 0x20
/* 8042F22C  4B C6 BC F5 */	bl func_8009AF20
/* 8042F230  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042F234  7C 08 03 A6 */	mtlr r0
/* 8042F238  38 21 00 20 */	addi r1, r1, 0x20
/* 8042F23C  4E 80 00 20 */	blr 
