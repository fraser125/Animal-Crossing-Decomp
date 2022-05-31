lbl_805A0470:
/* 805A0470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A0474  7C 08 02 A6 */	mflr r0
/* 805A0478  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A047C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A0480  7C 7F 1B 78 */	mr r31, r3
/* 805A0484  93 C1 00 08 */	stw r30, 8(r1)
/* 805A0488  7C 9E 23 78 */	mr r30, r4
/* 805A048C  4B E3 BC 2D */	bl mPlib_Get_item_net_catch_label
/* 805A0490  7C 03 F8 40 */	cmplw r3, r31
/* 805A0494  40 82 00 18 */	bne lbl_805A04AC
/* 805A0498  7F E3 FB 78 */	mr r3, r31
/* 805A049C  7F C5 F3 78 */	mr r5, r30
/* 805A04A0  38 80 00 02 */	li r4, 2
/* 805A04A4  4B FF FF 81 */	bl aITT_setupAction
/* 805A04A8  48 00 00 44 */	b lbl_805A04EC
lbl_805A04AC:
/* 805A04AC  88 7F 02 1E */	lbz r3, 0x21e(r31)
/* 805A04B0  54 60 E7 FE */	rlwinm r0, r3, 0x1c, 0x1f, 0x1f
/* 805A04B4  28 00 00 01 */	cmplwi r0, 1
/* 805A04B8  40 82 00 20 */	bne lbl_805A04D8
/* 805A04BC  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 805A04C0  40 82 00 18 */	bne lbl_805A04D8
/* 805A04C4  7F E3 FB 78 */	mr r3, r31
/* 805A04C8  7F C5 F3 78 */	mr r5, r30
/* 805A04CC  38 80 00 02 */	li r4, 2
/* 805A04D0  4B FF FF 55 */	bl aITT_setupAction
/* 805A04D4  48 00 00 18 */	b lbl_805A04EC
lbl_805A04D8:
/* 805A04D8  81 9F 01 DC */	lwz r12, 0x1dc(r31)
/* 805A04DC  7F E3 FB 78 */	mr r3, r31
/* 805A04E0  7F C4 F3 78 */	mr r4, r30
/* 805A04E4  7D 89 03 A6 */	mtctr r12
/* 805A04E8  4E 80 04 21 */	bctrl 
lbl_805A04EC:
/* 805A04EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A04F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A04F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A04F8  7C 08 03 A6 */	mtlr r0
/* 805A04FC  38 21 00 10 */	addi r1, r1, 0x10
/* 805A0500  4E 80 00 20 */	blr 
