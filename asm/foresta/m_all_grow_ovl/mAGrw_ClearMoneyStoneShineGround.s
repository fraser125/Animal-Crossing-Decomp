lbl_8050F84C:
/* 8050F84C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050F850  7C 08 02 A6 */	mflr r0
/* 8050F854  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050F858  39 61 00 30 */	addi r11, r1, 0x30
/* 8050F85C  4B B8 B6 65 */	bl func_8009AEC0
/* 8050F860  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8050F864  38 00 00 00 */	li r0, 0
/* 8050F868  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8050F86C  3B 60 00 00 */	li r27, 0
/* 8050F870  3F 83 00 02 */	addis r28, r3, 2
/* 8050F874  3B 40 00 00 */	li r26, 0
/* 8050F878  3F C3 00 01 */	addis r30, r3, 1
/* 8050F87C  8B 1C 60 03 */	lbz r24, 0x6003(r28)
/* 8050F880  3B DE 37 A8 */	addi r30, r30, 0x37a8
/* 8050F884  3B 9C 3E 40 */	addi r28, r28, 0x3e40
/* 8050F888  48 00 00 7C */	b lbl_8050F904
lbl_8050F88C:
/* 8050F88C  7F DD F3 78 */	mr r29, r30
/* 8050F890  3B 20 00 00 */	li r25, 0
/* 8050F894  3B E0 00 00 */	li r31, 0
lbl_8050F898:
/* 8050F898  A0 7D 00 00 */	lhz r3, 0(r29)
/* 8050F89C  28 03 00 6A */	cmplwi r3, 0x6a
/* 8050F8A0  41 80 00 0C */	blt lbl_8050F8AC
/* 8050F8A4  28 03 00 6E */	cmplwi r3, 0x6e
/* 8050F8A8  40 81 00 0C */	ble lbl_8050F8B4
lbl_8050F8AC:
/* 8050F8AC  28 03 00 6F */	cmplwi r3, 0x6f
/* 8050F8B0  40 82 00 14 */	bne lbl_8050F8C4
lbl_8050F8B4:
/* 8050F8B4  4B FF FF 85 */	bl mAGrw_ToStone
/* 8050F8B8  B0 7D 00 00 */	sth r3, 0(r29)
/* 8050F8BC  38 00 00 01 */	li r0, 1
/* 8050F8C0  48 00 00 14 */	b lbl_8050F8D4
lbl_8050F8C4:
/* 8050F8C4  28 03 00 5C */	cmplwi r3, 0x5c
/* 8050F8C8  40 82 00 0C */	bne lbl_8050F8D4
/* 8050F8CC  B3 FD 00 00 */	sth r31, 0(r29)
/* 8050F8D0  3B 60 00 01 */	li r27, 1
lbl_8050F8D4:
/* 8050F8D4  2C 00 00 01 */	cmpwi r0, 1
/* 8050F8D8  40 82 00 14 */	bne lbl_8050F8EC
/* 8050F8DC  2C 1B 00 01 */	cmpwi r27, 1
/* 8050F8E0  40 82 00 0C */	bne lbl_8050F8EC
/* 8050F8E4  3B 40 00 1E */	li r26, 0x1e
/* 8050F8E8  48 00 00 14 */	b lbl_8050F8FC
lbl_8050F8EC:
/* 8050F8EC  3B 39 00 01 */	addi r25, r25, 1
/* 8050F8F0  3B BD 00 02 */	addi r29, r29, 2
/* 8050F8F4  2C 19 01 00 */	cmpwi r25, 0x100
/* 8050F8F8  41 80 FF A0 */	blt lbl_8050F898
lbl_8050F8FC:
/* 8050F8FC  3B DE 02 00 */	addi r30, r30, 0x200
/* 8050F900  3B 5A 00 01 */	addi r26, r26, 1
lbl_8050F904:
/* 8050F904  2C 1A 00 1E */	cmpwi r26, 0x1e
/* 8050F908  41 80 FF 84 */	blt lbl_8050F88C
/* 8050F90C  2C 00 00 00 */	cmpwi r0, 0
/* 8050F910  40 82 00 10 */	bne lbl_8050F920
/* 8050F914  7F 83 E3 78 */	mr r3, r28
/* 8050F918  7F 04 C3 78 */	mr r4, r24
/* 8050F91C  4B FF FE 69 */	bl mAGrw_ClearStonePosInfo
lbl_8050F920:
/* 8050F920  2C 1B 00 00 */	cmpwi r27, 0
/* 8050F924  40 82 00 10 */	bne lbl_8050F934
/* 8050F928  7F 83 E3 78 */	mr r3, r28
/* 8050F92C  7F 04 C3 78 */	mr r4, r24
/* 8050F930  4B FF FE 95 */	bl mAGrw_ClearShinePosInfo
lbl_8050F934:
/* 8050F934  39 61 00 30 */	addi r11, r1, 0x30
/* 8050F938  4B B8 B5 D5 */	bl func_8009AF0C
/* 8050F93C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050F940  7C 08 03 A6 */	mtlr r0
/* 8050F944  38 21 00 30 */	addi r1, r1, 0x30
/* 8050F948  4E 80 00 20 */	blr 
