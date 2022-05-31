lbl_805F4B84:
/* 805F4B84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F4B88  7C 08 02 A6 */	mflr r0
/* 805F4B8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F4B90  39 61 00 20 */	addi r11, r1, 0x20
/* 805F4B94  4B AA 63 39 */	bl func_8009AECC
/* 805F4B98  7C 7B 1B 78 */	mr r27, r3
/* 805F4B9C  7C 9C 23 78 */	mr r28, r4
/* 805F4BA0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F4BA4  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F4BA8  38 63 00 08 */	addi r3, r3, 8
/* 805F4BAC  4B FF AF B5 */	bl mTG_get_table_idx
/* 805F4BB0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F4BB4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805F4BB8  3F C4 00 02 */	addis r30, r4, 2
/* 805F4BBC  80 1E 60 A8 */	lwz r0, 0x60a8(r30)
/* 805F4BC0  28 00 00 00 */	cmplwi r0, 0
/* 805F4BC4  41 82 00 74 */	beq lbl_805F4C38
/* 805F4BC8  54 63 08 3C */	slwi r3, r3, 1
/* 805F4BCC  83 FE 61 3C */	lwz r31, 0x613c(r30)
/* 805F4BD0  3B A3 00 68 */	addi r29, r3, 0x68
/* 805F4BD4  4B DF 23 4D */	bl mRmTp_CheckWallIsMyOriginalInThisScene
/* 805F4BD8  2C 03 00 00 */	cmpwi r3, 0
/* 805F4BDC  41 82 00 24 */	beq lbl_805F4C00
/* 805F4BE0  80 9E 60 A8 */	lwz r4, 0x60a8(r30)
/* 805F4BE4  7C 7F EA 2E */	lhzx r3, r31, r29
/* 805F4BE8  81 84 00 04 */	lwz r12, 4(r4)
/* 805F4BEC  7D 89 03 A6 */	mtctr r12
/* 805F4BF0  4E 80 04 21 */	bctrl 
/* 805F4BF4  38 00 00 00 */	li r0, 0
/* 805F4BF8  7C 1F EB 2E */	sthx r0, r31, r29
/* 805F4BFC  48 00 00 1C */	b lbl_805F4C18
lbl_805F4C00:
/* 805F4C00  80 9E 60 A8 */	lwz r4, 0x60a8(r30)
/* 805F4C04  7C 7F EA 2E */	lhzx r3, r31, r29
/* 805F4C08  81 84 00 04 */	lwz r12, 4(r4)
/* 805F4C0C  7D 89 03 A6 */	mtctr r12
/* 805F4C10  4E 80 04 21 */	bctrl 
/* 805F4C14  7C 7F EB 2E */	sthx r3, r31, r29
lbl_805F4C18:
/* 805F4C18  7F 63 DB 78 */	mr r3, r27
/* 805F4C1C  38 80 00 00 */	li r4, 0
/* 805F4C20  38 A0 00 00 */	li r5, 0
/* 805F4C24  4B FF AB 91 */	bl mTG_return_tag_init
/* 805F4C28  7F 63 DB 78 */	mr r3, r27
/* 805F4C2C  7F 84 E3 78 */	mr r4, r28
/* 805F4C30  38 A0 00 00 */	li r5, 0
/* 805F4C34  4B FF E3 E1 */	bl mTG_close_window
lbl_805F4C38:
/* 805F4C38  39 61 00 20 */	addi r11, r1, 0x20
/* 805F4C3C  4B AA 62 DD */	bl func_8009AF18
/* 805F4C40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F4C44  7C 08 03 A6 */	mtlr r0
/* 805F4C48  38 21 00 20 */	addi r1, r1, 0x20
/* 805F4C4C  4E 80 00 20 */	blr 
