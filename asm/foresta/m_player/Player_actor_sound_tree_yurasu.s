lbl_804DF858:
/* 804DF858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF85C  7C 08 02 A6 */	mflr r0
/* 804DF860  7C 64 1B 78 */	mr r4, r3
/* 804DF864  38 60 01 35 */	li r3, 0x135
/* 804DF868  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF86C  48 14 E7 3D */	bl sAdo_OngenTrgStart
/* 804DF870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF874  7C 08 03 A6 */	mtlr r0
/* 804DF878  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF87C  4E 80 00 20 */	blr 
