lbl_804EDBC4:
/* 804EDBC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EDBC8  7C 08 02 A6 */	mflr r0
/* 804EDBCC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804EDBD0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804EDBD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EDBD8  3C 63 00 02 */	addis r3, r3, 2
/* 804EDBDC  80 63 60 8C */	lwz r3, 0x608c(r3)
/* 804EDBE0  28 03 00 00 */	cmplwi r3, 0
/* 804EDBE4  41 82 00 10 */	beq lbl_804EDBF4
/* 804EDBE8  81 83 00 50 */	lwz r12, 0x50(r3)
/* 804EDBEC  7D 89 03 A6 */	mtctr r12
/* 804EDBF0  4E 80 04 21 */	bctrl 
lbl_804EDBF4:
/* 804EDBF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EDBF8  7C 08 03 A6 */	mtlr r0
/* 804EDBFC  38 21 00 10 */	addi r1, r1, 0x10
/* 804EDC00  4E 80 00 20 */	blr 
