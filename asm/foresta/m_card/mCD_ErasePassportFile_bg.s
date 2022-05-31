lbl_803FEDB8:
/* 803FEDB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FEDBC  7C 08 02 A6 */	mflr r0
/* 803FEDC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FEDC4  39 61 00 20 */	addi r11, r1, 0x20
/* 803FEDC8  4B C9 C1 0D */	bl func_8009AED4
/* 803FEDCC  3C 80 81 19 */	lis r4, l_memMgr@ha /* 0x81197638@ha */
/* 803FEDD0  3B A0 00 00 */	li r29, 0
/* 803FEDD4  38 C4 76 38 */	addi r6, r4, l_memMgr@l /* 0x81197638@l */
/* 803FEDD8  80 86 01 88 */	lwz r4, 0x188(r6)
/* 803FEDDC  3B C6 00 14 */	addi r30, r6, 0x14
/* 803FEDE0  80 06 01 8C */	lwz r0, 0x18c(r6)
/* 803FEDE4  7C DF 33 78 */	mr r31, r6
/* 803FEDE8  38 84 00 01 */	addi r4, r4, 1
/* 803FEDEC  80 A6 00 14 */	lwz r5, 0x14(r6)
/* 803FEDF0  2C 00 00 00 */	cmpwi r0, 0
/* 803FEDF4  90 86 01 88 */	stw r4, 0x188(r6)
/* 803FEDF8  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 803FEDFC  90 66 00 00 */	stw r3, 0(r6)
/* 803FEE00  40 82 00 B4 */	bne lbl_803FEEB4
/* 803FEE04  28 00 00 04 */	cmplwi r0, 4
/* 803FEE08  40 80 00 9C */	bge lbl_803FEEA4
/* 803FEE0C  3C 60 80 66 */	lis r3, erase_proc_3400@ha /* 0x8065E978@ha */
/* 803FEE10  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 803FEE14  38 83 E9 78 */	addi r4, r3, erase_proc_3400@l /* 0x8065E978@l */
/* 803FEE18  7C C3 33 78 */	mr r3, r6
/* 803FEE1C  7D 84 00 2E */	lwzx r12, r4, r0
/* 803FEE20  7F C4 F3 78 */	mr r4, r30
/* 803FEE24  7D 89 03 A6 */	mtctr r12
/* 803FEE28  4E 80 04 21 */	bctrl 
/* 803FEE2C  2C 03 00 01 */	cmpwi r3, 1
/* 803FEE30  40 82 00 18 */	bne lbl_803FEE48
/* 803FEE34  80 1E 00 00 */	lwz r0, 0(r30)
/* 803FEE38  2C 00 00 04 */	cmpwi r0, 4
/* 803FEE3C  40 82 00 18 */	bne lbl_803FEE54
/* 803FEE40  3B A0 00 01 */	li r29, 1
/* 803FEE44  48 00 00 10 */	b lbl_803FEE54
lbl_803FEE48:
/* 803FEE48  2C 03 00 00 */	cmpwi r3, 0
/* 803FEE4C  41 82 00 08 */	beq lbl_803FEE54
/* 803FEE50  3B A0 FF FF */	li r29, -1
lbl_803FEE54:
/* 803FEE54  2C 03 FF FF */	cmpwi r3, -1
/* 803FEE58  41 82 00 18 */	beq lbl_803FEE70
/* 803FEE5C  2C 03 00 01 */	cmpwi r3, 1
/* 803FEE60  40 82 00 70 */	bne lbl_803FEED0
/* 803FEE64  80 1E 00 00 */	lwz r0, 0(r30)
/* 803FEE68  2C 00 00 04 */	cmpwi r0, 4
/* 803FEE6C  40 82 00 64 */	bne lbl_803FEED0
lbl_803FEE70:
/* 803FEE70  80 1F 01 88 */	lwz r0, 0x188(r31)
/* 803FEE74  2C 00 00 AA */	cmpwi r0, 0xaa
/* 803FEE78  41 80 00 18 */	blt lbl_803FEE90
/* 803FEE7C  38 60 00 53 */	li r3, 0x53
/* 803FEE80  48 22 F0 A5 */	bl sAdo_SysLevStop
/* 803FEE84  7F E3 FB 78 */	mr r3, r31
/* 803FEE88  4B FF B6 45 */	bl mCD_ClearMemMgr_com2
/* 803FEE8C  48 00 00 44 */	b lbl_803FEED0
lbl_803FEE90:
/* 803FEE90  38 00 00 01 */	li r0, 1
/* 803FEE94  93 BF 01 90 */	stw r29, 0x190(r31)
/* 803FEE98  3B A0 00 00 */	li r29, 0
/* 803FEE9C  90 1F 01 8C */	stw r0, 0x18c(r31)
/* 803FEEA0  48 00 00 30 */	b lbl_803FEED0
lbl_803FEEA4:
/* 803FEEA4  7C C3 33 78 */	mr r3, r6
/* 803FEEA8  3B A0 FF FF */	li r29, -1
/* 803FEEAC  4B FF B6 21 */	bl mCD_ClearMemMgr_com2
/* 803FEEB0  48 00 00 20 */	b lbl_803FEED0
lbl_803FEEB4:
/* 803FEEB4  2C 04 00 AA */	cmpwi r4, 0xaa
/* 803FEEB8  41 80 00 18 */	blt lbl_803FEED0
/* 803FEEBC  83 A6 01 90 */	lwz r29, 0x190(r6)
/* 803FEEC0  7C C3 33 78 */	mr r3, r6
/* 803FEEC4  4B FF B6 09 */	bl mCD_ClearMemMgr_com2
/* 803FEEC8  38 60 00 53 */	li r3, 0x53
/* 803FEECC  48 22 F0 59 */	bl sAdo_SysLevStop
lbl_803FEED0:
/* 803FEED0  7F A3 EB 78 */	mr r3, r29
/* 803FEED4  39 61 00 20 */	addi r11, r1, 0x20
/* 803FEED8  4B C9 C0 49 */	bl func_8009AF20
/* 803FEEDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FEEE0  7C 08 03 A6 */	mtlr r0
/* 803FEEE4  38 21 00 20 */	addi r1, r1, 0x20
/* 803FEEE8  4E 80 00 20 */	blr 
