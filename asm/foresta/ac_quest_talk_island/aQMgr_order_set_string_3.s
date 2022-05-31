lbl_8048FED8:
/* 8048FED8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048FEDC  7C 08 02 A6 */	mflr r0
/* 8048FEE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048FEE4  39 61 00 20 */	addi r11, r1, 0x20
/* 8048FEE8  4B C0 AF E5 */	bl func_8009AECC
/* 8048FEEC  3C A0 81 1D */	lis r5, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 8048FEF0  3C 80 80 69 */	lis r4, base_str_no_1221@ha /* 0x8068B318@ha */
/* 8048FEF4  3C 60 80 64 */	lis r3, lit_1217@ha /* 0x80644C48@ha */
/* 8048FEF8  3B 60 00 00 */	li r27, 0
/* 8048FEFC  3B 85 EB E0 */	addi r28, r5, data_811CEBE0@l /* 0x811CEBE0@l */
/* 8048FF00  3B A4 B3 18 */	addi r29, r4, base_str_no_1221@l /* 0x8068B318@l */
/* 8048FF04  3B C3 4C 48 */	addi r30, r3, lit_1217@l /* 0x80644C48@l */
/* 8048FF08  3B E0 00 00 */	li r31, 0
lbl_8048FF0C:
/* 8048FF0C  7C BD F8 2E */	lwzx r5, r29, r31
/* 8048FF10  7F 83 E3 78 */	mr r3, r28
/* 8048FF14  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8048FF18  7F 64 DB 78 */	mr r4, r27
/* 8048FF1C  38 C0 FF FF */	li r6, -1
/* 8048FF20  4B FF FD 29 */	bl aQMgr_set_random_string
/* 8048FF24  3B 7B 00 01 */	addi r27, r27, 1
/* 8048FF28  3B FF 00 04 */	addi r31, r31, 4
/* 8048FF2C  2C 1B 00 03 */	cmpwi r27, 3
/* 8048FF30  41 80 FF DC */	blt lbl_8048FF0C
/* 8048FF34  39 61 00 20 */	addi r11, r1, 0x20
/* 8048FF38  4B C0 AF E1 */	bl func_8009AF18
/* 8048FF3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048FF40  7C 08 03 A6 */	mtlr r0
/* 8048FF44  38 21 00 20 */	addi r1, r1, 0x20
/* 8048FF48  4E 80 00 20 */	blr 
