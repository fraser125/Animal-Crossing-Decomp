lbl_803EFDC0:
/* 803EFDC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EFDC4  7C 08 02 A6 */	mflr r0
/* 803EFDC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EFDCC  80 03 00 00 */	lwz r0, 0(r3)
/* 803EFDD0  2C 00 00 03 */	cmpwi r0, 3
/* 803EFDD4  41 80 00 38 */	blt lbl_803EFE0C
/* 803EFDD8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803EFDDC  2C 00 00 03 */	cmpwi r0, 3
/* 803EFDE0  40 82 00 2C */	bne lbl_803EFE0C
/* 803EFDE4  3C C0 81 17 */	lis r6, data_81171538@ha /* 0x81171538@ha */
/* 803EFDE8  3C A0 80 66 */	lis r5, SubmenuArea_dlftbl@ha /* 0x8065DCEC@ha */
/* 803EFDEC  38 C6 15 38 */	addi r6, r6, data_81171538@l /* 0x81171538@l */
/* 803EFDF0  80 C6 00 00 */	lwz r6, 0(r6)
/* 803EFDF4  38 05 DC EC */	addi r0, r5, SubmenuArea_dlftbl@l /* 0x8065DCEC@l */
/* 803EFDF8  7C 06 00 40 */	cmplw r6, r0
/* 803EFDFC  40 82 00 10 */	bne lbl_803EFE0C
/* 803EFE00  81 83 00 34 */	lwz r12, 0x34(r3)
/* 803EFE04  7D 89 03 A6 */	mtctr r12
/* 803EFE08  4E 80 04 21 */	bctrl 
lbl_803EFE0C:
/* 803EFE0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EFE10  7C 08 03 A6 */	mtlr r0
/* 803EFE14  38 21 00 10 */	addi r1, r1, 0x10
/* 803EFE18  4E 80 00 20 */	blr 
