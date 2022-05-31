lbl_8057C094:
/* 8057C094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C098  7C 08 02 A6 */	mflr r0
/* 8057C09C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C0A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057C0A4  7C 7F 1B 78 */	mr r31, r3
/* 8057C0A8  4B FF FE D5 */	bl aNSC_sell_answer0_init
/* 8057C0AC  38 00 00 00 */	li r0, 0
/* 8057C0B0  B0 1F 09 B4 */	sth r0, 0x9b4(r31)
/* 8057C0B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C0B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057C0BC  7C 08 03 A6 */	mtlr r0
/* 8057C0C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C0C4  4E 80 00 20 */	blr 
