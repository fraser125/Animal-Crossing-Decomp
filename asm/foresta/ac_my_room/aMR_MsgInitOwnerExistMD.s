lbl_804750C8:
/* 804750C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804750CC  7C 08 02 A6 */	mflr r0
/* 804750D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804750D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804750D8  A8 03 03 FA */	lha r0, 0x3fa(r3)
/* 804750DC  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 804750E0  38 A3 DF E8 */	addi r5, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 804750E4  1C 80 08 58 */	mulli r4, r0, 0x858
/* 804750E8  80 A5 00 00 */	lwz r5, 0(r5)
/* 804750EC  38 61 00 08 */	addi r3, r1, 8
/* 804750F0  38 04 08 44 */	addi r0, r4, 0x844
/* 804750F4  7F E5 02 2E */	lhzx r31, r5, r0
/* 804750F8  7F E4 FB 78 */	mr r4, r31
/* 804750FC  4B F4 08 A9 */	bl mIN_copy_name_str
/* 80475100  7F E3 FB 78 */	mr r3, r31
/* 80475104  4B F4 0A 15 */	bl mIN_get_item_article
/* 80475108  7C 7F 1B 78 */	mr r31, r3
/* 8047510C  4B F4 A5 9D */	bl func_803BF6A8
/* 80475110  7F E7 FB 78 */	mr r7, r31
/* 80475114  38 A1 00 08 */	addi r5, r1, 8
/* 80475118  38 80 00 00 */	li r4, 0
/* 8047511C  38 C0 00 10 */	li r6, 0x10
/* 80475120  4B F4 AD 31 */	bl mMsg_Set_item_str_art
/* 80475124  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80475128  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8047512C  7C 08 03 A6 */	mtlr r0
/* 80475130  38 21 00 20 */	addi r1, r1, 0x20
/* 80475134  4E 80 00 20 */	blr 
