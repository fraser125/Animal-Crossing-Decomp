lbl_80415690:
/* 80415690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415694  7C 08 02 A6 */	mflr r0
/* 80415698  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041569C  80 03 01 7C */	lwz r0, 0x17c(r3)
/* 804156A0  2C 00 00 07 */	cmpwi r0, 7
/* 804156A4  40 82 00 0C */	bne lbl_804156B0
/* 804156A8  38 A0 00 0D */	li r5, 0xd
/* 804156AC  48 00 03 95 */	bl aBTD_setupAction
lbl_804156B0:
/* 804156B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804156B4  7C 08 03 A6 */	mtlr r0
/* 804156B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804156BC  4E 80 00 20 */	blr 
