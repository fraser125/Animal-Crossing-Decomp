lbl_8037BC08:
/* 8037BC08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037BC0C  7C 08 02 A6 */	mflr r0
/* 8037BC10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037BC14  4B FF FF 91 */	bl _mBGMPsComp_make_ps_co_quiet
/* 8037BC18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037BC1C  7C 08 03 A6 */	mtlr r0
/* 8037BC20  38 21 00 10 */	addi r1, r1, 0x10
/* 8037BC24  4E 80 00 20 */	blr 
