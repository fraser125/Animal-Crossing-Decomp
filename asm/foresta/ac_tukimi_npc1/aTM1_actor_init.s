lbl_8058DF34:
/* 8058DF34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058DF38  7C 08 02 A6 */	mflr r0
/* 8058DF3C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058DF40  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058DF44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058DF48  3C A5 00 02 */	addis r5, r5, 2
/* 8058DF4C  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8058DF50  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 8058DF54  7D 89 03 A6 */	mtctr r12
/* 8058DF58  4E 80 04 21 */	bctrl 
/* 8058DF5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058DF60  7C 08 03 A6 */	mtlr r0
/* 8058DF64  38 21 00 10 */	addi r1, r1, 0x10
/* 8058DF68  4E 80 00 20 */	blr 
