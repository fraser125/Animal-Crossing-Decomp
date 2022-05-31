lbl_8048D908:
/* 8048D908  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048D90C  7C 08 02 A6 */	mflr r0
/* 8048D910  3D 00 81 14 */	lis r8, common_data@ha /* 0x81138538@ha */
/* 8048D914  7C 6C 1B 78 */	mr r12, r3
/* 8048D918  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048D91C  39 08 85 38 */	addi r8, r8, common_data@l /* 0x81138538@l */
/* 8048D920  38 61 00 08 */	addi r3, r1, 8
/* 8048D924  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8048D928  7C BF 2B 78 */	mr r31, r5
/* 8048D92C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8048D930  7C 9E 23 78 */	mr r30, r4
/* 8048D934  3C 88 00 02 */	addis r4, r8, 2
/* 8048D938  A0 04 61 26 */	lhz r0, 0x6126(r4)
/* 8048D93C  38 81 00 0C */	addi r4, r1, 0xc
/* 8048D940  98 C1 00 0E */	stb r6, 0xe(r1)
/* 8048D944  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8048D948  98 E1 00 0F */	stb r7, 0xf(r1)
/* 8048D94C  7D 89 03 A6 */	mtctr r12
/* 8048D950  4E 80 04 21 */	bctrl 
/* 8048D954  88 61 00 0A */	lbz r3, 0xa(r1)
/* 8048D958  28 03 00 0D */	cmplwi r3, 0xd
/* 8048D95C  40 82 00 20 */	bne lbl_8048D97C
/* 8048D960  4B F3 1D 49 */	bl func_803BF6A8
/* 8048D964  3C A0 80 69 */	lis r5, uru_tuki@ha /* 0x8068B228@ha */
/* 8048D968  7F C4 F3 78 */	mr r4, r30
/* 8048D96C  38 A5 B2 28 */	addi r5, r5, uru_tuki@l /* 0x8068B228@l */
/* 8048D970  38 C0 00 0A */	li r6, 0xa
/* 8048D974  4B F3 22 E1 */	bl mMsg_Set_free_str
/* 8048D978  48 00 00 0C */	b lbl_8048D984
lbl_8048D97C:
/* 8048D97C  7F C4 F3 78 */	mr r4, r30
/* 8048D980  4B FF FE 09 */	bl aQMgr_set_number_free_str_add_gatu
lbl_8048D984:
/* 8048D984  88 61 00 0B */	lbz r3, 0xb(r1)
/* 8048D988  7F E4 FB 78 */	mr r4, r31
/* 8048D98C  4B FF FE 89 */	bl aQMgr_set_number_free_str_add_nichi
/* 8048D990  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048D994  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8048D998  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8048D99C  7C 08 03 A6 */	mtlr r0
/* 8048D9A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8048D9A4  4E 80 00 20 */	blr 
