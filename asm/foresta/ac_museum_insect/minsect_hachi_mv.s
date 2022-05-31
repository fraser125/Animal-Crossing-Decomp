lbl_80464B6C:
/* 80464B6C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80464B70  7C 08 02 A6 */	mflr r0
/* 80464B74  90 01 00 44 */	stw r0, 0x44(r1)
/* 80464B78  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80464B7C  7C 7F 1B 78 */	mr r31, r3
/* 80464B80  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80464B84  7C 9E 23 78 */	mr r30, r4
/* 80464B88  4B FF 7A F1 */	bl get_now_mind_flag
/* 80464B8C  B0 7F 00 8E */	sth r3, 0x8e(r31)
/* 80464B90  7F E3 FB 78 */	mr r3, r31
/* 80464B94  4B FF F4 75 */	bl func_80464008
/* 80464B98  81 9F 00 04 */	lwz r12, 4(r31)
/* 80464B9C  7F E3 FB 78 */	mr r3, r31
/* 80464BA0  7F C4 F3 78 */	mr r4, r30
/* 80464BA4  7D 89 03 A6 */	mtctr r12
/* 80464BA8  4E 80 04 21 */	bctrl 
/* 80464BAC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80464BB0  3C 00 43 30 */	lis r0, 0x4330
/* 80464BB4  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80464BB8  3C C0 80 64 */	lis r6, lit_678@ha /* 0x80644654@ha */
/* 80464BBC  80 84 00 00 */	lwz r4, 0(r4)
/* 80464BC0  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 80464BC4  38 A3 46 3C */	addi r5, r3, lit_589@l /* 0x8064463C@l */
/* 80464BC8  3C E0 80 64 */	lis r7, lit_504@ha /* 0x806445E0@ha */
/* 80464BCC  A8 64 17 50 */	lha r3, 0x1750(r4)
/* 80464BD0  3D 00 80 64 */	lis r8, lit_511@ha /* 0x8064460C@ha */
/* 80464BD4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80464BD8  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 80464BDC  C8 25 00 00 */	lfd f1, 0(r5)
/* 80464BE0  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80464BE4  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80464BE8  C0 46 46 54 */	lfs f2, lit_678@l(r6)  /* 0x80644654@l */
/* 80464BEC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80464BF0  C0 67 45 E0 */	lfs f3, lit_504@l(r7)  /* 0x806445E0@l */
/* 80464BF4  EC 20 08 28 */	fsubs f1, f0, f1
/* 80464BF8  C0 88 46 0C */	lfs f4, lit_511@l(r8)  /* 0x8064460C@l */
/* 80464BFC  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80464C00  EC 22 00 72 */	fmuls f1, f2, f1
/* 80464C04  EC 23 08 2A */	fadds f1, f3, f1
/* 80464C08  EC 84 08 28 */	fsubs f4, f4, f1
/* 80464C0C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80464C10  40 81 00 68 */	ble lbl_80464C78
/* 80464C14  FC 20 20 34 */	frsqrte f1, f4
/* 80464C18  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 80464C1C  38 83 45 FC */	addi r4, r3, lit_509@l /* 0x806445FC@l */
/* 80464C20  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 80464C24  C8 64 00 00 */	lfd f3, 0(r4)
/* 80464C28  FC 01 00 72 */	fmul f0, f1, f1
/* 80464C2C  C8 43 46 04 */	lfd f2, lit_510@l(r3)  /* 0x80644604@l */
/* 80464C30  FC 23 00 72 */	fmul f1, f3, f1
/* 80464C34  FC 04 00 32 */	fmul f0, f4, f0
/* 80464C38  FC 02 00 28 */	fsub f0, f2, f0
/* 80464C3C  FC 21 00 32 */	fmul f1, f1, f0
/* 80464C40  FC 01 00 72 */	fmul f0, f1, f1
/* 80464C44  FC 23 00 72 */	fmul f1, f3, f1
/* 80464C48  FC 04 00 32 */	fmul f0, f4, f0
/* 80464C4C  FC 02 00 28 */	fsub f0, f2, f0
/* 80464C50  FC 21 00 32 */	fmul f1, f1, f0
/* 80464C54  FC 01 00 72 */	fmul f0, f1, f1
/* 80464C58  FC 23 00 72 */	fmul f1, f3, f1
/* 80464C5C  FC 04 00 32 */	fmul f0, f4, f0
/* 80464C60  FC 02 00 28 */	fsub f0, f2, f0
/* 80464C64  FC 01 00 32 */	fmul f0, f1, f0
/* 80464C68  FC 04 00 32 */	fmul f0, f4, f0
/* 80464C6C  FC 00 00 18 */	frsp f0, f0
/* 80464C70  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80464C74  C0 81 00 20 */	lfs f4, 0x20(r1)
lbl_80464C78:
/* 80464C78  3C 80 80 64 */	lis r4, lit_511@ha /* 0x8064460C@ha */
/* 80464C7C  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80464C80  C0 44 46 0C */	lfs f2, lit_511@l(r4)  /* 0x8064460C@l */
/* 80464C84  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80464C88  EC 22 20 28 */	fsubs f1, f2, f4
/* 80464C8C  EC 82 08 28 */	fsubs f4, f2, f1
/* 80464C90  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80464C94  40 81 00 68 */	ble lbl_80464CFC
/* 80464C98  FC 20 20 34 */	frsqrte f1, f4
/* 80464C9C  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 80464CA0  38 83 45 FC */	addi r4, r3, lit_509@l /* 0x806445FC@l */
/* 80464CA4  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 80464CA8  C8 64 00 00 */	lfd f3, 0(r4)
/* 80464CAC  FC 01 00 72 */	fmul f0, f1, f1
/* 80464CB0  C8 43 46 04 */	lfd f2, lit_510@l(r3)  /* 0x80644604@l */
/* 80464CB4  FC 23 00 72 */	fmul f1, f3, f1
/* 80464CB8  FC 04 00 32 */	fmul f0, f4, f0
/* 80464CBC  FC 02 00 28 */	fsub f0, f2, f0
/* 80464CC0  FC 21 00 32 */	fmul f1, f1, f0
/* 80464CC4  FC 01 00 72 */	fmul f0, f1, f1
/* 80464CC8  FC 23 00 72 */	fmul f1, f3, f1
/* 80464CCC  FC 04 00 32 */	fmul f0, f4, f0
/* 80464CD0  FC 02 00 28 */	fsub f0, f2, f0
/* 80464CD4  FC 21 00 32 */	fmul f1, f1, f0
/* 80464CD8  FC 01 00 72 */	fmul f0, f1, f1
/* 80464CDC  FC 23 00 72 */	fmul f1, f3, f1
/* 80464CE0  FC 04 00 32 */	fmul f0, f4, f0
/* 80464CE4  FC 02 00 28 */	fsub f0, f2, f0
/* 80464CE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80464CEC  FC 04 00 32 */	fmul f0, f4, f0
/* 80464CF0  FC 00 00 18 */	frsp f0, f0
/* 80464CF4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80464CF8  C0 81 00 1C */	lfs f4, 0x1c(r1)
lbl_80464CFC:
/* 80464CFC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80464D00  3C 00 43 30 */	lis r0, 0x4330
/* 80464D04  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80464D08  3D 20 80 64 */	lis r9, lit_511@ha /* 0x8064460C@ha */
/* 80464D0C  80 A4 00 00 */	lwz r5, 0(r4)
/* 80464D10  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 80464D14  38 83 46 3C */	addi r4, r3, lit_589@l /* 0x8064463C@l */
/* 80464D18  C0 29 46 0C */	lfs f1, lit_511@l(r9)  /* 0x8064460C@l */
/* 80464D1C  A8 65 17 52 */	lha r3, 0x1752(r5)
/* 80464D20  3C C0 80 64 */	lis r6, lit_678@ha /* 0x80644654@ha */
/* 80464D24  38 A6 46 54 */	addi r5, r6, lit_678@l /* 0x80644654@l */
/* 80464D28  C8 44 00 00 */	lfd f2, 0(r4)
/* 80464D2C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80464D30  3C C0 80 64 */	lis r6, lit_505@ha /* 0x806445E4@ha */
/* 80464D34  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80464D38  39 06 45 E4 */	addi r8, r6, lit_505@l /* 0x806445E4@l */
/* 80464D3C  EC 21 20 28 */	fsubs f1, f1, f4
/* 80464D40  C0 65 00 00 */	lfs f3, 0(r5)
/* 80464D44  90 01 00 28 */	stw r0, 0x28(r1)
/* 80464D48  3C E0 80 64 */	lis r7, lit_1111@ha /* 0x8064470C@ha */
/* 80464D4C  C0 88 00 00 */	lfs f4, 0(r8)
/* 80464D50  38 7F 00 70 */	addi r3, r31, 0x70
/* 80464D54  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80464D58  38 C0 00 2D */	li r6, 0x2d
/* 80464D5C  A8 9F 00 72 */	lha r4, 0x72(r31)
/* 80464D60  EC 00 10 28 */	fsubs f0, f0, f2
/* 80464D64  C0 47 47 0C */	lfs f2, lit_1111@l(r7)  /* 0x8064470C@l */
/* 80464D68  EC 03 00 32 */	fmuls f0, f3, f0
/* 80464D6C  EC 02 00 2A */	fadds f0, f2, f0
/* 80464D70  EC 04 00 32 */	fmuls f0, f4, f0
/* 80464D74  FC 00 00 1E */	fctiwz f0, f0
/* 80464D78  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80464D7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80464D80  7C 00 07 34 */	extsh r0, r0
/* 80464D84  7C 00 0E 70 */	srawi r0, r0, 1
/* 80464D88  7C 00 07 34 */	extsh r0, r0
/* 80464D8C  7C 00 0E 70 */	srawi r0, r0, 1
/* 80464D90  7C 05 07 34 */	extsh r5, r0
/* 80464D94  4B F5 65 7D */	bl add_calc_short_angle2
/* 80464D98  3C 60 80 64 */	lis r3, lit_871@ha /* 0x806446AC@ha */
/* 80464D9C  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 80464DA0  38 A3 46 AC */	addi r5, r3, lit_871@l /* 0x806446AC@l */
/* 80464DA4  C8 A4 45 FC */	lfd f5, lit_509@l(r4)  /* 0x806445FC@l */
/* 80464DA8  C8 C5 00 00 */	lfd f6, 0(r5)
/* 80464DAC  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 80464DB0  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 80464DB4  FC 60 30 34 */	frsqrte f3, f6
/* 80464DB8  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80464DBC  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 80464DC0  C8 85 00 00 */	lfd f4, 0(r5)
/* 80464DC4  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80464DC8  C0 44 00 00 */	lfs f2, 0(r4)
/* 80464DCC  FC 23 00 F2 */	fmul f1, f3, f3
/* 80464DD0  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80464DD4  FC 65 00 F2 */	fmul f3, f5, f3
/* 80464DD8  FC 26 00 72 */	fmul f1, f6, f1
/* 80464DDC  FC 24 08 28 */	fsub f1, f4, f1
/* 80464DE0  FC 63 00 72 */	fmul f3, f3, f1
/* 80464DE4  FC 23 00 F2 */	fmul f1, f3, f3
/* 80464DE8  FC 65 00 F2 */	fmul f3, f5, f3
/* 80464DEC  FC 26 00 72 */	fmul f1, f6, f1
/* 80464DF0  FC 24 08 28 */	fsub f1, f4, f1
/* 80464DF4  FC 63 00 72 */	fmul f3, f3, f1
/* 80464DF8  FC 23 00 F2 */	fmul f1, f3, f3
/* 80464DFC  FC 65 00 F2 */	fmul f3, f5, f3
/* 80464E00  FC 26 00 72 */	fmul f1, f6, f1
/* 80464E04  FC 24 08 28 */	fsub f1, f4, f1
/* 80464E08  FC 23 00 72 */	fmul f1, f3, f1
/* 80464E0C  FC 26 00 72 */	fmul f1, f6, f1
/* 80464E10  FC 20 08 18 */	frsp f1, f1
/* 80464E14  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80464E18  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80464E1C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80464E20  EC C2 08 28 */	fsubs f6, f2, f1
/* 80464E24  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 80464E28  40 81 00 54 */	ble lbl_80464E7C
/* 80464E2C  FC 20 30 34 */	frsqrte f1, f6
/* 80464E30  FC 01 00 72 */	fmul f0, f1, f1
/* 80464E34  FC 25 00 72 */	fmul f1, f5, f1
/* 80464E38  FC 06 00 32 */	fmul f0, f6, f0
/* 80464E3C  FC 04 00 28 */	fsub f0, f4, f0
/* 80464E40  FC 21 00 32 */	fmul f1, f1, f0
/* 80464E44  FC 01 00 72 */	fmul f0, f1, f1
/* 80464E48  FC 25 00 72 */	fmul f1, f5, f1
/* 80464E4C  FC 06 00 32 */	fmul f0, f6, f0
/* 80464E50  FC 04 00 28 */	fsub f0, f4, f0
/* 80464E54  FC 21 00 32 */	fmul f1, f1, f0
/* 80464E58  FC 01 00 72 */	fmul f0, f1, f1
/* 80464E5C  FC 25 00 72 */	fmul f1, f5, f1
/* 80464E60  FC 06 00 32 */	fmul f0, f6, f0
/* 80464E64  FC 04 00 28 */	fsub f0, f4, f0
/* 80464E68  FC 01 00 32 */	fmul f0, f1, f0
/* 80464E6C  FC 06 00 32 */	fmul f0, f6, f0
/* 80464E70  FC 00 00 18 */	frsp f0, f0
/* 80464E74  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80464E78  C0 C1 00 14 */	lfs f6, 0x14(r1)
lbl_80464E7C:
/* 80464E7C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80464E80  3C 00 43 30 */	lis r0, 0x4330
/* 80464E84  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80464E88  3D 20 80 64 */	lis r9, lit_511@ha /* 0x8064460C@ha */
/* 80464E8C  80 A4 00 00 */	lwz r5, 0(r4)
/* 80464E90  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 80464E94  38 83 46 3C */	addi r4, r3, lit_589@l /* 0x8064463C@l */
/* 80464E98  C0 29 46 0C */	lfs f1, lit_511@l(r9)  /* 0x8064460C@l */
/* 80464E9C  A8 65 16 9A */	lha r3, 0x169a(r5)
/* 80464EA0  3C C0 80 64 */	lis r6, lit_678@ha /* 0x80644654@ha */
/* 80464EA4  38 A6 46 54 */	addi r5, r6, lit_678@l /* 0x80644654@l */
/* 80464EA8  C8 44 00 00 */	lfd f2, 0(r4)
/* 80464EAC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80464EB0  3C C0 80 64 */	lis r6, lit_505@ha /* 0x806445E4@ha */
/* 80464EB4  90 61 00 34 */	stw r3, 0x34(r1)
/* 80464EB8  39 06 45 E4 */	addi r8, r6, lit_505@l /* 0x806445E4@l */
/* 80464EBC  C0 65 00 00 */	lfs f3, 0(r5)
/* 80464EC0  3C E0 80 64 */	lis r7, lit_461@ha /* 0x806445C4@ha */
/* 80464EC4  90 01 00 30 */	stw r0, 0x30(r1)
/* 80464EC8  EC 21 30 28 */	fsubs f1, f1, f6
/* 80464ECC  C0 88 00 00 */	lfs f4, 0(r8)
/* 80464ED0  38 7F 00 6C */	addi r3, r31, 0x6c
/* 80464ED4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80464ED8  38 C0 00 2D */	li r6, 0x2d
/* 80464EDC  A8 9F 00 74 */	lha r4, 0x74(r31)
/* 80464EE0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80464EE4  C0 47 45 C4 */	lfs f2, lit_461@l(r7)  /* 0x806445C4@l */
/* 80464EE8  EC 03 00 32 */	fmuls f0, f3, f0
/* 80464EEC  EC 02 00 2A */	fadds f0, f2, f0
/* 80464EF0  EC 04 00 32 */	fmuls f0, f4, f0
/* 80464EF4  FC 00 00 1E */	fctiwz f0, f0
/* 80464EF8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80464EFC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80464F00  7C 00 07 34 */	extsh r0, r0
/* 80464F04  7C 00 0E 70 */	srawi r0, r0, 1
/* 80464F08  7C 00 07 34 */	extsh r0, r0
/* 80464F0C  7C 00 0E 70 */	srawi r0, r0, 1
/* 80464F10  7C 05 07 34 */	extsh r5, r0
/* 80464F14  4B F5 63 FD */	bl add_calc_short_angle2
/* 80464F18  3C 60 80 64 */	lis r3, lit_871@ha /* 0x806446AC@ha */
/* 80464F1C  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 80464F20  38 A3 46 AC */	addi r5, r3, lit_871@l /* 0x806446AC@l */
/* 80464F24  C8 A4 45 FC */	lfd f5, lit_509@l(r4)  /* 0x806445FC@l */
/* 80464F28  C8 C5 00 00 */	lfd f6, 0(r5)
/* 80464F2C  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 80464F30  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 80464F34  FC 60 30 34 */	frsqrte f3, f6
/* 80464F38  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80464F3C  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 80464F40  C8 85 00 00 */	lfd f4, 0(r5)
/* 80464F44  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80464F48  C0 44 00 00 */	lfs f2, 0(r4)
/* 80464F4C  FC 23 00 F2 */	fmul f1, f3, f3
/* 80464F50  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80464F54  FC 65 00 F2 */	fmul f3, f5, f3
/* 80464F58  FC 26 00 72 */	fmul f1, f6, f1
/* 80464F5C  FC 24 08 28 */	fsub f1, f4, f1
/* 80464F60  FC 63 00 72 */	fmul f3, f3, f1
/* 80464F64  FC 23 00 F2 */	fmul f1, f3, f3
/* 80464F68  FC 65 00 F2 */	fmul f3, f5, f3
/* 80464F6C  FC 26 00 72 */	fmul f1, f6, f1
/* 80464F70  FC 24 08 28 */	fsub f1, f4, f1
/* 80464F74  FC 63 00 72 */	fmul f3, f3, f1
/* 80464F78  FC 23 00 F2 */	fmul f1, f3, f3
/* 80464F7C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80464F80  FC 26 00 72 */	fmul f1, f6, f1
/* 80464F84  FC 24 08 28 */	fsub f1, f4, f1
/* 80464F88  FC 23 00 72 */	fmul f1, f3, f1
/* 80464F8C  FC 26 00 72 */	fmul f1, f6, f1
/* 80464F90  FC 20 08 18 */	frsp f1, f1
/* 80464F94  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80464F98  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80464F9C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80464FA0  EC 42 08 28 */	fsubs f2, f2, f1
/* 80464FA4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80464FA8  40 81 00 54 */	ble lbl_80464FFC
/* 80464FAC  FC 20 10 34 */	frsqrte f1, f2
/* 80464FB0  FC 01 00 72 */	fmul f0, f1, f1
/* 80464FB4  FC 25 00 72 */	fmul f1, f5, f1
/* 80464FB8  FC 02 00 32 */	fmul f0, f2, f0
/* 80464FBC  FC 04 00 28 */	fsub f0, f4, f0
/* 80464FC0  FC 21 00 32 */	fmul f1, f1, f0
/* 80464FC4  FC 01 00 72 */	fmul f0, f1, f1
/* 80464FC8  FC 25 00 72 */	fmul f1, f5, f1
/* 80464FCC  FC 02 00 32 */	fmul f0, f2, f0
/* 80464FD0  FC 04 00 28 */	fsub f0, f4, f0
/* 80464FD4  FC 21 00 32 */	fmul f1, f1, f0
/* 80464FD8  FC 01 00 72 */	fmul f0, f1, f1
/* 80464FDC  FC 25 00 72 */	fmul f1, f5, f1
/* 80464FE0  FC 02 00 32 */	fmul f0, f2, f0
/* 80464FE4  FC 04 00 28 */	fsub f0, f4, f0
/* 80464FE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80464FEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80464FF0  FC 00 00 18 */	frsp f0, f0
/* 80464FF4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80464FF8  C0 41 00 0C */	lfs f2, 0xc(r1)
lbl_80464FFC:
/* 80464FFC  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80465000  A8 9F 00 76 */	lha r4, 0x76(r31)
/* 80465004  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 80465008  38 7F 00 6A */	addi r3, r31, 0x6a
/* 8046500C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80465010  38 A0 00 88 */	li r5, 0x88
/* 80465014  38 C0 00 2D */	li r6, 0x2d
/* 80465018  EC 20 10 28 */	fsubs f1, f0, f2
/* 8046501C  4B F5 62 F5 */	bl add_calc_short_angle2
/* 80465020  3C 60 80 64 */	lis r3, lit_583@ha /* 0x80644624@ha */
/* 80465024  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 80465028  38 A3 46 24 */	addi r5, r3, lit_583@l /* 0x80644624@l */
/* 8046502C  C8 E4 45 FC */	lfd f7, lit_509@l(r4)  /* 0x806445FC@l */
/* 80465030  C9 05 00 00 */	lfd f8, 0(r5)
/* 80465034  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 80465038  38 C3 46 04 */	addi r6, r3, lit_510@l /* 0x80644604@l */
/* 8046503C  3C 80 80 64 */	lis r4, lit_460@ha /* 0x806445C0@ha */
/* 80465040  FC 20 40 34 */	frsqrte f1, f8
/* 80465044  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80465048  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 8046504C  C8 C6 00 00 */	lfd f6, 0(r6)
/* 80465050  3C 60 80 64 */	lis r3, lit_512@ha /* 0x80644610@ha */
/* 80465054  C0 05 00 00 */	lfs f0, 0(r5)
/* 80465058  FC 41 00 72 */	fmul f2, f1, f1
/* 8046505C  C0 83 46 10 */	lfs f4, lit_512@l(r3)  /* 0x80644610@l */
/* 80465060  C0 64 45 C0 */	lfs f3, lit_460@l(r4)  /* 0x806445C0@l */
/* 80465064  38 7F 00 40 */	addi r3, r31, 0x40
/* 80465068  FC A7 00 72 */	fmul f5, f7, f1
/* 8046506C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80465070  FC 48 00 B2 */	fmul f2, f8, f2
/* 80465074  FC 46 10 28 */	fsub f2, f6, f2
/* 80465078  FC A5 00 B2 */	fmul f5, f5, f2
/* 8046507C  FC 45 01 72 */	fmul f2, f5, f5
/* 80465080  FC A7 01 72 */	fmul f5, f7, f5
/* 80465084  FC 48 00 B2 */	fmul f2, f8, f2
/* 80465088  FC 46 10 28 */	fsub f2, f6, f2
/* 8046508C  FC A5 00 B2 */	fmul f5, f5, f2
/* 80465090  FC 45 01 72 */	fmul f2, f5, f5
/* 80465094  FC A7 01 72 */	fmul f5, f7, f5
/* 80465098  FC 48 00 B2 */	fmul f2, f8, f2
/* 8046509C  FC 46 10 28 */	fsub f2, f6, f2
/* 804650A0  FC 45 00 B2 */	fmul f2, f5, f2
/* 804650A4  FC 48 00 B2 */	fmul f2, f8, f2
/* 804650A8  FC 40 10 18 */	frsp f2, f2
/* 804650AC  D0 41 00 08 */	stfs f2, 8(r1)
/* 804650B0  C0 41 00 08 */	lfs f2, 8(r1)
/* 804650B4  EC 40 10 28 */	fsubs f2, f0, f2
/* 804650B8  4B F5 60 F9 */	bl add_calc
/* 804650BC  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804650C0  38 7F 00 1C */	addi r3, r31, 0x1c
/* 804650C4  38 9F 00 44 */	addi r4, r31, 0x44
/* 804650C8  4B F5 5C 15 */	bl chase_xyz_t
/* 804650CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804650D0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804650D4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804650D8  7C 08 03 A6 */	mtlr r0
/* 804650DC  38 21 00 40 */	addi r1, r1, 0x40
/* 804650E0  4E 80 00 20 */	blr 
