lbl_8058EC98:
/* 8058EC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058EC9C  7C 08 02 A6 */	mflr r0
/* 8058ECA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058ECA4  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 8058ECA8  28 00 00 FF */	cmplwi r0, 0xff
/* 8058ECAC  40 82 00 0C */	bne lbl_8058ECB8
/* 8058ECB0  38 00 00 14 */	li r0, 0x14
/* 8058ECB4  90 03 08 40 */	stw r0, 0x840(r3)
lbl_8058ECB8:
/* 8058ECB8  81 83 09 94 */	lwz r12, 0x994(r3)
/* 8058ECBC  7D 89 03 A6 */	mtctr r12
/* 8058ECC0  4E 80 04 21 */	bctrl 
/* 8058ECC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058ECC8  7C 08 03 A6 */	mtlr r0
/* 8058ECCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8058ECD0  4E 80 00 20 */	blr 
