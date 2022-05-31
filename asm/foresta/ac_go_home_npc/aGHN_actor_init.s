lbl_80526F80:
/* 80526F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80526F84  7C 08 02 A6 */	mflr r0
/* 80526F88  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80526F8C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80526F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80526F94  3C A5 00 02 */	addis r5, r5, 2
/* 80526F98  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80526F9C  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 80526FA0  7D 89 03 A6 */	mtctr r12
/* 80526FA4  4E 80 04 21 */	bctrl 
/* 80526FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80526FAC  7C 08 03 A6 */	mtlr r0
/* 80526FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80526FB4  4E 80 00 20 */	blr 
