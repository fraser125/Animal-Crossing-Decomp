lbl_803DFEBC:
/* 803DFEBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DFEC0  7C 08 02 A6 */	mflr r0
/* 803DFEC4  38 A0 00 08 */	li r5, 8
/* 803DFEC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DFECC  4B FD AB 59 */	bl func_803BAA24
/* 803DFED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DFED4  7C 08 03 A6 */	mtlr r0
/* 803DFED8  38 21 00 10 */	addi r1, r1, 0x10
/* 803DFEDC  4E 80 00 20 */	blr 
