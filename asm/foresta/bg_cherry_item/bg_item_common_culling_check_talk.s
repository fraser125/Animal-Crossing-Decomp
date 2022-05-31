lbl_804B5F9C:
/* 804B5F9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804B5FA0  7C 08 02 A6 */	mflr r0
/* 804B5FA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B5FA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804B5FAC  3B E0 00 00 */	li r31, 0
/* 804B5FB0  93 C1 00 08 */	stw r30, 8(r1)
/* 804B5FB4  7C BE 2B 78 */	mr r30, r5
/* 804B5FB8  4B FF FF 95 */	bl bg_item_common_culling_check
/* 804B5FBC  2C 03 00 01 */	cmpwi r3, 1
/* 804B5FC0  40 82 00 2C */	bne lbl_804B5FEC
/* 804B5FC4  3C 60 80 64 */	lis r3, lit_2677@ha /* 0x80646088@ha */
/* 804B5FC8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804B5FCC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804B5FD0  C0 63 60 88 */	lfs f3, lit_2677@l(r3)  /* 0x80646088@l */
/* 804B5FD4  4B EC 8F DD */	bl Camera2_CheckEnterCullingArea
/* 804B5FD8  2C 03 00 01 */	cmpwi r3, 1
/* 804B5FDC  40 82 00 0C */	bne lbl_804B5FE8
/* 804B5FE0  3B E0 00 00 */	li r31, 0
/* 804B5FE4  48 00 00 08 */	b lbl_804B5FEC
lbl_804B5FE8:
/* 804B5FE8  3B E0 00 01 */	li r31, 1
lbl_804B5FEC:
/* 804B5FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804B5FF0  7F E3 FB 78 */	mr r3, r31
/* 804B5FF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804B5FF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804B5FFC  7C 08 03 A6 */	mtlr r0
/* 804B6000  38 21 00 10 */	addi r1, r1, 0x10
/* 804B6004  4E 80 00 20 */	blr 
