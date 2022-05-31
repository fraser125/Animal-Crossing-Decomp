lbl_8056E8D0:
/* 8056E8D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8056E8D4  7C 08 02 A6 */	mflr r0
/* 8056E8D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8056E8DC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8056E8E0  7C 7F 1B 78 */	mr r31, r3
/* 8056E8E4  3C 60 80 6C */	lis r3, exit_pos@ha /* 0x806BEC84@ha */
/* 8056E8E8  88 9F 09 9A */	lbz r4, 0x99a(r31)
/* 8056E8EC  38 03 EC 84 */	addi r0, r3, exit_pos@l /* 0x806BEC84@l */
/* 8056E8F0  38 7F 00 28 */	addi r3, r31, 0x28
/* 8056E8F4  1C 84 00 0C */	mulli r4, r4, 0xc
/* 8056E8F8  7C 80 22 14 */	add r4, r0, r4
/* 8056E8FC  4B E4 C8 35 */	bl search_position_angleY
/* 8056E900  7C 60 1B 78 */	mr r0, r3
/* 8056E904  38 7F 00 36 */	addi r3, r31, 0x36
/* 8056E908  7C 04 07 34 */	extsh r4, r0
/* 8056E90C  38 A0 04 00 */	li r5, 0x400
/* 8056E910  4B E4 C2 35 */	bl chase_angle
/* 8056E914  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 8056E918  38 61 00 0C */	addi r3, r1, 0xc
/* 8056E91C  38 81 00 08 */	addi r4, r1, 8
/* 8056E920  38 A1 00 10 */	addi r5, r1, 0x10
/* 8056E924  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 8056E928  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 8056E92C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8056E930  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8056E934  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056E938  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8056E93C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8056E940  4B E3 6E 21 */	bl mFI_Wpos2BlockNum
/* 8056E944  88 7F 00 08 */	lbz r3, 8(r31)
/* 8056E948  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8056E94C  7C 63 07 74 */	extsb r3, r3
/* 8056E950  7C 03 00 00 */	cmpw r3, r0
/* 8056E954  40 82 00 18 */	bne lbl_8056E96C
/* 8056E958  88 7F 00 09 */	lbz r3, 9(r31)
/* 8056E95C  80 01 00 08 */	lwz r0, 8(r1)
/* 8056E960  7C 63 07 74 */	extsb r3, r3
/* 8056E964  7C 03 00 00 */	cmpw r3, r0
/* 8056E968  41 82 00 14 */	beq lbl_8056E97C
lbl_8056E96C:
/* 8056E96C  3C 60 80 65 */	lis r3, lit_675@ha /* 0x80649894@ha */
/* 8056E970  C0 03 98 94 */	lfs f0, lit_675@l(r3)  /* 0x80649894@l */
/* 8056E974  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 8056E978  48 00 00 58 */	b lbl_8056E9D0
lbl_8056E97C:
/* 8056E97C  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 8056E980  3C 60 80 65 */	lis r3, lit_738@ha /* 0x806498A8@ha */
/* 8056E984  C0 3F 09 A4 */	lfs f1, 0x9a4(r31)
/* 8056E988  C0 03 98 A8 */	lfs f0, lit_738@l(r3)  /* 0x806498A8@l */
/* 8056E98C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8056E990  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056E994  40 81 00 10 */	ble lbl_8056E9A4
/* 8056E998  3C 60 80 65 */	lis r3, data_8064987C@ha /* 0x8064987C@ha */
/* 8056E99C  C0 03 98 7C */	lfs f0, data_8064987C@l(r3)  /* 0x8064987C@l */
/* 8056E9A0  D0 1F 00 7C */	stfs f0, 0x7c(r31)
lbl_8056E9A4:
/* 8056E9A4  3C 60 80 65 */	lis r3, lit_739@ha /* 0x806498AC@ha */
/* 8056E9A8  C0 03 98 AC */	lfs f0, lit_739@l(r3)  /* 0x806498AC@l */
/* 8056E9AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056E9B0  40 81 00 20 */	ble lbl_8056E9D0
/* 8056E9B4  3C 80 80 65 */	lis r4, lit_740@ha /* 0x806498B0@ha */
/* 8056E9B8  3C 60 80 65 */	lis r3, lit_741@ha /* 0x806498B4@ha */
/* 8056E9BC  C0 24 98 B0 */	lfs f1, lit_740@l(r4)  /* 0x806498B0@l */
/* 8056E9C0  C0 03 98 B4 */	lfs f0, lit_741@l(r3)  /* 0x806498B4@l */
/* 8056E9C4  D0 3F 08 F8 */	stfs f1, 0x8f8(r31)
/* 8056E9C8  D0 1F 08 FC */	stfs f0, 0x8fc(r31)
/* 8056E9CC  D0 1F 09 00 */	stfs f0, 0x900(r31)
lbl_8056E9D0:
/* 8056E9D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8056E9D4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8056E9D8  7C 08 03 A6 */	mtlr r0
/* 8056E9DC  38 21 00 30 */	addi r1, r1, 0x30
/* 8056E9E0  4E 80 00 20 */	blr 
