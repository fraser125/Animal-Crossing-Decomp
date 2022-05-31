lbl_804669D4:
/* 804669D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804669D8  7C 08 02 A6 */	mflr r0
/* 804669DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804669E0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804669E4  7C 9F 23 78 */	mr r31, r4
/* 804669E8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804669EC  7C 7E 1B 78 */	mr r30, r3
/* 804669F0  A8 63 00 6E */	lha r3, 0x6e(r3)
/* 804669F4  38 03 FF FF */	addi r0, r3, -1
/* 804669F8  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 804669FC  A8 1E 00 7A */	lha r0, 0x7a(r30)
/* 80466A00  2C 00 00 00 */	cmpwi r0, 0
/* 80466A04  41 82 01 00 */	beq lbl_80466B04
/* 80466A08  3C 60 80 64 */	lis r3, lit_761@ha /* 0x8064465C@ha */
/* 80466A0C  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 80466A10  38 A3 46 5C */	addi r5, r3, lit_761@l /* 0x8064465C@l */
/* 80466A14  3C 00 43 30 */	lis r0, 0x4330
/* 80466A18  C9 85 00 00 */	lfd f12, 0(r5)
/* 80466A1C  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 80466A20  38 C3 46 04 */	addi r6, r3, lit_510@l /* 0x80644604@l */
/* 80466A24  3C A0 80 64 */	lis r5, lit_1148@ha /* 0x80644724@ha */
/* 80466A28  FC 20 60 34 */	frsqrte f1, f12
/* 80466A2C  39 45 47 24 */	addi r10, r5, lit_1148@l /* 0x80644724@l */
/* 80466A30  C9 64 45 FC */	lfd f11, lit_509@l(r4)  /* 0x806445FC@l */
/* 80466A34  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80466A38  80 83 61 38 */	lwz r4, debug_mode@l(r3)  /* 0x81166138@l */
/* 80466A3C  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 80466A40  FC 01 00 72 */	fmul f0, f1, f1
/* 80466A44  39 03 46 3C */	addi r8, r3, lit_589@l /* 0x8064463C@l */
/* 80466A48  A8 84 16 B2 */	lha r4, 0x16b2(r4)
/* 80466A4C  3C 60 80 64 */	lis r3, lit_678@ha /* 0x80644654@ha */
/* 80466A50  39 23 46 54 */	addi r9, r3, lit_678@l /* 0x80644654@l */
/* 80466A54  C9 46 00 00 */	lfd f10, 0(r6)
/* 80466A58  FC 0C 00 32 */	fmul f0, f12, f0
/* 80466A5C  6C 87 80 00 */	xoris r7, r4, 0x8000
/* 80466A60  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80466A64  3C 80 80 64 */	lis r4, lit_465@ha /* 0x806445D4@ha */
/* 80466A68  FC 2B 00 72 */	fmul f1, f11, f1
/* 80466A6C  38 C3 46 0C */	addi r6, r3, lit_511@l /* 0x8064460C@l */
/* 80466A70  FC 0A 00 28 */	fsub f0, f10, f0
/* 80466A74  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 80466A78  C8 48 00 00 */	lfd f2, 0(r8)
/* 80466A7C  3C 60 80 64 */	lis r3, lit_512@ha /* 0x80644610@ha */
/* 80466A80  38 A4 45 D4 */	addi r5, r4, lit_465@l /* 0x806445D4@l */
/* 80466A84  90 01 00 18 */	stw r0, 0x18(r1)
/* 80466A88  FC 01 00 32 */	fmul f0, f1, f0
/* 80466A8C  38 83 46 10 */	addi r4, r3, lit_512@l /* 0x80644610@l */
/* 80466A90  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80466A94  38 7E 00 24 */	addi r3, r30, 0x24
/* 80466A98  C0 EA 00 00 */	lfs f7, 0(r10)
/* 80466A9C  C0 DE 00 4C */	lfs f6, 0x4c(r30)
/* 80466AA0  FC 60 00 32 */	fmul f3, f0, f0
/* 80466AA4  C0 A9 00 00 */	lfs f5, 0(r9)
/* 80466AA8  C0 84 00 00 */	lfs f4, 0(r4)
/* 80466AAC  FD 2B 00 32 */	fmul f9, f11, f0
/* 80466AB0  C0 06 00 00 */	lfs f0, 0(r6)
/* 80466AB4  EC 21 10 28 */	fsubs f1, f1, f2
/* 80466AB8  FD 0C 00 F2 */	fmul f8, f12, f3
/* 80466ABC  C0 65 00 00 */	lfs f3, 0(r5)
/* 80466AC0  EC 47 30 2A */	fadds f2, f7, f6
/* 80466AC4  EC 25 00 72 */	fmuls f1, f5, f1
/* 80466AC8  FC CA 40 28 */	fsub f6, f10, f8
/* 80466ACC  EC 22 08 2A */	fadds f1, f2, f1
/* 80466AD0  FC A9 01 B2 */	fmul f5, f9, f6
/* 80466AD4  FC 45 01 72 */	fmul f2, f5, f5
/* 80466AD8  FC AB 01 72 */	fmul f5, f11, f5
/* 80466ADC  FC 4C 00 B2 */	fmul f2, f12, f2
/* 80466AE0  FC 4A 10 28 */	fsub f2, f10, f2
/* 80466AE4  FC 45 00 B2 */	fmul f2, f5, f2
/* 80466AE8  FC 4C 00 B2 */	fmul f2, f12, f2
/* 80466AEC  FC 40 10 18 */	frsp f2, f2
/* 80466AF0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80466AF4  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80466AF8  EC 40 10 28 */	fsubs f2, f0, f2
/* 80466AFC  4B F5 46 B5 */	bl add_calc
/* 80466B00  48 00 00 A0 */	b lbl_80466BA0
lbl_80466B04:
/* 80466B04  3C 60 80 64 */	lis r3, lit_761@ha /* 0x8064465C@ha */
/* 80466B08  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 80466B0C  38 A3 46 5C */	addi r5, r3, lit_761@l /* 0x8064465C@l */
/* 80466B10  C8 E4 45 FC */	lfd f7, lit_509@l(r4)  /* 0x806445FC@l */
/* 80466B14  C9 05 00 00 */	lfd f8, 0(r5)
/* 80466B18  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 80466B1C  38 C3 46 04 */	addi r6, r3, lit_510@l /* 0x80644604@l */
/* 80466B20  3C 80 80 64 */	lis r4, lit_465@ha /* 0x806445D4@ha */
/* 80466B24  FC 20 40 34 */	frsqrte f1, f8
/* 80466B28  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80466B2C  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 80466B30  C8 C6 00 00 */	lfd f6, 0(r6)
/* 80466B34  3C 60 80 64 */	lis r3, lit_512@ha /* 0x80644610@ha */
/* 80466B38  C0 05 00 00 */	lfs f0, 0(r5)
/* 80466B3C  FC 41 00 72 */	fmul f2, f1, f1
/* 80466B40  C0 83 46 10 */	lfs f4, lit_512@l(r3)  /* 0x80644610@l */
/* 80466B44  C0 64 45 D4 */	lfs f3, lit_465@l(r4)  /* 0x806445D4@l */
/* 80466B48  38 7E 00 24 */	addi r3, r30, 0x24
/* 80466B4C  FC A7 00 72 */	fmul f5, f7, f1
/* 80466B50  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80466B54  FC 48 00 B2 */	fmul f2, f8, f2
/* 80466B58  FC 46 10 28 */	fsub f2, f6, f2
/* 80466B5C  FC A5 00 B2 */	fmul f5, f5, f2
/* 80466B60  FC 45 01 72 */	fmul f2, f5, f5
/* 80466B64  FC A7 01 72 */	fmul f5, f7, f5
/* 80466B68  FC 48 00 B2 */	fmul f2, f8, f2
/* 80466B6C  FC 46 10 28 */	fsub f2, f6, f2
/* 80466B70  FC A5 00 B2 */	fmul f5, f5, f2
/* 80466B74  FC 45 01 72 */	fmul f2, f5, f5
/* 80466B78  FC A7 01 72 */	fmul f5, f7, f5
/* 80466B7C  FC 48 00 B2 */	fmul f2, f8, f2
/* 80466B80  FC 46 10 28 */	fsub f2, f6, f2
/* 80466B84  FC 45 00 B2 */	fmul f2, f5, f2
/* 80466B88  FC 48 00 B2 */	fmul f2, f8, f2
/* 80466B8C  FC 40 10 18 */	frsp f2, f2
/* 80466B90  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80466B94  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80466B98  EC 40 10 28 */	fsubs f2, f0, f2
/* 80466B9C  4B F5 46 15 */	bl add_calc
lbl_80466BA0:
/* 80466BA0  A8 1E 00 6E */	lha r0, 0x6e(r30)
/* 80466BA4  2C 00 00 00 */	cmpwi r0, 0
/* 80466BA8  40 80 00 6C */	bge lbl_80466C14
/* 80466BAC  38 00 00 00 */	li r0, 0
/* 80466BB0  B0 1E 00 7A */	sth r0, 0x7a(r30)
/* 80466BB4  A8 1E 00 78 */	lha r0, 0x78(r30)
/* 80466BB8  2C 00 00 00 */	cmpwi r0, 0
/* 80466BBC  40 82 00 58 */	bne lbl_80466C14
/* 80466BC0  4B BF 61 35 */	bl fqrand
/* 80466BC4  3C 60 80 64 */	lis r3, lit_1525@ha /* 0x80644750@ha */
/* 80466BC8  C0 03 47 50 */	lfs f0, lit_1525@l(r3)  /* 0x80644750@l */
/* 80466BCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80466BD0  41 81 00 1C */	bgt lbl_80466BEC
/* 80466BD4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80466BD8  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80466BDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80466BE0  A8 03 16 96 */	lha r0, 0x1696(r3)
/* 80466BE4  2C 00 00 00 */	cmpwi r0, 0
/* 80466BE8  41 82 00 18 */	beq lbl_80466C00
lbl_80466BEC:
/* 80466BEC  7F C3 F3 78 */	mr r3, r30
/* 80466BF0  7F E5 FB 78 */	mr r5, r31
/* 80466BF4  38 80 00 03 */	li r4, 3
/* 80466BF8  48 00 02 E1 */	bl mi_kuwagata_setupAction
/* 80466BFC  48 00 02 BC */	b lbl_80466EB8
lbl_80466C00:
/* 80466C00  7F C3 F3 78 */	mr r3, r30
/* 80466C04  7F E5 FB 78 */	mr r5, r31
/* 80466C08  38 80 00 00 */	li r4, 0
/* 80466C0C  48 00 02 CD */	bl mi_kuwagata_setupAction
/* 80466C10  48 00 02 A8 */	b lbl_80466EB8
lbl_80466C14:
/* 80466C14  A8 7E 00 76 */	lha r3, 0x76(r30)
/* 80466C18  38 03 FF FF */	addi r0, r3, -1
/* 80466C1C  B0 1E 00 76 */	sth r0, 0x76(r30)
/* 80466C20  A8 1E 00 76 */	lha r0, 0x76(r30)
/* 80466C24  2C 00 00 00 */	cmpwi r0, 0
/* 80466C28  40 80 00 A4 */	bge lbl_80466CCC
/* 80466C2C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80466C30  4B F0 A3 E5 */	bl cKF_SkeletonInfo_R_play
/* 80466C34  80 7E 00 08 */	lwz r3, 8(r30)
/* 80466C38  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80466C3C  FC 00 00 1E */	fctiwz f0, f0
/* 80466C40  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80466C44  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80466C48  2C 00 00 01 */	cmpwi r0, 1
/* 80466C4C  40 82 00 80 */	bne lbl_80466CCC
/* 80466C50  83 E3 02 AC */	lwz r31, 0x2ac(r3)
/* 80466C54  4B BF 60 A1 */	bl fqrand
/* 80466C58  3C 60 80 64 */	lis r3, lit_1067@ha /* 0x80644700@ha */
/* 80466C5C  3C 80 80 64 */	lis r4, lit_506@ha /* 0x806445E8@ha */
/* 80466C60  38 A3 47 00 */	addi r5, r3, lit_1067@l /* 0x80644700@l */
/* 80466C64  C0 45 00 00 */	lfs f2, 0(r5)
/* 80466C68  38 A4 45 E8 */	addi r5, r4, lit_506@l /* 0x806445E8@l */
/* 80466C6C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80466C70  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80466C74  EC 22 08 2A */	fadds f1, f2, f1
/* 80466C78  38 83 45 BC */	addi r4, r3, lit_459@l /* 0x806445BC@l */
/* 80466C7C  C0 44 00 00 */	lfs f2, 0(r4)
/* 80466C80  7F E4 FB 78 */	mr r4, r31
/* 80466C84  80 7E 00 08 */	lwz r3, 8(r30)
/* 80466C88  38 A0 00 00 */	li r5, 0
/* 80466C8C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80466C90  4B F0 AB 29 */	bl cKF_SkeletonInfo_R_init_standard_repeat_speedsetandmorph
/* 80466C94  4B BF 60 61 */	bl fqrand
/* 80466C98  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806446FC@ha */
/* 80466C9C  C0 03 46 FC */	lfs f0, lit_1066@l(r3)  /* 0x806446FC@l */
/* 80466CA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80466CA4  40 81 00 28 */	ble lbl_80466CCC
/* 80466CA8  4B BF 60 4D */	bl fqrand
/* 80466CAC  3C 60 80 64 */	lis r3, lit_2831@ha /* 0x806447F8@ha */
/* 80466CB0  C0 03 47 F8 */	lfs f0, lit_2831@l(r3)  /* 0x806447F8@l */
/* 80466CB4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80466CB8  FC 00 00 1E */	fctiwz f0, f0
/* 80466CBC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80466CC0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80466CC4  38 03 00 28 */	addi r0, r3, 0x28
/* 80466CC8  B0 1E 00 76 */	sth r0, 0x76(r30)
lbl_80466CCC:
/* 80466CCC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80466CD0  3C 00 43 30 */	lis r0, 0x4330
/* 80466CD4  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80466CD8  3C C0 80 64 */	lis r6, lit_678@ha /* 0x80644654@ha */
/* 80466CDC  80 84 00 00 */	lwz r4, 0(r4)
/* 80466CE0  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 80466CE4  38 A3 46 3C */	addi r5, r3, lit_589@l /* 0x8064463C@l */
/* 80466CE8  3C E0 80 64 */	lis r7, lit_504@ha /* 0x806445E0@ha */
/* 80466CEC  A8 64 17 50 */	lha r3, 0x1750(r4)
/* 80466CF0  3D 00 80 64 */	lis r8, lit_511@ha /* 0x8064460C@ha */
/* 80466CF4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80466CF8  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 80466CFC  C8 25 00 00 */	lfd f1, 0(r5)
/* 80466D00  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80466D04  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80466D08  C0 46 46 54 */	lfs f2, lit_678@l(r6)  /* 0x80644654@l */
/* 80466D0C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80466D10  C0 67 45 E0 */	lfs f3, lit_504@l(r7)  /* 0x806445E0@l */
/* 80466D14  EC 20 08 28 */	fsubs f1, f0, f1
/* 80466D18  C0 88 46 0C */	lfs f4, lit_511@l(r8)  /* 0x8064460C@l */
/* 80466D1C  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80466D20  EC 22 00 72 */	fmuls f1, f2, f1
/* 80466D24  EC 23 08 2A */	fadds f1, f3, f1
/* 80466D28  EC 84 08 28 */	fsubs f4, f4, f1
/* 80466D2C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80466D30  40 81 00 68 */	ble lbl_80466D98
/* 80466D34  FC 20 20 34 */	frsqrte f1, f4
/* 80466D38  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 80466D3C  38 83 45 FC */	addi r4, r3, lit_509@l /* 0x806445FC@l */
/* 80466D40  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 80466D44  C8 64 00 00 */	lfd f3, 0(r4)
/* 80466D48  FC 01 00 72 */	fmul f0, f1, f1
/* 80466D4C  C8 43 46 04 */	lfd f2, lit_510@l(r3)  /* 0x80644604@l */
/* 80466D50  FC 23 00 72 */	fmul f1, f3, f1
/* 80466D54  FC 04 00 32 */	fmul f0, f4, f0
/* 80466D58  FC 02 00 28 */	fsub f0, f2, f0
/* 80466D5C  FC 21 00 32 */	fmul f1, f1, f0
/* 80466D60  FC 01 00 72 */	fmul f0, f1, f1
/* 80466D64  FC 23 00 72 */	fmul f1, f3, f1
/* 80466D68  FC 04 00 32 */	fmul f0, f4, f0
/* 80466D6C  FC 02 00 28 */	fsub f0, f2, f0
/* 80466D70  FC 21 00 32 */	fmul f1, f1, f0
/* 80466D74  FC 01 00 72 */	fmul f0, f1, f1
/* 80466D78  FC 23 00 72 */	fmul f1, f3, f1
/* 80466D7C  FC 04 00 32 */	fmul f0, f4, f0
/* 80466D80  FC 02 00 28 */	fsub f0, f2, f0
/* 80466D84  FC 01 00 32 */	fmul f0, f1, f0
/* 80466D88  FC 04 00 32 */	fmul f0, f4, f0
/* 80466D8C  FC 00 00 18 */	frsp f0, f0
/* 80466D90  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80466D94  C0 81 00 0C */	lfs f4, 0xc(r1)
lbl_80466D98:
/* 80466D98  3C 80 80 64 */	lis r4, lit_511@ha /* 0x8064460C@ha */
/* 80466D9C  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80466DA0  C0 44 46 0C */	lfs f2, lit_511@l(r4)  /* 0x8064460C@l */
/* 80466DA4  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80466DA8  EC 22 20 28 */	fsubs f1, f2, f4
/* 80466DAC  EC 82 08 28 */	fsubs f4, f2, f1
/* 80466DB0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80466DB4  40 81 00 68 */	ble lbl_80466E1C
/* 80466DB8  FC 20 20 34 */	frsqrte f1, f4
/* 80466DBC  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 80466DC0  38 83 45 FC */	addi r4, r3, lit_509@l /* 0x806445FC@l */
/* 80466DC4  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 80466DC8  C8 64 00 00 */	lfd f3, 0(r4)
/* 80466DCC  FC 01 00 72 */	fmul f0, f1, f1
/* 80466DD0  C8 43 46 04 */	lfd f2, lit_510@l(r3)  /* 0x80644604@l */
/* 80466DD4  FC 23 00 72 */	fmul f1, f3, f1
/* 80466DD8  FC 04 00 32 */	fmul f0, f4, f0
/* 80466DDC  FC 02 00 28 */	fsub f0, f2, f0
/* 80466DE0  FC 21 00 32 */	fmul f1, f1, f0
/* 80466DE4  FC 01 00 72 */	fmul f0, f1, f1
/* 80466DE8  FC 23 00 72 */	fmul f1, f3, f1
/* 80466DEC  FC 04 00 32 */	fmul f0, f4, f0
/* 80466DF0  FC 02 00 28 */	fsub f0, f2, f0
/* 80466DF4  FC 21 00 32 */	fmul f1, f1, f0
/* 80466DF8  FC 01 00 72 */	fmul f0, f1, f1
/* 80466DFC  FC 23 00 72 */	fmul f1, f3, f1
/* 80466E00  FC 04 00 32 */	fmul f0, f4, f0
/* 80466E04  FC 02 00 28 */	fsub f0, f2, f0
/* 80466E08  FC 01 00 32 */	fmul f0, f1, f0
/* 80466E0C  FC 04 00 32 */	fmul f0, f4, f0
/* 80466E10  FC 00 00 18 */	frsp f0, f0
/* 80466E14  D0 01 00 08 */	stfs f0, 8(r1)
/* 80466E18  C0 81 00 08 */	lfs f4, 8(r1)
lbl_80466E1C:
/* 80466E1C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80466E20  3C 00 43 30 */	lis r0, 0x4330
/* 80466E24  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80466E28  3D 20 80 64 */	lis r9, lit_511@ha /* 0x8064460C@ha */
/* 80466E2C  80 A4 00 00 */	lwz r5, 0(r4)
/* 80466E30  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 80466E34  38 83 46 3C */	addi r4, r3, lit_589@l /* 0x8064463C@l */
/* 80466E38  C0 29 46 0C */	lfs f1, lit_511@l(r9)  /* 0x8064460C@l */
/* 80466E3C  A8 65 17 52 */	lha r3, 0x1752(r5)
/* 80466E40  3C C0 80 64 */	lis r6, lit_678@ha /* 0x80644654@ha */
/* 80466E44  38 A6 46 54 */	addi r5, r6, lit_678@l /* 0x80644654@l */
/* 80466E48  C8 44 00 00 */	lfd f2, 0(r4)
/* 80466E4C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80466E50  3C C0 80 64 */	lis r6, lit_505@ha /* 0x806445E4@ha */
/* 80466E54  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80466E58  39 06 45 E4 */	addi r8, r6, lit_505@l /* 0x806445E4@l */
/* 80466E5C  EC 21 20 28 */	fsubs f1, f1, f4
/* 80466E60  C0 65 00 00 */	lfs f3, 0(r5)
/* 80466E64  90 01 00 18 */	stw r0, 0x18(r1)
/* 80466E68  3C E0 80 64 */	lis r7, lit_1111@ha /* 0x8064470C@ha */
/* 80466E6C  C0 88 00 00 */	lfs f4, 0(r8)
/* 80466E70  38 7E 00 78 */	addi r3, r30, 0x78
/* 80466E74  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80466E78  38 C0 00 2D */	li r6, 0x2d
/* 80466E7C  A8 9E 00 7A */	lha r4, 0x7a(r30)
/* 80466E80  EC 00 10 28 */	fsubs f0, f0, f2
/* 80466E84  C0 47 47 0C */	lfs f2, lit_1111@l(r7)  /* 0x8064470C@l */
/* 80466E88  EC 03 00 32 */	fmuls f0, f3, f0
/* 80466E8C  EC 02 00 2A */	fadds f0, f2, f0
/* 80466E90  EC 04 00 32 */	fmuls f0, f4, f0
/* 80466E94  FC 00 00 1E */	fctiwz f0, f0
/* 80466E98  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80466E9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80466EA0  7C 00 07 34 */	extsh r0, r0
/* 80466EA4  7C 00 0E 70 */	srawi r0, r0, 1
/* 80466EA8  7C 00 07 34 */	extsh r0, r0
/* 80466EAC  7C 00 0E 70 */	srawi r0, r0, 1
/* 80466EB0  7C 05 07 34 */	extsh r5, r0
/* 80466EB4  4B F5 44 5D */	bl add_calc_short_angle2
lbl_80466EB8:
/* 80466EB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80466EBC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80466EC0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80466EC4  7C 08 03 A6 */	mtlr r0
/* 80466EC8  38 21 00 30 */	addi r1, r1, 0x30
/* 80466ECC  4E 80 00 20 */	blr 
