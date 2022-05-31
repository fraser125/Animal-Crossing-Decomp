lbl_8055AACC:
/* 8055AACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055AAD0  7C 08 02 A6 */	mflr r0
/* 8055AAD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055AAD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055AADC  3B E0 00 00 */	li r31, 0
/* 8055AAE0  93 C1 00 08 */	stw r30, 8(r1)
/* 8055AAE4  7C 7E 1B 78 */	mr r30, r3
/* 8055AAE8  88 03 00 05 */	lbz r0, 5(r3)
/* 8055AAEC  28 00 00 01 */	cmplwi r0, 1
/* 8055AAF0  40 82 00 2C */	bne lbl_8055AB1C
/* 8055AAF4  4B E6 40 11 */	bl mMpswd_check_npc_code
/* 8055AAF8  2C 03 00 01 */	cmpwi r3, 1
/* 8055AAFC  40 82 00 20 */	bne lbl_8055AB1C
/* 8055AB00  7F C3 F3 78 */	mr r3, r30
/* 8055AB04  4B E6 40 3D */	bl mMpswd_check_name
/* 8055AB08  2C 03 00 01 */	cmpwi r3, 1
/* 8055AB0C  40 82 00 0C */	bne lbl_8055AB18
/* 8055AB10  3B E0 00 02 */	li r31, 2
/* 8055AB14  48 00 00 08 */	b lbl_8055AB1C
lbl_8055AB18:
/* 8055AB18  3B E0 00 08 */	li r31, 8
lbl_8055AB1C:
/* 8055AB1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055AB20  7F E3 FB 78 */	mr r3, r31
/* 8055AB24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055AB28  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055AB2C  7C 08 03 A6 */	mtlr r0
/* 8055AB30  38 21 00 10 */	addi r1, r1, 0x10
/* 8055AB34  4E 80 00 20 */	blr 
