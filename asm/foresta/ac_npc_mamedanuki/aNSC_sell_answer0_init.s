lbl_8055E898:
/* 8055E898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055E89C  7C 08 02 A6 */	mflr r0
/* 8055E8A0  38 A0 00 00 */	li r5, 0
/* 8055E8A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055E8A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055E8AC  7C 7F 1B 78 */	mr r31, r3
/* 8055E8B0  38 60 00 04 */	li r3, 4
/* 8055E8B4  93 C1 00 08 */	stw r30, 8(r1)
/* 8055E8B8  7C 9E 23 78 */	mr r30, r4
/* 8055E8BC  38 80 00 09 */	li r4, 9
/* 8055E8C0  4B E3 9B 79 */	bl mDemo_Set_OrderValue
/* 8055E8C4  88 1F 09 B8 */	lbz r0, 0x9b8(r31)
/* 8055E8C8  28 00 00 01 */	cmplwi r0, 1
/* 8055E8CC  40 82 00 CC */	bne lbl_8055E998
/* 8055E8D0  A0 1F 09 B4 */	lhz r0, 0x9b4(r31)
/* 8055E8D4  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 8055E8D8  2C 00 00 05 */	cmpwi r0, 5
/* 8055E8DC  41 82 00 BC */	beq lbl_8055E998
/* 8055E8E0  40 80 00 10 */	bge lbl_8055E8F0
/* 8055E8E4  2C 00 00 04 */	cmpwi r0, 4
/* 8055E8E8  40 80 00 48 */	bge lbl_8055E930
/* 8055E8EC  48 00 00 AC */	b lbl_8055E998
lbl_8055E8F0:
/* 8055E8F0  2C 00 00 08 */	cmpwi r0, 8
/* 8055E8F4  40 80 00 A4 */	bge lbl_8055E998
/* 8055E8F8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055E8FC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055E900  3C 63 00 02 */	addis r3, r3, 2
/* 8055E904  80 63 60 7C */	lwz r3, 0x607c(r3)
/* 8055E908  28 03 00 00 */	cmplwi r3, 0
/* 8055E90C  41 82 00 8C */	beq lbl_8055E998
/* 8055E910  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8055E914  7D 89 03 A6 */	mtctr r12
/* 8055E918  4E 80 04 21 */	bctrl 
/* 8055E91C  7F C3 F3 78 */	mr r3, r30
/* 8055E920  4B E2 3A 7D */	bl Camera2_Inter_set_reverse_mode
/* 8055E924  38 00 00 00 */	li r0, 0
/* 8055E928  98 1F 09 B8 */	stb r0, 0x9b8(r31)
/* 8055E92C  48 00 00 6C */	b lbl_8055E998
lbl_8055E930:
/* 8055E930  80 7F 09 AC */	lwz r3, 0x9ac(r31)
/* 8055E934  4B FF C7 3D */	bl aNSC_money_check
/* 8055E938  2C 03 00 00 */	cmpwi r3, 0
/* 8055E93C  41 82 00 30 */	beq lbl_8055E96C
/* 8055E940  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055E944  38 80 00 00 */	li r4, 0
/* 8055E948  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055E94C  3C 63 00 02 */	addis r3, r3, 2
/* 8055E950  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8055E954  4B E8 20 3D */	bl mPr_GetPossessionItemSum
/* 8055E958  28 03 00 00 */	cmplwi r3, 0
/* 8055E95C  41 82 00 10 */	beq lbl_8055E96C
/* 8055E960  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 8055E964  2C 00 00 21 */	cmpwi r0, 0x21
/* 8055E968  40 82 00 28 */	bne lbl_8055E990
lbl_8055E96C:
/* 8055E96C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055E970  88 7F 09 B6 */	lbz r3, 0x9b6(r31)
/* 8055E974  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8055E978  88 9F 09 B7 */	lbz r4, 0x9b7(r31)
/* 8055E97C  3C A5 00 02 */	addis r5, r5, 2
/* 8055E980  80 A5 60 6C */	lwz r5, 0x606c(r5)
/* 8055E984  81 85 00 0C */	lwz r12, 0xc(r5)
/* 8055E988  7D 89 03 A6 */	mtctr r12
/* 8055E98C  4E 80 04 21 */	bctrl 
lbl_8055E990:
/* 8055E990  38 00 00 00 */	li r0, 0
/* 8055E994  98 1F 09 B8 */	stb r0, 0x9b8(r31)
lbl_8055E998:
/* 8055E998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055E99C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055E9A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055E9A4  7C 08 03 A6 */	mtlr r0
/* 8055E9A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8055E9AC  4E 80 00 20 */	blr 
