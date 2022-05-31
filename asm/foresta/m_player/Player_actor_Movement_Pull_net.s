lbl_804F3824:
/* 804F3824  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F3828  7C 08 02 A6 */	mflr r0
/* 804F382C  3C 80 80 65 */	lis r4, lit_8209@ha /* 0x80648438@ha */
/* 804F3830  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F3834  C0 04 84 38 */	lfs f0, lit_8209@l(r4)  /* 0x80648438@l */
/* 804F3838  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804F383C  7C 7F 1B 78 */	mr r31, r3
/* 804F3840  C0 23 01 84 */	lfs f1, 0x184(r3)
/* 804F3844  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F3848  40 81 00 94 */	ble lbl_804F38DC
/* 804F384C  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804F3850  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 804F3854  38 A3 69 F4 */	addi r5, r3, lit_1027@l /* 0x806469F4@l */
/* 804F3858  C8 64 69 FC */	lfd f3, lit_1028@l(r4)  /* 0x806469FC@l */
/* 804F385C  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804F3860  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F3864  C8 85 00 00 */	lfd f4, 0(r5)
/* 804F3868  38 80 00 00 */	li r4, 0
/* 804F386C  FC 40 28 34 */	frsqrte f2, f5
/* 804F3870  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804F3874  38 7F 00 DE */	addi r3, r31, 0xde
/* 804F3878  38 A0 09 C4 */	li r5, 0x9c4
/* 804F387C  38 C0 00 32 */	li r6, 0x32
/* 804F3880  FC 22 00 B2 */	fmul f1, f2, f2
/* 804F3884  FC 44 00 B2 */	fmul f2, f4, f2
/* 804F3888  FC 25 00 72 */	fmul f1, f5, f1
/* 804F388C  FC 23 08 28 */	fsub f1, f3, f1
/* 804F3890  FC 42 00 72 */	fmul f2, f2, f1
/* 804F3894  FC 22 00 B2 */	fmul f1, f2, f2
/* 804F3898  FC 44 00 B2 */	fmul f2, f4, f2
/* 804F389C  FC 25 00 72 */	fmul f1, f5, f1
/* 804F38A0  FC 23 08 28 */	fsub f1, f3, f1
/* 804F38A4  FC 42 00 72 */	fmul f2, f2, f1
/* 804F38A8  FC 22 00 B2 */	fmul f1, f2, f2
/* 804F38AC  FC 44 00 B2 */	fmul f2, f4, f2
/* 804F38B0  FC 25 00 72 */	fmul f1, f5, f1
/* 804F38B4  FC 23 08 28 */	fsub f1, f3, f1
/* 804F38B8  FC 22 00 72 */	fmul f1, f2, f1
/* 804F38BC  FC 25 00 72 */	fmul f1, f5, f1
/* 804F38C0  FC 20 08 18 */	frsp f1, f1
/* 804F38C4  D0 21 00 08 */	stfs f1, 8(r1)
/* 804F38C8  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F38CC  EC 20 08 28 */	fsubs f1, f0, f1
/* 804F38D0  4B EC 7A 41 */	bl add_calc_short_angle2
/* 804F38D4  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 804F38D8  B0 1F 00 36 */	sth r0, 0x36(r31)
lbl_804F38DC:
/* 804F38DC  3C 80 80 64 */	lis r4, lit_1011@ha /* 0x806469F0@ha */
/* 804F38E0  7F E3 FB 78 */	mr r3, r31
/* 804F38E4  C0 24 69 F0 */	lfs f1, lit_1011@l(r4)  /* 0x806469F0@l */
/* 804F38E8  4B FE 20 55 */	bl Player_actor_Movement_Base_Braking_common
/* 804F38EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F38F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804F38F4  7C 08 03 A6 */	mtlr r0
/* 804F38F8  38 21 00 20 */	addi r1, r1, 0x20
/* 804F38FC  4E 80 00 20 */	blr 
