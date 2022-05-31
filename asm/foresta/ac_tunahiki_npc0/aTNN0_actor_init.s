lbl_8058E7DC:
/* 8058E7DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058E7E0  7C 08 02 A6 */	mflr r0
/* 8058E7E4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058E7E8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058E7EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E7F0  3C A5 00 02 */	addis r5, r5, 2
/* 8058E7F4  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8058E7F8  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 8058E7FC  7D 89 03 A6 */	mtctr r12
/* 8058E800  4E 80 04 21 */	bctrl 
/* 8058E804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E808  7C 08 03 A6 */	mtlr r0
/* 8058E80C  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E810  4E 80 00 20 */	blr 
