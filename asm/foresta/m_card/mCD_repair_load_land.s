lbl_803FC868:
/* 803FC868  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FC86C  7C 08 02 A6 */	mflr r0
/* 803FC870  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FC874  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803FC878  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803FC87C  3B C0 00 00 */	li r30, 0
/* 803FC880  80 A3 00 00 */	lwz r5, 0(r3)
/* 803FC884  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 803FC888  2C 05 FF FF */	cmpwi r5, -1
/* 803FC88C  41 82 00 74 */	beq lbl_803FC900
/* 803FC890  28 1F 00 00 */	cmplwi r31, 0
/* 803FC894  41 82 00 6C */	beq lbl_803FC900
/* 803FC898  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 803FC89C  2C 00 FF FF */	cmpwi r0, -1
/* 803FC8A0  41 82 00 60 */	beq lbl_803FC900
/* 803FC8A4  7C 00 00 F8 */	nor r0, r0, r0
/* 803FC8A8  7F E3 FB 78 */	mr r3, r31
/* 803FC8AC  54 04 07 FE */	clrlwi r4, r0, 0x1f
/* 803FC8B0  38 C1 00 08 */	addi r6, r1, 8
/* 803FC8B4  38 84 00 01 */	addi r4, r4, 1
/* 803FC8B8  4B FF E1 09 */	bl mCD_load_file
/* 803FC8BC  2C 03 00 01 */	cmpwi r3, 1
/* 803FC8C0  40 82 00 40 */	bne lbl_803FC900
/* 803FC8C4  38 60 00 01 */	li r3, 1
/* 803FC8C8  4B FF DB 91 */	bl mCD_get_size
/* 803FC8CC  7C 60 1B 78 */	mr r0, r3
/* 803FC8D0  7F E3 FB 78 */	mr r3, r31
/* 803FC8D4  7C 04 03 78 */	mr r4, r0
/* 803FC8D8  4B FA FC 25 */	bl mFRm_ReturnCheckSum
/* 803FC8DC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803FC8E0  40 82 00 20 */	bne lbl_803FC900
/* 803FC8E4  3C 9F 00 01 */	addis r4, r31, 1
/* 803FC8E8  7F E3 FB 78 */	mr r3, r31
/* 803FC8EC  A0 84 91 2A */	lhz r4, -0x6ed6(r4)
/* 803FC8F0  4B FA FC 9D */	bl mFRm_CheckSaveData_common
/* 803FC8F4  2C 03 00 00 */	cmpwi r3, 0
/* 803FC8F8  41 82 00 08 */	beq lbl_803FC900
/* 803FC8FC  3B C0 00 01 */	li r30, 1
lbl_803FC900:
/* 803FC900  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FC904  7F C3 F3 78 */	mr r3, r30
/* 803FC908  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803FC90C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803FC910  7C 08 03 A6 */	mtlr r0
/* 803FC914  38 21 00 20 */	addi r1, r1, 0x20
/* 803FC918  4E 80 00 20 */	blr 
