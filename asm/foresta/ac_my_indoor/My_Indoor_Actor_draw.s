lbl_8046FB9C:
/* 8046FB9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046FBA0  7C 08 02 A6 */	mflr r0
/* 8046FBA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046FBA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046FBAC  7C 9F 23 78 */	mr r31, r4
/* 8046FBB0  93 C1 00 08 */	stw r30, 8(r1)
/* 8046FBB4  7C 7E 1B 78 */	mr r30, r3
/* 8046FBB8  A8 03 01 82 */	lha r0, 0x182(r3)
/* 8046FBBC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8046FBC0  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8046FBC4  7C BE 02 14 */	add r5, r30, r0
/* 8046FBC8  81 85 01 8C */	lwz r12, 0x18c(r5)
/* 8046FBCC  7D 89 03 A6 */	mtctr r12
/* 8046FBD0  4E 80 04 21 */	bctrl 
/* 8046FBD4  A8 1E 01 80 */	lha r0, 0x180(r30)
/* 8046FBD8  7F C3 F3 78 */	mr r3, r30
/* 8046FBDC  7F E4 FB 78 */	mr r4, r31
/* 8046FBE0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8046FBE4  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8046FBE8  7C BE 02 14 */	add r5, r30, r0
/* 8046FBEC  81 85 01 88 */	lwz r12, 0x188(r5)
/* 8046FBF0  7D 89 03 A6 */	mtctr r12
/* 8046FBF4  4E 80 04 21 */	bctrl 
/* 8046FBF8  7F C3 F3 78 */	mr r3, r30
/* 8046FBFC  7F E4 FB 78 */	mr r4, r31
/* 8046FC00  4B FF F8 D1 */	bl aMI_DrawMyStep
/* 8046FC04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046FC08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046FC0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046FC10  7C 08 03 A6 */	mtlr r0
/* 8046FC14  38 21 00 10 */	addi r1, r1, 0x10
/* 8046FC18  4E 80 00 20 */	blr 
