lbl_8046CF6C:
/* 8046CF6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046CF70  7C 08 02 A6 */	mflr r0
/* 8046CF74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046CF78  A8 A3 00 6E */	lha r5, 0x6e(r3)
/* 8046CF7C  38 05 FF FF */	addi r0, r5, -1
/* 8046CF80  B0 03 00 6E */	sth r0, 0x6e(r3)
/* 8046CF84  A8 03 00 6E */	lha r0, 0x6e(r3)
/* 8046CF88  2C 00 00 00 */	cmpwi r0, 0
/* 8046CF8C  40 81 00 20 */	ble lbl_8046CFAC
/* 8046CF90  A8 03 00 7E */	lha r0, 0x7e(r3)
/* 8046CF94  2C 00 00 00 */	cmpwi r0, 0
/* 8046CF98  40 80 00 14 */	bge lbl_8046CFAC
/* 8046CF9C  38 A0 00 01 */	li r5, 1
/* 8046CFA0  38 00 00 00 */	li r0, 0
/* 8046CFA4  B0 A3 00 7C */	sth r5, 0x7c(r3)
/* 8046CFA8  B0 03 00 80 */	sth r0, 0x80(r3)
lbl_8046CFAC:
/* 8046CFAC  A8 03 00 6E */	lha r0, 0x6e(r3)
/* 8046CFB0  2C 00 00 00 */	cmpwi r0, 0
/* 8046CFB4  40 80 00 58 */	bge lbl_8046D00C
/* 8046CFB8  A8 03 00 7C */	lha r0, 0x7c(r3)
/* 8046CFBC  2C 00 00 01 */	cmpwi r0, 1
/* 8046CFC0  40 82 00 4C */	bne lbl_8046D00C
/* 8046CFC4  A8 03 00 7E */	lha r0, 0x7e(r3)
/* 8046CFC8  2C 00 00 00 */	cmpwi r0, 0
/* 8046CFCC  40 80 00 40 */	bge lbl_8046D00C
/* 8046CFD0  A8 03 00 80 */	lha r0, 0x80(r3)
/* 8046CFD4  2C 00 00 00 */	cmpwi r0, 0
/* 8046CFD8  40 82 00 18 */	bne lbl_8046CFF0
/* 8046CFDC  38 80 00 01 */	li r4, 1
/* 8046CFE0  38 00 00 0A */	li r0, 0xa
/* 8046CFE4  B0 83 00 80 */	sth r4, 0x80(r3)
/* 8046CFE8  B0 03 00 7E */	sth r0, 0x7e(r3)
/* 8046CFEC  48 00 00 20 */	b lbl_8046D00C
lbl_8046CFF0:
/* 8046CFF0  38 00 00 00 */	li r0, 0
/* 8046CFF4  7C 85 23 78 */	mr r5, r4
/* 8046CFF8  B0 03 00 80 */	sth r0, 0x80(r3)
/* 8046CFFC  38 80 00 00 */	li r4, 0
/* 8046D000  B0 03 00 7C */	sth r0, 0x7c(r3)
/* 8046D004  B0 03 00 7A */	sth r0, 0x7a(r3)
/* 8046D008  48 00 00 15 */	bl mi_dango_setupAction
lbl_8046D00C:
/* 8046D00C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046D010  7C 08 03 A6 */	mtlr r0
/* 8046D014  38 21 00 10 */	addi r1, r1, 0x10
/* 8046D018  4E 80 00 20 */	blr 
