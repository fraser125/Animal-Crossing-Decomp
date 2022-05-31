lbl_8044598C:
/* 8044598C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80445990  7C 08 02 A6 */	mflr r0
/* 80445994  90 01 00 54 */	stw r0, 0x54(r1)
/* 80445998  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8044599C  7C 9F 23 78 */	mr r31, r4
/* 804459A0  93 C1 00 48 */	stw r30, 0x48(r1)
/* 804459A4  7C 7E 1B 78 */	mr r30, r3
/* 804459A8  81 83 00 34 */	lwz r12, 0x34(r3)
/* 804459AC  7D 89 03 A6 */	mtctr r12
/* 804459B0  4E 80 04 21 */	bctrl 
/* 804459B4  4B C1 73 41 */	bl fqrand
/* 804459B8  3C 60 80 64 */	lis r3, lit_840@ha /* 0x806442D8@ha */
/* 804459BC  C0 5E 05 E8 */	lfs f2, 0x5e8(r30)
/* 804459C0  38 A3 42 D8 */	addi r5, r3, lit_840@l /* 0x806442D8@l */
/* 804459C4  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 804459C8  C0 05 00 00 */	lfs f0, 0(r5)
/* 804459CC  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 804459D0  A8 1E 06 18 */	lha r0, 0x618(r30)
/* 804459D4  EC 60 00 72 */	fmuls f3, f0, f1
/* 804459D8  C0 24 42 68 */	lfs f1, lit_527@l(r4)  /* 0x80644268@l */
/* 804459DC  C0 03 42 98 */	lfs f0, lit_588@l(r3)  /* 0x80644298@l */
/* 804459E0  EC 42 00 F2 */	fmuls f2, f2, f3
/* 804459E4  EC 21 10 2A */	fadds f1, f1, f2
/* 804459E8  EC 00 00 72 */	fmuls f0, f0, f1
/* 804459EC  FC 00 00 1E */	fctiwz f0, f0
/* 804459F0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804459F4  80 61 00 24 */	lwz r3, 0x24(r1)
/* 804459F8  7C 00 1A 14 */	add r0, r0, r3
/* 804459FC  B0 1E 06 18 */	sth r0, 0x618(r30)
/* 80445A00  A8 7E 06 18 */	lha r3, 0x618(r30)
/* 80445A04  4B F7 50 ED */	bl sin_s
/* 80445A08  3C 60 80 64 */	lis r3, lit_557@ha /* 0x80644280@ha */
/* 80445A0C  C0 03 42 80 */	lfs f0, lit_557@l(r3)  /* 0x80644280@l */
/* 80445A10  EC 00 00 72 */	fmuls f0, f0, f1
/* 80445A14  D0 1E 05 F4 */	stfs f0, 0x5f4(r30)
/* 80445A18  A8 1E 06 2E */	lha r0, 0x62e(r30)
/* 80445A1C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80445A20  41 82 00 30 */	beq lbl_80445A50
/* 80445A24  C0 3E 05 F4 */	lfs f1, 0x5f4(r30)
/* 80445A28  3C 60 80 64 */	lis r3, lit_1558@ha /* 0x80644348@ha */
/* 80445A2C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80445A30  38 A3 43 48 */	addi r5, r3, lit_1558@l /* 0x80644348@l */
/* 80445A34  3C 80 80 64 */	lis r4, lit_666@ha /* 0x806442AC@ha */
/* 80445A38  C0 45 00 00 */	lfs f2, 0(r5)
/* 80445A3C  EC 21 00 2A */	fadds f1, f1, f0
/* 80445A40  C0 64 42 AC */	lfs f3, lit_666@l(r4)  /* 0x806442AC@l */
/* 80445A44  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80445A48  4B F7 58 4D */	bl add_calc2
/* 80445A4C  48 00 00 2C */	b lbl_80445A78
lbl_80445A50:
/* 80445A50  C0 3E 05 F4 */	lfs f1, 0x5f4(r30)
/* 80445A54  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80445A58  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80445A5C  38 A3 42 68 */	addi r5, r3, lit_527@l /* 0x80644268@l */
/* 80445A60  3C 80 80 64 */	lis r4, lit_974@ha /* 0x806442EC@ha */
/* 80445A64  C0 45 00 00 */	lfs f2, 0(r5)
/* 80445A68  EC 21 00 2A */	fadds f1, f1, f0
/* 80445A6C  C0 64 42 EC */	lfs f3, lit_974@l(r4)  /* 0x806442EC@l */
/* 80445A70  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80445A74  4B F7 58 21 */	bl add_calc2
lbl_80445A78:
/* 80445A78  A8 7E 06 22 */	lha r3, 0x622(r30)
/* 80445A7C  7C 60 07 35 */	extsh. r0, r3
/* 80445A80  7C 03 00 D0 */	neg r0, r3
/* 80445A84  41 80 00 08 */	blt lbl_80445A8C
/* 80445A88  7C 60 1B 78 */	mr r0, r3
lbl_80445A8C:
/* 80445A8C  2C 00 0E 38 */	cmpwi r0, 0xe38
/* 80445A90  40 81 01 08 */	ble lbl_80445B98
/* 80445A94  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806442FC@ha */
/* 80445A98  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80445A9C  38 A3 42 FC */	addi r5, r3, lit_1066@l /* 0x806442FC@l */
/* 80445AA0  C8 84 42 4C */	lfd f4, lit_469@l(r4)  /* 0x8064424C@l */
/* 80445AA4  C8 A5 00 00 */	lfd f5, 0(r5)
/* 80445AA8  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80445AAC  C8 63 42 54 */	lfd f3, lit_470@l(r3)  /* 0x80644254@l */
/* 80445AB0  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 80445AB4  FC 20 28 34 */	frsqrte f1, f5
/* 80445AB8  80 A5 61 38 */	lwz r5, debug_mode@l(r5)  /* 0x81166138@l */
/* 80445ABC  3C 00 43 30 */	lis r0, 0x4330
/* 80445AC0  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80445AC4  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 80445AC8  A8 A5 1B 62 */	lha r5, 0x1b62(r5)
/* 80445ACC  FC 01 00 72 */	fmul f0, f1, f1
/* 80445AD0  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80445AD4  90 A1 00 24 */	stw r5, 0x24(r1)
/* 80445AD8  3C 80 80 64 */	lis r4, lit_557@ha /* 0x80644280@ha */
/* 80445ADC  C9 06 00 00 */	lfd f8, 0(r6)
/* 80445AE0  38 E4 42 80 */	addi r7, r4, lit_557@l /* 0x80644280@l */
/* 80445AE4  FC 05 00 32 */	fmul f0, f5, f0
/* 80445AE8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80445AEC  3D 00 80 64 */	lis r8, lit_588@ha /* 0x80644298@ha */
/* 80445AF0  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80445AF4  FC 24 00 72 */	fmul f1, f4, f1
/* 80445AF8  C8 E1 00 20 */	lfd f7, 0x20(r1)
/* 80445AFC  FC 03 00 28 */	fsub f0, f3, f0
/* 80445B00  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80445B04  EC E7 40 28 */	fsubs f7, f7, f8
/* 80445B08  C1 27 00 00 */	lfs f9, 0(r7)
/* 80445B0C  C0 DE 05 E8 */	lfs f6, 0x5e8(r30)
/* 80445B10  38 7E 06 32 */	addi r3, r30, 0x632
/* 80445B14  FC 41 00 32 */	fmul f2, f1, f0
/* 80445B18  C1 48 42 98 */	lfs f10, lit_588@l(r8)  /* 0x80644298@l */
/* 80445B1C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80445B20  38 A0 01 C7 */	li r5, 0x1c7
/* 80445B24  EC E9 38 2A */	fadds f7, f9, f7
/* 80445B28  38 C0 00 5B */	li r6, 0x5b
/* 80445B2C  FC 22 00 B2 */	fmul f1, f2, f2
/* 80445B30  FC 44 00 B2 */	fmul f2, f4, f2
/* 80445B34  FC 25 00 72 */	fmul f1, f5, f1
/* 80445B38  EC C7 01 B2 */	fmuls f6, f7, f6
/* 80445B3C  FC 23 08 28 */	fsub f1, f3, f1
/* 80445B40  FC 42 00 72 */	fmul f2, f2, f1
/* 80445B44  FC 22 00 B2 */	fmul f1, f2, f2
/* 80445B48  FC 44 00 B2 */	fmul f2, f4, f2
/* 80445B4C  FC 25 00 72 */	fmul f1, f5, f1
/* 80445B50  EC 8A 01 B2 */	fmuls f4, f10, f6
/* 80445B54  FC 23 08 28 */	fsub f1, f3, f1
/* 80445B58  FC 60 20 1E */	fctiwz f3, f4
/* 80445B5C  FC 22 00 72 */	fmul f1, f2, f1
/* 80445B60  D8 61 00 28 */	stfd f3, 0x28(r1)
/* 80445B64  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80445B68  FC 25 00 72 */	fmul f1, f5, f1
/* 80445B6C  7C 04 00 D0 */	neg r0, r4
/* 80445B70  7C 00 20 78 */	andc r0, r0, r4
/* 80445B74  7C 00 FE 70 */	srawi r0, r0, 0x1f
/* 80445B78  FC 20 08 18 */	frsp f1, f1
/* 80445B7C  7C 80 00 38 */	and r0, r4, r0
/* 80445B80  7C 04 07 34 */	extsh r4, r0
/* 80445B84  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80445B88  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80445B8C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80445B90  4B F7 57 81 */	bl add_calc_short_angle2
/* 80445B94  48 00 01 A8 */	b lbl_80445D3C
lbl_80445B98:
/* 80445B98  A8 1E 06 2E */	lha r0, 0x62e(r30)
/* 80445B9C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80445BA0  40 82 01 08 */	bne lbl_80445CA8
/* 80445BA4  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806442FC@ha */
/* 80445BA8  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80445BAC  38 A3 42 FC */	addi r5, r3, lit_1066@l /* 0x806442FC@l */
/* 80445BB0  C8 84 42 4C */	lfd f4, lit_469@l(r4)  /* 0x8064424C@l */
/* 80445BB4  C8 A5 00 00 */	lfd f5, 0(r5)
/* 80445BB8  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80445BBC  C8 63 42 54 */	lfd f3, lit_470@l(r3)  /* 0x80644254@l */
/* 80445BC0  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 80445BC4  FC 20 28 34 */	frsqrte f1, f5
/* 80445BC8  80 A5 61 38 */	lwz r5, debug_mode@l(r5)  /* 0x81166138@l */
/* 80445BCC  3C 00 43 30 */	lis r0, 0x4330
/* 80445BD0  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80445BD4  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 80445BD8  A8 A5 1B 64 */	lha r5, 0x1b64(r5)
/* 80445BDC  FC 01 00 72 */	fmul f0, f1, f1
/* 80445BE0  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80445BE4  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 80445BE8  3C 80 80 64 */	lis r4, lit_568@ha /* 0x80644284@ha */
/* 80445BEC  C9 06 00 00 */	lfd f8, 0(r6)
/* 80445BF0  38 E4 42 84 */	addi r7, r4, lit_568@l /* 0x80644284@l */
/* 80445BF4  FC 05 00 32 */	fmul f0, f5, f0
/* 80445BF8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80445BFC  3D 00 80 64 */	lis r8, lit_588@ha /* 0x80644298@ha */
/* 80445C00  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80445C04  FC 24 00 72 */	fmul f1, f4, f1
/* 80445C08  C8 E1 00 28 */	lfd f7, 0x28(r1)
/* 80445C0C  FC 03 00 28 */	fsub f0, f3, f0
/* 80445C10  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80445C14  EC E7 40 28 */	fsubs f7, f7, f8
/* 80445C18  C1 27 00 00 */	lfs f9, 0(r7)
/* 80445C1C  C0 DE 05 E8 */	lfs f6, 0x5e8(r30)
/* 80445C20  38 7E 06 32 */	addi r3, r30, 0x632
/* 80445C24  FC 41 00 32 */	fmul f2, f1, f0
/* 80445C28  C1 48 42 98 */	lfs f10, lit_588@l(r8)  /* 0x80644298@l */
/* 80445C2C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80445C30  38 A0 03 8E */	li r5, 0x38e
/* 80445C34  EC E9 38 2A */	fadds f7, f9, f7
/* 80445C38  38 C0 00 5B */	li r6, 0x5b
/* 80445C3C  FC 22 00 B2 */	fmul f1, f2, f2
/* 80445C40  FC 44 00 B2 */	fmul f2, f4, f2
/* 80445C44  FC 25 00 72 */	fmul f1, f5, f1
/* 80445C48  EC C7 01 B2 */	fmuls f6, f7, f6
/* 80445C4C  FC 23 08 28 */	fsub f1, f3, f1
/* 80445C50  FC 42 00 72 */	fmul f2, f2, f1
/* 80445C54  FC 22 00 B2 */	fmul f1, f2, f2
/* 80445C58  FC 44 00 B2 */	fmul f2, f4, f2
/* 80445C5C  FC 25 00 72 */	fmul f1, f5, f1
/* 80445C60  EC 8A 01 B2 */	fmuls f4, f10, f6
/* 80445C64  FC 23 08 28 */	fsub f1, f3, f1
/* 80445C68  FC 60 20 1E */	fctiwz f3, f4
/* 80445C6C  FC 22 00 72 */	fmul f1, f2, f1
/* 80445C70  D8 61 00 20 */	stfd f3, 0x20(r1)
/* 80445C74  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80445C78  FC 25 00 72 */	fmul f1, f5, f1
/* 80445C7C  7C 04 00 D0 */	neg r0, r4
/* 80445C80  7C 00 20 78 */	andc r0, r0, r4
/* 80445C84  7C 00 FE 70 */	srawi r0, r0, 0x1f
/* 80445C88  FC 20 08 18 */	frsp f1, f1
/* 80445C8C  7C 80 00 38 */	and r0, r4, r0
/* 80445C90  7C 04 07 34 */	extsh r4, r0
/* 80445C94  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80445C98  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80445C9C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80445CA0  4B F7 56 71 */	bl add_calc_short_angle2
/* 80445CA4  48 00 00 98 */	b lbl_80445D3C
lbl_80445CA8:
/* 80445CA8  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 80445CAC  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80445CB0  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 80445CB4  38 C0 00 2D */	li r6, 0x2d
/* 80445CB8  C8 A5 00 00 */	lfd f5, 0(r5)
/* 80445CBC  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 80445CC0  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80445CC4  C8 85 00 00 */	lfd f4, 0(r5)
/* 80445CC8  FC 40 28 34 */	frsqrte f2, f5
/* 80445CCC  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 80445CD0  C8 64 00 00 */	lfd f3, 0(r4)
/* 80445CD4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80445CD8  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80445CDC  38 7E 06 32 */	addi r3, r30, 0x632
/* 80445CE0  FC 22 00 B2 */	fmul f1, f2, f2
/* 80445CE4  38 80 03 8E */	li r4, 0x38e
/* 80445CE8  38 A0 01 C7 */	li r5, 0x1c7
/* 80445CEC  FC 44 00 B2 */	fmul f2, f4, f2
/* 80445CF0  FC 25 00 72 */	fmul f1, f5, f1
/* 80445CF4  FC 23 08 28 */	fsub f1, f3, f1
/* 80445CF8  FC 42 00 72 */	fmul f2, f2, f1
/* 80445CFC  FC 22 00 B2 */	fmul f1, f2, f2
/* 80445D00  FC 44 00 B2 */	fmul f2, f4, f2
/* 80445D04  FC 25 00 72 */	fmul f1, f5, f1
/* 80445D08  FC 23 08 28 */	fsub f1, f3, f1
/* 80445D0C  FC 42 00 72 */	fmul f2, f2, f1
/* 80445D10  FC 22 00 B2 */	fmul f1, f2, f2
/* 80445D14  FC 44 00 B2 */	fmul f2, f4, f2
/* 80445D18  FC 25 00 72 */	fmul f1, f5, f1
/* 80445D1C  FC 23 08 28 */	fsub f1, f3, f1
/* 80445D20  FC 22 00 72 */	fmul f1, f2, f1
/* 80445D24  FC 25 00 72 */	fmul f1, f5, f1
/* 80445D28  FC 20 08 18 */	frsp f1, f1
/* 80445D2C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80445D30  C0 21 00 08 */	lfs f1, 8(r1)
/* 80445D34  EC 20 08 28 */	fsubs f1, f0, f1
/* 80445D38  4B F7 55 D9 */	bl add_calc_short_angle2
lbl_80445D3C:
/* 80445D3C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80445D40  3C 00 43 30 */	lis r0, 0x4330
/* 80445D44  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80445D48  90 01 00 28 */	stw r0, 0x28(r1)
/* 80445D4C  80 A4 00 00 */	lwz r5, 0(r4)
/* 80445D50  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80445D54  38 83 42 8C */	addi r4, r3, lit_570@l /* 0x8064428C@l */
/* 80445D58  3C C0 80 64 */	lis r6, lit_697@ha /* 0x806442B0@ha */
/* 80445D5C  A8 65 1B 66 */	lha r3, 0x1b66(r5)
/* 80445D60  38 A6 42 B0 */	addi r5, r6, lit_697@l /* 0x806442B0@l */
/* 80445D64  3C E0 80 64 */	lis r7, lit_471@ha /* 0x8064425C@ha */
/* 80445D68  C8 24 00 00 */	lfd f1, 0(r4)
/* 80445D6C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80445D70  C0 45 00 00 */	lfs f2, 0(r5)
/* 80445D74  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80445D78  38 C7 42 5C */	addi r6, r7, lit_471@l /* 0x8064425C@l */
/* 80445D7C  C0 66 00 00 */	lfs f3, 0(r6)
/* 80445D80  3C E0 80 64 */	lis r7, lit_588@ha /* 0x80644298@ha */
/* 80445D84  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80445D88  A8 7E 06 36 */	lha r3, 0x636(r30)
/* 80445D8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80445D90  C0 27 42 98 */	lfs f1, lit_588@l(r7)  /* 0x80644298@l */
/* 80445D94  EC 02 00 2A */	fadds f0, f2, f0
/* 80445D98  EC 03 00 32 */	fmuls f0, f3, f0
/* 80445D9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80445DA0  FC 00 00 1E */	fctiwz f0, f0
/* 80445DA4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80445DA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80445DAC  7C 00 07 34 */	extsh r0, r0
/* 80445DB0  7C 03 02 14 */	add r0, r3, r0
/* 80445DB4  B0 1E 06 36 */	sth r0, 0x636(r30)
/* 80445DB8  A9 1E 06 22 */	lha r8, 0x622(r30)
/* 80445DBC  7D 00 07 35 */	extsh. r0, r8
/* 80445DC0  7C E8 00 D0 */	neg r7, r8
/* 80445DC4  41 80 00 08 */	blt lbl_80445DCC
/* 80445DC8  7D 07 43 78 */	mr r7, r8
lbl_80445DCC:
/* 80445DCC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80445DD0  3C 00 43 30 */	lis r0, 0x4330
/* 80445DD4  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80445DD8  3C A0 80 64 */	lis r5, lit_530@ha /* 0x80644274@ha */
/* 80445DDC  80 84 00 00 */	lwz r4, 0(r4)
/* 80445DE0  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80445DE4  3C C0 80 64 */	lis r6, lit_588@ha /* 0x80644298@ha */
/* 80445DE8  90 01 00 30 */	stw r0, 0x30(r1)
/* 80445DEC  A8 84 1B 82 */	lha r4, 0x1b82(r4)
/* 80445DF0  C8 23 42 8C */	lfd f1, lit_570@l(r3)  /* 0x8064428C@l */
/* 80445DF4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80445DF8  C0 45 42 74 */	lfs f2, lit_530@l(r5)  /* 0x80644274@l */
/* 80445DFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80445E00  C0 66 42 98 */	lfs f3, lit_588@l(r6)  /* 0x80644298@l */
/* 80445E04  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80445E08  EC 00 08 28 */	fsubs f0, f0, f1
/* 80445E0C  EC 02 00 2A */	fadds f0, f2, f0
/* 80445E10  EC 03 00 32 */	fmuls f0, f3, f0
/* 80445E14  FC 00 00 1E */	fctiwz f0, f0
/* 80445E18  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80445E1C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80445E20  7C 07 00 00 */	cmpw r7, r0
/* 80445E24  41 81 00 38 */	bgt lbl_80445E5C
/* 80445E28  A8 9E 06 1C */	lha r4, 0x61c(r30)
/* 80445E2C  7C 80 07 35 */	extsh. r0, r4
/* 80445E30  7C 64 00 D0 */	neg r3, r4
/* 80445E34  41 80 00 08 */	blt lbl_80445E3C
/* 80445E38  7C 83 23 78 */	mr r3, r4
lbl_80445E3C:
/* 80445E3C  7D 00 07 35 */	extsh. r0, r8
/* 80445E40  7C 08 00 D0 */	neg r0, r8
/* 80445E44  41 80 00 08 */	blt lbl_80445E4C
/* 80445E48  7D 00 43 78 */	mr r0, r8
lbl_80445E4C:
/* 80445E4C  7C 03 00 50 */	subf r0, r3, r0
/* 80445E50  7C 00 07 34 */	extsh r0, r0
/* 80445E54  2C 00 03 8E */	cmpwi r0, 0x38e
/* 80445E58  40 80 00 54 */	bge lbl_80445EAC
lbl_80445E5C:
/* 80445E5C  3C C0 80 64 */	lis r6, lit_666@ha /* 0x806442AC@ha */
/* 80445E60  3C A0 80 64 */	lis r5, lit_527@ha /* 0x80644268@ha */
/* 80445E64  3C 80 80 64 */	lis r4, lit_528@ha /* 0x8064426C@ha */
/* 80445E68  C0 26 42 AC */	lfs f1, lit_666@l(r6)  /* 0x806442AC@l */
/* 80445E6C  C0 45 42 68 */	lfs f2, lit_527@l(r5)  /* 0x80644268@l */
/* 80445E70  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 80445E74  C0 64 42 6C */	lfs f3, lit_528@l(r4)  /* 0x8064426C@l */
/* 80445E78  4B F7 54 1D */	bl add_calc2
/* 80445E7C  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 80445E80  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80445E84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80445E88  40 81 00 08 */	ble lbl_80445E90
/* 80445E8C  48 00 00 08 */	b lbl_80445E94
lbl_80445E90:
/* 80445E90  FC 20 00 90 */	fmr f1, f0
lbl_80445E94:
/* 80445E94  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 80445E98  C0 7E 05 EC */	lfs f3, 0x5ec(r30)
/* 80445E9C  C0 43 42 AC */	lfs f2, lit_666@l(r3)  /* 0x806442AC@l */
/* 80445EA0  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80445EA4  4B F7 53 F1 */	bl add_calc2
/* 80445EA8  48 00 00 50 */	b lbl_80445EF8
lbl_80445EAC:
/* 80445EAC  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80445EB0  3C 80 80 64 */	lis r4, lit_1957@ha /* 0x8064436C@ha */
/* 80445EB4  38 A3 42 68 */	addi r5, r3, lit_527@l /* 0x80644268@l */
/* 80445EB8  C0 44 43 6C */	lfs f2, lit_1957@l(r4)  /* 0x8064436C@l */
/* 80445EBC  C0 25 00 00 */	lfs f1, 0(r5)
/* 80445EC0  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 80445EC4  4B F7 54 15 */	bl add_calc0
/* 80445EC8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80445ECC  3C A0 80 64 */	lis r5, lit_4626@ha /* 0x806443F4@ha */
/* 80445ED0  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80445ED4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80445ED8  C0 44 00 00 */	lfs f2, 0(r4)
/* 80445EDC  3C 60 80 64 */	lis r3, lit_1712@ha /* 0x80644368@ha */
/* 80445EE0  38 83 43 68 */	addi r4, r3, lit_1712@l /* 0x80644368@l */
/* 80445EE4  C0 25 43 F4 */	lfs f1, lit_4626@l(r5)  /* 0x806443F4@l */
/* 80445EE8  EC 42 00 28 */	fsubs f2, f2, f0
/* 80445EEC  C0 64 00 00 */	lfs f3, 0(r4)
/* 80445EF0  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80445EF4  4B F7 53 A1 */	bl add_calc2
lbl_80445EF8:
/* 80445EF8  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80445EFC  4B F7 4B F5 */	bl sin_s
/* 80445F00  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80445F04  EC 00 00 72 */	fmuls f0, f0, f1
/* 80445F08  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80445F0C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80445F10  4B F7 4B 8D */	bl cos_s
/* 80445F14  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80445F18  7F C4 F3 78 */	mr r4, r30
/* 80445F1C  7F E5 FB 78 */	mr r5, r31
/* 80445F20  38 61 00 14 */	addi r3, r1, 0x14
/* 80445F24  EC 00 00 72 */	fmuls f0, f0, f1
/* 80445F28  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 80445F2C  4B FF 18 79 */	bl mfish_get_flow_vec
/* 80445F30  C0 3E 05 D0 */	lfs f1, 0x5d0(r30)
/* 80445F34  7F C3 F3 78 */	mr r3, r30
/* 80445F38  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80445F3C  7F E4 FB 78 */	mr r4, r31
/* 80445F40  C0 5E 05 A0 */	lfs f2, 0x5a0(r30)
/* 80445F44  EC 01 00 2A */	fadds f0, f1, f0
/* 80445F48  EC 02 00 2A */	fadds f0, f2, f0
/* 80445F4C  D0 1E 05 A0 */	stfs f0, 0x5a0(r30)
/* 80445F50  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80445F54  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80445F58  C0 5E 05 A8 */	lfs f2, 0x5a8(r30)
/* 80445F5C  EC 01 00 2A */	fadds f0, f1, f0
/* 80445F60  EC 02 00 2A */	fadds f0, f2, f0
/* 80445F64  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 80445F68  4B FE E6 95 */	bl mfish_onefish_mv
/* 80445F6C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80445F70  3C E0 43 30 */	lis r7, 0x4330
/* 80445F74  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80445F78  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80445F7C  81 24 00 00 */	lwz r9, 0(r4)
/* 80445F80  38 A3 42 8C */	addi r5, r3, lit_570@l /* 0x8064428C@l */
/* 80445F84  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 80445F88  3C C0 80 64 */	lis r6, lit_527@ha /* 0x80644268@ha */
/* 80445F8C  A8 89 1B 3C */	lha r4, 0x1b3c(r9)
/* 80445F90  39 03 42 C4 */	addi r8, r3, lit_793@l /* 0x806442C4@l */
/* 80445F94  A8 09 1B 3E */	lha r0, 0x1b3e(r9)
/* 80445F98  3C 60 80 64 */	lis r3, lit_1315@ha /* 0x80644334@ha */
/* 80445F9C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80445FA0  39 26 42 68 */	addi r9, r6, lit_527@l /* 0x80644268@l */
/* 80445FA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80445FA8  90 81 00 3C */	stw r4, 0x3c(r1)
/* 80445FAC  38 C3 43 34 */	addi r6, r3, lit_1315@l /* 0x80644334@l */
/* 80445FB0  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80445FB4  90 E1 00 38 */	stw r7, 0x38(r1)
/* 80445FB8  39 43 42 5C */	addi r10, r3, lit_471@l /* 0x8064425C@l */
/* 80445FBC  C8 45 00 00 */	lfd f2, 0(r5)
/* 80445FC0  3C 80 80 64 */	lis r4, lit_1068@ha /* 0x80644308@ha */
/* 80445FC4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80445FC8  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 80445FCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80445FD0  38 A4 43 08 */	addi r5, r4, lit_1068@l /* 0x80644308@l */
/* 80445FD4  EC 20 10 28 */	fsubs f1, f0, f2
/* 80445FD8  C0 68 00 00 */	lfs f3, 0(r8)
/* 80445FDC  90 E1 00 30 */	stw r7, 0x30(r1)
/* 80445FE0  38 83 42 AC */	addi r4, r3, lit_666@l /* 0x806442AC@l */
/* 80445FE4  C0 A9 00 00 */	lfs f5, 0(r9)
/* 80445FE8  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80445FEC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80445FF0  EC 23 00 72 */	fmuls f1, f3, f1
/* 80445FF4  C0 86 00 00 */	lfs f4, 0(r6)
/* 80445FF8  EC 40 10 28 */	fsubs f2, f0, f2
/* 80445FFC  C0 CA 00 00 */	lfs f6, 0(r10)
/* 80446000  EC A5 08 2A */	fadds f5, f5, f1
/* 80446004  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80446008  C0 25 00 00 */	lfs f1, 0(r5)
/* 8044600C  EC 63 00 B2 */	fmuls f3, f3, f2
/* 80446010  EC A6 01 72 */	fmuls f5, f6, f5
/* 80446014  C0 44 00 00 */	lfs f2, 0(r4)
/* 80446018  EC 64 18 2A */	fadds f3, f4, f3
/* 8044601C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80446020  EC 05 00 2A */	fadds f0, f5, f0
/* 80446024  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 80446028  4B F7 52 B1 */	bl add_calc0
/* 8044602C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80446030  C0 3E 05 F8 */	lfs f1, 0x5f8(r30)
/* 80446034  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80446038  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8044603C  40 80 00 08 */	bge lbl_80446044
/* 80446040  48 00 00 08 */	b lbl_80446048
lbl_80446044:
/* 80446044  FC 00 08 90 */	fmr f0, f1
lbl_80446048:
/* 80446048  D0 1E 05 F8 */	stfs f0, 0x5f8(r30)
/* 8044604C  7F C3 F3 78 */	mr r3, r30
/* 80446050  7F E4 FB 78 */	mr r4, r31
/* 80446054  4B FF 10 3D */	bl mfish_body_wind_anime_play
/* 80446058  7F C3 F3 78 */	mr r3, r30
/* 8044605C  7F E4 FB 78 */	mr r4, r31
/* 80446060  4B FE FC 31 */	bl Museum_Fish_BGCheck
/* 80446064  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80446068  3C 00 43 30 */	lis r0, 0x4330
/* 8044606C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80446070  3C A0 80 64 */	lis r5, lit_1997@ha /* 0x8064437C@ha */
/* 80446074  80 84 00 00 */	lwz r4, 0(r4)
/* 80446078  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044607C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80446080  A8 04 1B A2 */	lha r0, 0x1ba2(r4)
/* 80446084  C8 43 42 8C */	lfd f2, lit_570@l(r3)  /* 0x8064428C@l */
/* 80446088  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8044608C  C0 65 43 7C */	lfs f3, lit_1997@l(r5)  /* 0x8064437C@l */
/* 80446090  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80446094  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80446098  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 8044609C  C0 9E 05 A4 */	lfs f4, 0x5a4(r30)
/* 804460A0  EC 21 10 28 */	fsubs f1, f1, f2
/* 804460A4  EC 23 08 2A */	fadds f1, f3, f1
/* 804460A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804460AC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 804460B0  40 80 00 08 */	bge lbl_804460B8
/* 804460B4  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
lbl_804460B8:
/* 804460B8  A8 7E 06 26 */	lha r3, 0x626(r30)
/* 804460BC  38 03 FF FF */	addi r0, r3, -1
/* 804460C0  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 804460C4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 804460C8  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 804460CC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804460D0  7C 08 03 A6 */	mtlr r0
/* 804460D4  38 21 00 50 */	addi r1, r1, 0x50
/* 804460D8  4E 80 00 20 */	blr 
