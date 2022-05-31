lbl_80507DB4:
/* 80507DB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80507DB8  7C 08 02 A6 */	mflr r0
/* 80507DBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80507DC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80507DC4  7C 7F 1B 78 */	mr r31, r3
/* 80507DC8  38 9F 00 DE */	addi r4, r31, 0xde
/* 80507DCC  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 80507DD0  38 7F 00 28 */	addi r3, r31, 0x28
/* 80507DD4  38 BF 00 5C */	addi r5, r31, 0x5c
/* 80507DD8  38 FF 01 74 */	addi r7, r31, 0x174
/* 80507DDC  4B E6 A8 E5 */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 80507DE0  7F E3 FB 78 */	mr r3, r31
/* 80507DE4  38 80 00 00 */	li r4, 0
/* 80507DE8  4B FC DC D5 */	bl Player_actor_Movement_Base_Stop
/* 80507DEC  3C 60 80 65 */	lis r3, lit_16607@ha /* 0x806485B4@ha */
/* 80507DF0  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 80507DF4  38 A3 85 B4 */	addi r5, r3, lit_16607@l /* 0x806485B4@l */
/* 80507DF8  38 C0 00 64 */	li r6, 0x64
/* 80507DFC  C8 A5 00 00 */	lfd f5, 0(r5)
/* 80507E00  38 A4 69 F4 */	addi r5, r4, lit_1027@l /* 0x806469F4@l */
/* 80507E04  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 80507E08  C8 85 00 00 */	lfd f4, 0(r5)
/* 80507E0C  FC 40 28 34 */	frsqrte f2, f5
/* 80507E10  38 83 69 FC */	addi r4, r3, lit_1028@l /* 0x806469FC@l */
/* 80507E14  C8 64 00 00 */	lfd f3, 0(r4)
/* 80507E18  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80507E1C  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 80507E20  38 7F 0D 26 */	addi r3, r31, 0xd26
/* 80507E24  FC 22 00 B2 */	fmul f1, f2, f2
/* 80507E28  38 80 00 00 */	li r4, 0
/* 80507E2C  38 A0 00 96 */	li r5, 0x96
/* 80507E30  FC 44 00 B2 */	fmul f2, f4, f2
/* 80507E34  FC 25 00 72 */	fmul f1, f5, f1
/* 80507E38  FC 23 08 28 */	fsub f1, f3, f1
/* 80507E3C  FC 42 00 72 */	fmul f2, f2, f1
/* 80507E40  FC 22 00 B2 */	fmul f1, f2, f2
/* 80507E44  FC 44 00 B2 */	fmul f2, f4, f2
/* 80507E48  FC 25 00 72 */	fmul f1, f5, f1
/* 80507E4C  FC 23 08 28 */	fsub f1, f3, f1
/* 80507E50  FC 42 00 72 */	fmul f2, f2, f1
/* 80507E54  FC 22 00 B2 */	fmul f1, f2, f2
/* 80507E58  FC 44 00 B2 */	fmul f2, f4, f2
/* 80507E5C  FC 25 00 72 */	fmul f1, f5, f1
/* 80507E60  FC 23 08 28 */	fsub f1, f3, f1
/* 80507E64  FC 22 00 72 */	fmul f1, f2, f1
/* 80507E68  FC 25 00 72 */	fmul f1, f5, f1
/* 80507E6C  FC 20 08 18 */	frsp f1, f1
/* 80507E70  D0 21 00 08 */	stfs f1, 8(r1)
/* 80507E74  C0 21 00 08 */	lfs f1, 8(r1)
/* 80507E78  EC 20 08 28 */	fsubs f1, f0, f1
/* 80507E7C  4B EB 34 95 */	bl add_calc_short_angle2
/* 80507E80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80507E84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80507E88  7C 08 03 A6 */	mtlr r0
/* 80507E8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80507E90  4E 80 00 20 */	blr 
