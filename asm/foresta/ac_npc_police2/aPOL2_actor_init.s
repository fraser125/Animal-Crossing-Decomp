lbl_8056B0BC:
/* 8056B0BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056B0C0  7C 08 02 A6 */	mflr r0
/* 8056B0C4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056B0C8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8056B0CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056B0D0  3C A5 00 02 */	addis r5, r5, 2
/* 8056B0D4  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8056B0D8  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 8056B0DC  7D 89 03 A6 */	mtctr r12
/* 8056B0E0  4E 80 04 21 */	bctrl 
/* 8056B0E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056B0E8  7C 08 03 A6 */	mtlr r0
/* 8056B0EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8056B0F0  4E 80 00 20 */	blr 
