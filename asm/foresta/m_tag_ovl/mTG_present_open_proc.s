lbl_805F38D0:
/* 805F38D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F38D4  7C 08 02 A6 */	mflr r0
/* 805F38D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F38DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F38E0  93 C1 00 08 */	stw r30, 8(r1)
/* 805F38E4  7C 7E 1B 78 */	mr r30, r3
/* 805F38E8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F38EC  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F38F0  38 63 00 08 */	addi r3, r3, 8
/* 805F38F4  4B FF C2 6D */	bl mTG_get_table_idx
/* 805F38F8  7C 7F 1B 78 */	mr r31, r3
/* 805F38FC  7F C3 F3 78 */	mr r3, r30
/* 805F3900  38 80 00 00 */	li r4, 0
/* 805F3904  38 A0 00 01 */	li r5, 1
/* 805F3908  4B FF BE AD */	bl mTG_return_tag_init
/* 805F390C  38 60 04 36 */	li r3, 0x436
/* 805F3910  48 03 A3 F5 */	bl sAdo_SysTrgStart
/* 805F3914  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F3918  57 E0 08 3C */	slwi r0, r31, 1
/* 805F391C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F3920  3C 63 00 02 */	addis r3, r3, 2
/* 805F3924  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805F3928  7C 63 02 14 */	add r3, r3, r0
/* 805F392C  A0 63 00 68 */	lhz r3, 0x68(r3)
/* 805F3930  4B DE D2 9D */	bl mPr_SetItemCollectBit
/* 805F3934  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 805F3938  38 80 00 05 */	li r4, 5
/* 805F393C  38 00 00 30 */	li r0, 0x30
/* 805F3940  80 63 09 88 */	lwz r3, 0x988(r3)
/* 805F3944  7C 63 FA 14 */	add r3, r3, r31
/* 805F3948  98 83 03 E3 */	stb r4, 0x3e3(r3)
/* 805F394C  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 805F3950  80 63 09 88 */	lwz r3, 0x988(r3)
/* 805F3954  B0 03 03 F8 */	sth r0, 0x3f8(r3)
/* 805F3958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F395C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F3960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F3964  7C 08 03 A6 */	mtlr r0
/* 805F3968  38 21 00 10 */	addi r1, r1, 0x10
/* 805F396C  4E 80 00 20 */	blr 
