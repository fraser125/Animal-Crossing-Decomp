lbl_8051FC48:
/* 8051FC48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051FC4C  7C 08 02 A6 */	mflr r0
/* 8051FC50  38 80 00 09 */	li r4, 9
/* 8051FC54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051FC58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051FC5C  7C 7F 1B 78 */	mr r31, r3
/* 8051FC60  38 60 00 04 */	li r3, 4
/* 8051FC64  93 C1 00 08 */	stw r30, 8(r1)
/* 8051FC68  4B E7 88 15 */	bl mDemo_Get_OrderValue
/* 8051FC6C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051FC70  54 7E 04 3E */	clrlwi r30, r3, 0x10
/* 8051FC74  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8051FC78  3C 63 00 02 */	addis r3, r3, 2
/* 8051FC7C  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8051FC80  4B E9 39 39 */	bl mHS_get_arrange_idx
/* 8051FC84  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 8051FC88  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051FC8C  2C 1E 00 01 */	cmpwi r30, 1
/* 8051FC90  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8051FC94  7C 60 22 14 */	add r3, r0, r4
/* 8051FC98  3F C3 00 01 */	addis r30, r3, 1
/* 8051FC9C  3B DE 9C E8 */	addi r30, r30, -25368
/* 8051FCA0  40 82 00 A0 */	bne lbl_8051FD40
/* 8051FCA4  4B E9 FA 05 */	bl func_803BF6A8
/* 8051FCA8  4B EA 0F F1 */	bl mMsg_Check_MainNormalContinue
/* 8051FCAC  2C 03 00 00 */	cmpwi r3, 0
/* 8051FCB0  41 82 00 90 */	beq lbl_8051FD40
/* 8051FCB4  38 60 00 04 */	li r3, 4
/* 8051FCB8  38 80 00 09 */	li r4, 9
/* 8051FCBC  38 A0 00 00 */	li r5, 0
/* 8051FCC0  4B E7 87 79 */	bl mDemo_Set_OrderValue
/* 8051FCC4  4B E6 38 7D */	bl func_80383540
/* 8051FCC8  4B E6 3E A5 */	bl mChoice_Get_ChoseNum
/* 8051FCCC  2C 03 00 03 */	cmpwi r3, 3
/* 8051FCD0  41 80 00 28 */	blt lbl_8051FCF8
/* 8051FCD4  88 7F 09 AB */	lbz r3, 0x9ab(r31)
/* 8051FCD8  38 03 00 03 */	addi r0, r3, 3
/* 8051FCDC  98 1F 09 AB */	stb r0, 0x9ab(r31)
/* 8051FCE0  88 1F 09 AB */	lbz r0, 0x9ab(r31)
/* 8051FCE4  28 00 00 0C */	cmplwi r0, 0xc
/* 8051FCE8  41 80 00 58 */	blt lbl_8051FD40
/* 8051FCEC  38 00 00 00 */	li r0, 0
/* 8051FCF0  98 1F 09 AB */	stb r0, 0x9ab(r31)
/* 8051FCF4  48 00 00 4C */	b lbl_8051FD40
lbl_8051FCF8:
/* 8051FCF8  88 9F 09 AB */	lbz r4, 0x9ab(r31)
/* 8051FCFC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8051FD00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051FD04  7C 04 02 14 */	add r0, r4, r0
/* 8051FD08  98 1F 09 AB */	stb r0, 0x9ab(r31)
/* 8051FD0C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051FD10  3C 63 00 02 */	addis r3, r3, 2
/* 8051FD14  88 1F 09 AB */	lbz r0, 0x9ab(r31)
/* 8051FD18  98 1E 00 2C */	stb r0, 0x2c(r30)
/* 8051FD1C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8051FD20  80 03 23 48 */	lwz r0, 0x2348(r3)
/* 8051FD24  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8051FD28  40 82 00 0C */	bne lbl_8051FD34
/* 8051FD2C  88 1F 09 AB */	lbz r0, 0x9ab(r31)
/* 8051FD30  98 1E 00 2E */	stb r0, 0x2e(r30)
lbl_8051FD34:
/* 8051FD34  7F E3 FB 78 */	mr r3, r31
/* 8051FD38  38 80 00 00 */	li r4, 0
/* 8051FD3C  48 00 00 B5 */	bl aEGH_change_talk_proc
lbl_8051FD40:
/* 8051FD40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051FD44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051FD48  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051FD4C  7C 08 03 A6 */	mtlr r0
/* 8051FD50  38 21 00 10 */	addi r1, r1, 0x10
/* 8051FD54  4E 80 00 20 */	blr 
