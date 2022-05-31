lbl_8055EFA8:
/* 8055EFA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055EFAC  7C 08 02 A6 */	mflr r0
/* 8055EFB0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8055EFB4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8055EFB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055EFBC  3C A5 00 02 */	addis r5, r5, 2
/* 8055EFC0  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8055EFC4  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 8055EFC8  7D 89 03 A6 */	mtctr r12
/* 8055EFCC  4E 80 04 21 */	bctrl 
/* 8055EFD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055EFD4  7C 08 03 A6 */	mtlr r0
/* 8055EFD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8055EFDC  4E 80 00 20 */	blr 
