lbl_805433BC:
/* 805433BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805433C0  7C 08 02 A6 */	mflr r0
/* 805433C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805433C8  80 A3 01 84 */	lwz r5, 0x184(r3)
/* 805433CC  88 A5 00 08 */	lbz r5, 8(r5)
/* 805433D0  4B FF FF C9 */	bl aNPC_chg_schedule
/* 805433D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805433D8  7C 08 03 A6 */	mtlr r0
/* 805433DC  38 21 00 10 */	addi r1, r1, 0x10
/* 805433E0  4E 80 00 20 */	blr 
