lbl_805812A8:
/* 805812A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805812AC  7C 08 02 A6 */	mflr r0
/* 805812B0  38 80 00 00 */	li r4, 0
/* 805812B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805812B8  88 03 00 05 */	lbz r0, 5(r3)
/* 805812BC  28 00 00 01 */	cmplwi r0, 1
/* 805812C0  40 82 00 1C */	bne lbl_805812DC
/* 805812C4  4B E3 D8 7D */	bl mMpswd_check_name
/* 805812C8  2C 03 00 01 */	cmpwi r3, 1
/* 805812CC  40 82 00 0C */	bne lbl_805812D8
/* 805812D0  38 80 00 01 */	li r4, 1
/* 805812D4  48 00 00 08 */	b lbl_805812DC
lbl_805812D8:
/* 805812D8  38 80 00 08 */	li r4, 8
lbl_805812DC:
/* 805812DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805812E0  7C 83 23 78 */	mr r3, r4
/* 805812E4  7C 08 03 A6 */	mtlr r0
/* 805812E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805812EC  4E 80 00 20 */	blr 
