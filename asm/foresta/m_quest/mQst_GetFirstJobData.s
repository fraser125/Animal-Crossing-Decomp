lbl_803E3B68:
/* 803E3B68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E3B6C  7C 08 02 A6 */	mflr r0
/* 803E3B70  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E3B74  39 61 00 20 */	addi r11, r1, 0x20
/* 803E3B78  4B CB 73 5D */	bl func_8009AED4
/* 803E3B7C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E3B80  38 00 00 05 */	li r0, 5
/* 803E3B84  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E3B88  3B A0 00 00 */	li r29, 0
/* 803E3B8C  3C 63 00 02 */	addis r3, r3, 2
/* 803E3B90  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803E3B94  3B E3 02 EC */	addi r31, r3, 0x2ec
/* 803E3B98  7F E3 FB 78 */	mr r3, r31
/* 803E3B9C  7C 09 03 A6 */	mtctr r0
lbl_803E3BA0:
/* 803E3BA0  88 03 00 00 */	lbz r0, 0(r3)
/* 803E3BA4  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 803E3BA8  28 00 00 01 */	cmplwi r0, 1
/* 803E3BAC  40 82 00 24 */	bne lbl_803E3BD0
/* 803E3BB0  88 03 00 2A */	lbz r0, 0x2a(r3)
/* 803E3BB4  54 00 E8 06 */	rlwinm r0, r0, 0x1d, 0, 3
/* 803E3BB8  7C 00 EE 70 */	srawi r0, r0, 0x1d
/* 803E3BBC  7C 00 07 74 */	extsb r0, r0
/* 803E3BC0  2C 00 00 02 */	cmpwi r0, 2
/* 803E3BC4  40 82 00 0C */	bne lbl_803E3BD0
/* 803E3BC8  7C 7D 1B 78 */	mr r29, r3
/* 803E3BCC  48 00 00 0C */	b lbl_803E3BD8
lbl_803E3BD0:
/* 803E3BD0  38 63 00 58 */	addi r3, r3, 0x58
/* 803E3BD4  42 00 FF CC */	bdnz lbl_803E3BA0
lbl_803E3BD8:
/* 803E3BD8  28 1D 00 00 */	cmplwi r29, 0
/* 803E3BDC  40 82 00 30 */	bne lbl_803E3C0C
/* 803E3BE0  3B C0 00 00 */	li r30, 0
lbl_803E3BE4:
/* 803E3BE4  7F E3 FB 78 */	mr r3, r31
/* 803E3BE8  4B FF EF E9 */	bl mQst_CheckFreeQuest
/* 803E3BEC  2C 03 00 01 */	cmpwi r3, 1
/* 803E3BF0  40 82 00 0C */	bne lbl_803E3BFC
/* 803E3BF4  7F FD FB 78 */	mr r29, r31
/* 803E3BF8  48 00 00 14 */	b lbl_803E3C0C
lbl_803E3BFC:
/* 803E3BFC  3B DE 00 01 */	addi r30, r30, 1
/* 803E3C00  3B FF 00 58 */	addi r31, r31, 0x58
/* 803E3C04  2C 1E 00 05 */	cmpwi r30, 5
/* 803E3C08  41 80 FF DC */	blt lbl_803E3BE4
lbl_803E3C0C:
/* 803E3C0C  7F A3 EB 78 */	mr r3, r29
/* 803E3C10  39 61 00 20 */	addi r11, r1, 0x20
/* 803E3C14  4B CB 73 0D */	bl func_8009AF20
/* 803E3C18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E3C1C  7C 08 03 A6 */	mtlr r0
/* 803E3C20  38 21 00 20 */	addi r1, r1, 0x20
/* 803E3C24  4E 80 00 20 */	blr 
