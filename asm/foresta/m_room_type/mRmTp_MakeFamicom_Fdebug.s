lbl_803E68D4:
/* 803E68D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E68D8  7C 08 02 A6 */	mflr r0
/* 803E68DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E68E0  39 61 00 30 */	addi r11, r1, 0x30
/* 803E68E4  4B CB 45 F1 */	bl func_8009AED4
/* 803E68E8  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803E68EC  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803E68F0  80 63 00 00 */	lwz r3, 0(r3)
/* 803E68F4  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 803E68F8  7C 7D 1B 78 */	mr r29, r3
/* 803E68FC  54 00 04 A4 */	rlwinm r0, r0, 0, 0x12, 0x12
/* 803E6900  2C 00 20 00 */	cmpwi r0, 0x2000
/* 803E6904  40 82 00 A0 */	bne lbl_803E69A4
/* 803E6908  28 03 00 00 */	cmplwi r3, 0
/* 803E690C  41 82 00 98 */	beq lbl_803E69A4
/* 803E6910  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E6914  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E6918  3F C3 00 02 */	addis r30, r3, 2
/* 803E691C  80 9E 60 8C */	lwz r4, 0x608c(r30)
/* 803E6920  28 04 00 00 */	cmplwi r4, 0
/* 803E6924  41 82 00 80 */	beq lbl_803E69A4
/* 803E6928  3C 60 81 17 */	lis r3, mRmTp_famicom_idx@ha /* 0x81171438@ha */
/* 803E692C  3B E0 03 EF */	li r31, 0x3ef
/* 803E6930  38 63 14 38 */	addi r3, r3, mRmTp_famicom_idx@l /* 0x81171438@l */
/* 803E6934  80 63 00 00 */	lwz r3, 0(r3)
/* 803E6938  2C 03 00 14 */	cmpwi r3, 0x14
/* 803E693C  41 82 00 0C */	beq lbl_803E6948
/* 803E6940  38 03 03 6A */	addi r0, r3, 0x36a
/* 803E6944  54 1F 04 3E */	clrlwi r31, r0, 0x10
lbl_803E6948:
/* 803E6948  81 84 00 04 */	lwz r12, 4(r4)
/* 803E694C  7F A3 EB 78 */	mr r3, r29
/* 803E6950  7F E4 FB 78 */	mr r4, r31
/* 803E6954  38 A1 00 18 */	addi r5, r1, 0x18
/* 803E6958  38 C1 00 14 */	addi r6, r1, 0x14
/* 803E695C  38 E1 00 08 */	addi r7, r1, 8
/* 803E6960  39 01 00 10 */	addi r8, r1, 0x10
/* 803E6964  39 21 00 0C */	addi r9, r1, 0xc
/* 803E6968  7D 89 03 A6 */	mtctr r12
/* 803E696C  4E 80 04 21 */	bctrl 
/* 803E6970  7C 65 1B 79 */	or. r5, r3, r3
/* 803E6974  41 80 00 30 */	blt lbl_803E69A4
/* 803E6978  80 DE 60 8C */	lwz r6, 0x608c(r30)
/* 803E697C  7F A3 EB 78 */	mr r3, r29
/* 803E6980  7F E4 FB 78 */	mr r4, r31
/* 803E6984  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 803E6988  81 86 00 28 */	lwz r12, 0x28(r6)
/* 803E698C  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 803E6990  A1 01 00 08 */	lhz r8, 8(r1)
/* 803E6994  81 21 00 10 */	lwz r9, 0x10(r1)
/* 803E6998  81 41 00 0C */	lwz r10, 0xc(r1)
/* 803E699C  7D 89 03 A6 */	mtctr r12
/* 803E69A0  4E 80 04 21 */	bctrl 
lbl_803E69A4:
/* 803E69A4  39 61 00 30 */	addi r11, r1, 0x30
/* 803E69A8  4B CB 45 79 */	bl func_8009AF20
/* 803E69AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E69B0  7C 08 03 A6 */	mtlr r0
/* 803E69B4  38 21 00 30 */	addi r1, r1, 0x30
/* 803E69B8  4E 80 00 20 */	blr 
