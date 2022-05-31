lbl_805AD05C:
/* 805AD05C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AD060  7C 08 02 A6 */	mflr r0
/* 805AD064  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AD068  80 03 01 74 */	lwz r0, 0x174(r3)
/* 805AD06C  2C 00 00 01 */	cmpwi r0, 1
/* 805AD070  40 82 00 0C */	bne lbl_805AD07C
/* 805AD074  38 80 00 00 */	li r4, 0
/* 805AD078  48 00 00 C1 */	bl aDPT_setup_action
lbl_805AD07C:
/* 805AD07C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AD080  7C 08 03 A6 */	mtlr r0
/* 805AD084  38 21 00 10 */	addi r1, r1, 0x10
/* 805AD088  4E 80 00 20 */	blr 
