lbl_80633188:
/* 80633188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063318C  7C 08 02 A6 */	mflr r0
/* 80633190  90 01 00 14 */	stw r0, 0x14(r1)
/* 80633194  80 63 08 50 */	lwz r3, 0x850(r3)
/* 80633198  28 03 00 00 */	cmplwi r3, 0
/* 8063319C  41 82 00 08 */	beq lbl_806331A4
/* 806331A0  4B D8 93 15 */	bl zelda_free
lbl_806331A4:
/* 806331A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806331A8  7C 08 03 A6 */	mtlr r0
/* 806331AC  38 21 00 10 */	addi r1, r1, 0x10
/* 806331B0  4E 80 00 20 */	blr 
