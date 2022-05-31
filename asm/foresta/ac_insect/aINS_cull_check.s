lbl_80595284:
/* 80595284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80595288  7C 08 02 A6 */	mflr r0
/* 8059528C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80595290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80595294  7C 7F 1B 78 */	mr r31, r3
/* 80595298  38 BF 01 24 */	addi r5, r31, 0x124
/* 8059529C  93 C1 00 08 */	stw r30, 8(r1)
/* 805952A0  7C 9E 23 78 */	mr r30, r4
/* 805952A4  38 7E 20 0C */	addi r3, r30, 0x200c
/* 805952A8  38 9F 00 28 */	addi r4, r31, 0x28
/* 805952AC  38 DF 01 30 */	addi r6, r31, 0x130
/* 805952B0  4B E5 C1 91 */	bl func_803F1440
/* 805952B4  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 805952B8  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 805952BC  41 82 00 1C */	beq lbl_805952D8
/* 805952C0  4B E4 6D F9 */	bl mPlib_Get_item_net_catch_label
/* 805952C4  7C 03 F8 40 */	cmplw r3, r31
/* 805952C8  41 82 00 10 */	beq lbl_805952D8
/* 805952CC  7F E3 FB 78 */	mr r3, r31
/* 805952D0  7F C4 F3 78 */	mr r4, r30
/* 805952D4  4B FF F2 29 */	bl aINS_destruct
lbl_805952D8:
/* 805952D8  7F E3 FB 78 */	mr r3, r31
/* 805952DC  4B DD F6 A9 */	bl Actor_draw_actor_no_culling_check
/* 805952E0  2C 03 00 00 */	cmpwi r3, 0
/* 805952E4  40 82 00 A4 */	bne lbl_80595388
/* 805952E8  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 805952EC  2C 00 00 01 */	cmpwi r0, 1
/* 805952F0  40 82 00 20 */	bne lbl_80595310
/* 805952F4  4B E4 6D C5 */	bl mPlib_Get_item_net_catch_label
/* 805952F8  7C 03 F8 40 */	cmplw r3, r31
/* 805952FC  41 82 00 98 */	beq lbl_80595394
/* 80595300  7F E3 FB 78 */	mr r3, r31
/* 80595304  7F C4 F3 78 */	mr r4, r30
/* 80595308  4B FF F1 F5 */	bl aINS_destruct
/* 8059530C  48 00 00 88 */	b lbl_80595394
lbl_80595310:
/* 80595310  4B E4 6D A9 */	bl mPlib_Get_item_net_catch_label
/* 80595314  7C 03 F8 40 */	cmplw r3, r31
/* 80595318  41 82 00 10 */	beq lbl_80595328
/* 8059531C  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80595320  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80595324  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_80595328:
/* 80595328  3C 60 80 65 */	lis r3, lit_790@ha /* 0x80649D74@ha */
/* 8059532C  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80595330  C0 03 9D 74 */	lfs f0, lit_790@l(r3)  /* 0x80649D74@l */
/* 80595334  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80595338  40 81 00 5C */	ble lbl_80595394
/* 8059533C  88 7F 00 08 */	lbz r3, 8(r31)
/* 80595340  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 80595344  7C 63 07 74 */	extsb r3, r3
/* 80595348  7C 00 07 74 */	extsb r0, r0
/* 8059534C  7C 03 00 00 */	cmpw r3, r0
/* 80595350  40 82 00 1C */	bne lbl_8059536C
/* 80595354  88 7F 00 09 */	lbz r3, 9(r31)
/* 80595358  88 1E 00 E5 */	lbz r0, 0xe5(r30)
/* 8059535C  7C 63 07 74 */	extsb r3, r3
/* 80595360  7C 00 07 74 */	extsb r0, r0
/* 80595364  7C 03 00 00 */	cmpw r3, r0
/* 80595368  41 82 00 2C */	beq lbl_80595394
lbl_8059536C:
/* 8059536C  4B E4 6D 4D */	bl mPlib_Get_item_net_catch_label
/* 80595370  7C 03 F8 40 */	cmplw r3, r31
/* 80595374  41 82 00 20 */	beq lbl_80595394
/* 80595378  7F E3 FB 78 */	mr r3, r31
/* 8059537C  7F C4 F3 78 */	mr r4, r30
/* 80595380  4B FF F1 7D */	bl aINS_destruct
/* 80595384  48 00 00 10 */	b lbl_80595394
lbl_80595388:
/* 80595388  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 8059538C  60 00 00 40 */	ori r0, r0, 0x40
/* 80595390  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_80595394:
/* 80595394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80595398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059539C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805953A0  7C 08 03 A6 */	mtlr r0
/* 805953A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805953A8  4E 80 00 20 */	blr 
