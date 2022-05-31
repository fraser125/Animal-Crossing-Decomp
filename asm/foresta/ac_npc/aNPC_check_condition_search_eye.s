lbl_8052DFE4:
/* 8052DFE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052DFE8  7C 08 02 A6 */	mflr r0
/* 8052DFEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052DFF0  4B FF E8 51 */	bl func_8052C840
/* 8052DFF4  20 63 00 04 */	subfic r3, r3, 4
/* 8052DFF8  30 03 FF FF */	addic r0, r3, -1
/* 8052DFFC  7C 60 19 10 */	subfe r3, r0, r3
/* 8052E000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052E004  7C 08 03 A6 */	mtlr r0
/* 8052E008  38 21 00 10 */	addi r1, r1, 0x10
/* 8052E00C  4E 80 00 20 */	blr 
