lbl_806379E0:
/* 806379E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806379E4  7C 08 02 A6 */	mflr r0
/* 806379E8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 806379EC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 806379F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806379F4  3C A5 00 02 */	addis r5, r5, 2
/* 806379F8  80 A5 60 8C */	lwz r5, 0x608c(r5)
/* 806379FC  28 05 00 00 */	cmplwi r5, 0
/* 80637A00  41 82 00 14 */	beq lbl_80637A14
/* 80637A04  81 85 00 64 */	lwz r12, 0x64(r5)
/* 80637A08  38 A0 00 02 */	li r5, 2
/* 80637A0C  7D 89 03 A6 */	mtctr r12
/* 80637A10  4E 80 04 21 */	bctrl 
lbl_80637A14:
/* 80637A14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80637A18  7C 08 03 A6 */	mtlr r0
/* 80637A1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80637A20  4E 80 00 20 */	blr 
