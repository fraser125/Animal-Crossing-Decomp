lbl_805324AC:
/* 805324AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805324B0  7C 08 02 A6 */	mflr r0
/* 805324B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805324B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805324BC  7C 9F 23 78 */	mr r31, r4
/* 805324C0  93 C1 00 08 */	stw r30, 8(r1)
/* 805324C4  7C 7E 1B 78 */	mr r30, r3
/* 805324C8  4B FF FF 59 */	bl aNPC_set_feel_sub
/* 805324CC  7F E3 FB 78 */	mr r3, r31
/* 805324D0  7F C4 F3 78 */	mr r4, r30
/* 805324D4  4B FF FF 4D */	bl aNPC_set_feel_sub
/* 805324D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805324DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805324E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805324E4  7C 08 03 A6 */	mtlr r0
/* 805324E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805324EC  4E 80 00 20 */	blr 
