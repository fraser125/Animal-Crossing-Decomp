lbl_803DBC90:
/* 803DBC90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DBC94  7C 08 02 A6 */	mflr r0
/* 803DBC98  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DBC9C  39 61 00 20 */	addi r11, r1, 0x20
/* 803DBCA0  4B CB F2 35 */	bl func_8009AED4
/* 803DBCA4  7C 7D 1B 78 */	mr r29, r3
/* 803DBCA8  A0 A3 00 00 */	lhz r5, 0(r3)
/* 803DBCAC  28 05 2D 28 */	cmplwi r5, 0x2d28
/* 803DBCB0  41 80 00 80 */	blt lbl_803DBD30
/* 803DBCB4  28 05 2D 2C */	cmplwi r5, 0x2d2c
/* 803DBCB8  41 81 00 78 */	bgt lbl_803DBD30
/* 803DBCBC  28 05 2D 28 */	cmplwi r5, 0x2d28
/* 803DBCC0  38 00 00 00 */	li r0, 0
/* 803DBCC4  41 80 00 10 */	blt lbl_803DBCD4
/* 803DBCC8  28 05 2D 2C */	cmplwi r5, 0x2d2c
/* 803DBCCC  41 81 00 08 */	bgt lbl_803DBCD4
/* 803DBCD0  38 00 00 01 */	li r0, 1
lbl_803DBCD4:
/* 803DBCD4  20 00 00 00 */	subfic r0, r0, 0
/* 803DBCD8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DBCDC  7C 80 01 10 */	subfe r4, r0, r0
/* 803DBCE0  38 05 D2 D9 */	addi r0, r5, -11559
/* 803DBCE4  7C 1F 20 38 */	and r31, r0, r4
/* 803DBCE8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DBCEC  3F C3 00 02 */	addis r30, r3, 2
/* 803DBCF0  38 80 2D 28 */	li r4, 0x2d28
/* 803DBCF4  20 BF 00 05 */	subfic r5, r31, 5
/* 803DBCF8  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 803DBCFC  38 05 2D 28 */	addi r0, r5, 0x2d28
/* 803DBD00  38 C0 00 00 */	li r6, 0
/* 803DBD04  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 803DBD08  48 00 4C 19 */	bl mPr_GetPossessionItemIdxKindWithCond
/* 803DBD0C  2C 03 00 00 */	cmpwi r3, 0
/* 803DBD10  41 80 00 20 */	blt lbl_803DBD30
/* 803DBD14  80 9E 61 3C */	lwz r4, 0x613c(r30)
/* 803DBD18  54 60 08 3C */	slwi r0, r3, 1
/* 803DBD1C  7C 84 02 14 */	add r4, r4, r0
/* 803DBD20  A0 04 00 68 */	lhz r0, 0x68(r4)
/* 803DBD24  7C 00 FA 14 */	add r0, r0, r31
/* 803DBD28  B0 1D 00 00 */	sth r0, 0(r29)
/* 803DBD2C  48 00 00 08 */	b lbl_803DBD34
lbl_803DBD30:
/* 803DBD30  4B FF FD E5 */	bl mPlib_Get_space_putin_item
lbl_803DBD34:
/* 803DBD34  39 61 00 20 */	addi r11, r1, 0x20
/* 803DBD38  4B CB F1 E9 */	bl func_8009AF20
/* 803DBD3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DBD40  7C 08 03 A6 */	mtlr r0
/* 803DBD44  38 21 00 20 */	addi r1, r1, 0x20
/* 803DBD48  4E 80 00 20 */	blr 
