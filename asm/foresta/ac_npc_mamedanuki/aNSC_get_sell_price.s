lbl_8055B090:
/* 8055B090  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055B094  7C 08 02 A6 */	mflr r0
/* 8055B098  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055B09C  4B E9 00 85 */	bl mSP_get_sell_price
/* 8055B0A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055B0A4  7C 08 03 A6 */	mtlr r0
/* 8055B0A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8055B0AC  4E 80 00 20 */	blr 
