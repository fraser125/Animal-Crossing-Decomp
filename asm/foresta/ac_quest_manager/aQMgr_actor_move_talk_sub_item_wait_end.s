lbl_8048688C:
/* 8048688C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80486890  7C 08 02 A6 */	mflr r0
/* 80486894  90 01 00 14 */	stw r0, 0x14(r1)
/* 80486898  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048689C  3B E0 00 00 */	li r31, 0
/* 804868A0  93 C1 00 08 */	stw r30, 8(r1)
/* 804868A4  7C 7E 1B 78 */	mr r30, r3
/* 804868A8  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804868AC  2C 00 00 00 */	cmpwi r0, 0
/* 804868B0  40 82 00 0C */	bne lbl_804868BC
/* 804868B4  4B FF FA C1 */	bl aQMgr_set_npc_putaway
/* 804868B8  90 7E 01 B8 */	stw r3, 0x1b8(r30)
lbl_804868BC:
/* 804868BC  80 1E 01 B8 */	lwz r0, 0x1b8(r30)
/* 804868C0  2C 00 00 01 */	cmpwi r0, 1
/* 804868C4  40 82 00 0C */	bne lbl_804868D0
/* 804868C8  4B FF FB B9 */	bl aQMgr_check_npc_hand_item
/* 804868CC  90 7E 01 BC */	stw r3, 0x1bc(r30)
lbl_804868D0:
/* 804868D0  80 1E 01 B8 */	lwz r0, 0x1b8(r30)
/* 804868D4  2C 00 00 01 */	cmpwi r0, 1
/* 804868D8  40 82 00 20 */	bne lbl_804868F8
/* 804868DC  80 1E 01 BC */	lwz r0, 0x1bc(r30)
/* 804868E0  2C 00 00 01 */	cmpwi r0, 1
/* 804868E4  40 82 00 14 */	bne lbl_804868F8
/* 804868E8  38 00 00 00 */	li r0, 0
/* 804868EC  3B E0 00 01 */	li r31, 1
/* 804868F0  90 1E 01 B8 */	stw r0, 0x1b8(r30)
/* 804868F4  90 1E 01 BC */	stw r0, 0x1bc(r30)
lbl_804868F8:
/* 804868F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804868FC  7F E3 FB 78 */	mr r3, r31
/* 80486900  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80486904  83 C1 00 08 */	lwz r30, 8(r1)
/* 80486908  7C 08 03 A6 */	mtlr r0
/* 8048690C  38 21 00 10 */	addi r1, r1, 0x10
/* 80486910  4E 80 00 20 */	blr 