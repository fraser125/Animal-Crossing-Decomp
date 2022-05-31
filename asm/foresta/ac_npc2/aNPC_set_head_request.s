lbl_8053CCF8:
/* 8053CCF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053CCFC  7C 08 02 A6 */	mflr r0
/* 8053CD00  39 20 00 00 */	li r9, 0
/* 8053CD04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053CD08  80 03 08 40 */	lwz r0, 0x840(r3)
/* 8053CD0C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8053CD10  41 82 00 10 */	beq lbl_8053CD20
/* 8053CD14  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8053CD18  28 00 00 04 */	cmplwi r0, 4
/* 8053CD1C  40 82 00 3C */	bne lbl_8053CD58
lbl_8053CD20:
/* 8053CD20  89 03 08 1A */	lbz r8, 0x81a(r3)
/* 8053CD24  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8053CD28  7C 08 00 40 */	cmplw r8, r0
/* 8053CD2C  40 82 00 20 */	bne lbl_8053CD4C
/* 8053CD30  89 03 08 1B */	lbz r8, 0x81b(r3)
/* 8053CD34  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 8053CD38  7C 08 00 40 */	cmplw r8, r0
/* 8053CD3C  40 80 00 1C */	bge lbl_8053CD58
/* 8053CD40  4B FF FF 6D */	bl aNPC_set_head_request_sub
/* 8053CD44  39 20 00 01 */	li r9, 1
/* 8053CD48  48 00 00 10 */	b lbl_8053CD58
lbl_8053CD4C:
/* 8053CD4C  40 80 00 0C */	bge lbl_8053CD58
/* 8053CD50  4B FF FF 5D */	bl aNPC_set_head_request_sub
/* 8053CD54  39 20 00 01 */	li r9, 1
lbl_8053CD58:
/* 8053CD58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053CD5C  7D 23 4B 78 */	mr r3, r9
/* 8053CD60  7C 08 03 A6 */	mtlr r0
/* 8053CD64  38 21 00 10 */	addi r1, r1, 0x10
/* 8053CD68  4E 80 00 20 */	blr 
