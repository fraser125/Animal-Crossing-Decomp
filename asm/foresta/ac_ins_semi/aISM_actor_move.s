lbl_8059F8C0:
/* 8059F8C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059F8C4  7C 08 02 A6 */	mflr r0
/* 8059F8C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059F8CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059F8D0  7C 7F 1B 78 */	mr r31, r3
/* 8059F8D4  93 C1 00 08 */	stw r30, 8(r1)
/* 8059F8D8  7C 9E 23 78 */	mr r30, r4
/* 8059F8DC  4B E3 C7 DD */	bl mPlib_Get_item_net_catch_label
/* 8059F8E0  7C 03 F8 40 */	cmplw r3, r31
/* 8059F8E4  40 82 00 18 */	bne lbl_8059F8FC
/* 8059F8E8  7F E3 FB 78 */	mr r3, r31
/* 8059F8EC  7F C5 F3 78 */	mr r5, r30
/* 8059F8F0  38 80 00 01 */	li r4, 1
/* 8059F8F4  4B FF FF 81 */	bl aISM_setupAction
/* 8059F8F8  48 00 00 44 */	b lbl_8059F93C
lbl_8059F8FC:
/* 8059F8FC  88 7F 02 1E */	lbz r3, 0x21e(r31)
/* 8059F900  54 60 E7 FE */	rlwinm r0, r3, 0x1c, 0x1f, 0x1f
/* 8059F904  28 00 00 01 */	cmplwi r0, 1
/* 8059F908  40 82 00 20 */	bne lbl_8059F928
/* 8059F90C  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 8059F910  40 82 00 18 */	bne lbl_8059F928
/* 8059F914  7F E3 FB 78 */	mr r3, r31
/* 8059F918  7F C5 F3 78 */	mr r5, r30
/* 8059F91C  38 80 00 01 */	li r4, 1
/* 8059F920  4B FF FF 55 */	bl aISM_setupAction
/* 8059F924  48 00 00 18 */	b lbl_8059F93C
lbl_8059F928:
/* 8059F928  81 9F 01 DC */	lwz r12, 0x1dc(r31)
/* 8059F92C  7F E3 FB 78 */	mr r3, r31
/* 8059F930  7F C4 F3 78 */	mr r4, r30
/* 8059F934  7D 89 03 A6 */	mtctr r12
/* 8059F938  4E 80 04 21 */	bctrl 
lbl_8059F93C:
/* 8059F93C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059F940  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059F944  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059F948  7C 08 03 A6 */	mtlr r0
/* 8059F94C  38 21 00 10 */	addi r1, r1, 0x10
/* 8059F950  4E 80 00 20 */	blr 
