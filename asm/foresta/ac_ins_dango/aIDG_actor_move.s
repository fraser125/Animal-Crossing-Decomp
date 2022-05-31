lbl_805982A0:
/* 805982A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805982A4  7C 08 02 A6 */	mflr r0
/* 805982A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805982AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805982B0  7C 7F 1B 78 */	mr r31, r3
/* 805982B4  93 C1 00 08 */	stw r30, 8(r1)
/* 805982B8  7C 9E 23 78 */	mr r30, r4
/* 805982BC  4B E4 3D FD */	bl mPlib_Get_item_net_catch_label
/* 805982C0  7C 03 F8 40 */	cmplw r3, r31
/* 805982C4  40 82 00 20 */	bne lbl_805982E4
/* 805982C8  38 00 00 FF */	li r0, 0xff
/* 805982CC  7F E3 FB 78 */	mr r3, r31
/* 805982D0  90 1F 02 5C */	stw r0, 0x25c(r31)
/* 805982D4  7F C5 F3 78 */	mr r5, r30
/* 805982D8  38 80 00 01 */	li r4, 1
/* 805982DC  4B FF FF 79 */	bl aIDG_setupAction
/* 805982E0  48 00 00 18 */	b lbl_805982F8
lbl_805982E4:
/* 805982E4  81 9F 01 DC */	lwz r12, 0x1dc(r31)
/* 805982E8  7F E3 FB 78 */	mr r3, r31
/* 805982EC  7F C4 F3 78 */	mr r4, r30
/* 805982F0  7D 89 03 A6 */	mtctr r12
/* 805982F4  4E 80 04 21 */	bctrl 
lbl_805982F8:
/* 805982F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805982FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80598300  83 C1 00 08 */	lwz r30, 8(r1)
/* 80598304  7C 08 03 A6 */	mtlr r0
/* 80598308  38 21 00 10 */	addi r1, r1, 0x10
/* 8059830C  4E 80 00 20 */	blr 
