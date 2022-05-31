lbl_804EE88C:
/* 804EE88C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EE890  7C 08 02 A6 */	mflr r0
/* 804EE894  2C 05 00 00 */	cmpwi r5, 0
/* 804EE898  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EE89C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EE8A0  7C 9F 23 78 */	mr r31, r4
/* 804EE8A4  93 C1 00 08 */	stw r30, 8(r1)
/* 804EE8A8  7C 7E 1B 78 */	mr r30, r3
/* 804EE8AC  41 82 00 84 */	beq lbl_804EE930
/* 804EE8B0  38 9E 0D 18 */	addi r4, r30, 0xd18
/* 804EE8B4  80 1E 0D 44 */	lwz r0, 0xd44(r30)
/* 804EE8B8  2C 00 00 00 */	cmpwi r0, 0
/* 804EE8BC  41 82 00 18 */	beq lbl_804EE8D4
/* 804EE8C0  A0 A4 00 28 */	lhz r5, 0x28(r4)
/* 804EE8C4  7F E3 FB 78 */	mr r3, r31
/* 804EE8C8  38 C0 00 15 */	li r6, 0x15
/* 804EE8CC  48 00 01 21 */	bl func_804EE9EC
/* 804EE8D0  48 00 00 60 */	b lbl_804EE930
lbl_804EE8D4:
/* 804EE8D4  A0 04 00 28 */	lhz r0, 0x28(r4)
/* 804EE8D8  28 00 22 3B */	cmplwi r0, 0x223b
/* 804EE8DC  40 82 00 28 */	bne lbl_804EE904
/* 804EE8E0  38 60 00 03 */	li r3, 3
/* 804EE8E4  4B EE FE 79 */	bl mPlib_Check_golden_item_get_demo_end
/* 804EE8E8  2C 03 00 00 */	cmpwi r3, 0
/* 804EE8EC  40 82 00 18 */	bne lbl_804EE904
/* 804EE8F0  7F E3 FB 78 */	mr r3, r31
/* 804EE8F4  38 80 00 03 */	li r4, 3
/* 804EE8F8  38 A0 00 22 */	li r5, 0x22
/* 804EE8FC  48 01 9B A1 */	bl Player_actor_request_main_demo_get_golden_item_all
/* 804EE900  48 00 00 30 */	b lbl_804EE930
lbl_804EE904:
/* 804EE904  7F C3 F3 78 */	mr r3, r30
/* 804EE908  4B FE 6A 65 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804EE90C  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804EE910  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804EE914  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804EE918  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804EE91C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EE920  7F E3 FB 78 */	mr r3, r31
/* 804EE924  38 80 00 00 */	li r4, 0
/* 804EE928  38 A0 00 01 */	li r5, 1
/* 804EE92C  4B FF 72 D1 */	bl func_804E5BFC
lbl_804EE930:
/* 804EE930  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EE934  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EE938  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EE93C  7C 08 03 A6 */	mtlr r0
/* 804EE940  38 21 00 10 */	addi r1, r1, 0x10
/* 804EE944  4E 80 00 20 */	blr 
