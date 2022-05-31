lbl_805F48D8:
/* 805F48D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F48DC  7C 08 02 A6 */	mflr r0
/* 805F48E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F48E4  39 61 00 20 */	addi r11, r1, 0x20
/* 805F48E8  4B AA 65 E5 */	bl func_8009AECC
/* 805F48EC  7C 7B 1B 78 */	mr r27, r3
/* 805F48F0  7C 9C 23 78 */	mr r28, r4
/* 805F48F4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F48F8  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F48FC  38 63 00 08 */	addi r3, r3, 8
/* 805F4900  4B FF B2 61 */	bl mTG_get_table_idx
/* 805F4904  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F4908  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805F490C  3F C4 00 02 */	addis r30, r4, 2
/* 805F4910  80 1E 60 A8 */	lwz r0, 0x60a8(r30)
/* 805F4914  28 00 00 00 */	cmplwi r0, 0
/* 805F4918  41 82 00 74 */	beq lbl_805F498C
/* 805F491C  54 63 08 3C */	slwi r3, r3, 1
/* 805F4920  83 FE 61 3C */	lwz r31, 0x613c(r30)
/* 805F4924  3B A3 00 68 */	addi r29, r3, 0x68
/* 805F4928  4B DF 26 99 */	bl mRmTp_CheckFloorIsMyOriginalInThisScene
/* 805F492C  2C 03 00 00 */	cmpwi r3, 0
/* 805F4930  41 82 00 24 */	beq lbl_805F4954
/* 805F4934  80 9E 60 A8 */	lwz r4, 0x60a8(r30)
/* 805F4938  7C 7F EA 2E */	lhzx r3, r31, r29
/* 805F493C  81 84 00 08 */	lwz r12, 8(r4)
/* 805F4940  7D 89 03 A6 */	mtctr r12
/* 805F4944  4E 80 04 21 */	bctrl 
/* 805F4948  38 00 00 00 */	li r0, 0
/* 805F494C  7C 1F EB 2E */	sthx r0, r31, r29
/* 805F4950  48 00 00 1C */	b lbl_805F496C
lbl_805F4954:
/* 805F4954  80 9E 60 A8 */	lwz r4, 0x60a8(r30)
/* 805F4958  7C 7F EA 2E */	lhzx r3, r31, r29
/* 805F495C  81 84 00 08 */	lwz r12, 8(r4)
/* 805F4960  7D 89 03 A6 */	mtctr r12
/* 805F4964  4E 80 04 21 */	bctrl 
/* 805F4968  7C 7F EB 2E */	sthx r3, r31, r29
lbl_805F496C:
/* 805F496C  7F 63 DB 78 */	mr r3, r27
/* 805F4970  38 80 00 00 */	li r4, 0
/* 805F4974  38 A0 00 00 */	li r5, 0
/* 805F4978  4B FF AE 3D */	bl mTG_return_tag_init
/* 805F497C  7F 63 DB 78 */	mr r3, r27
/* 805F4980  7F 84 E3 78 */	mr r4, r28
/* 805F4984  38 A0 00 00 */	li r5, 0
/* 805F4988  4B FF E6 8D */	bl mTG_close_window
lbl_805F498C:
/* 805F498C  39 61 00 20 */	addi r11, r1, 0x20
/* 805F4990  4B AA 65 89 */	bl func_8009AF18
/* 805F4994  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F4998  7C 08 03 A6 */	mtlr r0
/* 805F499C  38 21 00 20 */	addi r1, r1, 0x20
/* 805F49A0  4E 80 00 20 */	blr 
