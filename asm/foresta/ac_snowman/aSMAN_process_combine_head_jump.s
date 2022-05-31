lbl_804A6BC8:
/* 804A6BC8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804A6BCC  7C 08 02 A6 */	mflr r0
/* 804A6BD0  90 01 00 74 */	stw r0, 0x74(r1)
/* 804A6BD4  39 61 00 70 */	addi r11, r1, 0x70
/* 804A6BD8  4B BF 42 E9 */	bl func_8009AEC0
/* 804A6BDC  7C 7E 1B 78 */	mr r30, r3
/* 804A6BE0  7C 9F 23 78 */	mr r31, r4
/* 804A6BE4  A8 03 01 FA */	lha r0, 0x1fa(r3)
/* 804A6BE8  2C 00 00 00 */	cmpwi r0, 0
/* 804A6BEC  40 82 00 20 */	bne lbl_804A6C0C
/* 804A6BF0  7F E3 FB 78 */	mr r3, r31
/* 804A6BF4  7F C4 F3 78 */	mr r4, r30
/* 804A6BF8  4B F3 4C 7D */	bl mPlib_check_label_player_demo_wait
/* 804A6BFC  2C 03 00 00 */	cmpwi r3, 0
/* 804A6C00  41 82 00 0C */	beq lbl_804A6C0C
/* 804A6C04  7F C3 F3 78 */	mr r3, r30
/* 804A6C08  4B F3 33 BD */	bl mPlib_Set_able_force_speak_label
lbl_804A6C0C:
/* 804A6C0C  A8 1E 01 FA */	lha r0, 0x1fa(r30)
/* 804A6C10  2C 00 00 3C */	cmpwi r0, 0x3c
/* 804A6C14  40 82 00 D8 */	bne lbl_804A6CEC
/* 804A6C18  3C 60 80 64 */	lis r3, lit_644@ha /* 0x80645CC4@ha */
/* 804A6C1C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 804A6C20  C0 23 5C C4 */	lfs f1, lit_644@l(r3)  /* 0x80645CC4@l */
/* 804A6C24  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804A6C28  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 804A6C2C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804A6C30  3C 80 80 64 */	lis r4, lit_469@ha /* 0x80645C90@ha */
/* 804A6C34  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A6C38  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A6C3C  C0 24 5C 90 */	lfs f1, lit_469@l(r4)  /* 0x80645C90@l */
/* 804A6C40  83 7E 00 28 */	lwz r27, 0x28(r30)
/* 804A6C44  3C A0 80 64 */	lis r5, lit_907@ha /* 0x80645D24@ha */
/* 804A6C48  83 9E 00 30 */	lwz r28, 0x30(r30)
/* 804A6C4C  3F 43 00 02 */	addis r26, r3, 2
/* 804A6C50  EC 01 00 2A */	fadds f0, f1, f0
/* 804A6C54  C0 25 5D 24 */	lfs f1, lit_907@l(r5)  /* 0x80645D24@l */
/* 804A6C58  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 804A6C5C  3B 00 C0 00 */	li r24, -16384
/* 804A6C60  93 61 00 20 */	stw r27, 0x20(r1)
/* 804A6C64  3B 20 00 00 */	li r25, 0
/* 804A6C68  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A6C6C  93 81 00 28 */	stw r28, 0x28(r1)
/* 804A6C70  EC 02 00 28 */	fsubs f0, f2, f0
/* 804A6C74  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804A6C78  83 A1 00 24 */	lwz r29, 0x24(r1)
lbl_804A6C7C:
/* 804A6C7C  93 61 00 14 */	stw r27, 0x14(r1)
/* 804A6C80  7F 06 C3 78 */	mr r6, r24
/* 804A6C84  81 1A 60 9C */	lwz r8, 0x609c(r26)
/* 804A6C88  7F E7 FB 78 */	mr r7, r31
/* 804A6C8C  93 A1 00 18 */	stw r29, 0x18(r1)
/* 804A6C90  38 81 00 14 */	addi r4, r1, 0x14
/* 804A6C94  38 60 00 01 */	li r3, 1
/* 804A6C98  38 A0 00 01 */	li r5, 1
/* 804A6C9C  93 81 00 1C */	stw r28, 0x1c(r1)
/* 804A6CA0  39 20 00 00 */	li r9, 0
/* 804A6CA4  39 40 00 09 */	li r10, 9
/* 804A6CA8  81 88 00 00 */	lwz r12, 0(r8)
/* 804A6CAC  A1 1E 00 06 */	lhz r8, 6(r30)
/* 804A6CB0  7D 89 03 A6 */	mtctr r12
/* 804A6CB4  4E 80 04 21 */	bctrl 
/* 804A6CB8  3B 39 00 01 */	addi r25, r25, 1
/* 804A6CBC  3B 18 20 00 */	addi r24, r24, 0x2000
/* 804A6CC0  2C 19 00 05 */	cmpwi r25, 5
/* 804A6CC4  41 80 FF B8 */	blt lbl_804A6C7C
/* 804A6CC8  3C 80 80 64 */	lis r4, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A6CCC  7F C3 F3 78 */	mr r3, r30
/* 804A6CD0  C0 04 5C 8C */	lfs f0, data_80645C8C@l(r4)  /* 0x80645C8C@l */
/* 804A6CD4  D0 1E 00 E4 */	stfs f0, 0xe4(r30)
/* 804A6CD8  4B FF CC 05 */	bl aSMAN_FG_Position_Get
/* 804A6CDC  7F C3 F3 78 */	mr r3, r30
/* 804A6CE0  48 00 03 25 */	bl aSMAN_process_combine_head_init
/* 804A6CE4  38 60 00 00 */	li r3, 0
/* 804A6CE8  48 00 02 48 */	b lbl_804A6F30
lbl_804A6CEC:
/* 804A6CEC  38 7E 00 28 */	addi r3, r30, 0x28
/* 804A6CF0  38 9E 01 98 */	addi r4, r30, 0x198
/* 804A6CF4  7C 65 1B 78 */	mr r5, r3
/* 804A6CF8  4B F1 42 81 */	bl xyz_t_sub
/* 804A6CFC  3C 60 80 64 */	lis r3, lit_681@ha /* 0x80645CDC@ha */
/* 804A6D00  3C 00 43 30 */	lis r0, 0x4330
/* 804A6D04  38 A3 5C DC */	addi r5, r3, lit_681@l /* 0x80645CDC@l */
/* 804A6D08  3C 60 80 64 */	lis r3, lit_682@ha /* 0x80645CE4@ha */
/* 804A6D0C  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804A6D10  38 83 5C E4 */	addi r4, r3, lit_682@l /* 0x80645CE4@l */
/* 804A6D14  A8 DE 01 FA */	lha r6, 0x1fa(r30)
/* 804A6D18  3C 60 80 64 */	lis r3, lit_739@ha /* 0x80645D04@ha */
/* 804A6D1C  FC 20 28 34 */	frsqrte f1, f5
/* 804A6D20  C8 85 00 00 */	lfd f4, 0(r5)
/* 804A6D24  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 804A6D28  39 03 5D 04 */	addi r8, r3, lit_739@l /* 0x80645D04@l */
/* 804A6D2C  3C 60 80 64 */	lis r3, lit_1478@ha /* 0x80645DB4@ha */
/* 804A6D30  3C E0 80 64 */	lis r7, lit_1477@ha /* 0x80645DB0@ha */
/* 804A6D34  FC 01 00 72 */	fmul f0, f1, f1
/* 804A6D38  38 A3 5D B4 */	addi r5, r3, lit_1478@l /* 0x80645DB4@l */
/* 804A6D3C  39 27 5D B0 */	addi r9, r7, lit_1477@l /* 0x80645DB0@l */
/* 804A6D40  3C 60 80 64 */	lis r3, lit_1133@ha /* 0x80645D6C@ha */
/* 804A6D44  39 43 5D 6C */	addi r10, r3, lit_1133@l /* 0x80645D6C@l */
/* 804A6D48  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80645CB4@ha */
/* 804A6D4C  FC 05 00 32 */	fmul f0, f5, f0
/* 804A6D50  C8 64 00 00 */	lfd f3, 0(r4)
/* 804A6D54  38 E3 5C B4 */	addi r7, r3, lit_640@l /* 0x80645CB4@l */
/* 804A6D58  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 804A6D5C  FC 24 00 72 */	fmul f1, f4, f1
/* 804A6D60  C9 48 00 00 */	lfd f10, 0(r8)
/* 804A6D64  FC 03 00 28 */	fsub f0, f3, f0
/* 804A6D68  90 01 00 38 */	stw r0, 0x38(r1)
/* 804A6D6C  C1 05 00 00 */	lfs f8, 0(r5)
/* 804A6D70  38 7E 01 EC */	addi r3, r30, 0x1ec
/* 804A6D74  C8 41 00 38 */	lfd f2, 0x38(r1)
/* 804A6D78  38 80 00 00 */	li r4, 0
/* 804A6D7C  FC 21 00 32 */	fmul f1, f1, f0
/* 804A6D80  90 C1 00 34 */	stw r6, 0x34(r1)
/* 804A6D84  C1 69 00 00 */	lfs f11, 0(r9)
/* 804A6D88  38 A0 10 00 */	li r5, 0x1000
/* 804A6D8C  90 01 00 30 */	stw r0, 0x30(r1)
/* 804A6D90  EC E2 50 28 */	fsubs f7, f2, f10
/* 804A6D94  FC 01 00 72 */	fmul f0, f1, f1
/* 804A6D98  C9 21 00 30 */	lfd f9, 0x30(r1)
/* 804A6D9C  90 C1 00 44 */	stw r6, 0x44(r1)
/* 804A6DA0  38 C0 00 5B */	li r6, 0x5b
/* 804A6DA4  FC 44 00 72 */	fmul f2, f4, f1
/* 804A6DA8  C1 8A 00 00 */	lfs f12, 0(r10)
/* 804A6DAC  FC 25 00 32 */	fmul f1, f5, f0
/* 804A6DB0  90 01 00 40 */	stw r0, 0x40(r1)
/* 804A6DB4  C0 07 00 00 */	lfs f0, 0(r7)
/* 804A6DB8  C8 C1 00 40 */	lfd f6, 0x40(r1)
/* 804A6DBC  ED 29 50 28 */	fsubs f9, f9, f10
/* 804A6DC0  EC E8 01 F2 */	fmuls f7, f8, f7
/* 804A6DC4  FC 23 08 28 */	fsub f1, f3, f1
/* 804A6DC8  EC C6 50 28 */	fsubs f6, f6, f10
/* 804A6DCC  ED 0B 02 72 */	fmuls f8, f11, f9
/* 804A6DD0  FC 42 00 72 */	fmul f2, f2, f1
/* 804A6DD4  EC C7 01 B2 */	fmuls f6, f7, f6
/* 804A6DD8  FC 22 00 B2 */	fmul f1, f2, f2
/* 804A6DDC  FC 44 00 B2 */	fmul f2, f4, f2
/* 804A6DE0  FC 25 00 72 */	fmul f1, f5, f1
/* 804A6DE4  EC 88 30 2A */	fadds f4, f8, f6
/* 804A6DE8  FC 23 08 28 */	fsub f1, f3, f1
/* 804A6DEC  EC 6C 01 32 */	fmuls f3, f12, f4
/* 804A6DF0  FC 22 00 72 */	fmul f1, f2, f1
/* 804A6DF4  D0 7E 00 E4 */	stfs f3, 0xe4(r30)
/* 804A6DF8  FC 25 00 72 */	fmul f1, f5, f1
/* 804A6DFC  FC 20 08 18 */	frsp f1, f1
/* 804A6E00  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804A6E04  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804A6E08  EC 20 08 28 */	fsubs f1, f0, f1
/* 804A6E0C  4B F1 45 05 */	bl add_calc_short_angle2
/* 804A6E10  3C 60 80 64 */	lis r3, lit_681@ha /* 0x80645CDC@ha */
/* 804A6E14  3C 80 80 64 */	lis r4, lit_682@ha /* 0x80645CE4@ha */
/* 804A6E18  38 A3 5C DC */	addi r5, r3, lit_681@l /* 0x80645CDC@l */
/* 804A6E1C  C8 64 5C E4 */	lfd f3, lit_682@l(r4)  /* 0x80645CE4@l */
/* 804A6E20  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804A6E24  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80645CB4@ha */
/* 804A6E28  C8 85 00 00 */	lfd f4, 0(r5)
/* 804A6E2C  38 80 00 00 */	li r4, 0
/* 804A6E30  FC 40 28 34 */	frsqrte f2, f5
/* 804A6E34  C0 03 5C B4 */	lfs f0, lit_640@l(r3)  /* 0x80645CB4@l */
/* 804A6E38  38 7E 01 EE */	addi r3, r30, 0x1ee
/* 804A6E3C  38 A0 10 00 */	li r5, 0x1000
/* 804A6E40  38 C0 00 5B */	li r6, 0x5b
/* 804A6E44  FC 22 00 B2 */	fmul f1, f2, f2
/* 804A6E48  FC 44 00 B2 */	fmul f2, f4, f2
/* 804A6E4C  FC 25 00 72 */	fmul f1, f5, f1
/* 804A6E50  FC 23 08 28 */	fsub f1, f3, f1
/* 804A6E54  FC 42 00 72 */	fmul f2, f2, f1
/* 804A6E58  FC 22 00 B2 */	fmul f1, f2, f2
/* 804A6E5C  FC 44 00 B2 */	fmul f2, f4, f2
/* 804A6E60  FC 25 00 72 */	fmul f1, f5, f1
/* 804A6E64  FC 23 08 28 */	fsub f1, f3, f1
/* 804A6E68  FC 42 00 72 */	fmul f2, f2, f1
/* 804A6E6C  FC 22 00 B2 */	fmul f1, f2, f2
/* 804A6E70  FC 44 00 B2 */	fmul f2, f4, f2
/* 804A6E74  FC 25 00 72 */	fmul f1, f5, f1
/* 804A6E78  FC 23 08 28 */	fsub f1, f3, f1
/* 804A6E7C  FC 22 00 72 */	fmul f1, f2, f1
/* 804A6E80  FC 25 00 72 */	fmul f1, f5, f1
/* 804A6E84  FC 20 08 18 */	frsp f1, f1
/* 804A6E88  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804A6E8C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804A6E90  EC 20 08 28 */	fsubs f1, f0, f1
/* 804A6E94  4B F1 44 7D */	bl add_calc_short_angle2
/* 804A6E98  3C 60 80 64 */	lis r3, lit_681@ha /* 0x80645CDC@ha */
/* 804A6E9C  3C 80 80 64 */	lis r4, lit_682@ha /* 0x80645CE4@ha */
/* 804A6EA0  38 A3 5C DC */	addi r5, r3, lit_681@l /* 0x80645CDC@l */
/* 804A6EA4  C8 64 5C E4 */	lfd f3, lit_682@l(r4)  /* 0x80645CE4@l */
/* 804A6EA8  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804A6EAC  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80645CB4@ha */
/* 804A6EB0  C8 85 00 00 */	lfd f4, 0(r5)
/* 804A6EB4  38 80 00 00 */	li r4, 0
/* 804A6EB8  FC 40 28 34 */	frsqrte f2, f5
/* 804A6EBC  C0 03 5C B4 */	lfs f0, lit_640@l(r3)  /* 0x80645CB4@l */
/* 804A6EC0  38 7E 01 F0 */	addi r3, r30, 0x1f0
/* 804A6EC4  38 A0 10 00 */	li r5, 0x1000
/* 804A6EC8  38 C0 00 5B */	li r6, 0x5b
/* 804A6ECC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804A6ED0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804A6ED4  FC 25 00 72 */	fmul f1, f5, f1
/* 804A6ED8  FC 23 08 28 */	fsub f1, f3, f1
/* 804A6EDC  FC 42 00 72 */	fmul f2, f2, f1
/* 804A6EE0  FC 22 00 B2 */	fmul f1, f2, f2
/* 804A6EE4  FC 44 00 B2 */	fmul f2, f4, f2
/* 804A6EE8  FC 25 00 72 */	fmul f1, f5, f1
/* 804A6EEC  FC 23 08 28 */	fsub f1, f3, f1
/* 804A6EF0  FC 42 00 72 */	fmul f2, f2, f1
/* 804A6EF4  FC 22 00 B2 */	fmul f1, f2, f2
/* 804A6EF8  FC 44 00 B2 */	fmul f2, f4, f2
/* 804A6EFC  FC 25 00 72 */	fmul f1, f5, f1
/* 804A6F00  FC 23 08 28 */	fsub f1, f3, f1
/* 804A6F04  FC 22 00 72 */	fmul f1, f2, f1
/* 804A6F08  FC 25 00 72 */	fmul f1, f5, f1
/* 804A6F0C  FC 20 08 18 */	frsp f1, f1
/* 804A6F10  D0 21 00 08 */	stfs f1, 8(r1)
/* 804A6F14  C0 21 00 08 */	lfs f1, 8(r1)
/* 804A6F18  EC 20 08 28 */	fsubs f1, f0, f1
/* 804A6F1C  4B F1 43 F5 */	bl add_calc_short_angle2
/* 804A6F20  A8 9E 01 FA */	lha r4, 0x1fa(r30)
/* 804A6F24  38 60 00 01 */	li r3, 1
/* 804A6F28  38 04 00 01 */	addi r0, r4, 1
/* 804A6F2C  B0 1E 01 FA */	sth r0, 0x1fa(r30)
lbl_804A6F30:
/* 804A6F30  39 61 00 70 */	addi r11, r1, 0x70
/* 804A6F34  4B BF 3F D9 */	bl func_8009AF0C
/* 804A6F38  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804A6F3C  7C 08 03 A6 */	mtlr r0
/* 804A6F40  38 21 00 70 */	addi r1, r1, 0x70
/* 804A6F44  4E 80 00 20 */	blr 
