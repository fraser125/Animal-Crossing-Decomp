lbl_80564ADC:
/* 80564ADC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80564AE0  7C 08 02 A6 */	mflr r0
/* 80564AE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80564AE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80564AEC  4B B3 63 E9 */	bl func_8009AED4
/* 80564AF0  38 00 08 00 */	li r0, 0x800
/* 80564AF4  3C A0 80 6C */	lis r5, proc@ha /* 0x806BDFAC@ha */
/* 80564AF8  B0 03 09 26 */	sth r0, 0x926(r3)
/* 80564AFC  38 A5 DF AC */	addi r5, r5, proc@l /* 0x806BDFAC@l */
/* 80564B00  7C 7F 1B 78 */	mr r31, r3
/* 80564B04  7C 9E 23 78 */	mr r30, r4
/* 80564B08  88 03 09 B2 */	lbz r0, 0x9b2(r3)
/* 80564B0C  3B A0 00 00 */	li r29, 0
/* 80564B10  54 00 10 3A */	slwi r0, r0, 2
/* 80564B14  7D 85 00 2E */	lwzx r12, r5, r0
/* 80564B18  7D 89 03 A6 */	mtctr r12
/* 80564B1C  4E 80 04 21 */	bctrl 
/* 80564B20  7F E4 FB 78 */	mr r4, r31
/* 80564B24  38 60 00 08 */	li r3, 8
/* 80564B28  4B E3 57 3D */	bl mDemo_Check
/* 80564B2C  2C 03 00 00 */	cmpwi r3, 0
/* 80564B30  40 82 00 6C */	bne lbl_80564B9C
/* 80564B34  7F E4 FB 78 */	mr r4, r31
/* 80564B38  38 60 00 07 */	li r3, 7
/* 80564B3C  4B E3 57 29 */	bl mDemo_Check
/* 80564B40  2C 03 00 00 */	cmpwi r3, 0
/* 80564B44  40 82 00 58 */	bne lbl_80564B9C
/* 80564B48  88 BF 09 B0 */	lbz r5, 0x9b0(r31)
/* 80564B4C  7F E3 FB 78 */	mr r3, r31
/* 80564B50  7F C4 F3 78 */	mr r4, r30
/* 80564B54  48 00 14 99 */	bl aNNW_setup_think_proc
/* 80564B58  38 00 00 00 */	li r0, 0
/* 80564B5C  3B A0 00 01 */	li r29, 1
/* 80564B60  98 1F 09 73 */	stb r0, 0x973(r31)
/* 80564B64  98 1F 09 B6 */	stb r0, 0x9b6(r31)
/* 80564B68  98 1F 09 B7 */	stb r0, 0x9b7(r31)
/* 80564B6C  88 1F 09 AF */	lbz r0, 0x9af(r31)
/* 80564B70  28 00 00 02 */	cmplwi r0, 2
/* 80564B74  40 82 00 28 */	bne lbl_80564B9C
/* 80564B78  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80564B7C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80564B80  3C 63 00 02 */	addis r3, r3, 2
/* 80564B84  80 63 60 34 */	lwz r3, 0x6034(r3)
/* 80564B88  28 03 00 00 */	cmplwi r3, 0
/* 80564B8C  41 82 00 10 */	beq lbl_80564B9C
/* 80564B90  81 83 00 08 */	lwz r12, 8(r3)
/* 80564B94  7D 89 03 A6 */	mtctr r12
/* 80564B98  4E 80 04 21 */	bctrl 
lbl_80564B9C:
/* 80564B9C  7F A3 EB 78 */	mr r3, r29
/* 80564BA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80564BA4  4B B3 63 7D */	bl func_8009AF20
/* 80564BA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80564BAC  7C 08 03 A6 */	mtlr r0
/* 80564BB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80564BB4  4E 80 00 20 */	blr 
