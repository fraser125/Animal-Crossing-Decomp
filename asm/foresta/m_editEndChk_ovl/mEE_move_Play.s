lbl_805D79A8:
/* 805D79A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D79AC  7C 08 02 A6 */	mflr r0
/* 805D79B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D79B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805D79B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805D79BC  7C 9E 23 78 */	mr r30, r4
/* 805D79C0  80 04 00 38 */	lwz r0, 0x38(r4)
/* 805D79C4  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805D79C8  3C 60 80 6D */	lis r3, data_806CC7B8@ha /* 0x806CC7B8@ha */
/* 805D79CC  1C 80 00 24 */	mulli r4, r0, 0x24
/* 805D79D0  80 C5 09 28 */	lwz r6, 0x928(r5)
/* 805D79D4  38 63 C7 B8 */	addi r3, r3, data_806CC7B8@l /* 0x806CC7B8@l */
/* 805D79D8  83 E5 09 A4 */	lwz r31, 0x9a4(r5)
/* 805D79DC  7C 63 20 2E */	lwzx r3, r3, r4
/* 805D79E0  54 C0 04 63 */	rlwinm. r0, r6, 0, 0x11, 0x11
/* 805D79E4  38 83 FF FF */	addi r4, r3, -1
/* 805D79E8  41 82 00 30 */	beq lbl_805D7A18
/* 805D79EC  38 60 10 03 */	li r3, 0x1003
/* 805D79F0  48 05 63 15 */	bl sAdo_SysTrgStart
/* 805D79F4  38 00 00 00 */	li r0, 0
/* 805D79F8  38 80 00 06 */	li r4, 6
/* 805D79FC  90 1E 00 04 */	stw r0, 4(r30)
/* 805D7A00  38 60 00 04 */	li r3, 4
/* 805D7A04  38 00 00 01 */	li r0, 1
/* 805D7A08  B0 9E 00 34 */	sth r4, 0x34(r30)
/* 805D7A0C  90 7E 00 30 */	stw r3, 0x30(r30)
/* 805D7A10  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 805D7A14  48 00 01 C8 */	b lbl_805D7BDC
lbl_805D7A18:
/* 805D7A18  70 C0 90 00 */	andi. r0, r6, 0x9000
/* 805D7A1C  41 82 00 6C */	beq lbl_805D7A88
/* 805D7A20  88 1F 00 00 */	lbz r0, 0(r31)
/* 805D7A24  28 00 00 00 */	cmplwi r0, 0
/* 805D7A28  40 82 00 1C */	bne lbl_805D7A44
/* 805D7A2C  3C 60 80 65 */	lis r3, data_8064B1D4@ha /* 0x8064B1D4@ha */
/* 805D7A30  38 00 00 01 */	li r0, 1
/* 805D7A34  98 1F 00 00 */	stb r0, 0(r31)
/* 805D7A38  C0 03 B1 D4 */	lfs f0, data_8064B1D4@l(r3)  /* 0x8064B1D4@l */
/* 805D7A3C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 805D7A40  48 00 00 24 */	b lbl_805D7A64
lbl_805D7A44:
/* 805D7A44  38 00 00 00 */	li r0, 0
/* 805D7A48  38 60 00 06 */	li r3, 6
/* 805D7A4C  90 1E 00 04 */	stw r0, 4(r30)
/* 805D7A50  38 00 00 04 */	li r0, 4
/* 805D7A54  B0 7E 00 34 */	sth r3, 0x34(r30)
/* 805D7A58  90 1E 00 30 */	stw r0, 0x30(r30)
/* 805D7A5C  88 1F 00 01 */	lbz r0, 1(r31)
/* 805D7A60  90 1E 00 3C */	stw r0, 0x3c(r30)
lbl_805D7A64:
/* 805D7A64  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 805D7A68  2C 00 00 02 */	cmpwi r0, 2
/* 805D7A6C  40 82 00 10 */	bne lbl_805D7A7C
/* 805D7A70  38 60 10 03 */	li r3, 0x1003
/* 805D7A74  48 05 62 91 */	bl sAdo_SysTrgStart
/* 805D7A78  48 00 01 64 */	b lbl_805D7BDC
lbl_805D7A7C:
/* 805D7A7C  38 60 00 02 */	li r3, 2
/* 805D7A80  48 05 62 85 */	bl sAdo_SysTrgStart
/* 805D7A84  48 00 01 58 */	b lbl_805D7BDC
lbl_805D7A88:
/* 805D7A88  88 1F 00 00 */	lbz r0, 0(r31)
/* 805D7A8C  28 00 00 01 */	cmplwi r0, 1
/* 805D7A90  40 82 00 8C */	bne lbl_805D7B1C
/* 805D7A94  3C 60 80 65 */	lis r3, lit_439@ha /* 0x8064B1D8@ha */
/* 805D7A98  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805D7A9C  C0 03 B1 D8 */	lfs f0, lit_439@l(r3)  /* 0x8064B1D8@l */
/* 805D7AA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D7AA4  40 80 00 18 */	bge lbl_805D7ABC
/* 805D7AA8  3C 60 80 65 */	lis r3, lit_440@ha /* 0x8064B1DC@ha */
/* 805D7AAC  C0 03 B1 DC */	lfs f0, lit_440@l(r3)  /* 0x8064B1DC@l */
/* 805D7AB0  EC 01 00 2A */	fadds f0, f1, f0
/* 805D7AB4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 805D7AB8  48 00 00 54 */	b lbl_805D7B0C
lbl_805D7ABC:
/* 805D7ABC  54 C0 07 39 */	rlwinm. r0, r6, 0, 0x1c, 0x1c
/* 805D7AC0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 805D7AC4  41 82 00 24 */	beq lbl_805D7AE8
/* 805D7AC8  88 7F 00 01 */	lbz r3, 1(r31)
/* 805D7ACC  28 03 00 00 */	cmplwi r3, 0
/* 805D7AD0  41 82 00 3C */	beq lbl_805D7B0C
/* 805D7AD4  38 03 FF FF */	addi r0, r3, -1
/* 805D7AD8  38 60 00 01 */	li r3, 1
/* 805D7ADC  98 1F 00 01 */	stb r0, 1(r31)
/* 805D7AE0  48 05 62 25 */	bl sAdo_SysTrgStart
/* 805D7AE4  48 00 00 28 */	b lbl_805D7B0C
lbl_805D7AE8:
/* 805D7AE8  54 C0 07 7B */	rlwinm. r0, r6, 0, 0x1d, 0x1d
/* 805D7AEC  41 82 00 20 */	beq lbl_805D7B0C
/* 805D7AF0  88 7F 00 01 */	lbz r3, 1(r31)
/* 805D7AF4  7C 03 20 00 */	cmpw r3, r4
/* 805D7AF8  40 80 00 14 */	bge lbl_805D7B0C
/* 805D7AFC  38 03 00 01 */	addi r0, r3, 1
/* 805D7B00  38 60 00 01 */	li r3, 1
/* 805D7B04  98 1F 00 01 */	stb r0, 1(r31)
/* 805D7B08  48 05 61 FD */	bl sAdo_SysTrgStart
lbl_805D7B0C:
/* 805D7B0C  38 00 00 00 */	li r0, 0
/* 805D7B10  98 1F 00 02 */	stb r0, 2(r31)
/* 805D7B14  98 1F 00 03 */	stb r0, 3(r31)
/* 805D7B18  48 00 00 C4 */	b lbl_805D7BDC
lbl_805D7B1C:
/* 805D7B1C  88 9F 00 02 */	lbz r4, 2(r31)
/* 805D7B20  38 60 00 1E */	li r3, 0x1e
/* 805D7B24  38 84 00 01 */	addi r4, r4, 1
/* 805D7B28  7C 04 1B D6 */	divw r0, r4, r3
/* 805D7B2C  7C 00 19 D6 */	mullw r0, r0, r3
/* 805D7B30  7C 00 20 50 */	subf r0, r0, r4
/* 805D7B34  2C 00 00 0F */	cmpwi r0, 0xf
/* 805D7B38  98 1F 00 02 */	stb r0, 2(r31)
/* 805D7B3C  40 80 00 54 */	bge lbl_805D7B90
/* 805D7B40  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 805D7B44  3C 00 43 30 */	lis r0, 0x4330
/* 805D7B48  3C 80 80 65 */	lis r4, lit_444@ha /* 0x8064B1EC@ha */
/* 805D7B4C  90 61 00 0C */	stw r3, 0xc(r1)
/* 805D7B50  38 64 B1 EC */	addi r3, r4, lit_444@l /* 0x8064B1EC@l */
/* 805D7B54  90 01 00 08 */	stw r0, 8(r1)
/* 805D7B58  3C 80 80 65 */	lis r4, lit_441@ha /* 0x8064B1E0@ha */
/* 805D7B5C  C8 23 00 00 */	lfd f1, 0(r3)
/* 805D7B60  3C 60 80 65 */	lis r3, lit_442@ha /* 0x8064B1E4@ha */
/* 805D7B64  C8 01 00 08 */	lfd f0, 8(r1)
/* 805D7B68  C0 44 B1 E0 */	lfs f2, lit_441@l(r4)  /* 0x8064B1E0@l */
/* 805D7B6C  EC 20 08 28 */	fsubs f1, f0, f1
/* 805D7B70  C0 03 B1 E4 */	lfs f0, lit_442@l(r3)  /* 0x8064B1E4@l */
/* 805D7B74  EC 22 00 72 */	fmuls f1, f2, f1
/* 805D7B78  EC 01 00 24 */	fdivs f0, f1, f0
/* 805D7B7C  FC 00 00 1E */	fctiwz f0, f0
/* 805D7B80  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805D7B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D7B88  98 1F 00 03 */	stb r0, 3(r31)
/* 805D7B8C  48 00 00 50 */	b lbl_805D7BDC
lbl_805D7B90:
/* 805D7B90  20 60 00 1E */	subfic r3, r0, 0x1e
/* 805D7B94  3C 00 43 30 */	lis r0, 0x4330
/* 805D7B98  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D7B9C  3C 80 80 65 */	lis r4, lit_444@ha /* 0x8064B1EC@ha */
/* 805D7BA0  90 61 00 14 */	stw r3, 0x14(r1)
/* 805D7BA4  3C A0 80 65 */	lis r5, lit_441@ha /* 0x8064B1E0@ha */
/* 805D7BA8  C8 24 B1 EC */	lfd f1, lit_444@l(r4)  /* 0x8064B1EC@l */
/* 805D7BAC  3C 60 80 65 */	lis r3, lit_442@ha /* 0x8064B1E4@ha */
/* 805D7BB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D7BB4  C0 45 B1 E0 */	lfs f2, lit_441@l(r5)  /* 0x8064B1E0@l */
/* 805D7BB8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805D7BBC  EC 20 08 28 */	fsubs f1, f0, f1
/* 805D7BC0  C0 03 B1 E4 */	lfs f0, lit_442@l(r3)  /* 0x8064B1E4@l */
/* 805D7BC4  EC 22 00 72 */	fmuls f1, f2, f1
/* 805D7BC8  EC 01 00 24 */	fdivs f0, f1, f0
/* 805D7BCC  FC 00 00 1E */	fctiwz f0, f0
/* 805D7BD0  D8 01 00 08 */	stfd f0, 8(r1)
/* 805D7BD4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805D7BD8  98 1F 00 03 */	stb r0, 3(r31)
lbl_805D7BDC:
/* 805D7BDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D7BE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805D7BE4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805D7BE8  7C 08 03 A6 */	mtlr r0
/* 805D7BEC  38 21 00 20 */	addi r1, r1, 0x20
/* 805D7BF0  4E 80 00 20 */	blr 
