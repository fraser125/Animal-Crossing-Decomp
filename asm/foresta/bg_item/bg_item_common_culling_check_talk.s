lbl_804BD320:
/* 804BD320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BD324  7C 08 02 A6 */	mflr r0
/* 804BD328  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BD32C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BD330  3B E0 00 00 */	li r31, 0
/* 804BD334  93 C1 00 08 */	stw r30, 8(r1)
/* 804BD338  7C BE 2B 78 */	mr r30, r5
/* 804BD33C  4B FF FF 95 */	bl bg_item_common_culling_check
/* 804BD340  2C 03 00 01 */	cmpwi r3, 1
/* 804BD344  40 82 00 2C */	bne lbl_804BD370
/* 804BD348  3C 60 80 64 */	lis r3, lit_2677@ha /* 0x80646128@ha */
/* 804BD34C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804BD350  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804BD354  C0 63 61 28 */	lfs f3, lit_2677@l(r3)  /* 0x80646128@l */
/* 804BD358  4B EC 1C 59 */	bl Camera2_CheckEnterCullingArea
/* 804BD35C  2C 03 00 01 */	cmpwi r3, 1
/* 804BD360  40 82 00 0C */	bne lbl_804BD36C
/* 804BD364  3B E0 00 00 */	li r31, 0
/* 804BD368  48 00 00 08 */	b lbl_804BD370
lbl_804BD36C:
/* 804BD36C  3B E0 00 01 */	li r31, 1
lbl_804BD370:
/* 804BD370  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BD374  7F E3 FB 78 */	mr r3, r31
/* 804BD378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BD37C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804BD380  7C 08 03 A6 */	mtlr r0
/* 804BD384  38 21 00 10 */	addi r1, r1, 0x10
/* 804BD388  4E 80 00 20 */	blr 
