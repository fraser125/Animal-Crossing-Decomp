lbl_805AB280:
/* 805AB280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AB284  7C 08 02 A6 */	mflr r0
/* 805AB288  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AB28C  80 03 01 74 */	lwz r0, 0x174(r3)
/* 805AB290  2C 00 00 01 */	cmpwi r0, 1
/* 805AB294  40 82 00 0C */	bne lbl_805AB2A0
/* 805AB298  38 80 00 00 */	li r4, 0
/* 805AB29C  48 00 00 C1 */	bl aCNV_setup_action
lbl_805AB2A0:
/* 805AB2A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AB2A4  7C 08 03 A6 */	mtlr r0
/* 805AB2A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805AB2AC  4E 80 00 20 */	blr 
