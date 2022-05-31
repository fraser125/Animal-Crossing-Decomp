lbl_80533134:
/* 80533134  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80533138  7C 08 02 A6 */	mflr r0
/* 8053313C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80533140  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80533144  7C 7F 1B 78 */	mr r31, r3
/* 80533148  4B FF B5 31 */	bl aNPC_check_feel_demoCode
/* 8053314C  7F E3 FB 78 */	mr r3, r31
/* 80533150  4B FF B1 D5 */	bl aNPC_check_manpu_demoCode
/* 80533154  7F E3 FB 78 */	mr r3, r31
/* 80533158  4B FF B3 7D */	bl aNPC_check_timing_demoCode
/* 8053315C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80533160  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80533164  7C 08 03 A6 */	mtlr r0
/* 80533168  38 21 00 10 */	addi r1, r1, 0x10
/* 8053316C  4E 80 00 20 */	blr 
