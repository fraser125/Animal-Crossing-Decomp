lbl_80552C84:
/* 80552C84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80552C88  7C 08 02 A6 */	mflr r0
/* 80552C8C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80552C90  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80552C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80552C98  3C A5 00 02 */	addis r5, r5, 2
/* 80552C9C  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80552CA0  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 80552CA4  7D 89 03 A6 */	mtctr r12
/* 80552CA8  4E 80 04 21 */	bctrl 
/* 80552CAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80552CB0  7C 08 03 A6 */	mtlr r0
/* 80552CB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80552CB8  4E 80 00 20 */	blr 
