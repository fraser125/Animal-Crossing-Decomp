lbl_805273F8:
/* 805273F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805273FC  7C 08 02 A6 */	mflr r0
/* 80527400  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80527404  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80527408  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052740C  3C A5 00 02 */	addis r5, r5, 2
/* 80527410  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80527414  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 80527418  7D 89 03 A6 */	mtctr r12
/* 8052741C  4E 80 04 21 */	bctrl 
/* 80527420  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80527424  7C 08 03 A6 */	mtlr r0
/* 80527428  38 21 00 10 */	addi r1, r1, 0x10
/* 8052742C  4E 80 00 20 */	blr 
