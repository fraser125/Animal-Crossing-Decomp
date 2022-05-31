lbl_805A8DCC:
/* 805A8DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A8DD0  7C 08 02 A6 */	mflr r0
/* 805A8DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A8DD8  80 03 01 74 */	lwz r0, 0x174(r3)
/* 805A8DDC  2C 00 00 01 */	cmpwi r0, 1
/* 805A8DE0  40 82 00 0C */	bne lbl_805A8DEC
/* 805A8DE4  38 80 00 01 */	li r4, 1
/* 805A8DE8  48 00 00 15 */	bl aBRS_setup_action
lbl_805A8DEC:
/* 805A8DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A8DF0  7C 08 03 A6 */	mtlr r0
/* 805A8DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 805A8DF8  4E 80 00 20 */	blr 
