lbl_80559A60:
/* 80559A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80559A64  7C 08 02 A6 */	mflr r0
/* 80559A68  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80559A6C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80559A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80559A74  3C A5 00 02 */	addis r5, r5, 2
/* 80559A78  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80559A7C  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 80559A80  7D 89 03 A6 */	mtctr r12
/* 80559A84  4E 80 04 21 */	bctrl 
/* 80559A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80559A8C  7C 08 03 A6 */	mtlr r0
/* 80559A90  38 21 00 10 */	addi r1, r1, 0x10
/* 80559A94  4E 80 00 20 */	blr 
