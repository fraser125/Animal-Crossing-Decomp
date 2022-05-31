lbl_80523EEC:
/* 80523EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80523EF0  7C 08 02 A6 */	mflr r0
/* 80523EF4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80523EF8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80523EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80523F00  3C A5 00 02 */	addis r5, r5, 2
/* 80523F04  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80523F08  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 80523F0C  7D 89 03 A6 */	mtctr r12
/* 80523F10  4E 80 04 21 */	bctrl 
/* 80523F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80523F18  7C 08 03 A6 */	mtlr r0
/* 80523F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80523F20  4E 80 00 20 */	blr 
