lbl_8049061C:
/* 8049061C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80490620  7C 08 02 A6 */	mflr r0
/* 80490624  90 01 00 14 */	stw r0, 0x14(r1)
/* 80490628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049062C  93 C1 00 08 */	stw r30, 8(r1)
/* 80490630  4B F4 4E B1 */	bl mNpc_GetIslandPresentFtr
/* 80490634  3B C0 00 00 */	li r30, 0
/* 80490638  7C 7F 1B 78 */	mr r31, r3
/* 8049063C  4B F4 4E F9 */	bl mNpc_GetRandomBestFtr
/* 80490640  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80490644  7C 64 1B 78 */	mr r4, r3
/* 80490648  41 82 00 2C */	beq lbl_80490674
/* 8049064C  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 80490650  2C 00 00 01 */	cmpwi r0, 1
/* 80490654  41 82 00 0C */	beq lbl_80490660
/* 80490658  2C 00 00 03 */	cmpwi r0, 3
/* 8049065C  40 82 00 18 */	bne lbl_80490674
lbl_80490660:
/* 80490660  7F E3 FB 78 */	mr r3, r31
/* 80490664  4B FE 35 65 */	bl aMR_CorrespondFurniture
/* 80490668  2C 03 00 00 */	cmpwi r3, 0
/* 8049066C  40 82 00 08 */	bne lbl_80490674
/* 80490670  3B C0 00 01 */	li r30, 1
lbl_80490674:
/* 80490674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80490678  7F C3 F3 78 */	mr r3, r30
/* 8049067C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80490680  83 C1 00 08 */	lwz r30, 8(r1)
/* 80490684  7C 08 03 A6 */	mtlr r0
/* 80490688  38 21 00 10 */	addi r1, r1, 0x10
/* 8049068C  4E 80 00 20 */	blr 
