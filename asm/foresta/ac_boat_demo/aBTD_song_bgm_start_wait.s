lbl_8041541C:
/* 8041541C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415420  7C 08 02 A6 */	mflr r0
/* 80415424  90 01 00 14 */	stw r0, 0x14(r1)
/* 80415428  80 A3 01 80 */	lwz r5, 0x180(r3)
/* 8041542C  38 05 FF FF */	addi r0, r5, -1
/* 80415430  90 03 01 80 */	stw r0, 0x180(r3)
/* 80415434  80 03 01 80 */	lwz r0, 0x180(r3)
/* 80415438  2C 00 00 00 */	cmpwi r0, 0
/* 8041543C  41 81 00 0C */	bgt lbl_80415448
/* 80415440  38 A0 00 05 */	li r5, 5
/* 80415444  48 00 05 FD */	bl aBTD_setupAction
lbl_80415448:
/* 80415448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041544C  7C 08 03 A6 */	mtlr r0
/* 80415450  38 21 00 10 */	addi r1, r1, 0x10
/* 80415454  4E 80 00 20 */	blr 
