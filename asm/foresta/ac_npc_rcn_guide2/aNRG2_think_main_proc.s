lbl_80571B54:
/* 80571B54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80571B58  7C 08 02 A6 */	mflr r0
/* 80571B5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80571B60  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 80571B64  28 00 00 FF */	cmplwi r0, 0xff
/* 80571B68  40 82 00 10 */	bne lbl_80571B78
/* 80571B6C  81 83 09 A0 */	lwz r12, 0x9a0(r3)
/* 80571B70  7D 89 03 A6 */	mtctr r12
/* 80571B74  4E 80 04 21 */	bctrl 
lbl_80571B78:
/* 80571B78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80571B7C  7C 08 03 A6 */	mtlr r0
/* 80571B80  38 21 00 10 */	addi r1, r1, 0x10
/* 80571B84  4E 80 00 20 */	blr 
