lbl_805615D0:
/* 805615D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805615D4  7C 08 02 A6 */	mflr r0
/* 805615D8  3C A0 81 1F */	lis r5, data_811EC218@ha /* 0x811EC218@ha */
/* 805615DC  38 80 00 17 */	li r4, 0x17
/* 805615E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805615E4  38 E5 C2 18 */	addi r7, r5, data_811EC218@l /* 0x811EC218@l */
/* 805615E8  38 A0 00 04 */	li r5, 4
/* 805615EC  38 C0 00 00 */	li r6, 0
/* 805615F0  4B E8 E1 15 */	bl mSM_open_submenu_new
/* 805615F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805615F8  7C 08 03 A6 */	mtlr r0
/* 805615FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80561600  4E 80 00 20 */	blr 
