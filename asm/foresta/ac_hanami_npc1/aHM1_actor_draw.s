lbl_8052A1EC:
/* 8052A1EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052A1F0  7C 08 02 A6 */	mflr r0
/* 8052A1F4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8052A1F8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8052A1FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052A200  3C A5 00 02 */	addis r5, r5, 2
/* 8052A204  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8052A208  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 8052A20C  7D 89 03 A6 */	mtctr r12
/* 8052A210  4E 80 04 21 */	bctrl 
/* 8052A214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052A218  7C 08 03 A6 */	mtlr r0
/* 8052A21C  38 21 00 10 */	addi r1, r1, 0x10
/* 8052A220  4E 80 00 20 */	blr 
