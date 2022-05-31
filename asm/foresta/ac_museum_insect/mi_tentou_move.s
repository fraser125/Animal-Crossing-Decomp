lbl_80462B58:
/* 80462B58  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80462B5C  7C 08 02 A6 */	mflr r0
/* 80462B60  90 01 00 64 */	stw r0, 0x64(r1)
/* 80462B64  39 61 00 60 */	addi r11, r1, 0x60
/* 80462B68  4B C3 83 6D */	bl func_8009AED4
/* 80462B6C  7C 7D 1B 78 */	mr r29, r3
/* 80462B70  3C 60 80 68 */	lis r3, tentou_flower_pos@ha /* 0x80686B30@ha */
/* 80462B74  A8 1D 00 70 */	lha r0, 0x70(r29)
/* 80462B78  38 C3 6B 30 */	addi r6, r3, tentou_flower_pos@l /* 0x80686B30@l */
/* 80462B7C  A8 BD 00 6E */	lha r5, 0x6e(r29)
/* 80462B80  7C 9E 23 78 */	mr r30, r4
/* 80462B84  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80462B88  38 65 FF FF */	addi r3, r5, -1
/* 80462B8C  7C A0 07 35 */	extsh. r0, r5
/* 80462B90  B0 7D 00 6E */	sth r3, 0x6e(r29)
/* 80462B94  7F E6 22 14 */	add r31, r6, r4
/* 80462B98  40 81 02 E8 */	ble lbl_80462E80
/* 80462B9C  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80462BA0  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 80462BA4  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80462BA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80462BAC  40 81 02 D4 */	ble lbl_80462E80
/* 80462BB0  A8 1D 00 74 */	lha r0, 0x74(r29)
/* 80462BB4  A8 7D 00 76 */	lha r3, 0x76(r29)
/* 80462BB8  7C 00 18 00 */	cmpw r0, r3
/* 80462BBC  40 82 00 20 */	bne lbl_80462BDC
/* 80462BC0  7C 60 07 35 */	extsh. r0, r3
/* 80462BC4  41 82 00 10 */	beq lbl_80462BD4
/* 80462BC8  38 00 00 00 */	li r0, 0
/* 80462BCC  B0 1D 00 76 */	sth r0, 0x76(r29)
/* 80462BD0  48 00 00 0C */	b lbl_80462BDC
lbl_80462BD4:
/* 80462BD4  38 00 03 8E */	li r0, 0x38e
/* 80462BD8  B0 1D 00 76 */	sth r0, 0x76(r29)
lbl_80462BDC:
/* 80462BDC  A8 1D 00 8C */	lha r0, 0x8c(r29)
/* 80462BE0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80462BE4  41 82 00 4C */	beq lbl_80462C30
/* 80462BE8  7F E3 FB 78 */	mr r3, r31
/* 80462BEC  38 9D 00 1C */	addi r4, r29, 0x1c
/* 80462BF0  38 A1 00 28 */	addi r5, r1, 0x28
/* 80462BF4  4B F5 83 85 */	bl xyz_t_sub
/* 80462BF8  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80462BFC  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80462C00  4B FA 94 01 */	bl atans_table
/* 80462C04  A8 1D 00 6A */	lha r0, 0x6a(r29)
/* 80462C08  7C 63 07 34 */	extsh r3, r3
/* 80462C0C  7C 00 18 50 */	subf r0, r0, r3
/* 80462C10  7C 00 07 35 */	extsh. r0, r0
/* 80462C14  40 81 00 10 */	ble lbl_80462C24
/* 80462C18  38 03 C0 00 */	addi r0, r3, -16384
/* 80462C1C  B0 1D 00 72 */	sth r0, 0x72(r29)
/* 80462C20  48 00 00 40 */	b lbl_80462C60
lbl_80462C24:
/* 80462C24  38 03 40 00 */	addi r0, r3, 0x4000
/* 80462C28  B0 1D 00 72 */	sth r0, 0x72(r29)
/* 80462C2C  48 00 00 34 */	b lbl_80462C60
lbl_80462C30:
/* 80462C30  A8 7D 00 72 */	lha r3, 0x72(r29)
/* 80462C34  A8 1D 00 6A */	lha r0, 0x6a(r29)
/* 80462C38  7C 63 00 50 */	subf r3, r3, r0
/* 80462C3C  7C 60 07 34 */	extsh r0, r3
/* 80462C40  7C 63 07 35 */	extsh. r3, r3
/* 80462C44  7C 60 00 D0 */	neg r3, r0
/* 80462C48  41 80 00 08 */	blt lbl_80462C50
/* 80462C4C  7C 03 03 78 */	mr r3, r0
lbl_80462C50:
/* 80462C50  2C 03 0E 38 */	cmpwi r3, 0xe38
/* 80462C54  40 80 00 0C */	bge lbl_80462C60
/* 80462C58  4B BF A0 75 */	bl func_8005CCCC
/* 80462C5C  B0 7D 00 72 */	sth r3, 0x72(r29)
lbl_80462C60:
/* 80462C60  80 1D 00 00 */	lwz r0, 0(r29)
/* 80462C64  2C 00 00 20 */	cmpwi r0, 0x20
/* 80462C68  41 82 01 0C */	beq lbl_80462D74
/* 80462C6C  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 80462C70  3C 80 80 64 */	lis r4, lit_510@ha /* 0x80644604@ha */
/* 80462C74  38 C3 45 FC */	addi r6, r3, lit_509@l /* 0x806445FC@l */
/* 80462C78  C8 C6 00 00 */	lfd f6, 0(r6)
/* 80462C7C  38 A4 46 04 */	addi r5, r4, lit_510@l /* 0x80644604@l */
/* 80462C80  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80462C84  C8 A6 00 00 */	lfd f5, 0(r6)
/* 80462C88  FC 60 30 34 */	frsqrte f3, f6
/* 80462C8C  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 80462C90  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80462C94  C8 85 00 00 */	lfd f4, 0(r5)
/* 80462C98  C0 44 00 00 */	lfs f2, 0(r4)
/* 80462C9C  FC 23 00 F2 */	fmul f1, f3, f3
/* 80462CA0  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80462CA4  FC 65 00 F2 */	fmul f3, f5, f3
/* 80462CA8  FC 26 00 72 */	fmul f1, f6, f1
/* 80462CAC  FC 24 08 28 */	fsub f1, f4, f1
/* 80462CB0  FC 63 00 72 */	fmul f3, f3, f1
/* 80462CB4  FC 23 00 F2 */	fmul f1, f3, f3
/* 80462CB8  FC 65 00 F2 */	fmul f3, f5, f3
/* 80462CBC  FC 26 00 72 */	fmul f1, f6, f1
/* 80462CC0  FC 24 08 28 */	fsub f1, f4, f1
/* 80462CC4  FC 63 00 72 */	fmul f3, f3, f1
/* 80462CC8  FC 23 00 F2 */	fmul f1, f3, f3
/* 80462CCC  FC 65 00 F2 */	fmul f3, f5, f3
/* 80462CD0  FC 26 00 72 */	fmul f1, f6, f1
/* 80462CD4  FC 24 08 28 */	fsub f1, f4, f1
/* 80462CD8  FC 23 00 72 */	fmul f1, f3, f1
/* 80462CDC  FC 26 00 72 */	fmul f1, f6, f1
/* 80462CE0  FC 20 08 18 */	frsp f1, f1
/* 80462CE4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80462CE8  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80462CEC  EC 22 08 28 */	fsubs f1, f2, f1
/* 80462CF0  EC 42 08 28 */	fsubs f2, f2, f1
/* 80462CF4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80462CF8  40 81 00 54 */	ble lbl_80462D4C
/* 80462CFC  FC 20 10 34 */	frsqrte f1, f2
/* 80462D00  FC 01 00 72 */	fmul f0, f1, f1
/* 80462D04  FC 25 00 72 */	fmul f1, f5, f1
/* 80462D08  FC 02 00 32 */	fmul f0, f2, f0
/* 80462D0C  FC 04 00 28 */	fsub f0, f4, f0
/* 80462D10  FC 21 00 32 */	fmul f1, f1, f0
/* 80462D14  FC 01 00 72 */	fmul f0, f1, f1
/* 80462D18  FC 25 00 72 */	fmul f1, f5, f1
/* 80462D1C  FC 02 00 32 */	fmul f0, f2, f0
/* 80462D20  FC 04 00 28 */	fsub f0, f4, f0
/* 80462D24  FC 21 00 32 */	fmul f1, f1, f0
/* 80462D28  FC 01 00 72 */	fmul f0, f1, f1
/* 80462D2C  FC 25 00 72 */	fmul f1, f5, f1
/* 80462D30  FC 02 00 32 */	fmul f0, f2, f0
/* 80462D34  FC 04 00 28 */	fsub f0, f4, f0
/* 80462D38  FC 01 00 32 */	fmul f0, f1, f0
/* 80462D3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80462D40  FC 00 00 18 */	frsp f0, f0
/* 80462D44  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80462D48  C0 41 00 20 */	lfs f2, 0x20(r1)
lbl_80462D4C:
/* 80462D4C  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80462D50  A8 9D 00 72 */	lha r4, 0x72(r29)
/* 80462D54  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 80462D58  38 7D 00 6A */	addi r3, r29, 0x6a
/* 80462D5C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80462D60  38 A0 01 82 */	li r5, 0x182
/* 80462D64  38 C0 00 2D */	li r6, 0x2d
/* 80462D68  EC 20 10 28 */	fsubs f1, f0, f2
/* 80462D6C  4B F5 85 A5 */	bl add_calc_short_angle2
/* 80462D70  48 00 02 68 */	b lbl_80462FD8
lbl_80462D74:
/* 80462D74  3C 60 80 64 */	lis r3, lit_508@ha /* 0x806445F4@ha */
/* 80462D78  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 80462D7C  38 A3 45 F4 */	addi r5, r3, lit_508@l /* 0x806445F4@l */
/* 80462D80  C8 A4 45 FC */	lfd f5, lit_509@l(r4)  /* 0x806445FC@l */
/* 80462D84  C8 C5 00 00 */	lfd f6, 0(r5)
/* 80462D88  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 80462D8C  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 80462D90  FC 60 30 34 */	frsqrte f3, f6
/* 80462D94  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80462D98  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 80462D9C  C8 85 00 00 */	lfd f4, 0(r5)
/* 80462DA0  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80462DA4  C0 44 00 00 */	lfs f2, 0(r4)
/* 80462DA8  FC 23 00 F2 */	fmul f1, f3, f3
/* 80462DAC  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80462DB0  FC 65 00 F2 */	fmul f3, f5, f3
/* 80462DB4  FC 26 00 72 */	fmul f1, f6, f1
/* 80462DB8  FC 24 08 28 */	fsub f1, f4, f1
/* 80462DBC  FC 63 00 72 */	fmul f3, f3, f1
/* 80462DC0  FC 23 00 F2 */	fmul f1, f3, f3
/* 80462DC4  FC 65 00 F2 */	fmul f3, f5, f3
/* 80462DC8  FC 26 00 72 */	fmul f1, f6, f1
/* 80462DCC  FC 24 08 28 */	fsub f1, f4, f1
/* 80462DD0  FC 63 00 72 */	fmul f3, f3, f1
/* 80462DD4  FC 23 00 F2 */	fmul f1, f3, f3
/* 80462DD8  FC 65 00 F2 */	fmul f3, f5, f3
/* 80462DDC  FC 26 00 72 */	fmul f1, f6, f1
/* 80462DE0  FC 24 08 28 */	fsub f1, f4, f1
/* 80462DE4  FC 23 00 72 */	fmul f1, f3, f1
/* 80462DE8  FC 26 00 72 */	fmul f1, f6, f1
/* 80462DEC  FC 20 08 18 */	frsp f1, f1
/* 80462DF0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80462DF4  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80462DF8  EC 22 08 28 */	fsubs f1, f2, f1
/* 80462DFC  EC 42 08 28 */	fsubs f2, f2, f1
/* 80462E00  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80462E04  40 81 00 54 */	ble lbl_80462E58
/* 80462E08  FC 20 10 34 */	frsqrte f1, f2
/* 80462E0C  FC 01 00 72 */	fmul f0, f1, f1
/* 80462E10  FC 25 00 72 */	fmul f1, f5, f1
/* 80462E14  FC 02 00 32 */	fmul f0, f2, f0
/* 80462E18  FC 04 00 28 */	fsub f0, f4, f0
/* 80462E1C  FC 21 00 32 */	fmul f1, f1, f0
/* 80462E20  FC 01 00 72 */	fmul f0, f1, f1
/* 80462E24  FC 25 00 72 */	fmul f1, f5, f1
/* 80462E28  FC 02 00 32 */	fmul f0, f2, f0
/* 80462E2C  FC 04 00 28 */	fsub f0, f4, f0
/* 80462E30  FC 21 00 32 */	fmul f1, f1, f0
/* 80462E34  FC 01 00 72 */	fmul f0, f1, f1
/* 80462E38  FC 25 00 72 */	fmul f1, f5, f1
/* 80462E3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80462E40  FC 04 00 28 */	fsub f0, f4, f0
/* 80462E44  FC 01 00 32 */	fmul f0, f1, f0
/* 80462E48  FC 02 00 32 */	fmul f0, f2, f0
/* 80462E4C  FC 00 00 18 */	frsp f0, f0
/* 80462E50  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80462E54  C0 41 00 18 */	lfs f2, 0x18(r1)
lbl_80462E58:
/* 80462E58  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80462E5C  A8 9D 00 72 */	lha r4, 0x72(r29)
/* 80462E60  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 80462E64  38 7D 00 6A */	addi r3, r29, 0x6a
/* 80462E68  C0 05 00 00 */	lfs f0, 0(r5)
/* 80462E6C  38 A0 00 2D */	li r5, 0x2d
/* 80462E70  38 C0 00 16 */	li r6, 0x16
/* 80462E74  EC 20 10 28 */	fsubs f1, f0, f2
/* 80462E78  4B F5 84 99 */	bl add_calc_short_angle2
/* 80462E7C  48 00 01 5C */	b lbl_80462FD8
lbl_80462E80:
/* 80462E80  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80462E84  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 80462E88  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80462E8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80462E90  40 81 00 8C */	ble lbl_80462F1C
/* 80462E94  D0 1D 00 40 */	stfs f0, 0x40(r29)
/* 80462E98  4B BF 9E 5D */	bl fqrand
/* 80462E9C  3C 60 80 64 */	lis r3, lit_1719@ha /* 0x80644794@ha */
/* 80462EA0  3C 00 43 30 */	lis r0, 0x4330
/* 80462EA4  38 83 47 94 */	addi r4, r3, lit_1719@l /* 0x80644794@l */
/* 80462EA8  90 01 00 40 */	stw r0, 0x40(r1)
/* 80462EAC  C0 04 00 00 */	lfs f0, 0(r4)
/* 80462EB0  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 80462EB4  38 83 46 3C */	addi r4, r3, lit_589@l /* 0x8064463C@l */
/* 80462EB8  EC 20 00 72 */	fmuls f1, f0, f1
/* 80462EBC  3C 60 80 64 */	lis r3, lit_935@ha /* 0x806446C4@ha */
/* 80462EC0  C8 44 00 00 */	lfd f2, 0(r4)
/* 80462EC4  C0 03 46 C4 */	lfs f0, lit_935@l(r3)  /* 0x806446C4@l */
/* 80462EC8  FC 20 08 1E */	fctiwz f1, f1
/* 80462ECC  D8 21 00 38 */	stfd f1, 0x38(r1)
/* 80462ED0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80462ED4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80462ED8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80462EDC  C8 21 00 40 */	lfd f1, 0x40(r1)
/* 80462EE0  EC 21 10 28 */	fsubs f1, f1, f2
/* 80462EE4  EC 00 08 2A */	fadds f0, f0, f1
/* 80462EE8  FC 00 00 1E */	fctiwz f0, f0
/* 80462EEC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80462EF0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80462EF4  B0 1D 00 6E */	sth r0, 0x6e(r29)
/* 80462EF8  A8 1D 00 8E */	lha r0, 0x8e(r29)
/* 80462EFC  2C 00 00 00 */	cmpwi r0, 0
/* 80462F00  40 82 00 1C */	bne lbl_80462F1C
/* 80462F04  80 1D 00 00 */	lwz r0, 0(r29)
/* 80462F08  2C 00 00 20 */	cmpwi r0, 0x20
/* 80462F0C  41 82 00 10 */	beq lbl_80462F1C
/* 80462F10  A8 1D 00 6E */	lha r0, 0x6e(r29)
/* 80462F14  54 00 08 3C */	slwi r0, r0, 1
/* 80462F18  B0 1D 00 6E */	sth r0, 0x6e(r29)
lbl_80462F1C:
/* 80462F1C  A8 9D 00 6E */	lha r4, 0x6e(r29)
/* 80462F20  38 64 FF FF */	addi r3, r4, -1
/* 80462F24  7C 80 07 35 */	extsh. r0, r4
/* 80462F28  B0 7D 00 6E */	sth r3, 0x6e(r29)
/* 80462F2C  40 80 00 AC */	bge lbl_80462FD8
/* 80462F30  4B BF 9D C5 */	bl fqrand
/* 80462F34  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806446FC@ha */
/* 80462F38  C0 03 46 FC */	lfs f0, lit_1066@l(r3)  /* 0x806446FC@l */
/* 80462F3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80462F40  40 81 00 18 */	ble lbl_80462F58
/* 80462F44  7F A3 EB 78 */	mr r3, r29
/* 80462F48  7F C5 F3 78 */	mr r5, r30
/* 80462F4C  38 80 00 00 */	li r4, 0
/* 80462F50  48 00 0C 55 */	bl mi_tentou_setupAction
/* 80462F54  48 00 02 C8 */	b lbl_8046321C
lbl_80462F58:
/* 80462F58  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 80462F5C  D0 1D 00 40 */	stfs f0, 0x40(r29)
/* 80462F60  4B BF 9D 95 */	bl fqrand
/* 80462F64  3C 60 80 64 */	lis r3, lit_1719@ha /* 0x80644794@ha */
/* 80462F68  3C 00 43 30 */	lis r0, 0x4330
/* 80462F6C  38 83 47 94 */	addi r4, r3, lit_1719@l /* 0x80644794@l */
/* 80462F70  90 01 00 40 */	stw r0, 0x40(r1)
/* 80462F74  C0 04 00 00 */	lfs f0, 0(r4)
/* 80462F78  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 80462F7C  38 83 46 3C */	addi r4, r3, lit_589@l /* 0x8064463C@l */
/* 80462F80  EC 20 00 72 */	fmuls f1, f0, f1
/* 80462F84  3C 60 80 64 */	lis r3, lit_581@ha /* 0x8064461C@ha */
/* 80462F88  C8 44 00 00 */	lfd f2, 0(r4)
/* 80462F8C  C0 03 46 1C */	lfs f0, lit_581@l(r3)  /* 0x8064461C@l */
/* 80462F90  FC 20 08 1E */	fctiwz f1, f1
/* 80462F94  D8 21 00 48 */	stfd f1, 0x48(r1)
/* 80462F98  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80462F9C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80462FA0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80462FA4  C8 21 00 40 */	lfd f1, 0x40(r1)
/* 80462FA8  EC 21 10 28 */	fsubs f1, f1, f2
/* 80462FAC  EC 00 08 2A */	fadds f0, f0, f1
/* 80462FB0  FC 00 00 1E */	fctiwz f0, f0
/* 80462FB4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80462FB8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80462FBC  B0 1D 00 6E */	sth r0, 0x6e(r29)
/* 80462FC0  80 1D 00 00 */	lwz r0, 0(r29)
/* 80462FC4  2C 00 00 20 */	cmpwi r0, 0x20
/* 80462FC8  40 82 00 10 */	bne lbl_80462FD8
/* 80462FCC  A8 1D 00 6E */	lha r0, 0x6e(r29)
/* 80462FD0  54 00 08 3C */	slwi r0, r0, 1
/* 80462FD4  B0 1D 00 6E */	sth r0, 0x6e(r29)
lbl_80462FD8:
/* 80462FD8  7F A3 EB 78 */	mr r3, r29
/* 80462FDC  4B FF 7C 09 */	bl func_8045ABE4
/* 80462FE0  C0 3D 00 38 */	lfs f1, 0x38(r29)
/* 80462FE4  7F A3 EB 78 */	mr r3, r29
/* 80462FE8  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 80462FEC  7F E4 FB 78 */	mr r4, r31
/* 80462FF0  EC 01 00 2A */	fadds f0, f1, f0
/* 80462FF4  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 80462FF8  4B FF 8C F9 */	bl minsect_flower_BGCheck
/* 80462FFC  80 1D 00 00 */	lwz r0, 0(r29)
/* 80463000  2C 00 00 20 */	cmpwi r0, 0x20
/* 80463004  41 82 01 10 */	beq lbl_80463114
/* 80463008  3C 60 80 64 */	lis r3, lit_2048@ha /* 0x806447B4@ha */
/* 8046300C  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 80463010  38 A3 47 B4 */	addi r5, r3, lit_2048@l /* 0x806447B4@l */
/* 80463014  C8 A4 45 FC */	lfd f5, lit_509@l(r4)  /* 0x806445FC@l */
/* 80463018  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8046301C  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 80463020  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 80463024  FC 60 30 34 */	frsqrte f3, f6
/* 80463028  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046302C  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 80463030  C8 85 00 00 */	lfd f4, 0(r5)
/* 80463034  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80463038  C0 44 00 00 */	lfs f2, 0(r4)
/* 8046303C  FC 23 00 F2 */	fmul f1, f3, f3
/* 80463040  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80463044  FC 65 00 F2 */	fmul f3, f5, f3
/* 80463048  FC 26 00 72 */	fmul f1, f6, f1
/* 8046304C  FC 24 08 28 */	fsub f1, f4, f1
/* 80463050  FC 63 00 72 */	fmul f3, f3, f1
/* 80463054  FC 23 00 F2 */	fmul f1, f3, f3
/* 80463058  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046305C  FC 26 00 72 */	fmul f1, f6, f1
/* 80463060  FC 24 08 28 */	fsub f1, f4, f1
/* 80463064  FC 63 00 72 */	fmul f3, f3, f1
/* 80463068  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046306C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80463070  FC 26 00 72 */	fmul f1, f6, f1
/* 80463074  FC 24 08 28 */	fsub f1, f4, f1
/* 80463078  FC 23 00 72 */	fmul f1, f3, f1
/* 8046307C  FC 26 00 72 */	fmul f1, f6, f1
/* 80463080  FC 20 08 18 */	frsp f1, f1
/* 80463084  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80463088  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8046308C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80463090  EC 42 08 28 */	fsubs f2, f2, f1
/* 80463094  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80463098  40 81 00 54 */	ble lbl_804630EC
/* 8046309C  FC 20 10 34 */	frsqrte f1, f2
/* 804630A0  FC 01 00 72 */	fmul f0, f1, f1
/* 804630A4  FC 25 00 72 */	fmul f1, f5, f1
/* 804630A8  FC 02 00 32 */	fmul f0, f2, f0
/* 804630AC  FC 04 00 28 */	fsub f0, f4, f0
/* 804630B0  FC 21 00 32 */	fmul f1, f1, f0
/* 804630B4  FC 01 00 72 */	fmul f0, f1, f1
/* 804630B8  FC 25 00 72 */	fmul f1, f5, f1
/* 804630BC  FC 02 00 32 */	fmul f0, f2, f0
/* 804630C0  FC 04 00 28 */	fsub f0, f4, f0
/* 804630C4  FC 21 00 32 */	fmul f1, f1, f0
/* 804630C8  FC 01 00 72 */	fmul f0, f1, f1
/* 804630CC  FC 25 00 72 */	fmul f1, f5, f1
/* 804630D0  FC 02 00 32 */	fmul f0, f2, f0
/* 804630D4  FC 04 00 28 */	fsub f0, f4, f0
/* 804630D8  FC 01 00 32 */	fmul f0, f1, f0
/* 804630DC  FC 02 00 32 */	fmul f0, f2, f0
/* 804630E0  FC 00 00 18 */	frsp f0, f0
/* 804630E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804630E8  C0 41 00 10 */	lfs f2, 0x10(r1)
lbl_804630EC:
/* 804630EC  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 804630F0  A8 9D 00 76 */	lha r4, 0x76(r29)
/* 804630F4  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 804630F8  38 7D 00 74 */	addi r3, r29, 0x74
/* 804630FC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80463100  38 A0 00 B6 */	li r5, 0xb6
/* 80463104  38 C0 00 2D */	li r6, 0x2d
/* 80463108  EC 20 10 28 */	fsubs f1, f0, f2
/* 8046310C  4B F5 82 05 */	bl add_calc_short_angle2
/* 80463110  48 00 01 0C */	b lbl_8046321C
lbl_80463114:
/* 80463114  3C 60 80 64 */	lis r3, lit_761@ha /* 0x8064465C@ha */
/* 80463118  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 8046311C  38 A3 46 5C */	addi r5, r3, lit_761@l /* 0x8064465C@l */
/* 80463120  C8 A4 45 FC */	lfd f5, lit_509@l(r4)  /* 0x806445FC@l */
/* 80463124  C8 C5 00 00 */	lfd f6, 0(r5)
/* 80463128  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8046312C  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 80463130  FC 60 30 34 */	frsqrte f3, f6
/* 80463134  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80463138  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 8046313C  C8 85 00 00 */	lfd f4, 0(r5)
/* 80463140  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80463144  C0 44 00 00 */	lfs f2, 0(r4)
/* 80463148  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046314C  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80463150  FC 65 00 F2 */	fmul f3, f5, f3
/* 80463154  FC 26 00 72 */	fmul f1, f6, f1
/* 80463158  FC 24 08 28 */	fsub f1, f4, f1
/* 8046315C  FC 63 00 72 */	fmul f3, f3, f1
/* 80463160  FC 23 00 F2 */	fmul f1, f3, f3
/* 80463164  FC 65 00 F2 */	fmul f3, f5, f3
/* 80463168  FC 26 00 72 */	fmul f1, f6, f1
/* 8046316C  FC 24 08 28 */	fsub f1, f4, f1
/* 80463170  FC 63 00 72 */	fmul f3, f3, f1
/* 80463174  FC 23 00 F2 */	fmul f1, f3, f3
/* 80463178  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046317C  FC 26 00 72 */	fmul f1, f6, f1
/* 80463180  FC 24 08 28 */	fsub f1, f4, f1
/* 80463184  FC 23 00 72 */	fmul f1, f3, f1
/* 80463188  FC 26 00 72 */	fmul f1, f6, f1
/* 8046318C  FC 20 08 18 */	frsp f1, f1
/* 80463190  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80463194  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80463198  EC 22 08 28 */	fsubs f1, f2, f1
/* 8046319C  EC 42 08 28 */	fsubs f2, f2, f1
/* 804631A0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804631A4  40 81 00 54 */	ble lbl_804631F8
/* 804631A8  FC 20 10 34 */	frsqrte f1, f2
/* 804631AC  FC 01 00 72 */	fmul f0, f1, f1
/* 804631B0  FC 25 00 72 */	fmul f1, f5, f1
/* 804631B4  FC 02 00 32 */	fmul f0, f2, f0
/* 804631B8  FC 04 00 28 */	fsub f0, f4, f0
/* 804631BC  FC 21 00 32 */	fmul f1, f1, f0
/* 804631C0  FC 01 00 72 */	fmul f0, f1, f1
/* 804631C4  FC 25 00 72 */	fmul f1, f5, f1
/* 804631C8  FC 02 00 32 */	fmul f0, f2, f0
/* 804631CC  FC 04 00 28 */	fsub f0, f4, f0
/* 804631D0  FC 21 00 32 */	fmul f1, f1, f0
/* 804631D4  FC 01 00 72 */	fmul f0, f1, f1
/* 804631D8  FC 25 00 72 */	fmul f1, f5, f1
/* 804631DC  FC 02 00 32 */	fmul f0, f2, f0
/* 804631E0  FC 04 00 28 */	fsub f0, f4, f0
/* 804631E4  FC 01 00 32 */	fmul f0, f1, f0
/* 804631E8  FC 02 00 32 */	fmul f0, f2, f0
/* 804631EC  FC 00 00 18 */	frsp f0, f0
/* 804631F0  D0 01 00 08 */	stfs f0, 8(r1)
/* 804631F4  C0 41 00 08 */	lfs f2, 8(r1)
lbl_804631F8:
/* 804631F8  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 804631FC  A8 9D 00 76 */	lha r4, 0x76(r29)
/* 80463200  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 80463204  38 7D 00 74 */	addi r3, r29, 0x74
/* 80463208  C0 05 00 00 */	lfs f0, 0(r5)
/* 8046320C  38 A0 00 5B */	li r5, 0x5b
/* 80463210  38 C0 00 2D */	li r6, 0x2d
/* 80463214  EC 20 10 28 */	fsubs f1, f0, f2
/* 80463218  4B F5 80 F9 */	bl add_calc_short_angle2
lbl_8046321C:
/* 8046321C  39 61 00 60 */	addi r11, r1, 0x60
/* 80463220  4B C3 7D 01 */	bl func_8009AF20
/* 80463224  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80463228  7C 08 03 A6 */	mtlr r0
/* 8046322C  38 21 00 60 */	addi r1, r1, 0x60
/* 80463230  4E 80 00 20 */	blr 
