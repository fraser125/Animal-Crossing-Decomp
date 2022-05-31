lbl_805E98A4:
/* 805E98A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E98A8  7C 08 02 A6 */	mflr r0
/* 805E98AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E98B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E98B4  93 C1 00 08 */	stw r30, 8(r1)
/* 805E98B8  7C 7E 1B 78 */	mr r30, r3
/* 805E98BC  4B FF FF 65 */	bl mNW_get_image_no
/* 805E98C0  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805E98C4  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 805E98C8  7F C3 F3 78 */	mr r3, r30
/* 805E98CC  83 C4 09 D8 */	lwz r30, 0x9d8(r4)
/* 805E98D0  4B FF FD B1 */	bl func_805E9680
/* 805E98D4  2C 03 00 00 */	cmpwi r3, 0
/* 805E98D8  41 82 00 18 */	beq lbl_805E98F0
/* 805E98DC  1C 1F 02 20 */	mulli r0, r31, 0x220
/* 805E98E0  7C 7E 02 14 */	add r3, r30, r0
/* 805E98E4  88 63 00 30 */	lbz r3, 0x30(r3)
/* 805E98E8  4B DE 02 D5 */	bl mNW_PaletteIdx2Palette
/* 805E98EC  48 00 00 28 */	b lbl_805E9914
lbl_805E98F0:
/* 805E98F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805E98F4  57 E0 07 7E */	clrlwi r0, r31, 0x1d
/* 805E98F8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805E98FC  3C 63 00 02 */	addis r3, r3, 2
/* 805E9900  1C 00 02 20 */	mulli r0, r0, 0x220
/* 805E9904  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805E9908  7C 63 02 14 */	add r3, r3, r0
/* 805E990C  88 63 12 50 */	lbz r3, 0x1250(r3)
/* 805E9910  4B DE 02 AD */	bl mNW_PaletteIdx2Palette
lbl_805E9914:
/* 805E9914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E9918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E991C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E9920  7C 08 03 A6 */	mtlr r0
/* 805E9924  38 21 00 10 */	addi r1, r1, 0x10
/* 805E9928  4E 80 00 20 */	blr 
