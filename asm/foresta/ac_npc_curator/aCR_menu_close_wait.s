lbl_8054C288:
/* 8054C288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054C28C  7C 08 02 A6 */	mflr r0
/* 8054C290  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054C294  88 04 1F 4E */	lbz r0, 0x1f4e(r4)
/* 8054C298  28 00 00 00 */	cmplwi r0, 0
/* 8054C29C  40 82 00 28 */	bne lbl_8054C2C4
/* 8054C2A0  80 C4 1F 60 */	lwz r6, 0x1f60(r4)
/* 8054C2A4  38 A0 00 08 */	li r5, 8
/* 8054C2A8  A0 06 00 00 */	lhz r0, 0(r6)
/* 8054C2AC  28 00 00 00 */	cmplwi r0, 0
/* 8054C2B0  40 82 00 08 */	bne lbl_8054C2B8
/* 8054C2B4  38 A0 00 0A */	li r5, 0xa
lbl_8054C2B8:
/* 8054C2B8  81 83 09 A8 */	lwz r12, 0x9a8(r3)
/* 8054C2BC  7D 89 03 A6 */	mtctr r12
/* 8054C2C0  4E 80 04 21 */	bctrl 
lbl_8054C2C4:
/* 8054C2C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054C2C8  7C 08 03 A6 */	mtlr r0
/* 8054C2CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8054C2D0  4E 80 00 20 */	blr 
