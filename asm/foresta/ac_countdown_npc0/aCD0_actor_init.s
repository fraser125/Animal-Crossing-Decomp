lbl_80516420:
/* 80516420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80516424  7C 08 02 A6 */	mflr r0
/* 80516428  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051642C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80516430  90 01 00 14 */	stw r0, 0x14(r1)
/* 80516434  3C A5 00 02 */	addis r5, r5, 2
/* 80516438  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8051643C  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 80516440  7D 89 03 A6 */	mtctr r12
/* 80516444  4E 80 04 21 */	bctrl 
/* 80516448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051644C  7C 08 03 A6 */	mtlr r0
/* 80516450  38 21 00 10 */	addi r1, r1, 0x10
/* 80516454  4E 80 00 20 */	blr 
