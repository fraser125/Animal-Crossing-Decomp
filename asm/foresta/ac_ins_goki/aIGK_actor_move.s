lbl_8059A76C:
/* 8059A76C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059A770  7C 08 02 A6 */	mflr r0
/* 8059A774  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059A778  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059A77C  7C 7F 1B 78 */	mr r31, r3
/* 8059A780  93 C1 00 08 */	stw r30, 8(r1)
/* 8059A784  7C 9E 23 78 */	mr r30, r4
/* 8059A788  4B E4 19 31 */	bl mPlib_Get_item_net_catch_label
/* 8059A78C  7C 03 F8 40 */	cmplw r3, r31
/* 8059A790  40 82 00 18 */	bne lbl_8059A7A8
/* 8059A794  7F E3 FB 78 */	mr r3, r31
/* 8059A798  7F C5 F3 78 */	mr r5, r30
/* 8059A79C  38 80 00 01 */	li r4, 1
/* 8059A7A0  4B FF FF 81 */	bl aIGK_setupAction
/* 8059A7A4  48 00 00 44 */	b lbl_8059A7E8
lbl_8059A7A8:
/* 8059A7A8  88 7F 02 1E */	lbz r3, 0x21e(r31)
/* 8059A7AC  54 60 E7 FE */	rlwinm r0, r3, 0x1c, 0x1f, 0x1f
/* 8059A7B0  28 00 00 01 */	cmplwi r0, 1
/* 8059A7B4  40 82 00 20 */	bne lbl_8059A7D4
/* 8059A7B8  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 8059A7BC  40 82 00 18 */	bne lbl_8059A7D4
/* 8059A7C0  7F E3 FB 78 */	mr r3, r31
/* 8059A7C4  7F C5 F3 78 */	mr r5, r30
/* 8059A7C8  38 80 00 01 */	li r4, 1
/* 8059A7CC  4B FF FF 55 */	bl aIGK_setupAction
/* 8059A7D0  48 00 00 18 */	b lbl_8059A7E8
lbl_8059A7D4:
/* 8059A7D4  81 9F 01 DC */	lwz r12, 0x1dc(r31)
/* 8059A7D8  7F E3 FB 78 */	mr r3, r31
/* 8059A7DC  7F C4 F3 78 */	mr r4, r30
/* 8059A7E0  7D 89 03 A6 */	mtctr r12
/* 8059A7E4  4E 80 04 21 */	bctrl 
lbl_8059A7E8:
/* 8059A7E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059A7EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059A7F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059A7F4  7C 08 03 A6 */	mtlr r0
/* 8059A7F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8059A7FC  4E 80 00 20 */	blr 
