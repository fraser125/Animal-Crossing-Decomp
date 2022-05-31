lbl_8041ECDC:
/* 8041ECDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041ECE0  7C 08 02 A6 */	mflr r0
/* 8041ECE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041ECE8  39 61 00 20 */	addi r11, r1, 0x20
/* 8041ECEC  4B C7 C1 E9 */	bl func_8009AED4
/* 8041ECF0  3C A0 81 1D */	lis r5, dpppp@ha /* 0x811CB964@ha */
/* 8041ECF4  38 00 00 00 */	li r0, 0
/* 8041ECF8  90 05 B9 64 */	stw r0, dpppp@l(r5)  /* 0x811CB964@l */
/* 8041ECFC  7C 7D 1B 78 */	mr r29, r3
/* 8041ED00  7C 9E 23 78 */	mr r30, r4
/* 8041ED04  3B E0 00 02 */	li r31, 2
/* 8041ED08  80 64 00 00 */	lwz r3, 0(r4)
/* 8041ED0C  4B F7 EE E1 */	bl mEv_check_keep
/* 8041ED10  2C 03 00 00 */	cmpwi r3, 0
/* 8041ED14  41 82 00 34 */	beq lbl_8041ED48
/* 8041ED18  80 9E 00 00 */	lwz r4, 0(r30)
/* 8041ED1C  7F A3 EB 78 */	mr r3, r29
/* 8041ED20  38 A0 00 09 */	li r5, 9
/* 8041ED24  38 C0 00 00 */	li r6, 0
/* 8041ED28  4B FF ED 55 */	bl title_fade
/* 8041ED2C  2C 03 00 00 */	cmpwi r3, 0
/* 8041ED30  41 82 00 14 */	beq lbl_8041ED44
/* 8041ED34  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041ED38  4B F7 EE 81 */	bl mEv_clear_keep
/* 8041ED3C  3B E0 00 01 */	li r31, 1
/* 8041ED40  48 00 00 08 */	b lbl_8041ED48
lbl_8041ED44:
/* 8041ED44  3B E0 00 00 */	li r31, 0
lbl_8041ED48:
/* 8041ED48  7F E3 FB 78 */	mr r3, r31
/* 8041ED4C  39 61 00 20 */	addi r11, r1, 0x20
/* 8041ED50  4B C7 C1 D1 */	bl func_8009AF20
/* 8041ED54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041ED58  7C 08 03 A6 */	mtlr r0
/* 8041ED5C  38 21 00 20 */	addi r1, r1, 0x20
/* 8041ED60  4E 80 00 20 */	blr 
