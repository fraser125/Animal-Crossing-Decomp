lbl_803BC974:
/* 803BC974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC978  7C 08 02 A6 */	mflr r0
/* 803BC97C  38 A0 01 2A */	li r5, 0x12a
/* 803BC980  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC984  4B FF E0 A1 */	bl func_803BAA24
/* 803BC988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC98C  7C 08 03 A6 */	mtlr r0
/* 803BC990  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC994  4E 80 00 20 */	blr 
