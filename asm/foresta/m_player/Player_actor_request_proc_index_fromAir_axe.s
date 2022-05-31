lbl_804F08D8:
/* 804F08D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F08DC  7C 08 02 A6 */	mflr r0
/* 804F08E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F08E4  39 61 00 20 */	addi r11, r1, 0x20
/* 804F08E8  4B BA A5 ED */	bl func_8009AED4
/* 804F08EC  2C 05 00 00 */	cmpwi r5, 0
/* 804F08F0  7C 7D 1B 78 */	mr r29, r3
/* 804F08F4  7C 9E 23 78 */	mr r30, r4
/* 804F08F8  41 82 00 30 */	beq lbl_804F0928
/* 804F08FC  4B FE 4A 71 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F0900  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F0904  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F0908  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804F090C  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804F0910  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F0914  7F C3 F3 78 */	mr r3, r30
/* 804F0918  38 80 00 00 */	li r4, 0
/* 804F091C  38 A0 00 01 */	li r5, 1
/* 804F0920  4B FF 52 DD */	bl func_804E5BFC
/* 804F0924  48 00 00 AC */	b lbl_804F09D0
lbl_804F0928:
/* 804F0928  3C 60 80 65 */	lis r3, lit_10412@ha /* 0x806484EC@ha */
/* 804F092C  3B FD 01 74 */	addi r31, r29, 0x174
/* 804F0930  C0 23 84 EC */	lfs f1, lit_10412@l(r3)  /* 0x806484EC@l */
/* 804F0934  7F E3 FB 78 */	mr r3, r31
/* 804F0938  4B FE 6C C9 */	bl Player_actor_Check_AnimationFrame
/* 804F093C  2C 03 00 00 */	cmpwi r3, 0
/* 804F0940  41 82 00 1C */	beq lbl_804F095C
/* 804F0944  7F A3 EB 78 */	mr r3, r29
/* 804F0948  4B FE 4A 25 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F094C  7F A3 EB 78 */	mr r3, r29
/* 804F0950  38 80 00 01 */	li r4, 1
/* 804F0954  4B FE 4E C9 */	bl Player_actor_Set_status_for_bee
/* 804F0958  48 00 00 78 */	b lbl_804F09D0
lbl_804F095C:
/* 804F095C  3C 60 80 64 */	lis r3, lit_1076@ha /* 0x80646A18@ha */
/* 804F0960  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 804F0964  C0 03 6A 18 */	lfs f0, lit_1076@l(r3)  /* 0x80646A18@l */
/* 804F0968  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F096C  4C 41 13 82 */	cror 2, 1, 2
/* 804F0970  40 82 00 60 */	bne lbl_804F09D0
/* 804F0974  7F C3 F3 78 */	mr r3, r30
/* 804F0978  38 80 00 04 */	li r4, 4
/* 804F097C  4B FE 8B 6D */	bl Player_actor_CheckAndRequest_main_axe_all
/* 804F0980  2C 03 00 00 */	cmpwi r3, 0
/* 804F0984  40 82 00 4C */	bne lbl_804F09D0
/* 804F0988  4B FE 40 79 */	bl Player_actor_GetController_move_percentX
/* 804F098C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F0990  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F0994  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F0998  40 82 00 18 */	bne lbl_804F09B0
/* 804F099C  4B FE 40 A9 */	bl Player_actor_GetController_move_percentY
/* 804F09A0  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F09A4  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F09A8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F09AC  41 82 00 24 */	beq lbl_804F09D0
lbl_804F09B0:
/* 804F09B0  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804F09B4  7F C3 F3 78 */	mr r3, r30
/* 804F09B8  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804F09BC  38 80 00 00 */	li r4, 0
/* 804F09C0  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F09C4  38 A0 00 00 */	li r5, 0
/* 804F09C8  38 C0 00 01 */	li r6, 1
/* 804F09CC  4B FF 56 85 */	bl func_804E6050
lbl_804F09D0:
/* 804F09D0  39 61 00 20 */	addi r11, r1, 0x20
/* 804F09D4  4B BA A5 4D */	bl func_8009AF20
/* 804F09D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F09DC  7C 08 03 A6 */	mtlr r0
/* 804F09E0  38 21 00 20 */	addi r1, r1, 0x20
/* 804F09E4  4E 80 00 20 */	blr 
