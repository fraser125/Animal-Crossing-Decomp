lbl_8050183C:
/* 8050183C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80501840  7C 08 02 A6 */	mflr r0
/* 80501844  90 01 00 24 */	stw r0, 0x24(r1)
/* 80501848  39 61 00 20 */	addi r11, r1, 0x20
/* 8050184C  4B B9 96 89 */	bl func_8009AED4
/* 80501850  2C 05 00 00 */	cmpwi r5, 0
/* 80501854  7C 7D 1B 78 */	mr r29, r3
/* 80501858  7C 9E 23 78 */	mr r30, r4
/* 8050185C  41 82 00 30 */	beq lbl_8050188C
/* 80501860  4B FD 3B 0D */	bl Player_actor_SettleRequestMainIndexPriority
/* 80501864  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80501868  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 8050186C  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 80501870  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 80501874  C0 25 00 00 */	lfs f1, 0(r5)
/* 80501878  7F C3 F3 78 */	mr r3, r30
/* 8050187C  38 80 00 00 */	li r4, 0
/* 80501880  38 A0 00 01 */	li r5, 1
/* 80501884  4B FE 43 79 */	bl func_804E5BFC
/* 80501888  48 00 00 98 */	b lbl_80501920
lbl_8050188C:
/* 8050188C  3C 60 80 65 */	lis r3, lit_10345@ha /* 0x806484E8@ha */
/* 80501890  3B FD 01 74 */	addi r31, r29, 0x174
/* 80501894  C0 23 84 E8 */	lfs f1, lit_10345@l(r3)  /* 0x806484E8@l */
/* 80501898  7F E3 FB 78 */	mr r3, r31
/* 8050189C  4B FD 5D 65 */	bl Player_actor_Check_AnimationFrame
/* 805018A0  2C 03 00 00 */	cmpwi r3, 0
/* 805018A4  41 82 00 1C */	beq lbl_805018C0
/* 805018A8  7F A3 EB 78 */	mr r3, r29
/* 805018AC  4B FD 3A C1 */	bl Player_actor_SettleRequestMainIndexPriority
/* 805018B0  7F A3 EB 78 */	mr r3, r29
/* 805018B4  38 80 00 01 */	li r4, 1
/* 805018B8  4B FD 3F 65 */	bl Player_actor_Set_status_for_bee
/* 805018BC  48 00 00 64 */	b lbl_80501920
lbl_805018C0:
/* 805018C0  3C 60 80 64 */	lis r3, lit_4068@ha /* 0x80647A90@ha */
/* 805018C4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 805018C8  C0 03 7A 90 */	lfs f0, lit_4068@l(r3)  /* 0x80647A90@l */
/* 805018CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805018D0  4C 40 13 82 */	cror 2, 0, 2
/* 805018D4  40 82 00 4C */	bne lbl_80501920
/* 805018D8  4B FD 31 29 */	bl Player_actor_GetController_move_percentX
/* 805018DC  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 805018E0  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 805018E4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805018E8  40 82 00 18 */	bne lbl_80501900
/* 805018EC  4B FD 31 59 */	bl Player_actor_GetController_move_percentY
/* 805018F0  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 805018F4  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 805018F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805018FC  41 82 00 24 */	beq lbl_80501920
lbl_80501900:
/* 80501900  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 80501904  7F C3 F3 78 */	mr r3, r30
/* 80501908  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 8050190C  38 80 00 00 */	li r4, 0
/* 80501910  C0 25 00 00 */	lfs f1, 0(r5)
/* 80501914  38 A0 00 00 */	li r5, 0
/* 80501918  38 C0 00 01 */	li r6, 1
/* 8050191C  4B FE 47 35 */	bl func_804E6050
lbl_80501920:
/* 80501920  39 61 00 20 */	addi r11, r1, 0x20
/* 80501924  4B B9 95 FD */	bl func_8009AF20
/* 80501928  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050192C  7C 08 03 A6 */	mtlr r0
/* 80501930  38 21 00 20 */	addi r1, r1, 0x20
/* 80501934  4E 80 00 20 */	blr 
