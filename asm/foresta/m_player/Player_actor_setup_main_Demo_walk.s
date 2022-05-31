lbl_804FD290:
/* 804FD290  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FD294  7C 08 02 A6 */	mflr r0
/* 804FD298  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FD29C  39 61 00 30 */	addi r11, r1, 0x30
/* 804FD2A0  4B B9 DC 35 */	bl func_8009AED4
/* 804FD2A4  7C 7D 1B 78 */	mr r29, r3
/* 804FD2A8  7C 9E 23 78 */	mr r30, r4
/* 804FD2AC  C0 23 0D 60 */	lfs f1, 0xd60(r3)
/* 804FD2B0  3B E0 00 01 */	li r31, 1
/* 804FD2B4  C0 43 0D 64 */	lfs f2, 0xd64(r3)
/* 804FD2B8  C0 63 0D 68 */	lfs f3, 0xd68(r3)
/* 804FD2BC  4B ED E6 19 */	bl mPlib_Set_goal_player_demo_walk
/* 804FD2C0  80 7D 0D 6C */	lwz r3, 0xd6c(r29)
/* 804FD2C4  4B ED E7 99 */	bl mPlib_Set_continue_player_after_demo_walk
/* 804FD2C8  38 60 00 00 */	li r3, 0
/* 804FD2CC  4B ED E7 ED */	bl mPlib_Set_end_player_demo_walk
/* 804FD2D0  4B ED E7 BD */	bl mPlib_Get_continue_player_after_demo_walk
/* 804FD2D4  2C 03 00 00 */	cmpwi r3, 0
/* 804FD2D8  40 82 00 34 */	bne lbl_804FD30C
/* 804FD2DC  38 61 00 10 */	addi r3, r1, 0x10
/* 804FD2E0  4B FD AC D1 */	bl Player_actor_Get_DemoPosition
/* 804FD2E4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804FD2E8  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 804FD2EC  C0 7D 00 28 */	lfs f3, 0x28(r29)
/* 804FD2F0  C0 9D 00 30 */	lfs f4, 0x30(r29)
/* 804FD2F4  4B F0 BA 49 */	bl Math3DLengthSquare2D
/* 804FD2F8  3C 60 80 65 */	lis r3, lit_11384@ha /* 0x80648508@ha */
/* 804FD2FC  C0 03 85 08 */	lfs f0, lit_11384@l(r3)  /* 0x80648508@l */
/* 804FD300  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FD304  40 80 00 08 */	bge lbl_804FD30C
/* 804FD308  3B E0 00 00 */	li r31, 0
lbl_804FD30C:
/* 804FD30C  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804FD310  7F A3 EB 78 */	mr r3, r29
/* 804FD314  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804FD318  7F E4 FB 78 */	mr r4, r31
/* 804FD31C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FD320  38 A1 00 0C */	addi r5, r1, 0xc
/* 804FD324  38 C1 00 08 */	addi r6, r1, 8
/* 804FD328  4B FD CC 39 */	bl Player_actor_SetupItem_Base1
/* 804FD32C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FD330  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FD334  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FD338  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804FD33C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FD340  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FD344  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804FD348  7F A3 EB 78 */	mr r3, r29
/* 804FD34C  FC 40 08 90 */	fmr f2, f1
/* 804FD350  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804FD354  80 E1 00 08 */	lwz r7, 8(r1)
/* 804FD358  7F C4 F3 78 */	mr r4, r30
/* 804FD35C  7F E5 FB 78 */	mr r5, r31
/* 804FD360  4B FD 93 99 */	bl Player_actor_InitAnimation_Base1
/* 804FD364  7F A3 EB 78 */	mr r3, r29
/* 804FD368  7F C4 F3 78 */	mr r4, r30
/* 804FD36C  4B FD 85 8D */	bl Player_actor_setup_main_Base
/* 804FD370  39 61 00 30 */	addi r11, r1, 0x30
/* 804FD374  4B B9 DB AD */	bl func_8009AF20
/* 804FD378  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FD37C  7C 08 03 A6 */	mtlr r0
/* 804FD380  38 21 00 30 */	addi r1, r1, 0x30
/* 804FD384  4E 80 00 20 */	blr 
