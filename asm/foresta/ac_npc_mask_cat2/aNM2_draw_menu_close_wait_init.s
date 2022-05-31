lbl_80560C90:
/* 80560C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80560C94  7C 08 02 A6 */	mflr r0
/* 80560C98  38 64 1D EC */	addi r3, r4, 0x1dec
/* 80560C9C  38 80 00 19 */	li r4, 0x19
/* 80560CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80560CA4  38 A0 00 00 */	li r5, 0
/* 80560CA8  38 C0 00 00 */	li r6, 0
/* 80560CAC  4B E8 EA 31 */	bl mSM_open_submenu
/* 80560CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80560CB4  7C 08 03 A6 */	mtlr r0
/* 80560CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80560CBC  4E 80 00 20 */	blr 
