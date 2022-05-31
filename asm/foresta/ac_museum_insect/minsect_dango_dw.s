lbl_8046D328:
/* 8046D328  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8046D32C  7C 08 02 A6 */	mflr r0
/* 8046D330  90 01 00 54 */	stw r0, 0x54(r1)
/* 8046D334  39 61 00 50 */	addi r11, r1, 0x50
/* 8046D338  4B C2 DB 99 */	bl func_8009AED0
/* 8046D33C  7C 9E 23 78 */	mr r30, r4
/* 8046D340  7C 7D 1B 78 */	mr r29, r3
/* 8046D344  80 64 00 00 */	lwz r3, 0(r4)
/* 8046D348  4B F7 7D C1 */	bl _texture_z_light_fog_prim
/* 8046D34C  83 FE 00 00 */	lwz r31, 0(r30)
/* 8046D350  38 60 00 00 */	li r3, 0
/* 8046D354  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 8046D358  C0 5D 00 20 */	lfs f2, 0x20(r29)
/* 8046D35C  C0 7D 00 24 */	lfs f3, 0x24(r29)
/* 8046D360  4B F9 EF A1 */	bl Matrix_translate
/* 8046D364  A8 1D 00 7C */	lha r0, 0x7c(r29)
/* 8046D368  2C 00 00 00 */	cmpwi r0, 0
/* 8046D36C  41 82 00 C8 */	beq lbl_8046D434
/* 8046D370  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8046D374  3C 80 43 30 */	lis r4, 0x4330
/* 8046D378  38 A3 61 38 */	addi r5, r3, debug_mode@l /* 0x81166138@l */
/* 8046D37C  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8046D380  81 25 00 00 */	lwz r9, 0(r5)
/* 8046D384  38 C3 46 3C */	addi r6, r3, lit_589@l /* 0x8064463C@l */
/* 8046D388  3C 60 80 64 */	lis r3, lit_503@ha /* 0x806445DC@ha */
/* 8046D38C  3C A0 80 64 */	lis r5, lit_505@ha /* 0x806445E4@ha */
/* 8046D390  A8 09 16 9E */	lha r0, 0x169e(r9)
/* 8046D394  38 E3 45 DC */	addi r7, r3, lit_503@l /* 0x806445DC@l */
/* 8046D398  A8 69 16 A0 */	lha r3, 0x16a0(r9)
/* 8046D39C  39 05 45 E4 */	addi r8, r5, lit_505@l /* 0x806445E4@l */
/* 8046D3A0  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 8046D3A4  A8 09 16 A2 */	lha r0, 0x16a2(r9)
/* 8046D3A8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8046D3AC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8046D3B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8046D3B4  C8 66 00 00 */	lfd f3, 0(r6)
/* 8046D3B8  90 81 00 08 */	stw r4, 8(r1)
/* 8046D3BC  38 C0 00 01 */	li r6, 1
/* 8046D3C0  C0 47 00 00 */	lfs f2, 0(r7)
/* 8046D3C4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8046D3C8  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8046D3CC  EC 20 18 28 */	fsubs f1, f0, f3
/* 8046D3D0  C0 88 00 00 */	lfs f4, 0(r8)
/* 8046D3D4  90 81 00 18 */	stw r4, 0x18(r1)
/* 8046D3D8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8046D3DC  EC 42 08 2A */	fadds f2, f2, f1
/* 8046D3E0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8046D3E4  EC 20 18 28 */	fsubs f1, f0, f3
/* 8046D3E8  90 81 00 28 */	stw r4, 0x28(r1)
/* 8046D3EC  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8046D3F0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8046D3F4  EC 24 00 72 */	fmuls f1, f4, f1
/* 8046D3F8  FC 40 10 1E */	fctiwz f2, f2
/* 8046D3FC  EC 00 18 28 */	fsubs f0, f0, f3
/* 8046D400  FC 20 08 1E */	fctiwz f1, f1
/* 8046D404  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8046D408  EC 04 00 32 */	fmuls f0, f4, f0
/* 8046D40C  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 8046D410  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8046D414  FC 00 00 1E */	fctiwz f0, f0
/* 8046D418  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046D41C  7C 63 07 34 */	extsh r3, r3
/* 8046D420  7C 04 07 34 */	extsh r4, r0
/* 8046D424  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8046D428  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046D42C  7C 05 07 34 */	extsh r5, r0
/* 8046D430  4B F9 F5 65 */	bl Matrix_rotateXYZ
lbl_8046D434:
/* 8046D434  A8 7D 00 68 */	lha r3, 0x68(r29)
/* 8046D438  38 C0 00 01 */	li r6, 1
/* 8046D43C  A8 9D 00 6A */	lha r4, 0x6a(r29)
/* 8046D440  A8 BD 00 6C */	lha r5, 0x6c(r29)
/* 8046D444  4B F9 F5 51 */	bl Matrix_rotateXYZ
/* 8046D448  A8 1D 00 7C */	lha r0, 0x7c(r29)
/* 8046D44C  2C 00 00 00 */	cmpwi r0, 0
/* 8046D450  41 82 00 A0 */	beq lbl_8046D4F0
/* 8046D454  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8046D458  3C A0 43 30 */	lis r5, 0x4330
/* 8046D45C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8046D460  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8046D464  81 44 00 00 */	lwz r10, 0(r4)
/* 8046D468  38 E3 46 3C */	addi r7, r3, lit_589@l /* 0x8064463C@l */
/* 8046D46C  3C 60 80 64 */	lis r3, lit_678@ha /* 0x80644654@ha */
/* 8046D470  3C C0 80 64 */	lis r6, lit_3502@ha /* 0x80644844@ha */
/* 8046D474  A8 8A 16 98 */	lha r4, 0x1698(r10)
/* 8046D478  39 03 46 54 */	addi r8, r3, lit_678@l /* 0x80644654@l */
/* 8046D47C  A8 6A 16 9A */	lha r3, 0x169a(r10)
/* 8046D480  39 26 48 44 */	addi r9, r6, lit_3502@l /* 0x80644844@l */
/* 8046D484  A8 0A 16 9C */	lha r0, 0x169c(r10)
/* 8046D488  6C 86 80 00 */	xoris r6, r4, 0x8000
/* 8046D48C  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8046D490  90 C1 00 34 */	stw r6, 0x34(r1)
/* 8046D494  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8046D498  C8 67 00 00 */	lfd f3, 0(r7)
/* 8046D49C  90 A1 00 30 */	stw r5, 0x30(r1)
/* 8046D4A0  38 60 00 01 */	li r3, 1
/* 8046D4A4  C0 88 00 00 */	lfs f4, 0(r8)
/* 8046D4A8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8046D4AC  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8046D4B0  EC 20 18 28 */	fsubs f1, f0, f3
/* 8046D4B4  C0 A9 00 00 */	lfs f5, 0(r9)
/* 8046D4B8  90 A1 00 28 */	stw r5, 0x28(r1)
/* 8046D4BC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8046D4C0  EC 24 00 72 */	fmuls f1, f4, f1
/* 8046D4C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046D4C8  EC 40 18 28 */	fsubs f2, f0, f3
/* 8046D4CC  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8046D4D0  EC 25 08 2A */	fadds f1, f5, f1
/* 8046D4D4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8046D4D8  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8046D4DC  EC 00 18 28 */	fsubs f0, f0, f3
/* 8046D4E0  EC 45 10 2A */	fadds f2, f5, f2
/* 8046D4E4  EC 04 00 32 */	fmuls f0, f4, f0
/* 8046D4E8  EC 65 00 2A */	fadds f3, f5, f0
/* 8046D4EC  4B F9 EF 01 */	bl Matrix_scale
lbl_8046D4F0:
/* 8046D4F0  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046D4F4  C0 7D 00 58 */	lfs f3, 0x58(r29)
/* 8046D4F8  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 8046D4FC  38 60 00 01 */	li r3, 1
/* 8046D500  C0 24 00 00 */	lfs f1, 0(r4)
/* 8046D504  FC 40 08 90 */	fmr f2, f1
/* 8046D508  4B F9 EE E5 */	bl Matrix_scale
/* 8046D50C  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 8046D510  38 60 00 01 */	li r3, 1
/* 8046D514  FC 40 08 90 */	fmr f2, f1
/* 8046D518  FC 60 08 90 */	fmr f3, f1
/* 8046D51C  4B F9 EE D1 */	bl Matrix_scale
/* 8046D520  83 9F 02 D0 */	lwz r28, 0x2d0(r31)
/* 8046D524  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8046D528  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8046D52C  38 7C 00 08 */	addi r3, r28, 8
/* 8046D530  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8046D534  90 1C 00 00 */	stw r0, 0(r28)
/* 8046D538  80 7E 00 00 */	lwz r3, 0(r30)
/* 8046D53C  4B F9 FE 99 */	bl _Matrix_to_Mtx_new
/* 8046D540  90 7C 00 04 */	stw r3, 4(r28)
/* 8046D544  A8 1D 00 7C */	lha r0, 0x7c(r29)
/* 8046D548  2C 00 00 00 */	cmpwi r0, 0
/* 8046D54C  41 82 00 38 */	beq lbl_8046D584
/* 8046D550  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8046D554  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 8046D558  3C 00 DE 00 */	lis r0, 0xde00
/* 8046D55C  38 85 00 08 */	addi r4, r5, 8
/* 8046D560  38 63 65 4C */	addi r3, r3, minsect_mdl@l /* 0x8068654C@l */
/* 8046D564  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 8046D568  90 05 00 00 */	stw r0, 0(r5)
/* 8046D56C  80 1D 00 00 */	lwz r0, 0(r29)
/* 8046D570  54 00 10 3A */	slwi r0, r0, 2
/* 8046D574  7C 63 00 2E */	lwzx r3, r3, r0
/* 8046D578  80 03 00 04 */	lwz r0, 4(r3)
/* 8046D57C  90 05 00 04 */	stw r0, 4(r5)
/* 8046D580  48 00 00 34 */	b lbl_8046D5B4
lbl_8046D584:
/* 8046D584  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8046D588  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 8046D58C  3C 00 DE 00 */	lis r0, 0xde00
/* 8046D590  38 85 00 08 */	addi r4, r5, 8
/* 8046D594  38 63 65 4C */	addi r3, r3, minsect_mdl@l /* 0x8068654C@l */
/* 8046D598  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 8046D59C  90 05 00 00 */	stw r0, 0(r5)
/* 8046D5A0  80 1D 00 00 */	lwz r0, 0(r29)
/* 8046D5A4  54 00 10 3A */	slwi r0, r0, 2
/* 8046D5A8  7C 63 00 2E */	lwzx r3, r3, r0
/* 8046D5AC  80 03 00 00 */	lwz r0, 0(r3)
/* 8046D5B0  90 05 00 04 */	stw r0, 4(r5)
lbl_8046D5B4:
/* 8046D5B4  7F A3 EB 78 */	mr r3, r29
/* 8046D5B8  7F C4 F3 78 */	mr r4, r30
/* 8046D5BC  4B FE E3 75 */	bl minsect_draw_shadow
/* 8046D5C0  39 61 00 50 */	addi r11, r1, 0x50
/* 8046D5C4  4B C2 D9 59 */	bl func_8009AF1C
/* 8046D5C8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8046D5CC  7C 08 03 A6 */	mtlr r0
/* 8046D5D0  38 21 00 50 */	addi r1, r1, 0x50
/* 8046D5D4  4E 80 00 20 */	blr 
