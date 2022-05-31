lbl_8059D078:
/* 8059D078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059D07C  7C 08 02 A6 */	mflr r0
/* 8059D080  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059D084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059D088  7C 7F 1B 78 */	mr r31, r3
/* 8059D08C  93 C1 00 08 */	stw r30, 8(r1)
/* 8059D090  7C 9E 23 78 */	mr r30, r4
/* 8059D094  4B E3 F0 25 */	bl mPlib_Get_item_net_catch_label
/* 8059D098  7C 03 F8 40 */	cmplw r3, r31
/* 8059D09C  40 82 00 18 */	bne lbl_8059D0B4
/* 8059D0A0  7F E3 FB 78 */	mr r3, r31
/* 8059D0A4  7F C5 F3 78 */	mr r5, r30
/* 8059D0A8  38 80 00 01 */	li r4, 1
/* 8059D0AC  4B FF FF 81 */	bl aIKB_setupAction
/* 8059D0B0  48 00 00 44 */	b lbl_8059D0F4
lbl_8059D0B4:
/* 8059D0B4  88 7F 02 1E */	lbz r3, 0x21e(r31)
/* 8059D0B8  54 60 E7 FE */	rlwinm r0, r3, 0x1c, 0x1f, 0x1f
/* 8059D0BC  28 00 00 01 */	cmplwi r0, 1
/* 8059D0C0  40 82 00 20 */	bne lbl_8059D0E0
/* 8059D0C4  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 8059D0C8  40 82 00 18 */	bne lbl_8059D0E0
/* 8059D0CC  7F E3 FB 78 */	mr r3, r31
/* 8059D0D0  7F C5 F3 78 */	mr r5, r30
/* 8059D0D4  38 80 00 01 */	li r4, 1
/* 8059D0D8  4B FF FF 55 */	bl aIKB_setupAction
/* 8059D0DC  48 00 00 18 */	b lbl_8059D0F4
lbl_8059D0E0:
/* 8059D0E0  81 9F 01 DC */	lwz r12, 0x1dc(r31)
/* 8059D0E4  7F E3 FB 78 */	mr r3, r31
/* 8059D0E8  7F C4 F3 78 */	mr r4, r30
/* 8059D0EC  7D 89 03 A6 */	mtctr r12
/* 8059D0F0  4E 80 04 21 */	bctrl 
lbl_8059D0F4:
/* 8059D0F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059D0F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059D0FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059D100  7C 08 03 A6 */	mtlr r0
/* 8059D104  38 21 00 10 */	addi r1, r1, 0x10
/* 8059D108  4E 80 00 20 */	blr 
