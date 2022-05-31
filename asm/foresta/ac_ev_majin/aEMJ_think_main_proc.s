lbl_80592C7C:
/* 80592C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592C80  7C 08 02 A6 */	mflr r0
/* 80592C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592C88  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 80592C8C  28 00 00 16 */	cmplwi r0, 0x16
/* 80592C90  40 82 00 14 */	bne lbl_80592CA4
/* 80592C94  81 83 09 98 */	lwz r12, 0x998(r3)
/* 80592C98  7D 89 03 A6 */	mtctr r12
/* 80592C9C  4E 80 04 21 */	bctrl 
/* 80592CA0  48 00 00 14 */	b lbl_80592CB4
lbl_80592CA4:
/* 80592CA4  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 80592CA8  28 00 00 FF */	cmplwi r0, 0xff
/* 80592CAC  40 82 00 08 */	bne lbl_80592CB4
/* 80592CB0  4B FF FF 09 */	bl func_80592BB8
lbl_80592CB4:
/* 80592CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592CB8  7C 08 03 A6 */	mtlr r0
/* 80592CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80592CC0  4E 80 00 20 */	blr 
