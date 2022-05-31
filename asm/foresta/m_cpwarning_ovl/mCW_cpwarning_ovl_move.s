lbl_805CEDD4:
/* 805CEDD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CEDD8  7C 08 02 A6 */	mflr r0
/* 805CEDDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CEDE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CEDE4  93 C1 00 08 */	stw r30, 8(r1)
/* 805CEDE8  7C 7E 1B 78 */	mr r30, r3
/* 805CEDEC  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805CEDF0  81 84 05 70 */	lwz r12, 0x570(r4)
/* 805CEDF4  3B E4 05 64 */	addi r31, r4, 0x564
/* 805CEDF8  7D 89 03 A6 */	mtctr r12
/* 805CEDFC  4E 80 04 21 */	bctrl 
/* 805CEE00  80 1F 00 04 */	lwz r0, 4(r31)
/* 805CEE04  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806CB950@ha */
/* 805CEE08  38 A3 B9 50 */	addi r5, r3, ovl_move_proc@l /* 0x806CB950@l */
/* 805CEE0C  7F C3 F3 78 */	mr r3, r30
/* 805CEE10  54 00 10 3A */	slwi r0, r0, 2
/* 805CEE14  7F E4 FB 78 */	mr r4, r31
/* 805CEE18  7D 85 00 2E */	lwzx r12, r5, r0
/* 805CEE1C  7D 89 03 A6 */	mtctr r12
/* 805CEE20  4E 80 04 21 */	bctrl 
/* 805CEE24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CEE28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CEE2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805CEE30  7C 08 03 A6 */	mtlr r0
/* 805CEE34  38 21 00 10 */	addi r1, r1, 0x10
/* 805CEE38  4E 80 00 20 */	blr 
