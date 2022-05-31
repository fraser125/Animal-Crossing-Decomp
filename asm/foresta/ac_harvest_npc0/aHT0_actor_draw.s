lbl_805913BC:
/* 805913BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805913C0  7C 08 02 A6 */	mflr r0
/* 805913C4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805913C8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805913CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805913D0  3C A5 00 02 */	addis r5, r5, 2
/* 805913D4  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 805913D8  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 805913DC  7D 89 03 A6 */	mtctr r12
/* 805913E0  4E 80 04 21 */	bctrl 
/* 805913E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805913E8  7C 08 03 A6 */	mtlr r0
/* 805913EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805913F0  4E 80 00 20 */	blr 
