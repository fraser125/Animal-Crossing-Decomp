lbl_80592218:
/* 80592218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059221C  7C 08 02 A6 */	mflr r0
/* 80592220  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80592224  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80592228  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059222C  3C A5 00 02 */	addis r5, r5, 2
/* 80592230  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80592234  81 85 00 D8 */	lwz r12, 0xd8(r5)
/* 80592238  7D 89 03 A6 */	mtctr r12
/* 8059223C  4E 80 04 21 */	bctrl 
/* 80592240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592244  7C 08 03 A6 */	mtlr r0
/* 80592248  38 21 00 10 */	addi r1, r1, 0x10
/* 8059224C  4E 80 00 20 */	blr 