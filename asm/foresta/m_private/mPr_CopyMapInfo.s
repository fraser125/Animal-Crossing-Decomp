lbl_803E23B0:
/* 803E23B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E23B4  7C 08 02 A6 */	mflr r0
/* 803E23B8  38 A0 00 0A */	li r5, 0xa
/* 803E23BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E23C0  4B FD 86 65 */	bl func_803BAA24
/* 803E23C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E23C8  7C 08 03 A6 */	mtlr r0
/* 803E23CC  38 21 00 10 */	addi r1, r1, 0x10
/* 803E23D0  4E 80 00 20 */	blr 
