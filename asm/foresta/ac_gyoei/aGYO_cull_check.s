lbl_805A2540:
/* 805A2540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2544  7C 08 02 A6 */	mflr r0
/* 805A2548  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A254C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A2550  7C 9F 23 78 */	mr r31, r4
/* 805A2554  93 C1 00 08 */	stw r30, 8(r1)
/* 805A2558  7C 7E 1B 78 */	mr r30, r3
/* 805A255C  38 7F 20 0C */	addi r3, r31, 0x200c
/* 805A2560  38 9E 00 28 */	addi r4, r30, 0x28
/* 805A2564  38 BE 01 24 */	addi r5, r30, 0x124
/* 805A2568  38 DE 01 30 */	addi r6, r30, 0x130
/* 805A256C  4B E4 EE D5 */	bl func_803F1440
/* 805A2570  7F C3 F3 78 */	mr r3, r30
/* 805A2574  4B DD 24 11 */	bl Actor_draw_actor_no_culling_check
/* 805A2578  2C 03 00 00 */	cmpwi r3, 0
/* 805A257C  40 82 00 78 */	bne lbl_805A25F4
/* 805A2580  7F E3 FB 78 */	mr r3, r31
/* 805A2584  4B E3 70 BD */	bl get_player_actor_withoutCheck
/* 805A2588  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 805A258C  7C 64 1B 78 */	mr r4, r3
/* 805A2590  38 7E 00 28 */	addi r3, r30, 0x28
/* 805A2594  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 805A2598  38 84 00 28 */	addi r4, r4, 0x28
/* 805A259C  90 1E 00 20 */	stw r0, 0x20(r30)
/* 805A25A0  4B E1 8A 35 */	bl search_position_distance
/* 805A25A4  3C 60 80 65 */	lis r3, lit_637@ha /* 0x8064A390@ha */
/* 805A25A8  C0 03 A3 90 */	lfs f0, lit_637@l(r3)  /* 0x8064A390@l */
/* 805A25AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A25B0  40 81 00 50 */	ble lbl_805A2600
/* 805A25B4  88 7E 00 08 */	lbz r3, 8(r30)
/* 805A25B8  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 805A25BC  7C 63 07 74 */	extsb r3, r3
/* 805A25C0  7C 00 07 74 */	extsb r0, r0
/* 805A25C4  7C 03 00 00 */	cmpw r3, r0
/* 805A25C8  40 82 00 1C */	bne lbl_805A25E4
/* 805A25CC  88 7E 00 09 */	lbz r3, 9(r30)
/* 805A25D0  88 1F 00 E5 */	lbz r0, 0xe5(r31)
/* 805A25D4  7C 63 07 74 */	extsb r3, r3
/* 805A25D8  7C 00 07 74 */	extsb r0, r0
/* 805A25DC  7C 03 00 00 */	cmpw r3, r0
/* 805A25E0  41 82 00 20 */	beq lbl_805A2600
lbl_805A25E4:
/* 805A25E4  7F C3 F3 78 */	mr r3, r30
/* 805A25E8  7F E4 FB 78 */	mr r4, r31
/* 805A25EC  4B FF F7 F5 */	bl aGYO_destruct
/* 805A25F0  48 00 00 10 */	b lbl_805A2600
lbl_805A25F4:
/* 805A25F4  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 805A25F8  60 00 00 40 */	ori r0, r0, 0x40
/* 805A25FC  90 1E 00 20 */	stw r0, 0x20(r30)
lbl_805A2600:
/* 805A2600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A2608  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A260C  7C 08 03 A6 */	mtlr r0
/* 805A2610  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2614  4E 80 00 20 */	blr 
