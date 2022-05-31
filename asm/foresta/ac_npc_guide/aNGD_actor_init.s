lbl_80552C4C:
/* 80552C4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80552C50  7C 08 02 A6 */	mflr r0
/* 80552C54  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80552C58  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80552C5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80552C60  3C A5 00 02 */	addis r5, r5, 2
/* 80552C64  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80552C68  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 80552C6C  7D 89 03 A6 */	mtctr r12
/* 80552C70  4E 80 04 21 */	bctrl 
/* 80552C74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80552C78  7C 08 03 A6 */	mtlr r0
/* 80552C7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80552C80  4E 80 00 20 */	blr 
