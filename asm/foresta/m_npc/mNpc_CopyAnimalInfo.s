lbl_803CC6B8:
/* 803CC6B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CC6BC  7C 08 02 A6 */	mflr r0
/* 803CC6C0  38 A0 09 88 */	li r5, 0x988
/* 803CC6C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CC6C8  4B FE E3 5D */	bl func_803BAA24
/* 803CC6CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CC6D0  7C 08 03 A6 */	mtlr r0
/* 803CC6D4  38 21 00 10 */	addi r1, r1, 0x10
/* 803CC6D8  4E 80 00 20 */	blr 
