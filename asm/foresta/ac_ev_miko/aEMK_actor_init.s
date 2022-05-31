lbl_80521DF0:
/* 80521DF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80521DF4  7C 08 02 A6 */	mflr r0
/* 80521DF8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80521DFC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80521E00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80521E04  3C A5 00 02 */	addis r5, r5, 2
/* 80521E08  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80521E0C  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 80521E10  7D 89 03 A6 */	mtctr r12
/* 80521E14  4E 80 04 21 */	bctrl 
/* 80521E18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80521E1C  7C 08 03 A6 */	mtlr r0
/* 80521E20  38 21 00 10 */	addi r1, r1, 0x10
/* 80521E24  4E 80 00 20 */	blr 
