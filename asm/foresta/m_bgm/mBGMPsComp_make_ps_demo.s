lbl_8037BD08:
/* 8037BD08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037BD0C  7C 08 02 A6 */	mflr r0
/* 8037BD10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037BD14  4B FF FF 8D */	bl _mBGMPsComp_make_ps_demo
/* 8037BD18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037BD1C  7C 08 03 A6 */	mtlr r0
/* 8037BD20  38 21 00 10 */	addi r1, r1, 0x10
/* 8037BD24  4E 80 00 20 */	blr 
