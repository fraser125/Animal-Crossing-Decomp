lbl_8051BAA8:
/* 8051BAA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051BAAC  7C 08 02 A6 */	mflr r0
/* 8051BAB0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051BAB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051BAB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051BABC  7C 7F 1B 78 */	mr r31, r3
/* 8051BAC0  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8051BAC4  3C 63 00 02 */	addis r3, r3, 2
/* 8051BAC8  80 83 61 3C */	lwz r4, 0x613c(r3)
/* 8051BACC  38 63 66 84 */	addi r3, r3, 0x6684
/* 8051BAD0  4B EC 46 51 */	bl mPr_CopyPersonalID
/* 8051BAD4  7F E3 FB 78 */	mr r3, r31
/* 8051BAD8  4B FF F0 BD */	bl aEBR2_set_msg_data
/* 8051BADC  7F E3 FB 78 */	mr r3, r31
/* 8051BAE0  4B FF F1 B1 */	bl aEBR2_set_stop_spd
/* 8051BAE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051BAE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051BAEC  7C 08 03 A6 */	mtlr r0
/* 8051BAF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8051BAF4  4E 80 00 20 */	blr 
