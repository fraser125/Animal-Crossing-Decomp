lbl_805A1888:
/* 805A1888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A188C  7C 08 02 A6 */	mflr r0
/* 805A1890  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1894  A8 03 00 36 */	lha r0, 0x36(r3)
/* 805A1898  B0 03 00 DE */	sth r0, 0xde(r3)
/* 805A189C  4B FF F2 C5 */	bl aITB_move_spd_set
/* 805A18A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A18A4  7C 08 03 A6 */	mtlr r0
/* 805A18A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805A18AC  4E 80 00 20 */	blr 
