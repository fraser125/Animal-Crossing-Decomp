lbl_804EE08C:
/* 804EE08C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EE090  7C 08 02 A6 */	mflr r0
/* 804EE094  2C 05 00 00 */	cmpwi r5, 0
/* 804EE098  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EE09C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EE0A0  7C 9F 23 78 */	mr r31, r4
/* 804EE0A4  93 C1 00 08 */	stw r30, 8(r1)
/* 804EE0A8  7C 7E 1B 78 */	mr r30, r3
/* 804EE0AC  41 82 00 84 */	beq lbl_804EE130
/* 804EE0B0  38 9E 0D 18 */	addi r4, r30, 0xd18
/* 804EE0B4  80 1E 0D 48 */	lwz r0, 0xd48(r30)
/* 804EE0B8  2C 00 00 00 */	cmpwi r0, 0
/* 804EE0BC  41 82 00 18 */	beq lbl_804EE0D4
/* 804EE0C0  A0 A4 00 28 */	lhz r5, 0x28(r4)
/* 804EE0C4  7F E3 FB 78 */	mr r3, r31
/* 804EE0C8  38 C0 00 15 */	li r6, 0x15
/* 804EE0CC  48 00 09 21 */	bl func_804EE9EC
/* 804EE0D0  48 00 00 60 */	b lbl_804EE130
lbl_804EE0D4:
/* 804EE0D4  A0 04 00 28 */	lhz r0, 0x28(r4)
/* 804EE0D8  28 00 22 3B */	cmplwi r0, 0x223b
/* 804EE0DC  40 82 00 28 */	bne lbl_804EE104
/* 804EE0E0  38 60 00 03 */	li r3, 3
/* 804EE0E4  4B EF 06 79 */	bl mPlib_Check_golden_item_get_demo_end
/* 804EE0E8  2C 03 00 00 */	cmpwi r3, 0
/* 804EE0EC  40 82 00 18 */	bne lbl_804EE104
/* 804EE0F0  7F E3 FB 78 */	mr r3, r31
/* 804EE0F4  38 80 00 03 */	li r4, 3
/* 804EE0F8  38 A0 00 22 */	li r5, 0x22
/* 804EE0FC  48 01 A3 A1 */	bl Player_actor_request_main_demo_get_golden_item_all
/* 804EE100  48 00 00 30 */	b lbl_804EE130
lbl_804EE104:
/* 804EE104  7F C3 F3 78 */	mr r3, r30
/* 804EE108  4B FE 72 65 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804EE10C  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804EE110  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804EE114  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804EE118  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804EE11C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EE120  7F E3 FB 78 */	mr r3, r31
/* 804EE124  38 80 00 00 */	li r4, 0
/* 804EE128  38 A0 00 01 */	li r5, 1
/* 804EE12C  4B FF 7A D1 */	bl func_804E5BFC
lbl_804EE130:
/* 804EE130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EE134  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EE138  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EE13C  7C 08 03 A6 */	mtlr r0
/* 804EE140  38 21 00 10 */	addi r1, r1, 0x10
/* 804EE144  4E 80 00 20 */	blr 
