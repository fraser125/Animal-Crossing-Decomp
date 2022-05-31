lbl_80492978:
/* 80492978  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049297C  7C 08 02 A6 */	mflr r0
/* 80492980  28 03 00 00 */	cmplwi r3, 0
/* 80492984  90 01 00 24 */	stw r0, 0x24(r1)
/* 80492988  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8049298C  7C BF 2B 78 */	mr r31, r5
/* 80492990  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80492994  7C 9E 23 78 */	mr r30, r4
/* 80492998  41 82 00 40 */	beq lbl_804929D8
/* 8049299C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804929A0  7C 6C 1B 78 */	mr r12, r3
/* 804929A4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804929A8  98 C1 00 0E */	stb r6, 0xe(r1)
/* 804929AC  3C 63 00 02 */	addis r3, r3, 2
/* 804929B0  38 81 00 0C */	addi r4, r1, 0xc
/* 804929B4  A0 03 61 26 */	lhz r0, 0x6126(r3)
/* 804929B8  38 61 00 08 */	addi r3, r1, 8
/* 804929BC  98 E1 00 0F */	stb r7, 0xf(r1)
/* 804929C0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 804929C4  B0 01 00 08 */	sth r0, 8(r1)
/* 804929C8  98 C1 00 0A */	stb r6, 0xa(r1)
/* 804929CC  98 E1 00 0B */	stb r7, 0xb(r1)
/* 804929D0  7D 89 03 A6 */	mtctr r12
/* 804929D4  4E 80 04 21 */	bctrl 
lbl_804929D8:
/* 804929D8  88 61 00 0A */	lbz r3, 0xa(r1)
/* 804929DC  28 03 00 0D */	cmplwi r3, 0xd
/* 804929E0  40 82 00 20 */	bne lbl_80492A00
/* 804929E4  4B F2 CC C5 */	bl func_803BF6A8
/* 804929E8  3C A0 80 69 */	lis r5, uru_tuki@ha /* 0x8068B764@ha */
/* 804929EC  7F C4 F3 78 */	mr r4, r30
/* 804929F0  38 A5 B7 64 */	addi r5, r5, uru_tuki@l /* 0x8068B764@l */
/* 804929F4  38 C0 00 0A */	li r6, 0xa
/* 804929F8  4B F2 D2 5D */	bl mMsg_Set_free_str
/* 804929FC  48 00 00 0C */	b lbl_80492A08
lbl_80492A00:
/* 80492A00  7F C4 F3 78 */	mr r4, r30
/* 80492A04  4B FF EC 89 */	bl aQMgr_set_number_free_str_add_gatu
lbl_80492A08:
/* 80492A08  88 61 00 0B */	lbz r3, 0xb(r1)
/* 80492A0C  7F E4 FB 78 */	mr r4, r31
/* 80492A10  4B FF ED 09 */	bl aQMgr_set_number_free_str_add_nichi
/* 80492A14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80492A18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80492A1C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80492A20  7C 08 03 A6 */	mtlr r0
/* 80492A24  38 21 00 20 */	addi r1, r1, 0x20
/* 80492A28  4E 80 00 20 */	blr 
