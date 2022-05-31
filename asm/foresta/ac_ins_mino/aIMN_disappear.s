lbl_8059E8DC:
/* 8059E8DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059E8E0  7C 08 02 A6 */	mflr r0
/* 8059E8E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059E8E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059E8EC  7C 7F 1B 78 */	mr r31, r3
/* 8059E8F0  93 C1 00 08 */	stw r30, 8(r1)
/* 8059E8F4  7C 9E 23 78 */	mr r30, r4
/* 8059E8F8  4B FF F9 6D */	bl aIMN_check_cut_tree
/* 8059E8FC  2C 03 00 01 */	cmpwi r3, 1
/* 8059E900  40 82 00 18 */	bne lbl_8059E918
/* 8059E904  7F E3 FB 78 */	mr r3, r31
/* 8059E908  7F C5 F3 78 */	mr r5, r30
/* 8059E90C  38 80 00 09 */	li r4, 9
/* 8059E910  48 00 06 DD */	bl aIMN_setupAction
/* 8059E914  48 00 00 2C */	b lbl_8059E940
lbl_8059E918:
/* 8059E918  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8059E91C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8059E920  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059E924  40 81 00 14 */	ble lbl_8059E938
/* 8059E928  7F E3 FB 78 */	mr r3, r31
/* 8059E92C  7F C5 F3 78 */	mr r5, r30
/* 8059E930  38 80 00 02 */	li r4, 2
/* 8059E934  48 00 06 B9 */	bl aIMN_setupAction
lbl_8059E938:
/* 8059E938  7F E3 FB 78 */	mr r3, r31
/* 8059E93C  4B FF F8 CD */	bl aIMN_calc_twist_angl
lbl_8059E940:
/* 8059E940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059E944  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059E948  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059E94C  7C 08 03 A6 */	mtlr r0
/* 8059E950  38 21 00 10 */	addi r1, r1, 0x10
/* 8059E954  4E 80 00 20 */	blr 
