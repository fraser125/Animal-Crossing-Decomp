lbl_8054B0A4:
/* 8054B0A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054B0A8  7C 08 02 A6 */	mflr r0
/* 8054B0AC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054B0B0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8054B0B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054B0B8  3C A5 00 02 */	addis r5, r5, 2
/* 8054B0BC  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8054B0C0  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8054B0C4  7D 89 03 A6 */	mtctr r12
/* 8054B0C8  4E 80 04 21 */	bctrl 
/* 8054B0CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054B0D0  7C 08 03 A6 */	mtlr r0
/* 8054B0D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8054B0D8  4E 80 00 20 */	blr 
