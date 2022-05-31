lbl_80506E4C:
/* 80506E4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80506E50  7C 08 02 A6 */	mflr r0
/* 80506E54  90 01 00 34 */	stw r0, 0x34(r1)
/* 80506E58  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80506E5C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80506E60  39 61 00 20 */	addi r11, r1, 0x20
/* 80506E64  4B B9 40 71 */	bl func_8009AED4
/* 80506E68  7C 7D 1B 78 */	mr r29, r3
/* 80506E6C  7C 9E 23 78 */	mr r30, r4
/* 80506E70  80 03 0D 24 */	lwz r0, 0xd24(r3)
/* 80506E74  7C BF 2B 78 */	mr r31, r5
/* 80506E78  C3 E3 01 84 */	lfs f31, 0x184(r3)
/* 80506E7C  2C 00 00 00 */	cmpwi r0, 0
/* 80506E80  40 82 00 2C */	bne lbl_80506EAC
/* 80506E84  3C 60 80 64 */	lis r3, lit_5992@ha /* 0x80647DCC@ha */
/* 80506E88  C0 3D 01 78 */	lfs f1, 0x178(r29)
/* 80506E8C  C0 03 7D CC */	lfs f0, lit_5992@l(r3)  /* 0x80647DCC@l */
/* 80506E90  EC 01 00 28 */	fsubs f0, f1, f0
/* 80506E94  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80506E98  4C 41 13 82 */	cror 2, 1, 2
/* 80506E9C  40 82 00 1C */	bne lbl_80506EB8
/* 80506EA0  38 00 00 01 */	li r0, 1
/* 80506EA4  90 1D 0D 24 */	stw r0, 0xd24(r29)
/* 80506EA8  48 00 00 10 */	b lbl_80506EB8
lbl_80506EAC:
/* 80506EAC  7F C3 F3 78 */	mr r3, r30
/* 80506EB0  38 80 00 01 */	li r4, 1
/* 80506EB4  4B FD 80 39 */	bl Player_actor_CheckAndRequest_main_radio_exercise_all
lbl_80506EB8:
/* 80506EB8  80 1D 0D 20 */	lwz r0, 0xd20(r29)
/* 80506EBC  2C 00 00 00 */	cmpwi r0, 0
/* 80506EC0  40 82 00 40 */	bne lbl_80506F00
/* 80506EC4  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 80506EC8  C0 3D 01 78 */	lfs f1, 0x178(r29)
/* 80506ECC  C0 03 6C 4C */	lfs f0, lit_2671@l(r3)  /* 0x80646C4C@l */
/* 80506ED0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80506ED4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80506ED8  4C 41 13 82 */	cror 2, 1, 2
/* 80506EDC  40 82 00 90 */	bne lbl_80506F6C
/* 80506EE0  7F A3 EB 78 */	mr r3, r29
/* 80506EE4  4B FC E4 89 */	bl Player_actor_SettleRequestMainIndexPriority
/* 80506EE8  7F A3 EB 78 */	mr r3, r29
/* 80506EEC  38 80 00 01 */	li r4, 1
/* 80506EF0  4B FC E9 2D */	bl Player_actor_Set_status_for_bee
/* 80506EF4  38 00 00 01 */	li r0, 1
/* 80506EF8  90 1D 0D 20 */	stw r0, 0xd20(r29)
/* 80506EFC  48 00 00 70 */	b lbl_80506F6C
lbl_80506F00:
/* 80506F00  2C 1F 00 00 */	cmpwi r31, 0
/* 80506F04  41 82 00 68 */	beq lbl_80506F6C
/* 80506F08  80 9D 12 3C */	lwz r4, 0x123c(r29)
/* 80506F0C  C0 3D 12 40 */	lfs f1, 0x1240(r29)
/* 80506F10  2C 04 00 00 */	cmpwi r4, 0
/* 80506F14  41 80 00 34 */	blt lbl_80506F48
/* 80506F18  2C 04 00 12 */	cmpwi r4, 0x12
/* 80506F1C  40 80 00 2C */	bge lbl_80506F48
/* 80506F20  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 80506F24  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 80506F28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80506F2C  4C 40 13 82 */	cror 2, 0, 2
/* 80506F30  40 82 00 18 */	bne lbl_80506F48
/* 80506F34  C0 3D 01 80 */	lfs f1, 0x180(r29)
/* 80506F38  7F C3 F3 78 */	mr r3, r30
/* 80506F3C  38 A0 00 04 */	li r5, 4
/* 80506F40  4B FF FB D1 */	bl func_80506B10
/* 80506F44  48 00 00 28 */	b lbl_80506F6C
lbl_80506F48:
/* 80506F48  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80506F4C  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 80506F50  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 80506F54  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 80506F58  C0 25 00 00 */	lfs f1, 0(r5)
/* 80506F5C  7F C3 F3 78 */	mr r3, r30
/* 80506F60  38 80 00 04 */	li r4, 4
/* 80506F64  38 A0 00 01 */	li r5, 1
/* 80506F68  4B FD EC 95 */	bl func_804E5BFC
lbl_80506F6C:
/* 80506F6C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80506F70  39 61 00 20 */	addi r11, r1, 0x20
/* 80506F74  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80506F78  4B B9 3F A9 */	bl func_8009AF20
/* 80506F7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80506F80  7C 08 03 A6 */	mtlr r0
/* 80506F84  38 21 00 30 */	addi r1, r1, 0x30
/* 80506F88  4E 80 00 20 */	blr 
