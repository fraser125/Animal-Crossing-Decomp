lbl_805878E4:
/* 805878E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805878E8  7C 08 02 A6 */	mflr r0
/* 805878EC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805878F0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805878F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805878F8  3C A5 00 02 */	addis r5, r5, 2
/* 805878FC  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80587900  81 85 00 D8 */	lwz r12, 0xd8(r5)
/* 80587904  7D 89 03 A6 */	mtctr r12
/* 80587908  4E 80 04 21 */	bctrl 
/* 8058790C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80587910  7C 08 03 A6 */	mtlr r0
/* 80587914  38 21 00 10 */	addi r1, r1, 0x10
/* 80587918  4E 80 00 20 */	blr 
