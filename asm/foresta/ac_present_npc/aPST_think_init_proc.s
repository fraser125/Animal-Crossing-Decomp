lbl_805881C8:
/* 805881C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805881CC  7C 08 02 A6 */	mflr r0
/* 805881D0  38 A0 00 00 */	li r5, 0
/* 805881D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805881D8  48 00 00 B9 */	bl aPST_setup_think_proc
/* 805881DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805881E0  7C 08 03 A6 */	mtlr r0
/* 805881E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805881E8  4E 80 00 20 */	blr 
