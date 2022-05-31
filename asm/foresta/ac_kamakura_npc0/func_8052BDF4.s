lbl_8052BDF4:
/* 8052BDF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052BDF8  7C 08 02 A6 */	mflr r0
/* 8052BDFC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8052BE00  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8052BE04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052BE08  3C 84 00 02 */	addis r4, r4, 2
/* 8052BE0C  80 84 60 78 */	lwz r4, 0x6078(r4)
/* 8052BE10  81 84 00 00 */	lwz r12, 0(r4)
/* 8052BE14  7D 89 03 A6 */	mtctr r12
/* 8052BE18  4E 80 04 21 */	bctrl 
/* 8052BE1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052BE20  7C 08 03 A6 */	mtlr r0
/* 8052BE24  38 21 00 10 */	addi r1, r1, 0x10
/* 8052BE28  4E 80 00 20 */	blr 
