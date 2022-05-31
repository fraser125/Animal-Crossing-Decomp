lbl_80559FAC:
/* 80559FAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80559FB0  7C 08 02 A6 */	mflr r0
/* 80559FB4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80559FB8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80559FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80559FC0  3C A5 00 02 */	addis r5, r5, 2
/* 80559FC4  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80559FC8  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 80559FCC  7D 89 03 A6 */	mtctr r12
/* 80559FD0  4E 80 04 21 */	bctrl 
/* 80559FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80559FD8  7C 08 03 A6 */	mtlr r0
/* 80559FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80559FE0  4E 80 00 20 */	blr 
