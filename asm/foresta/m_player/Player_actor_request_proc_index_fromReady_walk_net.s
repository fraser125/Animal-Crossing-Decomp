lbl_804F2800:
/* 804F2800  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804F2804  7C 08 02 A6 */	mflr r0
/* 804F2808  90 01 00 44 */	stw r0, 0x44(r1)
/* 804F280C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804F2810  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804F2814  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804F2818  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804F281C  39 61 00 20 */	addi r11, r1, 0x20
/* 804F2820  4B BA 86 B5 */	bl func_8009AED4
/* 804F2824  7C 7D 1B 78 */	mr r29, r3
/* 804F2828  7C 9E 23 78 */	mr r30, r4
/* 804F282C  4B EE 97 3D */	bl mPlib_check_player_warp_forEvent
/* 804F2830  2C 03 00 00 */	cmpwi r3, 0
/* 804F2834  41 82 00 28 */	beq lbl_804F285C
/* 804F2838  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804F283C  7F C3 F3 78 */	mr r3, r30
/* 804F2840  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804F2844  38 80 00 00 */	li r4, 0
/* 804F2848  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F284C  38 A0 00 00 */	li r5, 0
/* 804F2850  38 C0 00 16 */	li r6, 0x16
/* 804F2854  4B FF 37 FD */	bl func_804E6050
/* 804F2858  48 00 00 C4 */	b lbl_804F291C
lbl_804F285C:
/* 804F285C  88 1D 00 98 */	lbz r0, 0x98(r29)
/* 804F2860  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 804F2864  40 82 00 20 */	bne lbl_804F2884
/* 804F2868  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804F286C  7F C3 F3 78 */	mr r3, r30
/* 804F2870  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804F2874  38 80 00 01 */	li r4, 1
/* 804F2878  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F287C  38 A0 00 01 */	li r5, 1
/* 804F2880  4B FF 61 2D */	bl func_804E89AC
lbl_804F2884:
/* 804F2884  7F C3 F3 78 */	mr r3, r30
/* 804F2888  4B FE 1D 71 */	bl Player_actor_CheckController_forNet
/* 804F288C  2C 03 00 00 */	cmpwi r3, 0
/* 804F2890  40 82 00 10 */	bne lbl_804F28A0
/* 804F2894  7F C3 F3 78 */	mr r3, r30
/* 804F2898  38 80 00 16 */	li r4, 0x16
/* 804F289C  48 00 01 4D */	bl func_804F29E8
lbl_804F28A0:
/* 804F28A0  C3 DD 00 74 */	lfs f30, 0x74(r29)
/* 804F28A4  4B FE 21 5D */	bl Player_actor_GetController_move_percentX
/* 804F28A8  FF E0 08 90 */	fmr f31, f1
/* 804F28AC  4B FE 21 99 */	bl Player_actor_GetController_move_percentY
/* 804F28B0  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F28B4  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F28B8  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 804F28BC  40 82 00 20 */	bne lbl_804F28DC
/* 804F28C0  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 804F28C4  40 82 00 18 */	bne lbl_804F28DC
/* 804F28C8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804F28CC  40 82 00 10 */	bne lbl_804F28DC
/* 804F28D0  7F C3 F3 78 */	mr r3, r30
/* 804F28D4  38 80 00 0D */	li r4, 0xd
/* 804F28D8  4B FF F6 4D */	bl func_804F1F24
lbl_804F28DC:
/* 804F28DC  8B FD 11 2B */	lbz r31, 0x112b(r29)
/* 804F28E0  7F A3 EB 78 */	mr r3, r29
/* 804F28E4  80 9D 0C F8 */	lwz r4, 0xcf8(r29)
/* 804F28E8  4B FE E0 BD */	bl Player_actor_Get_ItemKind
/* 804F28EC  7F E4 07 74 */	extsb r4, r31
/* 804F28F0  7C 60 07 74 */	extsb r0, r3
/* 804F28F4  7C 04 00 00 */	cmpw r4, r0
/* 804F28F8  41 82 00 24 */	beq lbl_804F291C
/* 804F28FC  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F2900  7F C3 F3 78 */	mr r3, r30
/* 804F2904  38 A4 65 68 */	addi r5, r4, lit_604@l /* 0x80646568@l */
/* 804F2908  38 80 00 00 */	li r4, 0
/* 804F290C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F2910  38 A0 00 00 */	li r5, 0
/* 804F2914  38 C0 00 16 */	li r6, 0x16
/* 804F2918  4B FF 37 39 */	bl func_804E6050
lbl_804F291C:
/* 804F291C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804F2920  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804F2924  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804F2928  39 61 00 20 */	addi r11, r1, 0x20
/* 804F292C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804F2930  4B BA 85 F1 */	bl func_8009AF20
/* 804F2934  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804F2938  7C 08 03 A6 */	mtlr r0
/* 804F293C  38 21 00 40 */	addi r1, r1, 0x40
/* 804F2940  4E 80 00 20 */	blr 
