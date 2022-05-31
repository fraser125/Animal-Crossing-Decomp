lbl_80502AC0:
/* 80502AC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80502AC4  7C 08 02 A6 */	mflr r0
/* 80502AC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80502ACC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80502AD0  7C 7F 1B 78 */	mr r31, r3
/* 80502AD4  4B FD 2E CD */	bl Player_actor_Movement_Base_Braking
/* 80502AD8  3C 60 80 65 */	lis r3, lit_15493@ha /* 0x8064858C@ha */
/* 80502ADC  C0 3F 0D 18 */	lfs f1, 0xd18(r31)
/* 80502AE0  C0 03 85 8C */	lfs f0, lit_15493@l(r3)  /* 0x8064858C@l */
/* 80502AE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80502AE8  40 81 00 94 */	ble lbl_80502B7C
/* 80502AEC  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 80502AF0  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 80502AF4  38 A3 69 F4 */	addi r5, r3, lit_1027@l /* 0x806469F4@l */
/* 80502AF8  C8 64 69 FC */	lfd f3, lit_1028@l(r4)  /* 0x806469FC@l */
/* 80502AFC  C8 A5 00 00 */	lfd f5, 0(r5)
/* 80502B00  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80502B04  C8 85 00 00 */	lfd f4, 0(r5)
/* 80502B08  38 80 80 00 */	li r4, -32768
/* 80502B0C  FC 40 28 34 */	frsqrte f2, f5
/* 80502B10  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 80502B14  38 7F 00 DE */	addi r3, r31, 0xde
/* 80502B18  38 A0 09 C4 */	li r5, 0x9c4
/* 80502B1C  38 C0 00 32 */	li r6, 0x32
/* 80502B20  FC 22 00 B2 */	fmul f1, f2, f2
/* 80502B24  FC 44 00 B2 */	fmul f2, f4, f2
/* 80502B28  FC 25 00 72 */	fmul f1, f5, f1
/* 80502B2C  FC 23 08 28 */	fsub f1, f3, f1
/* 80502B30  FC 42 00 72 */	fmul f2, f2, f1
/* 80502B34  FC 22 00 B2 */	fmul f1, f2, f2
/* 80502B38  FC 44 00 B2 */	fmul f2, f4, f2
/* 80502B3C  FC 25 00 72 */	fmul f1, f5, f1
/* 80502B40  FC 23 08 28 */	fsub f1, f3, f1
/* 80502B44  FC 42 00 72 */	fmul f2, f2, f1
/* 80502B48  FC 22 00 B2 */	fmul f1, f2, f2
/* 80502B4C  FC 44 00 B2 */	fmul f2, f4, f2
/* 80502B50  FC 25 00 72 */	fmul f1, f5, f1
/* 80502B54  FC 23 08 28 */	fsub f1, f3, f1
/* 80502B58  FC 22 00 72 */	fmul f1, f2, f1
/* 80502B5C  FC 25 00 72 */	fmul f1, f5, f1
/* 80502B60  FC 20 08 18 */	frsp f1, f1
/* 80502B64  D0 21 00 08 */	stfs f1, 8(r1)
/* 80502B68  C0 21 00 08 */	lfs f1, 8(r1)
/* 80502B6C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80502B70  4B EB 87 A1 */	bl add_calc_short_angle2
/* 80502B74  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 80502B78  B0 1F 00 36 */	sth r0, 0x36(r31)
lbl_80502B7C:
/* 80502B7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80502B80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80502B84  7C 08 03 A6 */	mtlr r0
/* 80502B88  38 21 00 20 */	addi r1, r1, 0x20
/* 80502B8C  4E 80 00 20 */	blr 
