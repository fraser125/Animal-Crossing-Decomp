lbl_8062DC84:
/* 8062DC84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062DC88  7C 08 02 A6 */	mflr r0
/* 8062DC8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062DC90  4B FF FE 8D */	bl func_8062DB1C
/* 8062DC94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062DC98  7C 08 03 A6 */	mtlr r0
/* 8062DC9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8062DCA0  4E 80 00 20 */	blr 
