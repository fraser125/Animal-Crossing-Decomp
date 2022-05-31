lbl_803EC700:
/* 803EC700  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EC704  7C 08 02 A6 */	mflr r0
/* 803EC708  28 04 00 64 */	cmplwi r4, 0x64
/* 803EC70C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EC710  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803EC714  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803EC718  7C 7E 1B 78 */	mr r30, r3
/* 803EC71C  41 80 00 0C */	blt lbl_803EC728
/* 803EC720  3B E0 00 03 */	li r31, 3
/* 803EC724  48 00 00 18 */	b lbl_803EC73C
lbl_803EC728:
/* 803EC728  28 04 00 0A */	cmplwi r4, 0xa
/* 803EC72C  41 80 00 0C */	blt lbl_803EC738
/* 803EC730  3B E0 00 02 */	li r31, 2
/* 803EC734  48 00 00 08 */	b lbl_803EC73C
lbl_803EC738:
/* 803EC738  3B E0 00 01 */	li r31, 1
lbl_803EC73C:
/* 803EC73C  7C 85 23 78 */	mr r5, r4
/* 803EC740  7F E6 FB 78 */	mr r6, r31
/* 803EC744  38 61 00 08 */	addi r3, r1, 8
/* 803EC748  38 80 00 03 */	li r4, 3
/* 803EC74C  38 E0 00 01 */	li r7, 1
/* 803EC750  39 00 00 00 */	li r8, 0
/* 803EC754  39 20 00 01 */	li r9, 1
/* 803EC758  4B FC 2D 21 */	bl mFont_UnintToString
/* 803EC75C  4B FD 2F 4D */	bl func_803BF6A8
/* 803EC760  7F C4 F3 78 */	mr r4, r30
/* 803EC764  7F E6 FB 78 */	mr r6, r31
/* 803EC768  38 A1 00 08 */	addi r5, r1, 8
/* 803EC76C  4B FD 34 E9 */	bl mMsg_Set_free_str
/* 803EC770  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EC774  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803EC778  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803EC77C  7C 08 03 A6 */	mtlr r0
/* 803EC780  38 21 00 20 */	addi r1, r1, 0x20
/* 803EC784  4E 80 00 20 */	blr 
