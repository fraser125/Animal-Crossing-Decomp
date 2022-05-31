lbl_8050F94C:
/* 8050F94C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050F950  7C 08 02 A6 */	mflr r0
/* 8050F954  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050F958  39 61 00 20 */	addi r11, r1, 0x20
/* 8050F95C  4B B8 B5 71 */	bl func_8009AECC
/* 8050F960  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8050F964  3B 80 00 00 */	li r28, 0
/* 8050F968  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8050F96C  3F C3 00 01 */	addis r30, r3, 1
/* 8050F970  3B DE 37 A8 */	addi r30, r30, 0x37a8
lbl_8050F974:
/* 8050F974  7F DD F3 78 */	mr r29, r30
/* 8050F978  3B 60 00 00 */	li r27, 0
/* 8050F97C  3B E0 00 00 */	li r31, 0
lbl_8050F980:
/* 8050F980  A0 7D 00 00 */	lhz r3, 0(r29)
/* 8050F984  28 03 00 6A */	cmplwi r3, 0x6a
/* 8050F988  41 80 00 0C */	blt lbl_8050F994
/* 8050F98C  28 03 00 6E */	cmplwi r3, 0x6e
/* 8050F990  40 81 00 0C */	ble lbl_8050F99C
lbl_8050F994:
/* 8050F994  28 03 00 6F */	cmplwi r3, 0x6f
/* 8050F998  40 82 00 10 */	bne lbl_8050F9A8
lbl_8050F99C:
/* 8050F99C  4B FF FE 9D */	bl mAGrw_ToStone
/* 8050F9A0  B0 7D 00 00 */	sth r3, 0(r29)
/* 8050F9A4  48 00 00 10 */	b lbl_8050F9B4
lbl_8050F9A8:
/* 8050F9A8  28 03 00 5C */	cmplwi r3, 0x5c
/* 8050F9AC  40 82 00 08 */	bne lbl_8050F9B4
/* 8050F9B0  B3 FD 00 00 */	sth r31, 0(r29)
lbl_8050F9B4:
/* 8050F9B4  3B 7B 00 01 */	addi r27, r27, 1
/* 8050F9B8  3B BD 00 02 */	addi r29, r29, 2
/* 8050F9BC  2C 1B 01 00 */	cmpwi r27, 0x100
/* 8050F9C0  41 80 FF C0 */	blt lbl_8050F980
/* 8050F9C4  3B 9C 00 01 */	addi r28, r28, 1
/* 8050F9C8  3B DE 02 00 */	addi r30, r30, 0x200
/* 8050F9CC  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 8050F9D0  41 80 FF A4 */	blt lbl_8050F974
/* 8050F9D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8050F9D8  4B B8 B5 41 */	bl func_8009AF18
/* 8050F9DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050F9E0  7C 08 03 A6 */	mtlr r0
/* 8050F9E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8050F9E8  4E 80 00 20 */	blr 
