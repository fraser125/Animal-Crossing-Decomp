lbl_8052BD14:
/* 8052BD14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052BD18  7C 08 02 A6 */	mflr r0
/* 8052BD1C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8052BD20  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8052BD24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052BD28  3C A5 00 02 */	addis r5, r5, 2
/* 8052BD2C  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8052BD30  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8052BD34  7D 89 03 A6 */	mtctr r12
/* 8052BD38  4E 80 04 21 */	bctrl 
/* 8052BD3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052BD40  7C 08 03 A6 */	mtlr r0
/* 8052BD44  38 21 00 10 */	addi r1, r1, 0x10
/* 8052BD48  4E 80 00 20 */	blr 
