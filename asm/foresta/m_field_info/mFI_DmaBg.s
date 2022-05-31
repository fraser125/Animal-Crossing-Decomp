lbl_803A5F9C:
/* 803A5F9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A5FA0  7C 08 02 A6 */	mflr r0
/* 803A5FA4  3C 60 81 16 */	lis r3, data_81167BC0@ha /* 0x81167BC0@ha */
/* 803A5FA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A5FAC  38 00 00 04 */	li r0, 4
/* 803A5FB0  38 63 7B C0 */	addi r3, r3, data_81167BC0@l /* 0x81167BC0@l */
/* 803A5FB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A5FB8  7C 7F 1B 78 */	mr r31, r3
/* 803A5FBC  7C 09 03 A6 */	mtctr r0
lbl_803A5FC0:
/* 803A5FC0  80 1F 00 00 */	lwz r0, 0(r31)
/* 803A5FC4  2C 00 00 01 */	cmpwi r0, 1
/* 803A5FC8  40 82 00 40 */	bne lbl_803A6008
/* 803A5FCC  7F E3 FB 78 */	mr r3, r31
/* 803A5FD0  4B FF FF A9 */	bl mFI_DmaBg_sub
/* 803A5FD4  48 00 1E 9D */	bl mFI_BornItemON
/* 803A5FD8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803A5FDC  80 7F 00 04 */	lwz r3, 4(r31)
/* 803A5FE0  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803A5FE4  38 00 00 00 */	li r0, 0
/* 803A5FE8  3C C5 00 03 */	addis r6, r5, 3
/* 803A5FEC  38 80 00 01 */	li r4, 1
/* 803A5FF0  88 A6 85 90 */	lbz r5, -0x7a70(r6)
/* 803A5FF4  7C 83 18 30 */	slw r3, r4, r3
/* 803A5FF8  7C A3 1B 78 */	or r3, r5, r3
/* 803A5FFC  98 66 85 90 */	stb r3, -0x7a70(r6)
/* 803A6000  90 1F 00 00 */	stw r0, 0(r31)
/* 803A6004  48 00 00 0C */	b lbl_803A6010
lbl_803A6008:
/* 803A6008  3B FF 00 10 */	addi r31, r31, 0x10
/* 803A600C  42 00 FF B4 */	bdnz lbl_803A5FC0
lbl_803A6010:
/* 803A6010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A6014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A6018  7C 08 03 A6 */	mtlr r0
/* 803A601C  38 21 00 10 */	addi r1, r1, 0x10
/* 803A6020  4E 80 00 20 */	blr 
