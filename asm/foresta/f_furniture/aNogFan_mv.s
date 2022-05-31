lbl_80632CFC:
/* 80632CFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80632D00  7C 08 02 A6 */	mflr r0
/* 80632D04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80632D08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80632D0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80632D10  7C 7E 1B 78 */	mr r30, r3
/* 80632D14  3B FE 01 34 */	addi r31, r30, 0x134
/* 80632D18  4B FF FF 15 */	bl aNogFan_ChangeSwitch
/* 80632D1C  88 1E 01 2C */	lbz r0, 0x12c(r30)
/* 80632D20  28 00 00 00 */	cmplwi r0, 0
/* 80632D24  41 82 00 E8 */	beq lbl_80632E0C
/* 80632D28  3C 60 80 65 */	lis r3, lit_2134@ha /* 0x8064D32C@ha */
/* 80632D2C  3C 80 80 65 */	lis r4, lit_2135@ha /* 0x8064D334@ha */
/* 80632D30  38 A3 D3 2C */	addi r5, r3, lit_2134@l /* 0x8064D32C@l */
/* 80632D34  C8 E4 D3 34 */	lfd f7, lit_2135@l(r4)  /* 0x8064D334@l */
/* 80632D38  C9 05 00 00 */	lfd f8, 0(r5)
/* 80632D3C  3C 60 80 65 */	lis r3, lit_2136@ha /* 0x8064D33C@ha */
/* 80632D40  39 03 D3 3C */	addi r8, r3, lit_2136@l /* 0x8064D33C@l */
/* 80632D44  3C A0 80 65 */	lis r5, lit_626@ha /* 0x8064D28C@ha */
/* 80632D48  FC 20 40 34 */	frsqrte f1, f8
/* 80632D4C  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 80632D50  38 C3 D2 74 */	addi r6, r3, data_8064D274@l /* 0x8064D274@l */
/* 80632D54  C8 C8 00 00 */	lfd f6, 0(r8)
/* 80632D58  3C 80 80 65 */	lis r4, lit_848@ha /* 0x8064D2A4@ha */
/* 80632D5C  38 E5 D2 8C */	addi r7, r5, lit_626@l /* 0x8064D28C@l */
/* 80632D60  FC 01 00 72 */	fmul f0, f1, f1
/* 80632D64  38 A4 D2 A4 */	addi r5, r4, lit_848@l /* 0x8064D2A4@l */
/* 80632D68  3C 60 80 65 */	lis r3, lit_2137@ha /* 0x8064D344@ha */
/* 80632D6C  C0 65 00 00 */	lfs f3, 0(r5)
/* 80632D70  38 83 D3 44 */	addi r4, r3, lit_2137@l /* 0x8064D344@l */
/* 80632D74  FC A7 00 72 */	fmul f5, f7, f1
/* 80632D78  FC 48 00 32 */	fmul f2, f8, f0
/* 80632D7C  C0 06 00 00 */	lfs f0, 0(r6)
/* 80632D80  C0 27 00 00 */	lfs f1, 0(r7)
/* 80632D84  38 7E 08 34 */	addi r3, r30, 0x834
/* 80632D88  C0 84 00 00 */	lfs f4, 0(r4)
/* 80632D8C  FC 46 10 28 */	fsub f2, f6, f2
/* 80632D90  FC A5 00 B2 */	fmul f5, f5, f2
/* 80632D94  FC 45 01 72 */	fmul f2, f5, f5
/* 80632D98  FC A7 01 72 */	fmul f5, f7, f5
/* 80632D9C  FC 48 00 B2 */	fmul f2, f8, f2
/* 80632DA0  FC 46 10 28 */	fsub f2, f6, f2
/* 80632DA4  FC A5 00 B2 */	fmul f5, f5, f2
/* 80632DA8  FC 45 01 72 */	fmul f2, f5, f5
/* 80632DAC  FC A7 01 72 */	fmul f5, f7, f5
/* 80632DB0  FC 48 00 B2 */	fmul f2, f8, f2
/* 80632DB4  FC 46 10 28 */	fsub f2, f6, f2
/* 80632DB8  FC 45 00 B2 */	fmul f2, f5, f2
/* 80632DBC  FC 48 00 B2 */	fmul f2, f8, f2
/* 80632DC0  FC 40 10 18 */	frsp f2, f2
/* 80632DC4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80632DC8  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80632DCC  EC 40 10 28 */	fsubs f2, f0, f2
/* 80632DD0  4B D8 83 E1 */	bl add_calc
/* 80632DD4  A8 1E 00 3C */	lha r0, 0x3c(r30)
/* 80632DD8  2C 00 00 0D */	cmpwi r0, 0xd
/* 80632DDC  41 82 00 DC */	beq lbl_80632EB8
/* 80632DE0  2C 00 00 0E */	cmpwi r0, 0xe
/* 80632DE4  41 82 00 D4 */	beq lbl_80632EB8
/* 80632DE8  2C 00 00 0F */	cmpwi r0, 0xf
/* 80632DEC  41 82 00 CC */	beq lbl_80632EB8
/* 80632DF0  2C 00 00 0C */	cmpwi r0, 0xc
/* 80632DF4  41 82 00 C4 */	beq lbl_80632EB8
/* 80632DF8  7F C3 F3 78 */	mr r3, r30
/* 80632DFC  38 BE 00 08 */	addi r5, r30, 8
/* 80632E00  38 80 00 01 */	li r4, 1
/* 80632E04  4B FF B1 41 */	bl sAdo_OngenPos
/* 80632E08  48 00 00 B0 */	b lbl_80632EB8
lbl_80632E0C:
/* 80632E0C  3C 60 80 65 */	lis r3, lit_2134@ha /* 0x8064D32C@ha */
/* 80632E10  3C 80 80 65 */	lis r4, lit_2135@ha /* 0x8064D334@ha */
/* 80632E14  38 A3 D3 2C */	addi r5, r3, lit_2134@l /* 0x8064D32C@l */
/* 80632E18  C8 E4 D3 34 */	lfd f7, lit_2135@l(r4)  /* 0x8064D334@l */
/* 80632E1C  C9 05 00 00 */	lfd f8, 0(r5)
/* 80632E20  3C 60 80 65 */	lis r3, lit_2136@ha /* 0x8064D33C@ha */
/* 80632E24  39 03 D3 3C */	addi r8, r3, lit_2136@l /* 0x8064D33C@l */
/* 80632E28  3C A0 80 65 */	lis r5, lit_368@ha /* 0x8064D278@ha */
/* 80632E2C  FC 20 40 34 */	frsqrte f1, f8
/* 80632E30  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 80632E34  38 C3 D2 74 */	addi r6, r3, data_8064D274@l /* 0x8064D274@l */
/* 80632E38  C8 C8 00 00 */	lfd f6, 0(r8)
/* 80632E3C  3C 80 80 65 */	lis r4, lit_848@ha /* 0x8064D2A4@ha */
/* 80632E40  38 E5 D2 78 */	addi r7, r5, lit_368@l /* 0x8064D278@l */
/* 80632E44  FC 01 00 72 */	fmul f0, f1, f1
/* 80632E48  38 A4 D2 A4 */	addi r5, r4, lit_848@l /* 0x8064D2A4@l */
/* 80632E4C  3C 60 80 65 */	lis r3, lit_2137@ha /* 0x8064D344@ha */
/* 80632E50  C0 65 00 00 */	lfs f3, 0(r5)
/* 80632E54  38 83 D3 44 */	addi r4, r3, lit_2137@l /* 0x8064D344@l */
/* 80632E58  FC A7 00 72 */	fmul f5, f7, f1
/* 80632E5C  FC 48 00 32 */	fmul f2, f8, f0
/* 80632E60  C0 06 00 00 */	lfs f0, 0(r6)
/* 80632E64  C0 27 00 00 */	lfs f1, 0(r7)
/* 80632E68  38 7E 08 34 */	addi r3, r30, 0x834
/* 80632E6C  C0 84 00 00 */	lfs f4, 0(r4)
/* 80632E70  FC 46 10 28 */	fsub f2, f6, f2
/* 80632E74  FC A5 00 B2 */	fmul f5, f5, f2
/* 80632E78  FC 45 01 72 */	fmul f2, f5, f5
/* 80632E7C  FC A7 01 72 */	fmul f5, f7, f5
/* 80632E80  FC 48 00 B2 */	fmul f2, f8, f2
/* 80632E84  FC 46 10 28 */	fsub f2, f6, f2
/* 80632E88  FC A5 00 B2 */	fmul f5, f5, f2
/* 80632E8C  FC 45 01 72 */	fmul f2, f5, f5
/* 80632E90  FC A7 01 72 */	fmul f5, f7, f5
/* 80632E94  FC 48 00 B2 */	fmul f2, f8, f2
/* 80632E98  FC 46 10 28 */	fsub f2, f6, f2
/* 80632E9C  FC 45 00 B2 */	fmul f2, f5, f2
/* 80632EA0  FC 48 00 B2 */	fmul f2, f8, f2
/* 80632EA4  FC 40 10 18 */	frsp f2, f2
/* 80632EA8  D0 41 00 08 */	stfs f2, 8(r1)
/* 80632EAC  C0 41 00 08 */	lfs f2, 8(r1)
/* 80632EB0  EC 40 10 28 */	fsubs f2, f0, f2
/* 80632EB4  4B D8 82 FD */	bl add_calc
lbl_80632EB8:
/* 80632EB8  C0 1E 08 34 */	lfs f0, 0x834(r30)
/* 80632EBC  7F E3 FB 78 */	mr r3, r31
/* 80632EC0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80632EC4  4B D3 E1 51 */	bl cKF_SkeletonInfo_R_play
/* 80632EC8  3C 60 80 65 */	lis r3, lit_2138@ha /* 0x8064D348@ha */
/* 80632ECC  3C 80 80 65 */	lis r4, lit_693@ha /* 0x8064D294@ha */
/* 80632ED0  38 A3 D3 48 */	addi r5, r3, lit_2138@l /* 0x8064D348@l */
/* 80632ED4  A8 7E 08 2A */	lha r3, 0x82a(r30)
/* 80632ED8  C0 45 00 00 */	lfs f2, 0(r5)
/* 80632EDC  C0 1E 08 34 */	lfs f0, 0x834(r30)
/* 80632EE0  38 03 00 01 */	addi r0, r3, 1
/* 80632EE4  3C 60 80 6D */	lis r3, fan_kurukuru_data@ha /* 0x806D76E8@ha */
/* 80632EE8  C0 24 D2 94 */	lfs f1, lit_693@l(r4)  /* 0x8064D294@l */
/* 80632EEC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80632EF0  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 80632EF4  38 63 76 E8 */	addi r3, r3, fan_kurukuru_data@l /* 0x806D76E8@l */
/* 80632EF8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80632EFC  EC 02 00 28 */	fsubs f0, f2, f0
/* 80632F00  FC 00 00 1E */	fctiwz f0, f0
/* 80632F04  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80632F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80632F0C  54 00 10 3A */	slwi r0, r0, 2
/* 80632F10  7C 63 00 2E */	lwzx r3, r3, r0
/* 80632F14  2C 03 FF FF */	cmpwi r3, -1
/* 80632F18  41 82 00 40 */	beq lbl_80632F58
/* 80632F1C  A8 1E 08 2A */	lha r0, 0x82a(r30)
/* 80632F20  7C 00 18 00 */	cmpw r0, r3
/* 80632F24  41 80 00 34 */	blt lbl_80632F58
/* 80632F28  38 00 00 00 */	li r0, 0
/* 80632F2C  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 80632F30  A8 7E 08 10 */	lha r3, 0x810(r30)
/* 80632F34  38 03 00 01 */	addi r0, r3, 1
/* 80632F38  B0 1E 08 10 */	sth r0, 0x810(r30)
/* 80632F3C  A8 1E 08 10 */	lha r0, 0x810(r30)
/* 80632F40  2C 00 00 06 */	cmpwi r0, 6
/* 80632F44  40 80 00 0C */	bge lbl_80632F50
/* 80632F48  7C 00 07 35 */	extsh. r0, r0
/* 80632F4C  40 80 00 0C */	bge lbl_80632F58
lbl_80632F50:
/* 80632F50  38 00 00 00 */	li r0, 0
/* 80632F54  B0 1E 08 10 */	sth r0, 0x810(r30)
lbl_80632F58:
/* 80632F58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80632F5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80632F60  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80632F64  7C 08 03 A6 */	mtlr r0
/* 80632F68  38 21 00 20 */	addi r1, r1, 0x20
/* 80632F6C  4E 80 00 20 */	blr 
