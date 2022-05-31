lbl_804FE334:
/* 804FE334  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FE338  7C 08 02 A6 */	mflr r0
/* 804FE33C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FE340  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804FE344  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804FE348  7C 7E 1B 78 */	mr r30, r3
/* 804FE34C  4B FD 9D 49 */	bl Player_actor_Get_DemoChangeAngleY
/* 804FE350  2C 03 00 00 */	cmpwi r3, 0
/* 804FE354  41 82 00 B8 */	beq lbl_804FE40C
/* 804FE358  4B FD 9D 95 */	bl Player_actor_Get_DemoAngleY
/* 804FE35C  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804FE360  7C 7F 1B 78 */	mr r31, r3
/* 804FE364  38 C4 69 F4 */	addi r6, r4, lit_1027@l /* 0x806469F4@l */
/* 804FE368  38 7E 00 36 */	addi r3, r30, 0x36
/* 804FE36C  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804FE370  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 804FE374  38 A4 69 FC */	addi r5, r4, lit_1028@l /* 0x806469FC@l */
/* 804FE378  C8 86 00 00 */	lfd f4, 0(r6)
/* 804FE37C  FC 40 28 34 */	frsqrte f2, f5
/* 804FE380  C8 65 00 00 */	lfd f3, 0(r5)
/* 804FE384  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804FE388  38 A0 09 C4 */	li r5, 0x9c4
/* 804FE38C  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804FE390  7F E4 FB 78 */	mr r4, r31
/* 804FE394  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FE398  38 C0 00 32 */	li r6, 0x32
/* 804FE39C  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FE3A0  FC 25 00 72 */	fmul f1, f5, f1
/* 804FE3A4  FC 23 08 28 */	fsub f1, f3, f1
/* 804FE3A8  FC 42 00 72 */	fmul f2, f2, f1
/* 804FE3AC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FE3B0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FE3B4  FC 25 00 72 */	fmul f1, f5, f1
/* 804FE3B8  FC 23 08 28 */	fsub f1, f3, f1
/* 804FE3BC  FC 42 00 72 */	fmul f2, f2, f1
/* 804FE3C0  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FE3C4  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FE3C8  FC 25 00 72 */	fmul f1, f5, f1
/* 804FE3CC  FC 23 08 28 */	fsub f1, f3, f1
/* 804FE3D0  FC 22 00 72 */	fmul f1, f2, f1
/* 804FE3D4  FC 25 00 72 */	fmul f1, f5, f1
/* 804FE3D8  FC 20 08 18 */	frsp f1, f1
/* 804FE3DC  D0 21 00 08 */	stfs f1, 8(r1)
/* 804FE3E0  C0 21 00 08 */	lfs f1, 8(r1)
/* 804FE3E4  EC 20 08 28 */	fsubs f1, f0, f1
/* 804FE3E8  4B EB CF 29 */	bl add_calc_short_angle2
/* 804FE3EC  A8 1E 00 36 */	lha r0, 0x36(r30)
/* 804FE3F0  7F E3 07 34 */	extsh r3, r31
/* 804FE3F4  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 804FE3F8  A8 1E 00 36 */	lha r0, 0x36(r30)
/* 804FE3FC  7C 03 00 00 */	cmpw r3, r0
/* 804FE400  40 82 00 0C */	bne lbl_804FE40C
/* 804FE404  38 60 00 00 */	li r3, 0
/* 804FE408  4B FD 9C B9 */	bl Player_actor_Set_DemoChangeAngleY
lbl_804FE40C:
/* 804FE40C  7F C3 F3 78 */	mr r3, r30
/* 804FE410  38 80 00 00 */	li r4, 0
/* 804FE414  4B FD 76 A9 */	bl Player_actor_Movement_Base_Stop
/* 804FE418  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FE41C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804FE420  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804FE424  7C 08 03 A6 */	mtlr r0
/* 804FE428  38 21 00 20 */	addi r1, r1, 0x20
/* 804FE42C  4E 80 00 20 */	blr 
