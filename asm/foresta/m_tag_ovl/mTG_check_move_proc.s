lbl_805FC1B8:
/* 805FC1B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FC1BC  7C 08 02 A6 */	mflr r0
/* 805FC1C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FC1C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805FC1C8  4B A9 ED 0D */	bl func_8009AED4
/* 805FC1CC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805FC1D0  7C 9D 23 78 */	mr r29, r4
/* 805FC1D4  3B E0 00 01 */	li r31, 1
/* 805FC1D8  83 C3 09 88 */	lwz r30, 0x988(r3)
/* 805FC1DC  28 1E 00 00 */	cmplwi r30, 0
/* 805FC1E0  41 82 00 AC */	beq lbl_805FC28C
/* 805FC1E4  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 805FC1E8  2C 00 00 01 */	cmpwi r0, 1
/* 805FC1EC  41 82 00 78 */	beq lbl_805FC264
/* 805FC1F0  40 80 00 9C */	bge lbl_805FC28C
/* 805FC1F4  2C 00 00 00 */	cmpwi r0, 0
/* 805FC1F8  40 80 00 08 */	bge lbl_805FC200
/* 805FC1FC  48 00 00 90 */	b lbl_805FC28C
lbl_805FC200:
/* 805FC200  7F A3 EB 78 */	mr r3, r29
/* 805FC204  4B FF 39 5D */	bl mTG_get_table_idx
/* 805FC208  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805FC20C  54 60 08 3C */	slwi r0, r3, 1
/* 805FC210  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805FC214  3C 63 00 02 */	addis r3, r3, 2
/* 805FC218  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805FC21C  7C 63 02 14 */	add r3, r3, r0
/* 805FC220  A0 63 00 68 */	lhz r3, 0x68(r3)
/* 805FC224  4B DC D5 4D */	bl mNT_check_unknown
/* 805FC228  2C 03 00 01 */	cmpwi r3, 1
/* 805FC22C  40 82 00 0C */	bne lbl_805FC238
/* 805FC230  3B E0 00 00 */	li r31, 0
/* 805FC234  48 00 00 58 */	b lbl_805FC28C
lbl_805FC238:
/* 805FC238  80 1D 00 40 */	lwz r0, 0x40(r29)
/* 805FC23C  38 80 00 01 */	li r4, 1
/* 805FC240  80 7D 00 3C */	lwz r3, 0x3c(r29)
/* 805FC244  1C 00 00 05 */	mulli r0, r0, 5
/* 805FC248  A0 BE 03 BC */	lhz r5, 0x3bc(r30)
/* 805FC24C  7C 03 02 14 */	add r0, r3, r0
/* 805FC250  7C 80 00 30 */	slw r0, r4, r0
/* 805FC254  7C A0 00 39 */	and. r0, r5, r0
/* 805FC258  40 82 00 34 */	bne lbl_805FC28C
/* 805FC25C  3B E0 00 00 */	li r31, 0
/* 805FC260  48 00 00 2C */	b lbl_805FC28C
lbl_805FC264:
/* 805FC264  80 1D 00 40 */	lwz r0, 0x40(r29)
/* 805FC268  38 80 00 01 */	li r4, 1
/* 805FC26C  80 7D 00 3C */	lwz r3, 0x3c(r29)
/* 805FC270  54 00 08 3C */	slwi r0, r0, 1
/* 805FC274  A0 BE 03 BE */	lhz r5, 0x3be(r30)
/* 805FC278  7C 03 02 14 */	add r0, r3, r0
/* 805FC27C  7C 80 00 30 */	slw r0, r4, r0
/* 805FC280  7C A0 00 39 */	and. r0, r5, r0
/* 805FC284  40 82 00 08 */	bne lbl_805FC28C
/* 805FC288  3B E0 00 00 */	li r31, 0
lbl_805FC28C:
/* 805FC28C  7F E3 FB 78 */	mr r3, r31
/* 805FC290  39 61 00 20 */	addi r11, r1, 0x20
/* 805FC294  4B A9 EC 8D */	bl func_8009AF20
/* 805FC298  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FC29C  7C 08 03 A6 */	mtlr r0
/* 805FC2A0  38 21 00 20 */	addi r1, r1, 0x20
/* 805FC2A4  4E 80 00 20 */	blr 
