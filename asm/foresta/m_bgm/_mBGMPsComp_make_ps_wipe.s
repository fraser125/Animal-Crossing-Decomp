lbl_8037BA78:
/* 8037BA78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037BA7C  7C 08 02 A6 */	mflr r0
/* 8037BA80  3C 80 81 13 */	lis r4, data_811351C0@ha /* 0x811351C0@ha */
/* 8037BA84  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037BA88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037BA8C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037BA90  7C 7E 1B 78 */	mr r30, r3
/* 8037BA94  38 64 51 C0 */	addi r3, r4, data_811351C0@l /* 0x811351C0@l */
/* 8037BA98  3B E3 01 64 */	addi r31, r3, 0x164
/* 8037BA9C  38 63 02 FC */	addi r3, r3, 0x2fc
/* 8037BAA0  48 00 0E DD */	bl mBGMForce_wipe_ps_make_permit
/* 8037BAA4  2C 03 00 00 */	cmpwi r3, 0
/* 8037BAA8  41 82 00 4C */	beq lbl_8037BAF4
/* 8037BAAC  7F E3 FB 78 */	mr r3, r31
/* 8037BAB0  38 80 00 01 */	li r4, 1
/* 8037BAB4  38 A0 00 7F */	li r5, 0x7f
/* 8037BAB8  38 C0 00 00 */	li r6, 0
/* 8037BABC  38 E0 00 00 */	li r7, 0
/* 8037BAC0  4B FF ED FD */	bl mBGMPsComp_search_pos_kategorie_bgm_num
/* 8037BAC4  2C 03 00 00 */	cmpwi r3, 0
/* 8037BAC8  40 80 00 2C */	bge lbl_8037BAF4
/* 8037BACC  38 61 00 08 */	addi r3, r1, 8
/* 8037BAD0  4B FF CE C5 */	bl mBGMElem_default_set
/* 8037BAD4  B3 C1 00 0E */	sth r30, 0xe(r1)
/* 8037BAD8  7F E3 FB 78 */	mr r3, r31
/* 8037BADC  38 81 00 08 */	addi r4, r1, 8
/* 8037BAE0  38 A0 00 01 */	li r5, 1
/* 8037BAE4  38 C0 FF FF */	li r6, -1
/* 8037BAE8  38 E0 00 40 */	li r7, 0x40
/* 8037BAEC  39 00 00 FF */	li r8, 0xff
/* 8037BAF0  4B FF FD E9 */	bl mBGMPsComp_make_ps
lbl_8037BAF4:
/* 8037BAF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037BAF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037BAFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037BB00  7C 08 03 A6 */	mtlr r0
/* 8037BB04  38 21 00 20 */	addi r1, r1, 0x20
/* 8037BB08  4E 80 00 20 */	blr 
