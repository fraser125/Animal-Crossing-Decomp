lbl_8053CAB8:
/* 8053CAB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053CABC  7C 08 02 A6 */	mflr r0
/* 8053CAC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053CAC4  4B FF E9 8D */	bl func_8053B450
/* 8053CAC8  20 63 00 04 */	subfic r3, r3, 4
/* 8053CACC  30 03 FF FF */	addic r0, r3, -1
/* 8053CAD0  7C 60 19 10 */	subfe r3, r0, r3
/* 8053CAD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053CAD8  7C 08 03 A6 */	mtlr r0
/* 8053CADC  38 21 00 10 */	addi r1, r1, 0x10
/* 8053CAE0  4E 80 00 20 */	blr 
