lbl_8051C3F0:
/* 8051C3F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C3F4  7C 08 02 A6 */	mflr r0
/* 8051C3F8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051C3FC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8051C400  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C404  3C A5 00 02 */	addis r5, r5, 2
/* 8051C408  80 A5 60 94 */	lwz r5, 0x6094(r5)
/* 8051C40C  80 05 00 10 */	lwz r0, 0x10(r5)
/* 8051C410  7C 00 18 40 */	cmplw r0, r3
/* 8051C414  40 82 00 14 */	bne lbl_8051C428
/* 8051C418  81 83 09 A0 */	lwz r12, 0x9a0(r3)
/* 8051C41C  38 A0 00 0C */	li r5, 0xc
/* 8051C420  7D 89 03 A6 */	mtctr r12
/* 8051C424  4E 80 04 21 */	bctrl 
lbl_8051C428:
/* 8051C428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C42C  7C 08 03 A6 */	mtlr r0
/* 8051C430  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C434  4E 80 00 20 */	blr 