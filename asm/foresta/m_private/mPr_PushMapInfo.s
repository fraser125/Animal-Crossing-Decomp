lbl_803E255C:
/* 803E255C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E2560  7C 08 02 A6 */	mflr r0
/* 803E2564  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E2568  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E256C  93 C1 00 08 */	stw r30, 8(r1)
/* 803E2570  7C 7E 1B 79 */	or. r30, r3, r3
/* 803E2574  41 82 00 38 */	beq lbl_803E25AC
/* 803E2578  37 E4 FF FF */	addic. r31, r4, -1
/* 803E257C  40 81 00 24 */	ble lbl_803E25A0
/* 803E2580  48 00 00 18 */	b lbl_803E2598
lbl_803E2584:
/* 803E2584  7F C3 F3 78 */	mr r3, r30
/* 803E2588  38 9E 00 0A */	addi r4, r30, 0xa
/* 803E258C  4B FF FE 25 */	bl mPr_CopyMapInfo
/* 803E2590  3B DE 00 0A */	addi r30, r30, 0xa
/* 803E2594  3B FF FF FF */	addi r31, r31, -1
lbl_803E2598:
/* 803E2598  2C 1F 00 00 */	cmpwi r31, 0
/* 803E259C  41 81 FF E8 */	bgt lbl_803E2584
lbl_803E25A0:
/* 803E25A0  7F C3 F3 78 */	mr r3, r30
/* 803E25A4  38 80 00 01 */	li r4, 1
/* 803E25A8  4B FF FD B1 */	bl mPr_ClearMapInfo
lbl_803E25AC:
/* 803E25AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E25B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E25B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803E25B8  7C 08 03 A6 */	mtlr r0
/* 803E25BC  38 21 00 10 */	addi r1, r1, 0x10
/* 803E25C0  4E 80 00 20 */	blr 
