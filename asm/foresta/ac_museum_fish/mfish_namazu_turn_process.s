lbl_80454A1C:
/* 80454A1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80454A20  7C 08 02 A6 */	mflr r0
/* 80454A24  3C 80 80 64 */	lis r4, lit_1958@ha /* 0x80644374@ha */
/* 80454A28  C8 E4 43 74 */	lfd f7, lit_1958@l(r4)  /* 0x80644374@l */
/* 80454A2C  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 80454A30  90 01 00 34 */	stw r0, 0x34(r1)
/* 80454A34  FC 20 38 34 */	frsqrte f1, f7
/* 80454A38  C8 A4 42 54 */	lfd f5, lit_470@l(r4)  /* 0x80644254@l */
/* 80454A3C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80454A40  7C 7F 1B 78 */	mr r31, r3
/* 80454A44  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 80454A48  FC 41 00 72 */	fmul f2, f1, f1
/* 80454A4C  38 A3 42 4C */	addi r5, r3, lit_469@l /* 0x8064424C@l */
/* 80454A50  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80454A54  C8 C5 00 00 */	lfd f6, 0(r5)
/* 80454A58  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 80454A5C  3C 60 80 64 */	lis r3, lit_7929@ha /* 0x80644484@ha */
/* 80454A60  FC 47 00 B2 */	fmul f2, f7, f2
/* 80454A64  38 83 44 84 */	addi r4, r3, lit_7929@l /* 0x80644484@l */
/* 80454A68  C0 05 00 00 */	lfs f0, 0(r5)
/* 80454A6C  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80454A70  FC 86 00 72 */	fmul f4, f6, f1
/* 80454A74  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 80454A78  FC 45 10 28 */	fsub f2, f5, f2
/* 80454A7C  C0 64 00 00 */	lfs f3, 0(r4)
/* 80454A80  FC 84 00 B2 */	fmul f4, f4, f2
/* 80454A84  FC 44 01 32 */	fmul f2, f4, f4
/* 80454A88  FC 86 01 32 */	fmul f4, f6, f4
/* 80454A8C  FC 47 00 B2 */	fmul f2, f7, f2
/* 80454A90  FC 45 10 28 */	fsub f2, f5, f2
/* 80454A94  FC 84 00 B2 */	fmul f4, f4, f2
/* 80454A98  FC 44 01 32 */	fmul f2, f4, f4
/* 80454A9C  FC 86 01 32 */	fmul f4, f6, f4
/* 80454AA0  FC 47 00 B2 */	fmul f2, f7, f2
/* 80454AA4  FC 45 10 28 */	fsub f2, f5, f2
/* 80454AA8  FC 44 00 B2 */	fmul f2, f4, f2
/* 80454AAC  FC 47 00 B2 */	fmul f2, f7, f2
/* 80454AB0  FC 40 10 18 */	frsp f2, f2
/* 80454AB4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80454AB8  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80454ABC  EC 40 10 28 */	fsubs f2, f0, f2
/* 80454AC0  4B F6 67 D5 */	bl add_calc2
/* 80454AC4  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 80454AC8  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80454ACC  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 80454AD0  C8 C4 42 4C */	lfd f6, lit_469@l(r4)  /* 0x8064424C@l */
/* 80454AD4  C8 E5 00 00 */	lfd f7, 0(r5)
/* 80454AD8  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80454ADC  38 C3 42 54 */	addi r6, r3, lit_470@l /* 0x80644254@l */
/* 80454AE0  3C A0 80 64 */	lis r5, lit_666@ha /* 0x806442AC@ha */
/* 80454AE4  FC 20 38 34 */	frsqrte f1, f7
/* 80454AE8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80454AEC  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80454AF0  C8 A6 00 00 */	lfd f5, 0(r6)
/* 80454AF4  3C 60 80 64 */	lis r3, lit_2377@ha /* 0x80644384@ha */
/* 80454AF8  C0 04 00 00 */	lfs f0, 0(r4)
/* 80454AFC  FC 41 00 72 */	fmul f2, f1, f1
/* 80454B00  C0 63 43 84 */	lfs f3, lit_2377@l(r3)  /* 0x80644384@l */
/* 80454B04  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 80454B08  FC 86 00 72 */	fmul f4, f6, f1
/* 80454B0C  C0 25 42 AC */	lfs f1, lit_666@l(r5)  /* 0x806442AC@l */
/* 80454B10  FC 47 00 B2 */	fmul f2, f7, f2
/* 80454B14  FC 45 10 28 */	fsub f2, f5, f2
/* 80454B18  FC 84 00 B2 */	fmul f4, f4, f2
/* 80454B1C  FC 44 01 32 */	fmul f2, f4, f4
/* 80454B20  FC 86 01 32 */	fmul f4, f6, f4
/* 80454B24  FC 47 00 B2 */	fmul f2, f7, f2
/* 80454B28  FC 45 10 28 */	fsub f2, f5, f2
/* 80454B2C  FC 84 00 B2 */	fmul f4, f4, f2
/* 80454B30  FC 44 01 32 */	fmul f2, f4, f4
/* 80454B34  FC 86 01 32 */	fmul f4, f6, f4
/* 80454B38  FC 47 00 B2 */	fmul f2, f7, f2
/* 80454B3C  FC 45 10 28 */	fsub f2, f5, f2
/* 80454B40  FC 44 00 B2 */	fmul f2, f4, f2
/* 80454B44  FC 47 00 B2 */	fmul f2, f7, f2
/* 80454B48  FC 40 10 18 */	frsp f2, f2
/* 80454B4C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80454B50  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80454B54  EC 40 10 28 */	fsubs f2, f0, f2
/* 80454B58  4B F6 67 3D */	bl add_calc2
/* 80454B5C  3C 60 80 64 */	lis r3, lit_7930@ha /* 0x8064448C@ha */
/* 80454B60  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80454B64  38 A3 44 8C */	addi r5, r3, lit_7930@l /* 0x8064448C@l */
/* 80454B68  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 80454B6C  C8 C5 00 00 */	lfd f6, 0(r5)
/* 80454B70  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80454B74  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 80454B78  FC 60 30 34 */	frsqrte f3, f6
/* 80454B7C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80454B80  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80454B84  C8 85 00 00 */	lfd f4, 0(r5)
/* 80454B88  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80454B8C  C0 44 00 00 */	lfs f2, 0(r4)
/* 80454B90  FC 23 00 F2 */	fmul f1, f3, f3
/* 80454B94  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80454B98  FC 65 00 F2 */	fmul f3, f5, f3
/* 80454B9C  FC 26 00 72 */	fmul f1, f6, f1
/* 80454BA0  FC 24 08 28 */	fsub f1, f4, f1
/* 80454BA4  FC 63 00 72 */	fmul f3, f3, f1
/* 80454BA8  FC 23 00 F2 */	fmul f1, f3, f3
/* 80454BAC  FC 65 00 F2 */	fmul f3, f5, f3
/* 80454BB0  FC 26 00 72 */	fmul f1, f6, f1
/* 80454BB4  FC 24 08 28 */	fsub f1, f4, f1
/* 80454BB8  FC 63 00 72 */	fmul f3, f3, f1
/* 80454BBC  FC 23 00 F2 */	fmul f1, f3, f3
/* 80454BC0  FC 65 00 F2 */	fmul f3, f5, f3
/* 80454BC4  FC 26 00 72 */	fmul f1, f6, f1
/* 80454BC8  FC 24 08 28 */	fsub f1, f4, f1
/* 80454BCC  FC 23 00 72 */	fmul f1, f3, f1
/* 80454BD0  FC 26 00 72 */	fmul f1, f6, f1
/* 80454BD4  FC 20 08 18 */	frsp f1, f1
/* 80454BD8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80454BDC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80454BE0  EC 22 08 28 */	fsubs f1, f2, f1
/* 80454BE4  EC 42 08 28 */	fsubs f2, f2, f1
/* 80454BE8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80454BEC  40 81 00 54 */	ble lbl_80454C40
/* 80454BF0  FC 20 10 34 */	frsqrte f1, f2
/* 80454BF4  FC 01 00 72 */	fmul f0, f1, f1
/* 80454BF8  FC 25 00 72 */	fmul f1, f5, f1
/* 80454BFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80454C00  FC 04 00 28 */	fsub f0, f4, f0
/* 80454C04  FC 21 00 32 */	fmul f1, f1, f0
/* 80454C08  FC 01 00 72 */	fmul f0, f1, f1
/* 80454C0C  FC 25 00 72 */	fmul f1, f5, f1
/* 80454C10  FC 02 00 32 */	fmul f0, f2, f0
/* 80454C14  FC 04 00 28 */	fsub f0, f4, f0
/* 80454C18  FC 21 00 32 */	fmul f1, f1, f0
/* 80454C1C  FC 01 00 72 */	fmul f0, f1, f1
/* 80454C20  FC 25 00 72 */	fmul f1, f5, f1
/* 80454C24  FC 02 00 32 */	fmul f0, f2, f0
/* 80454C28  FC 04 00 28 */	fsub f0, f4, f0
/* 80454C2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80454C30  FC 02 00 32 */	fmul f0, f2, f0
/* 80454C34  FC 00 00 18 */	frsp f0, f0
/* 80454C38  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80454C3C  C0 41 00 10 */	lfs f2, 0x10(r1)
lbl_80454C40:
/* 80454C40  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80454C44  38 7F 06 32 */	addi r3, r31, 0x632
/* 80454C48  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 80454C4C  38 80 00 00 */	li r4, 0
/* 80454C50  C0 05 00 00 */	lfs f0, 0(r5)
/* 80454C54  38 A0 00 E3 */	li r5, 0xe3
/* 80454C58  38 C0 00 16 */	li r6, 0x16
/* 80454C5C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80454C60  4B F6 66 B1 */	bl add_calc_short_angle2
/* 80454C64  3C 60 80 64 */	lis r3, lit_7931@ha /* 0x80644494@ha */
/* 80454C68  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80454C6C  38 A3 44 94 */	addi r5, r3, lit_7931@l /* 0x80644494@l */
/* 80454C70  A8 1F 06 1A */	lha r0, 0x61a(r31)
/* 80454C74  C8 A5 00 00 */	lfd f5, 0(r5)
/* 80454C78  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80454C7C  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 80454C80  C8 84 42 4C */	lfd f4, lit_469@l(r4)  /* 0x8064424C@l */
/* 80454C84  FC 40 28 34 */	frsqrte f2, f5
/* 80454C88  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80454C8C  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80454C90  C8 65 00 00 */	lfd f3, 0(r5)
/* 80454C94  C0 04 00 00 */	lfs f0, 0(r4)
/* 80454C98  7C 00 0E 70 */	srawi r0, r0, 1
/* 80454C9C  FC 22 00 B2 */	fmul f1, f2, f2
/* 80454CA0  A8 9F 06 14 */	lha r4, 0x614(r31)
/* 80454CA4  38 7F 06 0E */	addi r3, r31, 0x60e
/* 80454CA8  7C 05 07 34 */	extsh r5, r0
/* 80454CAC  FC 44 00 B2 */	fmul f2, f4, f2
/* 80454CB0  38 C0 00 09 */	li r6, 9
/* 80454CB4  FC 25 00 72 */	fmul f1, f5, f1
/* 80454CB8  FC 23 08 28 */	fsub f1, f3, f1
/* 80454CBC  FC 42 00 72 */	fmul f2, f2, f1
/* 80454CC0  FC 22 00 B2 */	fmul f1, f2, f2
/* 80454CC4  FC 44 00 B2 */	fmul f2, f4, f2
/* 80454CC8  FC 25 00 72 */	fmul f1, f5, f1
/* 80454CCC  FC 23 08 28 */	fsub f1, f3, f1
/* 80454CD0  FC 42 00 72 */	fmul f2, f2, f1
/* 80454CD4  FC 22 00 B2 */	fmul f1, f2, f2
/* 80454CD8  FC 44 00 B2 */	fmul f2, f4, f2
/* 80454CDC  FC 25 00 72 */	fmul f1, f5, f1
/* 80454CE0  FC 23 08 28 */	fsub f1, f3, f1
/* 80454CE4  FC 22 00 72 */	fmul f1, f2, f1
/* 80454CE8  FC 25 00 72 */	fmul f1, f5, f1
/* 80454CEC  FC 20 08 18 */	frsp f1, f1
/* 80454CF0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80454CF4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80454CF8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80454CFC  4B F6 66 15 */	bl add_calc_short_angle2
/* 80454D00  3C 80 80 64 */	lis r4, lit_7932@ha /* 0x8064449C@ha */
/* 80454D04  B0 7F 06 22 */	sth r3, 0x622(r31)
/* 80454D08  C8 A4 44 9C */	lfd f5, lit_7932@l(r4)  /* 0x8064449C@l */
/* 80454D0C  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 80454D10  38 C3 42 4C */	addi r6, r3, lit_469@l /* 0x8064424C@l */
/* 80454D14  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 80454D18  FC 40 28 34 */	frsqrte f2, f5
/* 80454D1C  38 A4 42 54 */	addi r5, r4, lit_470@l /* 0x80644254@l */
/* 80454D20  C8 86 00 00 */	lfd f4, 0(r6)
/* 80454D24  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80454D28  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80454D2C  C8 65 00 00 */	lfd f3, 0(r5)
/* 80454D30  FC 22 00 B2 */	fmul f1, f2, f2
/* 80454D34  C0 04 00 00 */	lfs f0, 0(r4)
/* 80454D38  A8 9F 06 22 */	lha r4, 0x622(r31)
/* 80454D3C  38 7F 06 1C */	addi r3, r31, 0x61c
/* 80454D40  FC 44 00 B2 */	fmul f2, f4, f2
/* 80454D44  38 A0 00 88 */	li r5, 0x88
/* 80454D48  FC 25 00 72 */	fmul f1, f5, f1
/* 80454D4C  38 C0 00 2D */	li r6, 0x2d
/* 80454D50  FC 23 08 28 */	fsub f1, f3, f1
/* 80454D54  FC 42 00 72 */	fmul f2, f2, f1
/* 80454D58  FC 22 00 B2 */	fmul f1, f2, f2
/* 80454D5C  FC 44 00 B2 */	fmul f2, f4, f2
/* 80454D60  FC 25 00 72 */	fmul f1, f5, f1
/* 80454D64  FC 23 08 28 */	fsub f1, f3, f1
/* 80454D68  FC 42 00 72 */	fmul f2, f2, f1
/* 80454D6C  FC 22 00 B2 */	fmul f1, f2, f2
/* 80454D70  FC 44 00 B2 */	fmul f2, f4, f2
/* 80454D74  FC 25 00 72 */	fmul f1, f5, f1
/* 80454D78  FC 23 08 28 */	fsub f1, f3, f1
/* 80454D7C  FC 22 00 72 */	fmul f1, f2, f1
/* 80454D80  FC 25 00 72 */	fmul f1, f5, f1
/* 80454D84  FC 20 08 18 */	frsp f1, f1
/* 80454D88  D0 21 00 08 */	stfs f1, 8(r1)
/* 80454D8C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80454D90  EC 20 08 28 */	fsubs f1, f0, f1
/* 80454D94  4B F6 65 7D */	bl add_calc_short_angle2
/* 80454D98  A8 7F 06 0E */	lha r3, 0x60e(r31)
/* 80454D9C  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 80454DA0  7C 03 00 00 */	cmpw r3, r0
/* 80454DA4  40 82 00 0C */	bne lbl_80454DB0
/* 80454DA8  7F E3 FB 78 */	mr r3, r31
/* 80454DAC  4B FF F6 B9 */	bl mfish_namazu_dummy_process_init
lbl_80454DB0:
/* 80454DB0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80454DB4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80454DB8  7C 08 03 A6 */	mtlr r0
/* 80454DBC  38 21 00 30 */	addi r1, r1, 0x30
/* 80454DC0  4E 80 00 20 */	blr 
