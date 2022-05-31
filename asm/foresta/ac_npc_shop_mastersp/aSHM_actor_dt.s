lbl_8057C5D4:
/* 8057C5D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C5D8  7C 08 02 A6 */	mflr r0
/* 8057C5DC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8057C5E0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8057C5E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C5E8  3C A5 00 02 */	addis r5, r5, 2
/* 8057C5EC  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8057C5F0  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8057C5F4  7D 89 03 A6 */	mtctr r12
/* 8057C5F8  4E 80 04 21 */	bctrl 
/* 8057C5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C600  7C 08 03 A6 */	mtlr r0
/* 8057C604  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C608  4E 80 00 20 */	blr 
