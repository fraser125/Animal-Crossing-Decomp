lbl_805AA478:
/* 805AA478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AA47C  7C 08 02 A6 */	mflr r0
/* 805AA480  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AA484  80 03 01 74 */	lwz r0, 0x174(r3)
/* 805AA488  2C 00 00 01 */	cmpwi r0, 1
/* 805AA48C  40 82 00 0C */	bne lbl_805AA498
/* 805AA490  38 80 00 00 */	li r4, 0
/* 805AA494  48 00 00 45 */	bl aBGY_setup_action
lbl_805AA498:
/* 805AA498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AA49C  7C 08 03 A6 */	mtlr r0
/* 805AA4A0  38 21 00 10 */	addi r1, r1, 0x10
/* 805AA4A4  4E 80 00 20 */	blr 
