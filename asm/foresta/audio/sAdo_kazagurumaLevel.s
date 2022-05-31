lbl_8062E864:
/* 8062E864  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062E868  7C 08 02 A6 */	mflr r0
/* 8062E86C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062E870  4B 9E 6D A5 */	bl Na_kazagurumaLevel
/* 8062E874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062E878  7C 08 03 A6 */	mtlr r0
/* 8062E87C  38 21 00 10 */	addi r1, r1, 0x10
/* 8062E880  4E 80 00 20 */	blr 
