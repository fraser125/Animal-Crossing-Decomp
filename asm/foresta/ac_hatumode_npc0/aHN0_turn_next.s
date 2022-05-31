lbl_8052B298:
/* 8052B298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052B29C  7C 08 02 A6 */	mflr r0
/* 8052B2A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052B2A4  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8052B2A8  28 00 00 03 */	cmplwi r0, 3
/* 8052B2AC  40 82 00 14 */	bne lbl_8052B2C0
/* 8052B2B0  88 A3 09 A2 */	lbz r5, 0x9a2(r3)
/* 8052B2B4  38 A5 00 01 */	addi r5, r5, 1
/* 8052B2B8  98 A3 09 A2 */	stb r5, 0x9a2(r3)
/* 8052B2BC  48 00 07 8D */	bl aHN0_setup_think_proc
lbl_8052B2C0:
/* 8052B2C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052B2C4  7C 08 03 A6 */	mtlr r0
/* 8052B2C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8052B2CC  4E 80 00 20 */	blr 
