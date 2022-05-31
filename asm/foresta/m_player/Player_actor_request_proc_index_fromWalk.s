lbl_804E69B8:
/* 804E69B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E69BC  7C 08 02 A6 */	mflr r0
/* 804E69C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E69C4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804E69C8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804E69CC  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 804E69D0  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 804E69D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E69D8  93 C1 00 08 */	stw r30, 8(r1)
/* 804E69DC  7C 7E 1B 78 */	mr r30, r3
/* 804E69E0  7C 9F 23 78 */	mr r31, r4
/* 804E69E4  4B EB 44 D5 */	bl mEv_CheckTitleDemo
/* 804E69E8  7C 60 00 34 */	cntlzw r0, r3
/* 804E69EC  38 60 00 01 */	li r3, 1
/* 804E69F0  5C 65 07 FE */	rlwnm r5, r3, r0, 0x1f, 0x1f
/* 804E69F4  7F E4 FB 78 */	mr r4, r31
/* 804E69F8  7F C3 F3 78 */	mr r3, r30
/* 804E69FC  4B FF 30 A1 */	bl Player_actor_Set_ScrollDemo_forWade
/* 804E6A00  88 1E 00 98 */	lbz r0, 0x98(r30)
/* 804E6A04  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 804E6A08  40 82 00 20 */	bne lbl_804E6A28
/* 804E6A0C  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804E6A10  7F E3 FB 78 */	mr r3, r31
/* 804E6A14  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804E6A18  38 80 00 01 */	li r4, 1
/* 804E6A1C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E6A20  38 A0 00 01 */	li r5, 1
/* 804E6A24  48 00 1F 89 */	bl func_804E89AC
lbl_804E6A28:
/* 804E6A28  7F E3 FB 78 */	mr r3, r31
/* 804E6A2C  38 80 00 04 */	li r4, 4
/* 804E6A30  4B FF 2A B9 */	bl Player_actor_CheckAndRequest_main_axe_all
/* 804E6A34  7F E3 FB 78 */	mr r3, r31
/* 804E6A38  4B FE DB C1 */	bl Player_actor_CheckController_forNet
/* 804E6A3C  2C 03 00 00 */	cmpwi r3, 0
/* 804E6A40  41 82 00 10 */	beq lbl_804E6A50
/* 804E6A44  7F E3 FB 78 */	mr r3, r31
/* 804E6A48  38 80 00 04 */	li r4, 4
/* 804E6A4C  48 00 B4 D9 */	bl func_804F1F24
lbl_804E6A50:
/* 804E6A50  7F E3 FB 78 */	mr r3, r31
/* 804E6A54  4B FE DC 21 */	bl Player_actor_CheckController_forRod
/* 804E6A58  2C 03 00 00 */	cmpwi r3, 0
/* 804E6A5C  41 82 00 10 */	beq lbl_804E6A6C
/* 804E6A60  7F E3 FB 78 */	mr r3, r31
/* 804E6A64  38 80 00 04 */	li r4, 4
/* 804E6A68  48 00 E1 81 */	bl func_804F4BE8
lbl_804E6A6C:
/* 804E6A6C  7F E3 FB 78 */	mr r3, r31
/* 804E6A70  38 80 00 04 */	li r4, 4
/* 804E6A74  4B FF 3B A5 */	bl Player_actor_CheckAndRequest_main_scoop_all
/* 804E6A78  7F E3 FB 78 */	mr r3, r31
/* 804E6A7C  38 80 00 04 */	li r4, 4
/* 804E6A80  4B FF 2C 21 */	bl Player_actor_CheckAndRequest_main_umbrella_all
/* 804E6A84  7F E3 FB 78 */	mr r3, r31
/* 804E6A88  38 80 00 01 */	li r4, 1
/* 804E6A8C  38 A0 00 01 */	li r5, 1
/* 804E6A90  38 C0 00 04 */	li r6, 4
/* 804E6A94  4B FF 2C 71 */	bl Player_actor_CheckAndRequest_main_fan_all
/* 804E6A98  7F E3 FB 78 */	mr r3, r31
/* 804E6A9C  4B FF 5A 71 */	bl Player_actor_CheckAndRequest_main_shake_tree_all
/* 804E6AA0  7F E3 FB 78 */	mr r3, r31
/* 804E6AA4  4B FF 72 FD */	bl Player_actor_CheckAndRequest_main_pickup_all
/* 804E6AA8  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 804E6AAC  3C 60 80 65 */	lis r3, lit_7897@ha /* 0x80648378@ha */
/* 804E6AB0  38 83 83 78 */	addi r4, r3, lit_7897@l /* 0x80648378@l */
/* 804E6AB4  C3 DE 00 74 */	lfs f30, 0x74(r30)
/* 804E6AB8  EC 40 00 32 */	fmuls f2, f0, f0
/* 804E6ABC  C0 24 00 00 */	lfs f1, 0(r4)
/* 804E6AC0  3C 60 80 65 */	lis r3, lit_7898@ha /* 0x8064837C@ha */
/* 804E6AC4  C0 03 83 7C */	lfs f0, lit_7898@l(r3)  /* 0x8064837C@l */
/* 804E6AC8  EC 22 08 24 */	fdivs f1, f2, f1
/* 804E6ACC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E6AD0  4C 41 13 82 */	cror 2, 1, 2
/* 804E6AD4  40 82 00 20 */	bne lbl_804E6AF4
/* 804E6AD8  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804E6ADC  7F E3 FB 78 */	mr r3, r31
/* 804E6AE0  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804E6AE4  38 80 00 00 */	li r4, 0
/* 804E6AE8  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E6AEC  38 A0 00 01 */	li r5, 1
/* 804E6AF0  48 00 01 19 */	bl func_804E6C08
lbl_804E6AF4:
/* 804E6AF4  4B FE DF 0D */	bl Player_actor_GetController_move_percentX
/* 804E6AF8  FF E0 08 90 */	fmr f31, f1
/* 804E6AFC  4B FE DF 49 */	bl Player_actor_GetController_move_percentY
/* 804E6B00  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E6B04  C0 43 65 68 */	lfs f2, lit_604@l(r3)  /* 0x80646568@l */
/* 804E6B08  FC 02 F0 00 */	fcmpu cr0, f2, f30
/* 804E6B0C  40 82 00 30 */	bne lbl_804E6B3C
/* 804E6B10  FC 02 F8 00 */	fcmpu cr0, f2, f31
/* 804E6B14  40 82 00 28 */	bne lbl_804E6B3C
/* 804E6B18  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 804E6B1C  40 82 00 20 */	bne lbl_804E6B3C
/* 804E6B20  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804E6B24  38 A0 00 01 */	li r5, 1
/* 804E6B28  38 83 83 54 */	addi r4, r3, lit_7381@l /* 0x80648354@l */
/* 804E6B2C  C0 24 00 00 */	lfs f1, 0(r4)
/* 804E6B30  7F E3 FB 78 */	mr r3, r31
/* 804E6B34  38 80 00 00 */	li r4, 0
/* 804E6B38  4B FF F0 C5 */	bl func_804E5BFC
lbl_804E6B3C:
/* 804E6B3C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804E6B40  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804E6B44  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 804E6B48  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 804E6B4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E6B50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E6B54  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E6B58  7C 08 03 A6 */	mtlr r0
/* 804E6B5C  38 21 00 30 */	addi r1, r1, 0x30
/* 804E6B60  4E 80 00 20 */	blr 
