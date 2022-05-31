lbl_804E32E4:
/* 804E32E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E32E8  7C 08 02 A6 */	mflr r0
/* 804E32EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E32F0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804E32F4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804E32F8  39 61 00 20 */	addi r11, r1, 0x20
/* 804E32FC  4B BB 7B CD */	bl func_8009AEC8
/* 804E3300  7C 9D 23 78 */	mr r29, r4
/* 804E3304  7C 7F 1B 78 */	mr r31, r3
/* 804E3308  7F A3 EB 78 */	mr r3, r29
/* 804E330C  4B ED 82 4D */	bl _Game_play_isPause
/* 804E3310  2C 03 00 00 */	cmpwi r3, 0
/* 804E3314  40 82 00 14 */	bne lbl_804E3328
/* 804E3318  7F E3 FB 78 */	mr r3, r31
/* 804E331C  4B FF F9 01 */	bl Player_actor_Item_Movement_balloon_normal
/* 804E3320  7F E3 FB 78 */	mr r3, r31
/* 804E3324  4B FF FE 2D */	bl Player_actor_Item_PlayAnimation_balloon_normal
lbl_804E3328:
/* 804E3328  80 1D 00 A0 */	lwz r0, 0xa0(r29)
/* 804E332C  83 5D 00 00 */	lwz r26, 0(r29)
/* 804E3330  54 03 45 EE */	rlwinm r3, r0, 8, 0x17, 0x17
/* 804E3334  3B C3 0A E8 */	addi r30, r3, 0xae8
/* 804E3338  7F DF F2 14 */	add r30, r31, r30
/* 804E333C  4B F2 8E 99 */	bl Matrix_push
/* 804E3340  A8 9F 11 78 */	lha r4, 0x1178(r31)
/* 804E3344  38 60 00 00 */	li r3, 0
/* 804E3348  A8 1F 11 7A */	lha r0, 0x117a(r31)
/* 804E334C  A8 BF 11 90 */	lha r5, 0x1190(r31)
/* 804E3350  7C 04 02 14 */	add r0, r4, r0
/* 804E3354  AB 7F 00 DE */	lha r27, 0xde(r31)
/* 804E3358  7C 80 2A 14 */	add r4, r0, r5
/* 804E335C  C3 FF 0D F8 */	lfs f31, 0xdf8(r31)
/* 804E3360  38 04 C0 00 */	addi r0, r4, -16384
/* 804E3364  C0 3F 10 44 */	lfs f1, 0x1044(r31)
/* 804E3368  C0 5F 10 48 */	lfs f2, 0x1048(r31)
/* 804E336C  7C 1C 07 34 */	extsh r28, r0
/* 804E3370  C0 7F 10 4C */	lfs f3, 0x104c(r31)
/* 804E3374  4B F2 8F 8D */	bl Matrix_translate
/* 804E3378  7F 63 DB 78 */	mr r3, r27
/* 804E337C  38 80 00 01 */	li r4, 1
/* 804E3380  4B F2 92 DD */	bl Matrix_RotateY
/* 804E3384  7F 83 E3 78 */	mr r3, r28
/* 804E3388  38 80 00 01 */	li r4, 1
/* 804E338C  4B F2 91 2D */	bl Matrix_RotateX
/* 804E3390  38 60 40 00 */	li r3, 0x4000
/* 804E3394  38 80 00 01 */	li r4, 1
/* 804E3398  4B F2 94 59 */	bl Matrix_RotateZ
/* 804E339C  A8 7F 11 7E */	lha r3, 0x117e(r31)
/* 804E33A0  38 80 00 01 */	li r4, 1
/* 804E33A4  4B F2 91 15 */	bl Matrix_RotateX
/* 804E33A8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 804E33AC  38 60 00 01 */	li r3, 1
/* 804E33B0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 804E33B4  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 804E33B8  EC 21 07 F2 */	fmuls f1, f1, f31
/* 804E33BC  EC 42 07 F2 */	fmuls f2, f2, f31
/* 804E33C0  EC 60 07 F2 */	fmuls f3, f0, f31
/* 804E33C4  4B F2 90 29 */	bl Matrix_scale
/* 804E33C8  83 7A 02 D0 */	lwz r27, 0x2d0(r26)
/* 804E33CC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804E33D0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804E33D4  7F 43 D3 78 */	mr r3, r26
/* 804E33D8  90 1B 00 00 */	stw r0, 0(r27)
/* 804E33DC  7F 7C DB 78 */	mr r28, r27
/* 804E33E0  3B 7B 00 08 */	addi r27, r27, 8
/* 804E33E4  4B F2 9F F1 */	bl _Matrix_to_Mtx_new
/* 804E33E8  90 7C 00 04 */	stw r3, 4(r28)
/* 804E33EC  7F A4 EB 78 */	mr r4, r29
/* 804E33F0  38 7F 10 44 */	addi r3, r31, 0x1044
/* 804E33F4  93 7A 02 D0 */	stw r27, 0x2d0(r26)
/* 804E33F8  4B E9 2B 85 */	bl Setpos_HiliteReflect_init
/* 804E33FC  3C 60 80 4E */	lis r3, Player_actor_Item_draw_balloon_Before@ha /* 0x804E323C@ha */
/* 804E3400  3C 80 80 4E */	lis r4, Player_actor_Item_draw_balloon_After@ha /* 0x804E3290@ha */
/* 804E3404  38 C3 32 3C */	addi r6, r3, Player_actor_Item_draw_balloon_Before@l /* 0x804E323C@l */
/* 804E3408  7F C5 F3 78 */	mr r5, r30
/* 804E340C  38 E4 32 90 */	addi r7, r4, Player_actor_Item_draw_balloon_After@l /* 0x804E3290@l */
/* 804E3410  7F A3 EB 78 */	mr r3, r29
/* 804E3414  7F E8 FB 78 */	mr r8, r31
/* 804E3418  38 9F 0A 18 */	addi r4, r31, 0xa18
/* 804E341C  4B E8 E3 1D */	bl cKF_Si3_draw_R_SV
/* 804E3420  4B F2 8D F5 */	bl Matrix_pull
/* 804E3424  38 00 00 00 */	li r0, 0
/* 804E3428  90 1F 0F 4C */	stw r0, 0xf4c(r31)
/* 804E342C  80 1F 11 70 */	lwz r0, 0x1170(r31)
/* 804E3430  2C 00 00 00 */	cmpwi r0, 0
/* 804E3434  40 82 00 24 */	bne lbl_804E3458
/* 804E3438  80 9F 11 54 */	lwz r4, 0x1154(r31)
/* 804E343C  38 00 00 01 */	li r0, 1
/* 804E3440  80 7F 11 58 */	lwz r3, 0x1158(r31)
/* 804E3444  90 9F 11 48 */	stw r4, 0x1148(r31)
/* 804E3448  90 7F 11 4C */	stw r3, 0x114c(r31)
/* 804E344C  80 7F 11 5C */	lwz r3, 0x115c(r31)
/* 804E3450  90 7F 11 50 */	stw r3, 0x1150(r31)
/* 804E3454  90 1F 11 70 */	stw r0, 0x1170(r31)
lbl_804E3458:
/* 804E3458  80 1F 11 8C */	lwz r0, 0x118c(r31)
/* 804E345C  2C 00 00 00 */	cmpwi r0, 0
/* 804E3460  41 82 00 0C */	beq lbl_804E346C
/* 804E3464  38 00 00 00 */	li r0, 0
/* 804E3468  90 1F 11 8C */	stw r0, 0x118c(r31)
lbl_804E346C:
/* 804E346C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804E3470  39 61 00 20 */	addi r11, r1, 0x20
/* 804E3474  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804E3478  4B BB 7A 9D */	bl func_8009AF14
/* 804E347C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E3480  7C 08 03 A6 */	mtlr r0
/* 804E3484  38 21 00 30 */	addi r1, r1, 0x30
/* 804E3488  4E 80 00 20 */	blr 
