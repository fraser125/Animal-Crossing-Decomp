lbl_80597E00:
/* 80597E00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80597E04  7C 08 02 A6 */	mflr r0
/* 80597E08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80597E0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80597E10  7C 9F 23 78 */	mr r31, r4
/* 80597E14  93 C1 00 08 */	stw r30, 8(r1)
/* 80597E18  7C 7E 1B 78 */	mr r30, r3
/* 80597E1C  4B FF F9 41 */	bl aIDG_check_strike_stone
/* 80597E20  2C 03 00 01 */	cmpwi r3, 1
/* 80597E24  40 82 00 14 */	bne lbl_80597E38
/* 80597E28  7F C3 F3 78 */	mr r3, r30
/* 80597E2C  7F E5 FB 78 */	mr r5, r31
/* 80597E30  38 80 00 04 */	li r4, 4
/* 80597E34  48 00 04 21 */	bl aIDG_setupAction
lbl_80597E38:
/* 80597E38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80597E3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80597E40  83 C1 00 08 */	lwz r30, 8(r1)
/* 80597E44  7C 08 03 A6 */	mtlr r0
/* 80597E48  38 21 00 10 */	addi r1, r1, 0x10
/* 80597E4C  4E 80 00 20 */	blr 
