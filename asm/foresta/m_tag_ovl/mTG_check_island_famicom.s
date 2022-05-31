lbl_805F5484:
/* 805F5484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F5488  7C 08 02 A6 */	mflr r0
/* 805F548C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F5490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F5494  3B E0 00 01 */	li r31, 1
/* 805F5498  93 C1 00 08 */	stw r30, 8(r1)
/* 805F549C  7C 7E 1B 78 */	mr r30, r3
/* 805F54A0  4B DB 1C 39 */	bl mFI_CheckInIsland
/* 805F54A4  2C 03 00 00 */	cmpwi r3, 0
/* 805F54A8  41 82 00 40 */	beq lbl_805F54E8
/* 805F54AC  7F C3 F3 78 */	mr r3, r30
/* 805F54B0  38 80 00 00 */	li r4, 0
/* 805F54B4  38 A0 00 11 */	li r5, 0x11
/* 805F54B8  38 C0 00 00 */	li r6, 0
/* 805F54BC  4B DF 34 05 */	bl mSP_SearchItemCategoryPriority
/* 805F54C0  2C 03 00 00 */	cmpwi r3, 0
/* 805F54C4  40 82 00 20 */	bne lbl_805F54E4
/* 805F54C8  7F C3 F3 78 */	mr r3, r30
/* 805F54CC  38 80 00 00 */	li r4, 0
/* 805F54D0  38 A0 00 0F */	li r5, 0xf
/* 805F54D4  38 C0 00 00 */	li r6, 0
/* 805F54D8  4B DF 33 E9 */	bl mSP_SearchItemCategoryPriority
/* 805F54DC  2C 03 00 00 */	cmpwi r3, 0
/* 805F54E0  41 82 00 08 */	beq lbl_805F54E8
lbl_805F54E4:
/* 805F54E4  3B E0 00 00 */	li r31, 0
lbl_805F54E8:
/* 805F54E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F54EC  7F E3 FB 78 */	mr r3, r31
/* 805F54F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F54F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F54F8  7C 08 03 A6 */	mtlr r0
/* 805F54FC  38 21 00 10 */	addi r1, r1, 0x10
/* 805F5500  4E 80 00 20 */	blr 
