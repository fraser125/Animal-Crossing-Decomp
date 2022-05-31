lbl_8053DC68:
/* 8053DC68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053DC6C  7C 08 02 A6 */	mflr r0
/* 8053DC70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053DC74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053DC78  7C 7F 1B 78 */	mr r31, r3
/* 8053DC7C  A8 83 09 24 */	lha r4, 0x924(r3)
/* 8053DC80  38 7F 00 DE */	addi r3, r31, 0xde
/* 8053DC84  A8 BF 09 26 */	lha r5, 0x926(r31)
/* 8053DC88  4B E7 CE BD */	bl chase_angle
/* 8053DC8C  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8053DC90  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8053DC94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053DC98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053DC9C  7C 08 03 A6 */	mtlr r0
/* 8053DCA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8053DCA4  4E 80 00 20 */	blr 
