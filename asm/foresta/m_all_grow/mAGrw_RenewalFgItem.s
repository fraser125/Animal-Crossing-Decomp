lbl_80373DA8:
/* 80373DA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80373DAC  7C 08 02 A6 */	mflr r0
/* 80373DB0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80373DB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80373DB8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80373DBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80373DC0  80 04 00 14 */	lwz r0, 0x14(r4)
/* 80373DC4  2C 00 00 07 */	cmpwi r0, 7
/* 80373DC8  40 82 00 34 */	bne lbl_80373DFC
/* 80373DCC  3F E4 00 02 */	addis r31, r4, 2
/* 80373DD0  38 81 00 08 */	addi r4, r1, 8
/* 80373DD4  88 1F 13 93 */	lbz r0, 0x1393(r31)
/* 80373DD8  90 01 00 08 */	stw r0, 8(r1)
/* 80373DDC  48 1A 10 E9 */	bl mAGrw_RenewalFgItem_ovl
/* 80373DE0  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 80373DE4  80 81 00 08 */	lwz r4, 8(r1)
/* 80373DE8  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 80373DEC  98 9F 13 93 */	stb r4, 0x1393(r31)
/* 80373DF0  2C 00 00 02 */	cmpwi r0, 2
/* 80373DF4  41 80 00 08 */	blt lbl_80373DFC
/* 80373DF8  4B FF F9 ED */	bl mAGrw_SetDebugData
lbl_80373DFC:
/* 80373DFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80373E00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80373E04  7C 08 03 A6 */	mtlr r0
/* 80373E08  38 21 00 20 */	addi r1, r1, 0x20
/* 80373E0C  4E 80 00 20 */	blr 
