lbl_804B4AE4:
/* 804B4AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804B4AE8  7C 08 02 A6 */	mflr r0
/* 804B4AEC  54 63 20 36 */	slwi r3, r3, 4
/* 804B4AF0  54 84 20 36 */	slwi r4, r4, 4
/* 804B4AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B4AF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804B4AFC  7C BF 2B 78 */	mr r31, r5
/* 804B4B00  4B EF 27 81 */	bl mFI_UtNum2UtFG
/* 804B4B04  3C 80 80 69 */	lis r4, tree_cut_tbl@ha /* 0x80692950@ha */
/* 804B4B08  7F EA FB 78 */	mr r10, r31
/* 804B4B0C  38 A4 29 50 */	addi r5, r4, tree_cut_tbl@l /* 0x80692950@l */
/* 804B4B10  38 C0 00 00 */	li r6, 0
lbl_804B4B14:
/* 804B4B14  38 E0 00 00 */	li r7, 0
lbl_804B4B18:
/* 804B4B18  38 00 00 53 */	li r0, 0x53
/* 804B4B1C  7C A9 2B 78 */	mr r9, r5
/* 804B4B20  39 00 00 00 */	li r8, 0
/* 804B4B24  7C 09 03 A6 */	mtctr r0
lbl_804B4B28:
/* 804B4B28  A0 83 00 00 */	lhz r4, 0(r3)
/* 804B4B2C  A0 09 00 00 */	lhz r0, 0(r9)
/* 804B4B30  7C 04 00 40 */	cmplw r4, r0
/* 804B4B34  40 82 00 10 */	bne lbl_804B4B44
/* 804B4B38  A8 09 00 02 */	lha r0, 2(r9)
/* 804B4B3C  98 0A 00 00 */	stb r0, 0(r10)
/* 804B4B40  48 00 00 10 */	b lbl_804B4B50
lbl_804B4B44:
/* 804B4B44  39 08 00 01 */	addi r8, r8, 1
/* 804B4B48  39 29 00 04 */	addi r9, r9, 4
/* 804B4B4C  42 00 FF DC */	bdnz lbl_804B4B28
lbl_804B4B50:
/* 804B4B50  2C 08 00 53 */	cmpwi r8, 0x53
/* 804B4B54  40 82 00 0C */	bne lbl_804B4B60
/* 804B4B58  38 00 00 FF */	li r0, 0xff
/* 804B4B5C  98 0A 00 00 */	stb r0, 0(r10)
lbl_804B4B60:
/* 804B4B60  38 E7 00 01 */	addi r7, r7, 1
/* 804B4B64  39 4A 00 01 */	addi r10, r10, 1
/* 804B4B68  2C 07 00 10 */	cmpwi r7, 0x10
/* 804B4B6C  38 63 00 02 */	addi r3, r3, 2
/* 804B4B70  41 80 FF A8 */	blt lbl_804B4B18
/* 804B4B74  38 C6 00 01 */	addi r6, r6, 1
/* 804B4B78  2C 06 00 10 */	cmpwi r6, 0x10
/* 804B4B7C  41 80 FF 98 */	blt lbl_804B4B14
/* 804B4B80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804B4B84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804B4B88  7C 08 03 A6 */	mtlr r0
/* 804B4B8C  38 21 00 10 */	addi r1, r1, 0x10
/* 804B4B90  4E 80 00 20 */	blr 
