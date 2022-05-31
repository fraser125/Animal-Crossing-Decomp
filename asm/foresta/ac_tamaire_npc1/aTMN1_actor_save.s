lbl_8058A1F8:
/* 8058A1F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058A1FC  7C 08 02 A6 */	mflr r0
/* 8058A200  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058A204  4B E4 5F 45 */	bl mNpc_RenewalSetNpc
/* 8058A208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058A20C  7C 08 03 A6 */	mtlr r0
/* 8058A210  38 21 00 10 */	addi r1, r1, 0x10
/* 8058A214  4E 80 00 20 */	blr 
