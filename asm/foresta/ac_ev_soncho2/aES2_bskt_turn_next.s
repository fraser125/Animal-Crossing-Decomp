lbl_805251BC:
/* 805251BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805251C0  7C 08 02 A6 */	mflr r0
/* 805251C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805251C8  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 805251CC  28 00 00 03 */	cmplwi r0, 3
/* 805251D0  40 82 00 20 */	bne lbl_805251F0
/* 805251D4  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 805251D8  28 00 00 FF */	cmplwi r0, 0xff
/* 805251DC  40 82 00 14 */	bne lbl_805251F0
/* 805251E0  88 A3 09 A8 */	lbz r5, 0x9a8(r3)
/* 805251E4  38 A5 00 01 */	addi r5, r5, 1
/* 805251E8  98 A3 09 A8 */	stb r5, 0x9a8(r3)
/* 805251EC  48 00 03 E9 */	bl aES2_setup_think_proc
lbl_805251F0:
/* 805251F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805251F4  7C 08 03 A6 */	mtlr r0
/* 805251F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805251FC  4E 80 00 20 */	blr 
