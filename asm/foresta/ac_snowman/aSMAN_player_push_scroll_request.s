lbl_804A43C4:
/* 804A43C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804A43C8  7C 08 02 A6 */	mflr r0
/* 804A43CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A43D0  39 61 00 30 */	addi r11, r1, 0x30
/* 804A43D4  4B BF 6A FD */	bl func_8009AED0
/* 804A43D8  7C 9D 23 78 */	mr r29, r4
/* 804A43DC  7C 7C 1B 78 */	mr r28, r3
/* 804A43E0  7F A3 EB 78 */	mr r3, r29
/* 804A43E4  4B F3 52 5D */	bl get_player_actor_withoutCheck
/* 804A43E8  7C 60 1B 78 */	mr r0, r3
/* 804A43EC  3C A0 80 64 */	lis r5, lit_783@ha /* 0x80645D0C@ha */
/* 804A43F0  3C 80 80 64 */	lis r4, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A43F4  C0 25 5D 0C */	lfs f1, lit_783@l(r5)  /* 0x80645D0C@l */
/* 804A43F8  7C 1F 03 78 */	mr r31, r0
/* 804A43FC  C0 44 5C 8C */	lfs f2, data_80645C8C@l(r4)  /* 0x80645C8C@l */
/* 804A4400  38 61 00 08 */	addi r3, r1, 8
/* 804A4404  7F E4 FB 78 */	mr r4, r31
/* 804A4408  4B EE DC B9 */	bl mCoBG_UniqueWallCheck
/* 804A440C  A8 9F 00 36 */	lha r4, 0x36(r31)
/* 804A4410  38 7F 00 28 */	addi r3, r31, 0x28
/* 804A4414  4B F3 98 7D */	bl mPlib_CheckCondition_forWadeSnowball
/* 804A4418  7C 7E 1B 79 */	or. r30, r3, r3
/* 804A441C  41 82 00 24 */	beq lbl_804A4440
/* 804A4420  38 7C 00 28 */	addi r3, r28, 0x28
/* 804A4424  38 9F 00 28 */	addi r4, r31, 0x28
/* 804A4428  38 A1 00 14 */	addi r5, r1, 0x14
/* 804A442C  4B F1 6B 4D */	bl xyz_t_sub
/* 804A4430  7F C3 F3 78 */	mr r3, r30
/* 804A4434  38 81 00 14 */	addi r4, r1, 0x14
/* 804A4438  4B F3 97 81 */	bl mPlib_Set_ScrollDemo_forWade_snowball
/* 804A443C  48 00 00 44 */	b lbl_804A4480
lbl_804A4440:
/* 804A4440  C0 01 00 08 */	lfs f0, 8(r1)
/* 804A4444  3C 60 80 64 */	lis r3, lit_784@ha /* 0x80645D10@ha */
/* 804A4448  C0 23 5D 10 */	lfs f1, lit_784@l(r3)  /* 0x80645D10@l */
/* 804A444C  FC 00 02 10 */	fabs f0, f0
/* 804A4450  FC 00 00 18 */	frsp f0, f0
/* 804A4454  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A4458  40 80 00 18 */	bge lbl_804A4470
/* 804A445C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804A4460  FC 00 02 10 */	fabs f0, f0
/* 804A4464  FC 00 00 18 */	frsp f0, f0
/* 804A4468  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A446C  41 80 00 14 */	blt lbl_804A4480
lbl_804A4470:
/* 804A4470  7F A3 EB 78 */	mr r3, r29
/* 804A4474  4B FF FE 11 */	bl aSMAN_player_push_free
/* 804A4478  7F 83 E3 78 */	mr r3, r28
/* 804A447C  48 00 13 B9 */	bl aSMAN_process_normal_init
lbl_804A4480:
/* 804A4480  39 61 00 30 */	addi r11, r1, 0x30
/* 804A4484  4B BF 6A 99 */	bl func_8009AF1C
/* 804A4488  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A448C  7C 08 03 A6 */	mtlr r0
/* 804A4490  38 21 00 30 */	addi r1, r1, 0x30
/* 804A4494  4E 80 00 20 */	blr 
