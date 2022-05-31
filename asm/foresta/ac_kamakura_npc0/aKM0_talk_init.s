lbl_8052BE2C:
/* 8052BE2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052BE30  7C 08 02 A6 */	mflr r0
/* 8052BE34  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8052BE38  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8052BE3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052BE40  3C 84 00 02 */	addis r4, r4, 2
/* 8052BE44  80 84 60 78 */	lwz r4, 0x6078(r4)
/* 8052BE48  81 84 00 04 */	lwz r12, 4(r4)
/* 8052BE4C  7D 89 03 A6 */	mtctr r12
/* 8052BE50  4E 80 04 21 */	bctrl 
/* 8052BE54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052BE58  7C 08 03 A6 */	mtlr r0
/* 8052BE5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8052BE60  4E 80 00 20 */	blr 
