lbl_80559F74:
/* 80559F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80559F78  7C 08 02 A6 */	mflr r0
/* 80559F7C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80559F80  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80559F84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80559F88  3C A5 00 02 */	addis r5, r5, 2
/* 80559F8C  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80559F90  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 80559F94  7D 89 03 A6 */	mtctr r12
/* 80559F98  4E 80 04 21 */	bctrl 
/* 80559F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80559FA0  7C 08 03 A6 */	mtlr r0
/* 80559FA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80559FA8  4E 80 00 20 */	blr 
