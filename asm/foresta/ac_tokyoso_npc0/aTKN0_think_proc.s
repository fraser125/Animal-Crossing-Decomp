lbl_8058C03C:
/* 8058C03C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C040  7C 08 02 A6 */	mflr r0
/* 8058C044  2C 05 00 01 */	cmpwi r5, 1
/* 8058C048  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058C04C  41 82 00 1C */	beq lbl_8058C068
/* 8058C050  40 80 00 1C */	bge lbl_8058C06C
/* 8058C054  2C 05 00 00 */	cmpwi r5, 0
/* 8058C058  40 80 00 08 */	bge lbl_8058C060
/* 8058C05C  48 00 00 10 */	b lbl_8058C06C
lbl_8058C060:
/* 8058C060  4B FF FC 11 */	bl aTKN0_think_init_proc
/* 8058C064  48 00 00 08 */	b lbl_8058C06C
lbl_8058C068:
/* 8058C068  4B FF FB 7D */	bl aTKN0_think_main_proc
lbl_8058C06C:
/* 8058C06C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C070  7C 08 03 A6 */	mtlr r0
/* 8058C074  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C078  4E 80 00 20 */	blr 
