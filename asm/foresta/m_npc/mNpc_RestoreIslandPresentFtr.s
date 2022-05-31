lbl_803D53C8:
/* 803D53C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D53CC  7C 08 02 A6 */	mflr r0
/* 803D53D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D53D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D53D8  93 C1 00 08 */	stw r30, 8(r1)
/* 803D53DC  48 00 00 B5 */	bl mNpc_CheckIslandPresentFtrIs
/* 803D53E0  2C 03 00 01 */	cmpwi r3, 1
/* 803D53E4  40 82 00 3C */	bne lbl_803D5420
/* 803D53E8  48 00 00 F9 */	bl mNpc_GetIslandPresentFtr
/* 803D53EC  7C 7E 1B 78 */	mr r30, r3
/* 803D53F0  48 00 01 01 */	bl mNpc_GetIslandPresentFtrPersonalID
/* 803D53F4  57 C0 04 3F */	clrlwi. r0, r30, 0x10
/* 803D53F8  7C 7F 1B 78 */	mr r31, r3
/* 803D53FC  41 82 00 24 */	beq lbl_803D5420
/* 803D5400  28 1F 00 00 */	cmplwi r31, 0
/* 803D5404  41 82 00 1C */	beq lbl_803D5420
/* 803D5408  48 00 AC 3D */	bl mPr_NullCheckPersonalID
/* 803D540C  2C 03 00 00 */	cmpwi r3, 0
/* 803D5410  40 82 00 10 */	bne lbl_803D5420
/* 803D5414  7F E3 FB 78 */	mr r3, r31
/* 803D5418  7F C4 F3 78 */	mr r4, r30
/* 803D541C  4B FF F6 9D */	bl mNpc_SetIslandFtr
lbl_803D5420:
/* 803D5420  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D5424  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D5428  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D542C  7C 08 03 A6 */	mtlr r0
/* 803D5430  38 21 00 10 */	addi r1, r1, 0x10
/* 803D5434  4E 80 00 20 */	blr 
