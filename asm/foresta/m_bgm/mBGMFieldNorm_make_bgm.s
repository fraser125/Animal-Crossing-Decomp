lbl_8037A5D8:
/* 8037A5D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037A5DC  7C 08 02 A6 */	mflr r0
/* 8037A5E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037A5E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037A5E8  7C 7F 1B 78 */	mr r31, r3
/* 8037A5EC  88 03 00 00 */	lbz r0, 0(r3)
/* 8037A5F0  28 00 00 7F */	cmplwi r0, 0x7f
/* 8037A5F4  40 82 00 14 */	bne lbl_8037A608
/* 8037A5F8  4B FF FF 81 */	bl mBGMFieldNorm_elem_set
/* 8037A5FC  88 7F 00 00 */	lbz r3, 0(r31)
/* 8037A600  38 80 01 68 */	li r4, 0x168
/* 8037A604  48 00 1B 19 */	bl mBGMPsComp_make_ps_fieldNorm
lbl_8037A608:
/* 8037A608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037A60C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037A610  7C 08 03 A6 */	mtlr r0
/* 8037A614  38 21 00 10 */	addi r1, r1, 0x10
/* 8037A618  4E 80 00 20 */	blr 
