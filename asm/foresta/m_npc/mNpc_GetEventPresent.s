lbl_803CDDD4:
/* 803CDDD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CDDD8  7C 08 02 A6 */	mflr r0
/* 803CDDDC  3C A0 80 66 */	lis r5, priority_table@ha /* 0x8065B294@ha */
/* 803CDDE0  3C C0 80 66 */	lis r6, category_table_1393@ha /* 0x8065B2A0@ha */
/* 803CDDE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CDDE8  54 80 10 3A */	slwi r0, r4, 2
/* 803CDDEC  38 86 B2 A0 */	addi r4, r6, category_table_1393@l /* 0x8065B2A0@l */
/* 803CDDF0  38 A5 B2 94 */	addi r5, r5, priority_table@l /* 0x8065B294@l */
/* 803CDDF4  7D 04 00 2E */	lwzx r8, r4, r0
/* 803CDDF8  7C 64 1B 78 */	mr r4, r3
/* 803CDDFC  7D 25 00 2E */	lwzx r9, r5, r0
/* 803CDE00  38 60 00 00 */	li r3, 0
/* 803CDE04  38 A0 00 01 */	li r5, 1
/* 803CDE08  38 C0 00 00 */	li r6, 0
/* 803CDE0C  38 E0 00 00 */	li r7, 0
/* 803CDE10  39 40 00 00 */	li r10, 0
/* 803CDE14  48 01 A5 C9 */	bl mSP_SelectRandomItem_New
/* 803CDE18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CDE1C  7C 08 03 A6 */	mtlr r0
/* 803CDE20  38 21 00 10 */	addi r1, r1, 0x10
/* 803CDE24  4E 80 00 20 */	blr 
