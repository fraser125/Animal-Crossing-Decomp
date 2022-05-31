lbl_8058E730:
/* 8058E730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058E734  7C 08 02 A6 */	mflr r0
/* 8058E738  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E73C  4B E4 1A 0D */	bl mNpc_RenewalSetNpc
/* 8058E740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E744  7C 08 03 A6 */	mtlr r0
/* 8058E748  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E74C  4E 80 00 20 */	blr 
