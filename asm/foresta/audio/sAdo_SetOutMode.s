lbl_8062DFF0:
/* 8062DFF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062DFF4  7C 08 02 A6 */	mflr r0
/* 8062DFF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062DFFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062E000  7C 7F 1B 78 */	mr r31, r3
/* 8062E004  4B A4 F7 11 */	bl OSGetSoundMode
/* 8062E008  28 03 00 00 */	cmplwi r3, 0
/* 8062E00C  40 82 00 10 */	bne lbl_8062E01C
/* 8062E010  38 60 00 01 */	li r3, 1
/* 8062E014  4B 9E 59 ED */	bl Na_SetOutMode
/* 8062E018  48 00 00 24 */	b lbl_8062E03C
lbl_8062E01C:
/* 8062E01C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8062E020  28 00 00 01 */	cmplwi r0, 1
/* 8062E024  40 82 00 10 */	bne lbl_8062E034
/* 8062E028  38 60 00 00 */	li r3, 0
/* 8062E02C  4B 9E 59 D5 */	bl Na_SetOutMode
/* 8062E030  48 00 00 0C */	b lbl_8062E03C
lbl_8062E034:
/* 8062E034  7F E3 FB 78 */	mr r3, r31
/* 8062E038  4B 9E 59 C9 */	bl Na_SetOutMode
lbl_8062E03C:
/* 8062E03C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062E040  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062E044  7C 08 03 A6 */	mtlr r0
/* 8062E048  38 21 00 10 */	addi r1, r1, 0x10
/* 8062E04C  4E 80 00 20 */	blr 
