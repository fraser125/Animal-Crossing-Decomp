lbl_80589704:
/* 80589704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80589708  7C 08 02 A6 */	mflr r0
/* 8058970C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80589710  4B E4 6A 39 */	bl mNpc_RenewalSetNpc
/* 80589714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80589718  7C 08 03 A6 */	mtlr r0
/* 8058971C  38 21 00 10 */	addi r1, r1, 0x10
/* 80589720  4E 80 00 20 */	blr 
