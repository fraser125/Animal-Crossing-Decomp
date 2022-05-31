lbl_80560FC8:
/* 80560FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80560FCC  7C 08 02 A6 */	mflr r0
/* 80560FD0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80560FD4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80560FD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80560FDC  3C A5 00 02 */	addis r5, r5, 2
/* 80560FE0  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80560FE4  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 80560FE8  7D 89 03 A6 */	mtctr r12
/* 80560FEC  4E 80 04 21 */	bctrl 
/* 80560FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80560FF4  7C 08 03 A6 */	mtlr r0
/* 80560FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80560FFC  4E 80 00 20 */	blr 
