lbl_80504D84:
/* 80504D84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80504D88  7C 08 02 A6 */	mflr r0
/* 80504D8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80504D90  39 61 00 20 */	addi r11, r1, 0x20
/* 80504D94  4B B9 61 41 */	bl func_8009AED4
/* 80504D98  2C 05 00 00 */	cmpwi r5, 0
/* 80504D9C  7C 7D 1B 78 */	mr r29, r3
/* 80504DA0  7C 9E 23 78 */	mr r30, r4
/* 80504DA4  41 82 00 30 */	beq lbl_80504DD4
/* 80504DA8  4B FD 05 C5 */	bl Player_actor_SettleRequestMainIndexPriority
/* 80504DAC  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80504DB0  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 80504DB4  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 80504DB8  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 80504DBC  C0 25 00 00 */	lfs f1, 0(r5)
/* 80504DC0  7F C3 F3 78 */	mr r3, r30
/* 80504DC4  38 80 00 00 */	li r4, 0
/* 80504DC8  38 A0 00 01 */	li r5, 1
/* 80504DCC  4B FE 0E 31 */	bl func_804E5BFC
/* 80504DD0  48 00 00 AC */	b lbl_80504E7C
lbl_80504DD4:
/* 80504DD4  3C 60 80 65 */	lis r3, lit_16043@ha /* 0x80648594@ha */
/* 80504DD8  3B FD 01 74 */	addi r31, r29, 0x174
/* 80504DDC  C0 23 85 94 */	lfs f1, lit_16043@l(r3)  /* 0x80648594@l */
/* 80504DE0  7F E3 FB 78 */	mr r3, r31
/* 80504DE4  4B FD 28 1D */	bl Player_actor_Check_AnimationFrame
/* 80504DE8  2C 03 00 00 */	cmpwi r3, 0
/* 80504DEC  41 82 00 1C */	beq lbl_80504E08
/* 80504DF0  7F A3 EB 78 */	mr r3, r29
/* 80504DF4  4B FD 05 79 */	bl Player_actor_SettleRequestMainIndexPriority
/* 80504DF8  7F A3 EB 78 */	mr r3, r29
/* 80504DFC  38 80 00 01 */	li r4, 1
/* 80504E00  4B FD 0A 1D */	bl Player_actor_Set_status_for_bee
/* 80504E04  48 00 00 78 */	b lbl_80504E7C
lbl_80504E08:
/* 80504E08  3C 60 80 64 */	lis r3, lit_2591@ha /* 0x80646C44@ha */
/* 80504E0C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80504E10  C0 03 6C 44 */	lfs f0, lit_2591@l(r3)  /* 0x80646C44@l */
/* 80504E14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80504E18  4C 41 13 82 */	cror 2, 1, 2
/* 80504E1C  40 82 00 60 */	bne lbl_80504E7C
/* 80504E20  7F C3 F3 78 */	mr r3, r30
/* 80504E24  38 80 00 04 */	li r4, 4
/* 80504E28  4B FD 48 79 */	bl Player_actor_CheckAndRequest_main_umbrella_all
/* 80504E2C  2C 03 00 00 */	cmpwi r3, 0
/* 80504E30  40 82 00 4C */	bne lbl_80504E7C
/* 80504E34  4B FC FB CD */	bl Player_actor_GetController_move_percentX
/* 80504E38  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 80504E3C  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 80504E40  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80504E44  40 82 00 18 */	bne lbl_80504E5C
/* 80504E48  4B FC FB FD */	bl Player_actor_GetController_move_percentY
/* 80504E4C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 80504E50  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 80504E54  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80504E58  41 82 00 24 */	beq lbl_80504E7C
lbl_80504E5C:
/* 80504E5C  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 80504E60  7F C3 F3 78 */	mr r3, r30
/* 80504E64  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 80504E68  38 80 00 00 */	li r4, 0
/* 80504E6C  C0 25 00 00 */	lfs f1, 0(r5)
/* 80504E70  38 A0 00 00 */	li r5, 0
/* 80504E74  38 C0 00 01 */	li r6, 1
/* 80504E78  4B FE 11 D9 */	bl func_804E6050
lbl_80504E7C:
/* 80504E7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80504E80  4B B9 60 A1 */	bl func_8009AF20
/* 80504E84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80504E88  7C 08 03 A6 */	mtlr r0
/* 80504E8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80504E90  4E 80 00 20 */	blr 
