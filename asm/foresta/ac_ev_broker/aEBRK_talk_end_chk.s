lbl_8051A6F8:
/* 8051A6F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051A6FC  7C 08 02 A6 */	mflr r0
/* 8051A700  7C 64 1B 78 */	mr r4, r3
/* 8051A704  38 60 00 07 */	li r3, 7
/* 8051A708  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051A70C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051A710  3B E0 00 00 */	li r31, 0
/* 8051A714  4B E7 FB 51 */	bl mDemo_Check
/* 8051A718  2C 03 00 00 */	cmpwi r3, 0
/* 8051A71C  40 82 00 08 */	bne lbl_8051A724
/* 8051A720  3B E0 00 01 */	li r31, 1
lbl_8051A724:
/* 8051A724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051A728  7F E3 FB 78 */	mr r3, r31
/* 8051A72C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051A730  7C 08 03 A6 */	mtlr r0
/* 8051A734  38 21 00 10 */	addi r1, r1, 0x10
/* 8051A738  4E 80 00 20 */	blr 