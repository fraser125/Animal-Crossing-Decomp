lbl_80526FB8:
/* 80526FB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80526FBC  7C 08 02 A6 */	mflr r0
/* 80526FC0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80526FC4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80526FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80526FCC  3C A5 00 02 */	addis r5, r5, 2
/* 80526FD0  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80526FD4  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 80526FD8  7D 89 03 A6 */	mtctr r12
/* 80526FDC  4E 80 04 21 */	bctrl 
/* 80526FE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80526FE4  7C 08 03 A6 */	mtlr r0
/* 80526FE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80526FEC  4E 80 00 20 */	blr 
