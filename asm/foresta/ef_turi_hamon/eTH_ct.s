lbl_80623A84:
/* 80623A84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80623A88  A8 05 00 00 */	lha r0, 0(r5)
/* 80623A8C  B0 03 00 50 */	sth r0, 0x50(r3)
/* 80623A90  A8 03 00 06 */	lha r0, 6(r3)
/* 80623A94  2C 00 00 02 */	cmpwi r0, 2
/* 80623A98  41 82 00 48 */	beq lbl_80623AE0
/* 80623A9C  40 80 00 14 */	bge lbl_80623AB0
/* 80623AA0  2C 00 00 00 */	cmpwi r0, 0
/* 80623AA4  41 82 00 1C */	beq lbl_80623AC0
/* 80623AA8  40 80 00 28 */	bge lbl_80623AD0
/* 80623AAC  48 00 00 64 */	b lbl_80623B10
lbl_80623AB0:
/* 80623AB0  2C 00 00 04 */	cmpwi r0, 4
/* 80623AB4  41 82 00 4C */	beq lbl_80623B00
/* 80623AB8  40 80 00 58 */	bge lbl_80623B10
/* 80623ABC  48 00 00 34 */	b lbl_80623AF0
lbl_80623AC0:
/* 80623AC0  3C 80 80 65 */	lis r4, data_8064CEE4@ha /* 0x8064CEE4@ha */
/* 80623AC4  C0 04 CE E4 */	lfs f0, data_8064CEE4@l(r4)  /* 0x8064CEE4@l */
/* 80623AC8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80623ACC  48 00 00 98 */	b lbl_80623B64
lbl_80623AD0:
/* 80623AD0  3C 80 80 65 */	lis r4, lit_402@ha /* 0x8064CEE8@ha */
/* 80623AD4  C0 04 CE E8 */	lfs f0, lit_402@l(r4)  /* 0x8064CEE8@l */
/* 80623AD8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80623ADC  48 00 00 88 */	b lbl_80623B64
lbl_80623AE0:
/* 80623AE0  3C 80 80 65 */	lis r4, lit_403@ha /* 0x8064CEEC@ha */
/* 80623AE4  C0 04 CE EC */	lfs f0, lit_403@l(r4)  /* 0x8064CEEC@l */
/* 80623AE8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80623AEC  48 00 00 78 */	b lbl_80623B64
lbl_80623AF0:
/* 80623AF0  3C 80 80 65 */	lis r4, lit_404@ha /* 0x8064CEF0@ha */
/* 80623AF4  C0 04 CE F0 */	lfs f0, lit_404@l(r4)  /* 0x8064CEF0@l */
/* 80623AF8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80623AFC  48 00 00 68 */	b lbl_80623B64
lbl_80623B00:
/* 80623B00  3C 80 80 65 */	lis r4, lit_405@ha /* 0x8064CEF4@ha */
/* 80623B04  C0 04 CE F4 */	lfs f0, lit_405@l(r4)  /* 0x8064CEF4@l */
/* 80623B08  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80623B0C  48 00 00 58 */	b lbl_80623B64
lbl_80623B10:
/* 80623B10  A8 A3 00 08 */	lha r5, 8(r3)
/* 80623B14  3C 00 43 30 */	lis r0, 0x4330
/* 80623B18  3C 80 80 65 */	lis r4, lit_407@ha /* 0x8064CEFC@ha */
/* 80623B1C  3C C0 80 65 */	lis r6, lit_420@ha /* 0x8064CF2C@ha */
/* 80623B20  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80623B24  90 01 00 08 */	stw r0, 8(r1)
/* 80623B28  C0 04 CE FC */	lfs f0, lit_407@l(r4)  /* 0x8064CEFC@l */
/* 80623B2C  3C E0 80 65 */	lis r7, lit_406@ha /* 0x8064CEF8@ha */
/* 80623B30  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80623B34  38 A6 CF 2C */	addi r5, r6, lit_420@l /* 0x8064CF2C@l */
/* 80623B38  C8 45 00 00 */	lfd f2, 0(r5)
/* 80623B3C  38 C7 CE F8 */	addi r6, r7, lit_406@l /* 0x8064CEF8@l */
/* 80623B40  C8 21 00 08 */	lfd f1, 8(r1)
/* 80623B44  3C E0 80 65 */	lis r7, lit_404@ha /* 0x8064CEF0@ha */
/* 80623B48  C0 67 CE F0 */	lfs f3, lit_404@l(r7)  /* 0x8064CEF0@l */
/* 80623B4C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80623B50  C0 46 00 00 */	lfs f2, 0(r6)
/* 80623B54  EC 01 00 24 */	fdivs f0, f1, f0
/* 80623B58  EC 02 00 32 */	fmuls f0, f2, f0
/* 80623B5C  EC 03 00 2A */	fadds f0, f3, f0
/* 80623B60  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_80623B64:
/* 80623B64  3C 80 80 65 */	lis r4, lit_408@ha /* 0x8064CF00@ha */
/* 80623B68  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80623B6C  C0 04 CF 00 */	lfs f0, lit_408@l(r4)  /* 0x8064CF00@l */
/* 80623B70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80623B74  40 81 00 14 */	ble lbl_80623B88
/* 80623B78  38 00 00 C8 */	li r0, 0xc8
/* 80623B7C  B0 03 00 4C */	sth r0, 0x4c(r3)
/* 80623B80  B0 03 00 52 */	sth r0, 0x52(r3)
/* 80623B84  48 00 00 10 */	b lbl_80623B94
lbl_80623B88:
/* 80623B88  38 00 00 96 */	li r0, 0x96
/* 80623B8C  B0 03 00 4C */	sth r0, 0x4c(r3)
/* 80623B90  B0 03 00 52 */	sth r0, 0x52(r3)
lbl_80623B94:
/* 80623B94  A8 03 00 06 */	lha r0, 6(r3)
/* 80623B98  2C 00 00 07 */	cmpwi r0, 7
/* 80623B9C  40 82 00 7C */	bne lbl_80623C18
/* 80623BA0  3C 80 80 65 */	lis r4, lit_409@ha /* 0x8064CF04@ha */
/* 80623BA4  38 00 00 20 */	li r0, 0x20
/* 80623BA8  B0 03 00 00 */	sth r0, 0(r3)
/* 80623BAC  3C 00 43 30 */	lis r0, 0x4330
/* 80623BB0  C0 04 CF 04 */	lfs f0, lit_409@l(r4)  /* 0x8064CF04@l */
/* 80623BB4  3C 80 80 65 */	lis r4, lit_420@ha /* 0x8064CF2C@ha */
/* 80623BB8  38 A4 CF 2C */	addi r5, r4, lit_420@l /* 0x8064CF2C@l */
/* 80623BBC  3C E0 80 65 */	lis r7, lit_412@ha /* 0x8064CF10@ha */
/* 80623BC0  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80623BC4  3C C0 81 16 */	lis r6, debug_mode@ha /* 0x81166138@ha */
/* 80623BC8  3D 00 80 65 */	lis r8, lit_411@ha /* 0x8064CF0C@ha */
/* 80623BCC  3D 20 80 65 */	lis r9, lit_410@ha /* 0x8064CF08@ha */
/* 80623BD0  80 C6 61 38 */	lwz r6, debug_mode@l(r6)  /* 0x81166138@l */
/* 80623BD4  3C 80 80 65 */	lis r4, lit_413@ha /* 0x8064CF14@ha */
/* 80623BD8  90 01 00 08 */	stw r0, 8(r1)
/* 80623BDC  A8 C6 1B 86 */	lha r6, 0x1b86(r6)
/* 80623BE0  C8 25 00 00 */	lfd f1, 0(r5)
/* 80623BE4  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 80623BE8  C0 47 CF 10 */	lfs f2, lit_412@l(r7)  /* 0x8064CF10@l */
/* 80623BEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80623BF0  C0 68 CF 0C */	lfs f3, lit_411@l(r8)  /* 0x8064CF0C@l */
/* 80623BF4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80623BF8  C0 89 CF 08 */	lfs f4, lit_410@l(r9)  /* 0x8064CF08@l */
/* 80623BFC  EC 20 08 28 */	fsubs f1, f0, f1
/* 80623C00  C0 04 CF 14 */	lfs f0, lit_413@l(r4)  /* 0x8064CF14@l */
/* 80623C04  EC 22 00 72 */	fmuls f1, f2, f1
/* 80623C08  EC 23 08 2A */	fadds f1, f3, f1
/* 80623C0C  EC 24 00 72 */	fmuls f1, f4, f1
/* 80623C10  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 80623C14  D0 03 00 24 */	stfs f0, 0x24(r3)
lbl_80623C18:
/* 80623C18  A8 03 00 06 */	lha r0, 6(r3)
/* 80623C1C  2C 00 00 06 */	cmpwi r0, 6
/* 80623C20  40 82 00 3C */	bne lbl_80623C5C
/* 80623C24  3C 80 80 65 */	lis r4, lit_409@ha /* 0x8064CF04@ha */
/* 80623C28  38 00 00 34 */	li r0, 0x34
/* 80623C2C  38 C4 CF 04 */	addi r6, r4, lit_409@l /* 0x8064CF04@l */
/* 80623C30  B0 03 00 00 */	sth r0, 0(r3)
/* 80623C34  3C 80 80 65 */	lis r4, lit_414@ha /* 0x8064CF18@ha */
/* 80623C38  C0 06 00 00 */	lfs f0, 0(r6)
/* 80623C3C  38 A4 CF 18 */	addi r5, r4, lit_414@l /* 0x8064CF18@l */
/* 80623C40  C0 25 00 00 */	lfs f1, 0(r5)
/* 80623C44  3C 80 80 65 */	lis r4, lit_415@ha /* 0x8064CF1C@ha */
/* 80623C48  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80623C4C  C0 04 CF 1C */	lfs f0, lit_415@l(r4)  /* 0x8064CF1C@l */
/* 80623C50  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 80623C54  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80623C58  48 00 00 78 */	b lbl_80623CD0
lbl_80623C5C:
/* 80623C5C  2C 00 00 04 */	cmpwi r0, 4
/* 80623C60  41 82 00 3C */	beq lbl_80623C9C
/* 80623C64  3C 80 80 65 */	lis r4, lit_409@ha /* 0x8064CF04@ha */
/* 80623C68  38 00 00 20 */	li r0, 0x20
/* 80623C6C  38 C4 CF 04 */	addi r6, r4, lit_409@l /* 0x8064CF04@l */
/* 80623C70  B0 03 00 00 */	sth r0, 0(r3)
/* 80623C74  3C 80 80 65 */	lis r4, lit_416@ha /* 0x8064CF20@ha */
/* 80623C78  C0 06 00 00 */	lfs f0, 0(r6)
/* 80623C7C  38 A4 CF 20 */	addi r5, r4, lit_416@l /* 0x8064CF20@l */
/* 80623C80  C0 25 00 00 */	lfs f1, 0(r5)
/* 80623C84  3C 80 80 65 */	lis r4, lit_413@ha /* 0x8064CF14@ha */
/* 80623C88  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80623C8C  C0 04 CF 14 */	lfs f0, lit_413@l(r4)  /* 0x8064CF14@l */
/* 80623C90  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 80623C94  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80623C98  48 00 00 38 */	b lbl_80623CD0
lbl_80623C9C:
/* 80623C9C  3C 80 80 65 */	lis r4, lit_417@ha /* 0x8064CF24@ha */
/* 80623CA0  38 00 00 34 */	li r0, 0x34
/* 80623CA4  38 C4 CF 24 */	addi r6, r4, lit_417@l /* 0x8064CF24@l */
/* 80623CA8  B0 03 00 00 */	sth r0, 0(r3)
/* 80623CAC  3C 80 80 65 */	lis r4, lit_418@ha /* 0x8064CF28@ha */
/* 80623CB0  C0 06 00 00 */	lfs f0, 0(r6)
/* 80623CB4  38 A4 CF 28 */	addi r5, r4, lit_418@l /* 0x8064CF28@l */
/* 80623CB8  C0 25 00 00 */	lfs f1, 0(r5)
/* 80623CBC  3C 80 80 65 */	lis r4, lit_415@ha /* 0x8064CF1C@ha */
/* 80623CC0  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80623CC4  C0 04 CF 1C */	lfs f0, lit_415@l(r4)  /* 0x8064CF1C@l */
/* 80623CC8  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 80623CCC  D0 03 00 24 */	stfs f0, 0x24(r3)
lbl_80623CD0:
/* 80623CD0  A8 03 00 00 */	lha r0, 0(r3)
/* 80623CD4  B0 03 00 4E */	sth r0, 0x4e(r3)
/* 80623CD8  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80623CDC  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80623CE0  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80623CE4  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 80623CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80623CEC  4E 80 00 20 */	blr 
