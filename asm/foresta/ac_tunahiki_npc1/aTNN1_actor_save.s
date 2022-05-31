lbl_8058F080:
/* 8058F080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058F084  7C 08 02 A6 */	mflr r0
/* 8058F088  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058F08C  4B E4 10 BD */	bl mNpc_RenewalSetNpc
/* 8058F090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058F094  7C 08 03 A6 */	mtlr r0
/* 8058F098  38 21 00 10 */	addi r1, r1, 0x10
/* 8058F09C  4E 80 00 20 */	blr 
