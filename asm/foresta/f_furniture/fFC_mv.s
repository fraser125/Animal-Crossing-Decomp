lbl_8062EBA8:
/* 8062EBA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062EBAC  7C 08 02 A6 */	mflr r0
/* 8062EBB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062EBB4  38 00 00 00 */	li r0, 0
/* 8062EBB8  A1 43 00 00 */	lhz r10, 0(r3)
/* 8062EBBC  28 0A 03 6A */	cmplwi r10, 0x36a
/* 8062EBC0  41 80 00 10 */	blt lbl_8062EBD0
/* 8062EBC4  28 0A 03 7D */	cmplwi r10, 0x37d
/* 8062EBC8  41 81 00 08 */	bgt lbl_8062EBD0
/* 8062EBCC  38 00 00 01 */	li r0, 1
lbl_8062EBD0:
/* 8062EBD0  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8062EBD4  20 00 00 00 */	subfic r0, r0, 0
/* 8062EBD8  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8062EBDC  3D 00 80 6D */	lis r8, fFC_game_table@ha /* 0x806D5798@ha */
/* 8062EBE0  3C C6 00 02 */	addis r6, r6, 2
/* 8062EBE4  3C E0 80 6D */	lis r7, fFC_agb_game_table@ha /* 0x806D57AC@ha */
/* 8062EBE8  80 C6 60 8C */	lwz r6, 0x608c(r6)
/* 8062EBEC  7D 20 01 10 */	subfe r9, r0, r0
/* 8062EBF0  38 0A FC 96 */	addi r0, r10, -874
/* 8062EBF4  39 08 57 98 */	addi r8, r8, fFC_game_table@l /* 0x806D5798@l */
/* 8062EBF8  81 86 00 54 */	lwz r12, 0x54(r6)
/* 8062EBFC  7C 00 48 38 */	and r0, r0, r9
/* 8062EC00  38 E7 57 AC */	addi r7, r7, fFC_agb_game_table@l /* 0x806D57AC@l */
/* 8062EC04  7C C8 00 AE */	lbzx r6, r8, r0
/* 8062EC08  7C E7 00 AE */	lbzx r7, r7, r0
/* 8062EC0C  7D 89 03 A6 */	mtctr r12
/* 8062EC10  4E 80 04 21 */	bctrl 
/* 8062EC14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062EC18  7C 08 03 A6 */	mtlr r0
/* 8062EC1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8062EC20  4E 80 00 20 */	blr 
