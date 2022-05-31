lbl_8058B0C8:
/* 8058B0C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058B0CC  7C 08 02 A6 */	mflr r0
/* 8058B0D0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058B0D4  38 80 00 71 */	li r4, 0x71
/* 8058B0D8  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 8058B0DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058B0E0  3C C6 00 02 */	addis r6, r6, 2
/* 8058B0E4  38 A0 00 00 */	li r5, 0
/* 8058B0E8  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 8058B0EC  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8058B0F0  7D 89 03 A6 */	mtctr r12
/* 8058B0F4  4E 80 04 21 */	bctrl 
/* 8058B0F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058B0FC  7C 08 03 A6 */	mtlr r0
/* 8058B100  38 21 00 10 */	addi r1, r1, 0x10
/* 8058B104  4E 80 00 20 */	blr 
