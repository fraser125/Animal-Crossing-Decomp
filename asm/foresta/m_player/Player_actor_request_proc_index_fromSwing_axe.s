lbl_804F047C:
/* 804F047C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F0480  7C 08 02 A6 */	mflr r0
/* 804F0484  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F0488  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 804F048C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 804F0490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F0494  93 C1 00 08 */	stw r30, 8(r1)
/* 804F0498  2C 06 00 00 */	cmpwi r6, 0
/* 804F049C  7C 7E 1B 78 */	mr r30, r3
/* 804F04A0  7C 9F 23 78 */	mr r31, r4
/* 804F04A4  40 82 01 24 */	bne lbl_804F05C8
/* 804F04A8  2C 05 00 00 */	cmpwi r5, 0
/* 804F04AC  41 82 00 30 */	beq lbl_804F04DC
/* 804F04B0  4B FE 4E BD */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F04B4  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F04B8  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F04BC  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804F04C0  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804F04C4  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F04C8  7F E3 FB 78 */	mr r3, r31
/* 804F04CC  38 80 00 00 */	li r4, 0
/* 804F04D0  38 A0 00 01 */	li r5, 1
/* 804F04D4  4B FF 57 29 */	bl func_804E5BFC
/* 804F04D8  48 00 00 F0 */	b lbl_804F05C8
lbl_804F04DC:
/* 804F04DC  80 1E 0D 30 */	lwz r0, 0xd30(r30)
/* 804F04E0  38 7E 01 74 */	addi r3, r30, 0x174
/* 804F04E4  C3 FE 01 84 */	lfs f31, 0x184(r30)
/* 804F04E8  2C 00 00 00 */	cmpwi r0, 0
/* 804F04EC  41 82 00 40 */	beq lbl_804F052C
/* 804F04F0  3C 60 80 65 */	lis r3, lit_8209@ha /* 0x80648438@ha */
/* 804F04F4  C0 03 84 38 */	lfs f0, lit_8209@l(r3)  /* 0x80648438@l */
/* 804F04F8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804F04FC  4C 41 13 82 */	cror 2, 1, 2
/* 804F0500  40 82 00 C8 */	bne lbl_804F05C8
/* 804F0504  3C 60 80 64 */	lis r3, lit_2592@ha /* 0x80646C48@ha */
/* 804F0508  A8 9E 0D 34 */	lha r4, 0xd34(r30)
/* 804F050C  38 A3 6C 48 */	addi r5, r3, lit_2592@l /* 0x80646C48@l */
/* 804F0510  7F E3 FB 78 */	mr r3, r31
/* 804F0514  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F0518  38 A0 00 01 */	li r5, 1
/* 804F051C  38 C0 00 01 */	li r6, 1
/* 804F0520  38 E0 00 15 */	li r7, 0x15
/* 804F0524  48 01 32 A9 */	bl func_805037CC
/* 804F0528  48 00 00 A0 */	b lbl_804F05C8
lbl_804F052C:
/* 804F052C  3C 80 80 65 */	lis r4, lit_10345@ha /* 0x806484E8@ha */
/* 804F0530  C0 24 84 E8 */	lfs f1, lit_10345@l(r4)  /* 0x806484E8@l */
/* 804F0534  4B FE 70 CD */	bl Player_actor_Check_AnimationFrame
/* 804F0538  2C 03 00 00 */	cmpwi r3, 0
/* 804F053C  41 82 00 1C */	beq lbl_804F0558
/* 804F0540  7F C3 F3 78 */	mr r3, r30
/* 804F0544  4B FE 4E 29 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F0548  7F C3 F3 78 */	mr r3, r30
/* 804F054C  38 80 00 01 */	li r4, 1
/* 804F0550  4B FE 52 CD */	bl Player_actor_Set_status_for_bee
/* 804F0554  48 00 00 74 */	b lbl_804F05C8
lbl_804F0558:
/* 804F0558  3C 60 80 65 */	lis r3, lit_8209@ha /* 0x80648438@ha */
/* 804F055C  C0 03 84 38 */	lfs f0, lit_8209@l(r3)  /* 0x80648438@l */
/* 804F0560  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804F0564  4C 41 13 82 */	cror 2, 1, 2
/* 804F0568  40 82 00 60 */	bne lbl_804F05C8
/* 804F056C  7F E3 FB 78 */	mr r3, r31
/* 804F0570  38 80 00 04 */	li r4, 4
/* 804F0574  4B FE 8F 75 */	bl Player_actor_CheckAndRequest_main_axe_all
/* 804F0578  2C 03 00 00 */	cmpwi r3, 0
/* 804F057C  40 82 00 4C */	bne lbl_804F05C8
/* 804F0580  4B FE 44 81 */	bl Player_actor_GetController_move_percentX
/* 804F0584  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F0588  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F058C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F0590  40 82 00 18 */	bne lbl_804F05A8
/* 804F0594  4B FE 44 B1 */	bl Player_actor_GetController_move_percentY
/* 804F0598  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F059C  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F05A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F05A4  41 82 00 24 */	beq lbl_804F05C8
lbl_804F05A8:
/* 804F05A8  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804F05AC  7F E3 FB 78 */	mr r3, r31
/* 804F05B0  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804F05B4  38 80 00 00 */	li r4, 0
/* 804F05B8  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F05BC  38 A0 00 00 */	li r5, 0
/* 804F05C0  38 C0 00 01 */	li r6, 1
/* 804F05C4  4B FF 5A 8D */	bl func_804E6050
lbl_804F05C8:
/* 804F05C8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 804F05CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F05D0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 804F05D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F05D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F05DC  7C 08 03 A6 */	mtlr r0
/* 804F05E0  38 21 00 20 */	addi r1, r1, 0x20
/* 804F05E4  4E 80 00 20 */	blr 
