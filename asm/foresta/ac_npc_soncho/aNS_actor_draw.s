lbl_8057EB74:
/* 8057EB74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057EB78  7C 08 02 A6 */	mflr r0
/* 8057EB7C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8057EB80  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8057EB84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057EB88  3C A5 00 02 */	addis r5, r5, 2
/* 8057EB8C  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8057EB90  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 8057EB94  7D 89 03 A6 */	mtctr r12
/* 8057EB98  4E 80 04 21 */	bctrl 
/* 8057EB9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057EBA0  7C 08 03 A6 */	mtlr r0
/* 8057EBA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057EBA8  4E 80 00 20 */	blr 
