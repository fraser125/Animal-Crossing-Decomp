lbl_80526F48:
/* 80526F48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80526F4C  7C 08 02 A6 */	mflr r0
/* 80526F50  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80526F54  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80526F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80526F5C  3C A5 00 02 */	addis r5, r5, 2
/* 80526F60  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80526F64  81 85 00 D8 */	lwz r12, 0xd8(r5)
/* 80526F68  7D 89 03 A6 */	mtctr r12
/* 80526F6C  4E 80 04 21 */	bctrl 
/* 80526F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80526F74  7C 08 03 A6 */	mtlr r0
/* 80526F78  38 21 00 10 */	addi r1, r1, 0x10
/* 80526F7C  4E 80 00 20 */	blr 
