lbl_805F46F8:
/* 805F46F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F46FC  7C 08 02 A6 */	mflr r0
/* 805F4700  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F4704  39 61 00 30 */	addi r11, r1, 0x30
/* 805F4708  4B AA 67 BD */	bl func_8009AEC4
/* 805F470C  7C 7C 1B 78 */	mr r28, r3
/* 805F4710  7C 9D 23 78 */	mr r29, r4
/* 805F4714  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F4718  83 63 09 7C */	lwz r27, 0x97c(r3)
/* 805F471C  83 E3 09 88 */	lwz r31, 0x988(r3)
/* 805F4720  38 7B 00 08 */	addi r3, r27, 8
/* 805F4724  4B FF B4 3D */	bl mTG_get_table_idx
/* 805F4728  80 1B 02 64 */	lwz r0, 0x264(r27)
/* 805F472C  7C 7A 1B 78 */	mr r26, r3
/* 805F4730  3B C0 00 01 */	li r30, 1
/* 805F4734  3B 20 00 00 */	li r25, 0
/* 805F4738  2C 00 00 01 */	cmpwi r0, 1
/* 805F473C  40 82 00 08 */	bne lbl_805F4744
/* 805F4740  3B 20 00 01 */	li r25, 1
lbl_805F4744:
/* 805F4744  4B DF 28 7D */	bl mRmTp_CheckFloorIsMyOriginalInThisScene
/* 805F4748  2C 03 00 00 */	cmpwi r3, 0
/* 805F474C  41 82 00 7C */	beq lbl_805F47C8
/* 805F4750  2C 19 00 00 */	cmpwi r25, 0
/* 805F4754  41 82 00 3C */	beq lbl_805F4790
/* 805F4758  7F 83 E3 78 */	mr r3, r28
/* 805F475C  7F 44 D3 78 */	mr r4, r26
/* 805F4760  4B FF 50 C1 */	bl mNW_get_image_no
/* 805F4764  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F4768  54 65 07 7E */	clrlwi r5, r3, 0x1d
/* 805F476C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805F4770  3C 83 00 02 */	addis r4, r3, 2
/* 805F4774  38 65 00 57 */	addi r3, r5, 0x57
/* 805F4778  80 A4 60 A8 */	lwz r5, 0x60a8(r4)
/* 805F477C  38 80 00 01 */	li r4, 1
/* 805F4780  81 85 00 18 */	lwz r12, 0x18(r5)
/* 805F4784  7D 89 03 A6 */	mtctr r12
/* 805F4788  4E 80 04 21 */	bctrl 
/* 805F478C  48 00 00 FC */	b lbl_805F4888
lbl_805F4790:
/* 805F4790  7F 83 E3 78 */	mr r3, r28
/* 805F4794  7F 44 D3 78 */	mr r4, r26
/* 805F4798  4B FF 50 89 */	bl mNW_get_image_no
/* 805F479C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F47A0  54 65 07 7E */	clrlwi r5, r3, 0x1d
/* 805F47A4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805F47A8  3C 83 00 02 */	addis r4, r3, 2
/* 805F47AC  38 65 00 57 */	addi r3, r5, 0x57
/* 805F47B0  80 A4 60 A8 */	lwz r5, 0x60a8(r4)
/* 805F47B4  38 80 00 00 */	li r4, 0
/* 805F47B8  81 85 00 18 */	lwz r12, 0x18(r5)
/* 805F47BC  7D 89 03 A6 */	mtctr r12
/* 805F47C0  4E 80 04 21 */	bctrl 
/* 805F47C4  48 00 00 C4 */	b lbl_805F4888
lbl_805F47C8:
/* 805F47C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F47CC  38 80 00 00 */	li r4, 0
/* 805F47D0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F47D4  3F 63 00 02 */	addis r27, r3, 2
/* 805F47D8  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 805F47DC  4B DE BF 4D */	bl mPr_GetPossessionItemIdx
/* 805F47E0  2C 03 00 00 */	cmpwi r3, 0
/* 805F47E4  41 80 00 90 */	blt lbl_805F4874
/* 805F47E8  2C 19 00 00 */	cmpwi r25, 0
/* 805F47EC  54 63 08 3C */	slwi r3, r3, 1
/* 805F47F0  83 7B 61 3C */	lwz r27, 0x613c(r27)
/* 805F47F4  3B 23 00 68 */	addi r25, r3, 0x68
/* 805F47F8  41 82 00 40 */	beq lbl_805F4838
/* 805F47FC  7F 83 E3 78 */	mr r3, r28
/* 805F4800  7F 44 D3 78 */	mr r4, r26
/* 805F4804  4B FF 50 1D */	bl mNW_get_image_no
/* 805F4808  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F480C  54 65 07 7E */	clrlwi r5, r3, 0x1d
/* 805F4810  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805F4814  3C 83 00 02 */	addis r4, r3, 2
/* 805F4818  38 65 00 57 */	addi r3, r5, 0x57
/* 805F481C  80 A4 60 A8 */	lwz r5, 0x60a8(r4)
/* 805F4820  38 80 00 01 */	li r4, 1
/* 805F4824  81 85 00 18 */	lwz r12, 0x18(r5)
/* 805F4828  7D 89 03 A6 */	mtctr r12
/* 805F482C  4E 80 04 21 */	bctrl 
/* 805F4830  7C 7B CB 2E */	sthx r3, r27, r25
/* 805F4834  48 00 00 54 */	b lbl_805F4888
lbl_805F4838:
/* 805F4838  7F 83 E3 78 */	mr r3, r28
/* 805F483C  7F 44 D3 78 */	mr r4, r26
/* 805F4840  4B FF 4F E1 */	bl mNW_get_image_no
/* 805F4844  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F4848  54 65 07 7E */	clrlwi r5, r3, 0x1d
/* 805F484C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805F4850  3C 83 00 02 */	addis r4, r3, 2
/* 805F4854  38 65 00 57 */	addi r3, r5, 0x57
/* 805F4858  80 A4 60 A8 */	lwz r5, 0x60a8(r4)
/* 805F485C  38 80 00 00 */	li r4, 0
/* 805F4860  81 85 00 18 */	lwz r12, 0x18(r5)
/* 805F4864  7D 89 03 A6 */	mtctr r12
/* 805F4868  4E 80 04 21 */	bctrl 
/* 805F486C  7C 7B CB 2E */	sthx r3, r27, r25
/* 805F4870  48 00 00 18 */	b lbl_805F4888
lbl_805F4874:
/* 805F4874  7F 83 E3 78 */	mr r3, r28
/* 805F4878  7F A4 EB 78 */	mr r4, r29
/* 805F487C  38 A0 00 12 */	li r5, 0x12
/* 805F4880  4B FF E5 A1 */	bl mTG_open_warning_window
/* 805F4884  3B C0 00 00 */	li r30, 0
lbl_805F4888:
/* 805F4888  2C 1E 00 00 */	cmpwi r30, 0
/* 805F488C  41 82 00 34 */	beq lbl_805F48C0
/* 805F4890  28 1F 00 00 */	cmplwi r31, 0
/* 805F4894  41 82 00 0C */	beq lbl_805F48A0
/* 805F4898  38 00 00 01 */	li r0, 1
/* 805F489C  98 1F 05 EA */	stb r0, 0x5ea(r31)
lbl_805F48A0:
/* 805F48A0  7F 83 E3 78 */	mr r3, r28
/* 805F48A4  38 80 00 00 */	li r4, 0
/* 805F48A8  38 A0 00 00 */	li r5, 0
/* 805F48AC  4B FF AF 09 */	bl mTG_return_tag_init
/* 805F48B0  7F 83 E3 78 */	mr r3, r28
/* 805F48B4  7F A4 EB 78 */	mr r4, r29
/* 805F48B8  38 A0 00 00 */	li r5, 0
/* 805F48BC  4B FF E7 59 */	bl mTG_close_window
lbl_805F48C0:
/* 805F48C0  39 61 00 30 */	addi r11, r1, 0x30
/* 805F48C4  4B AA 66 4D */	bl func_8009AF10
/* 805F48C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F48CC  7C 08 03 A6 */	mtlr r0
/* 805F48D0  38 21 00 30 */	addi r1, r1, 0x30
/* 805F48D4  4E 80 00 20 */	blr 
