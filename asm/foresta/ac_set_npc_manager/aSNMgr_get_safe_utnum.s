lbl_80497DE8:
/* 80497DE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80497DEC  7C 08 02 A6 */	mflr r0
/* 80497DF0  28 07 00 00 */	cmplwi r7, 0
/* 80497DF4  39 00 00 00 */	li r8, 0
/* 80497DF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80497DFC  41 82 00 10 */	beq lbl_80497E0C
/* 80497E00  88 07 00 18 */	lbz r0, 0x18(r7)
/* 80497E04  89 07 00 19 */	lbz r8, 0x19(r7)
/* 80497E08  48 00 00 08 */	b lbl_80497E10
lbl_80497E0C:
/* 80497E0C  38 00 00 00 */	li r0, 0
lbl_80497E10:
/* 80497E10  2C 00 00 01 */	cmpwi r0, 1
/* 80497E14  40 82 00 10 */	bne lbl_80497E24
/* 80497E18  7D 07 43 78 */	mr r7, r8
/* 80497E1C  4B FF FF 05 */	bl aSNMgr_get_safe_utnum_guest
/* 80497E20  48 00 00 08 */	b lbl_80497E28
lbl_80497E24:
/* 80497E24  4B FF FE 75 */	bl aSNMgr_get_safe_utnum_regular
lbl_80497E28:
/* 80497E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80497E2C  7C 08 03 A6 */	mtlr r0
/* 80497E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80497E34  4E 80 00 20 */	blr 
