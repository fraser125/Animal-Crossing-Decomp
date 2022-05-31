lbl_8051CB64:
/* 8051CB64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051CB68  7C 08 02 A6 */	mflr r0
/* 8051CB6C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051CB70  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8051CB74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051CB78  3C A5 00 02 */	addis r5, r5, 2
/* 8051CB7C  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8051CB80  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 8051CB84  7D 89 03 A6 */	mtctr r12
/* 8051CB88  4E 80 04 21 */	bctrl 
/* 8051CB8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051CB90  7C 08 03 A6 */	mtlr r0
/* 8051CB94  38 21 00 10 */	addi r1, r1, 0x10
/* 8051CB98  4E 80 00 20 */	blr 
