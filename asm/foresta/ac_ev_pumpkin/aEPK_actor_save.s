lbl_80522688:
/* 80522688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052268C  7C 08 02 A6 */	mflr r0
/* 80522690  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80522694  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80522698  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052269C  3C A5 00 02 */	addis r5, r5, 2
/* 805226A0  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 805226A4  81 85 00 D8 */	lwz r12, 0xd8(r5)
/* 805226A8  7D 89 03 A6 */	mtctr r12
/* 805226AC  4E 80 04 21 */	bctrl 
/* 805226B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805226B4  7C 08 03 A6 */	mtlr r0
/* 805226B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805226BC  4E 80 00 20 */	blr 