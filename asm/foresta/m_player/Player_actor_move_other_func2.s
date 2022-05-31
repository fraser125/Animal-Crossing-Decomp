lbl_804E06B0:
/* 804E06B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E06B4  7C 08 02 A6 */	mflr r0
/* 804E06B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E06BC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804E06C0  7C 9F 23 78 */	mr r31, r4
/* 804E06C4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804E06C8  7C 7E 1B 78 */	mr r30, r3
/* 804E06CC  4B FF 69 15 */	bl Player_actor_set_eye_PositionAndAngle
/* 804E06D0  7F C3 F3 78 */	mr r3, r30
/* 804E06D4  4B FF EA D1 */	bl func_804DF1A4
/* 804E06D8  7F C3 F3 78 */	mr r3, r30
/* 804E06DC  7F E4 FB 78 */	mr r4, r31
/* 804E06E0  4B FF E9 E9 */	bl Player_actor_Set_Indoor_Camera_Index
/* 804E06E4  7F C3 F3 78 */	mr r3, r30
/* 804E06E8  7F E4 FB 78 */	mr r4, r31
/* 804E06EC  4B FF FD B1 */	bl Player_actor_check_forward
/* 804E06F0  7F E3 FB 78 */	mr r3, r31
/* 804E06F4  4B EC 83 9D */	bl mFI_SetPlayerWade
/* 804E06F8  7F C3 F3 78 */	mr r3, r30
/* 804E06FC  7F E4 FB 78 */	mr r4, r31
/* 804E0700  4B FF BA 2D */	bl Player_actor_check_little_shake_tree
/* 804E0704  7F C3 F3 78 */	mr r3, r30
/* 804E0708  4B FF BD B9 */	bl Player_actor_check_shake_tree_timer
/* 804E070C  7F C3 F3 78 */	mr r3, r30
/* 804E0710  7F E4 FB 78 */	mr r4, r31
/* 804E0714  4B FF C2 85 */	bl Player_actor_check_pitfall
/* 804E0718  7F C3 F3 78 */	mr r3, r30
/* 804E071C  7F E4 FB 78 */	mr r4, r31
/* 804E0720  4B FF C5 95 */	bl Player_actor_set_ripple
/* 804E0724  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804E0728  80 1E 0C F8 */	lwz r0, 0xcf8(r30)
/* 804E072C  38 A3 61 38 */	addi r5, r3, debug_mode@l /* 0x81166138@l */
/* 804E0730  80 85 00 00 */	lwz r4, 0(r5)
/* 804E0734  7F C3 F3 78 */	mr r3, r30
/* 804E0738  B0 04 16 82 */	sth r0, 0x1682(r4)
/* 804E073C  80 1E 0D 0C */	lwz r0, 0xd0c(r30)
/* 804E0740  80 85 00 00 */	lwz r4, 0(r5)
/* 804E0744  B0 04 16 84 */	sth r0, 0x1684(r4)
/* 804E0748  A8 1E 00 36 */	lha r0, 0x36(r30)
/* 804E074C  80 85 00 00 */	lwz r4, 0(r5)
/* 804E0750  B0 04 16 86 */	sth r0, 0x1686(r4)
/* 804E0754  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 804E0758  80 85 00 00 */	lwz r4, 0(r5)
/* 804E075C  B0 04 16 88 */	sth r0, 0x1688(r4)
/* 804E0760  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 804E0764  80 85 00 00 */	lwz r4, 0(r5)
/* 804E0768  FC 00 00 1E */	fctiwz f0, f0
/* 804E076C  D8 01 00 08 */	stfd f0, 8(r1)
/* 804E0770  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804E0774  B0 04 16 8A */	sth r0, 0x168a(r4)
/* 804E0778  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 804E077C  80 85 00 00 */	lwz r4, 0(r5)
/* 804E0780  FC 00 00 1E */	fctiwz f0, f0
/* 804E0784  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804E0788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E078C  B0 04 16 8C */	sth r0, 0x168c(r4)
/* 804E0790  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 804E0794  80 85 00 00 */	lwz r4, 0(r5)
/* 804E0798  FC 00 00 1E */	fctiwz f0, f0
/* 804E079C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804E07A0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804E07A4  B0 04 16 8E */	sth r0, 0x168e(r4)
/* 804E07A8  4B FF E8 61 */	bl Player_actor_Set_old_sound_frame_counter
/* 804E07AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E07B0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804E07B4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804E07B8  7C 08 03 A6 */	mtlr r0
/* 804E07BC  38 21 00 30 */	addi r1, r1, 0x30
/* 804E07C0  4E 80 00 20 */	blr 
