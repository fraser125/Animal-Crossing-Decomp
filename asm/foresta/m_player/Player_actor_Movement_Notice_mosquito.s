lbl_80505C50:
/* 80505C50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80505C54  7C 08 02 A6 */	mflr r0
/* 80505C58  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 80505C5C  3C A0 80 64 */	lis r5, lit_1028@ha /* 0x806469FC@ha */
/* 80505C60  38 C4 69 F4 */	addi r6, r4, lit_1027@l /* 0x806469F4@l */
/* 80505C64  C8 65 69 FC */	lfd f3, lit_1028@l(r5)  /* 0x806469FC@l */
/* 80505C68  C8 A6 00 00 */	lfd f5, 0(r6)
/* 80505C6C  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 80505C70  C8 86 00 00 */	lfd f4, 0(r6)
/* 80505C74  38 A0 09 C4 */	li r5, 0x9c4
/* 80505C78  FC 40 28 34 */	frsqrte f2, f5
/* 80505C7C  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 80505C80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80505C84  38 80 00 00 */	li r4, 0
/* 80505C88  38 C0 00 32 */	li r6, 0x32
/* 80505C8C  FC 22 00 B2 */	fmul f1, f2, f2
/* 80505C90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80505C94  7C 7F 1B 78 */	mr r31, r3
/* 80505C98  FC 44 00 B2 */	fmul f2, f4, f2
/* 80505C9C  38 7F 00 DE */	addi r3, r31, 0xde
/* 80505CA0  FC 25 00 72 */	fmul f1, f5, f1
/* 80505CA4  FC 23 08 28 */	fsub f1, f3, f1
/* 80505CA8  FC 42 00 72 */	fmul f2, f2, f1
/* 80505CAC  FC 22 00 B2 */	fmul f1, f2, f2
/* 80505CB0  FC 44 00 B2 */	fmul f2, f4, f2
/* 80505CB4  FC 25 00 72 */	fmul f1, f5, f1
/* 80505CB8  FC 23 08 28 */	fsub f1, f3, f1
/* 80505CBC  FC 42 00 72 */	fmul f2, f2, f1
/* 80505CC0  FC 22 00 B2 */	fmul f1, f2, f2
/* 80505CC4  FC 44 00 B2 */	fmul f2, f4, f2
/* 80505CC8  FC 25 00 72 */	fmul f1, f5, f1
/* 80505CCC  FC 23 08 28 */	fsub f1, f3, f1
/* 80505CD0  FC 22 00 72 */	fmul f1, f2, f1
/* 80505CD4  FC 25 00 72 */	fmul f1, f5, f1
/* 80505CD8  FC 20 08 18 */	frsp f1, f1
/* 80505CDC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80505CE0  C0 21 00 08 */	lfs f1, 8(r1)
/* 80505CE4  EC 20 08 28 */	fsubs f1, f0, f1
/* 80505CE8  4B EB 56 29 */	bl add_calc_short_angle2
/* 80505CEC  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 80505CF0  3C 60 80 64 */	lis r3, lit_1011@ha /* 0x806469F0@ha */
/* 80505CF4  38 83 69 F0 */	addi r4, r3, lit_1011@l /* 0x806469F0@l */
/* 80505CF8  7F E3 FB 78 */	mr r3, r31
/* 80505CFC  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 80505D00  C0 24 00 00 */	lfs f1, 0(r4)
/* 80505D04  4B FC FC 39 */	bl Player_actor_Movement_Base_Braking_common
/* 80505D08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80505D0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80505D10  7C 08 03 A6 */	mtlr r0
/* 80505D14  38 21 00 20 */	addi r1, r1, 0x20
/* 80505D18  4E 80 00 20 */	blr 
