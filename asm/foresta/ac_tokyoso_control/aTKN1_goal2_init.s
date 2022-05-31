lbl_804AB540:
/* 804AB540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AB544  7C 08 02 A6 */	mflr r0
/* 804AB548  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AB54C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AB550  7C 7F 1B 78 */	mr r31, r3
/* 804AB554  4B FF FA D1 */	bl aTKN1_wait_init
/* 804AB558  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804AB55C  7F E3 FB 78 */	mr r3, r31
/* 804AB560  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 804AB564  38 80 00 69 */	li r4, 0x69
/* 804AB568  3C C5 00 02 */	addis r6, r5, 2
/* 804AB56C  38 A0 00 00 */	li r5, 0
/* 804AB570  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 804AB574  81 86 01 14 */	lwz r12, 0x114(r6)
/* 804AB578  7D 89 03 A6 */	mtctr r12
/* 804AB57C  4E 80 04 21 */	bctrl 
/* 804AB580  38 00 00 01 */	li r0, 1
/* 804AB584  90 1F 01 BC */	stw r0, 0x1bc(r31)
/* 804AB588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AB58C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AB590  7C 08 03 A6 */	mtlr r0
/* 804AB594  38 21 00 10 */	addi r1, r1, 0x10
/* 804AB598  4E 80 00 20 */	blr 
