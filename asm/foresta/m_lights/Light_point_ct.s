lbl_803BB8C0:
/* 803BB8C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BB8C4  7C 08 02 A6 */	mflr r0
/* 803BB8C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BB8CC  38 00 00 00 */	li r0, 0
/* 803BB8D0  90 01 00 08 */	stw r0, 8(r1)
/* 803BB8D4  4B FF FF A5 */	bl func_803BB878
/* 803BB8D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BB8DC  7C 08 03 A6 */	mtlr r0
/* 803BB8E0  38 21 00 10 */	addi r1, r1, 0x10
/* 803BB8E4  4E 80 00 20 */	blr 
