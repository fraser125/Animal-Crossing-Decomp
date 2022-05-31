lbl_8046A250:
/* 8046A250  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046A254  7C 08 02 A6 */	mflr r0
/* 8046A258  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046A25C  39 61 00 30 */	addi r11, r1, 0x30
/* 8046A260  4B C3 0C 71 */	bl func_8009AED0
/* 8046A264  7C 9E 23 78 */	mr r30, r4
/* 8046A268  7C 7D 1B 78 */	mr r29, r3
/* 8046A26C  80 64 00 00 */	lwz r3, 0(r4)
/* 8046A270  4B F7 AE 99 */	bl _texture_z_light_fog_prim
/* 8046A274  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 8046A278  38 60 00 00 */	li r3, 0
/* 8046A27C  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 8046A280  83 FE 00 00 */	lwz r31, 0(r30)
/* 8046A284  EC 41 00 2A */	fadds f2, f1, f0
/* 8046A288  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 8046A28C  C0 7D 00 24 */	lfs f3, 0x24(r29)
/* 8046A290  4B FA 20 71 */	bl Matrix_translate
/* 8046A294  A8 9D 00 7C */	lha r4, 0x7c(r29)
/* 8046A298  38 60 00 00 */	li r3, 0
/* 8046A29C  38 A0 00 00 */	li r5, 0
/* 8046A2A0  38 C0 00 01 */	li r6, 1
/* 8046A2A4  4B FA 26 F1 */	bl Matrix_rotateXYZ
/* 8046A2A8  A8 7D 00 68 */	lha r3, 0x68(r29)
/* 8046A2AC  38 C0 00 01 */	li r6, 1
/* 8046A2B0  A8 9D 00 6A */	lha r4, 0x6a(r29)
/* 8046A2B4  A8 BD 00 6C */	lha r5, 0x6c(r29)
/* 8046A2B8  4B FA 26 DD */	bl Matrix_rotateXYZ
/* 8046A2BC  A8 1D 00 7C */	lha r0, 0x7c(r29)
/* 8046A2C0  38 60 00 00 */	li r3, 0
/* 8046A2C4  38 A0 00 00 */	li r5, 0
/* 8046A2C8  38 C0 00 01 */	li r6, 1
/* 8046A2CC  7C 00 00 D0 */	neg r0, r0
/* 8046A2D0  7C 04 07 34 */	extsh r4, r0
/* 8046A2D4  4B FA 26 C1 */	bl Matrix_rotateXYZ
/* 8046A2D8  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046A2DC  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 8046A2E0  38 83 45 BC */	addi r4, r3, lit_459@l /* 0x806445BC@l */
/* 8046A2E4  38 60 00 01 */	li r3, 1
/* 8046A2E8  C0 24 00 00 */	lfs f1, 0(r4)
/* 8046A2EC  FC 40 00 50 */	fneg f2, f0
/* 8046A2F0  FC 60 08 90 */	fmr f3, f1
/* 8046A2F4  4B FA 20 0D */	bl Matrix_translate
/* 8046A2F8  A8 9D 00 78 */	lha r4, 0x78(r29)
/* 8046A2FC  38 60 00 00 */	li r3, 0
/* 8046A300  38 A0 00 00 */	li r5, 0
/* 8046A304  38 C0 00 01 */	li r6, 1
/* 8046A308  4B FA 26 8D */	bl Matrix_rotateXYZ
/* 8046A30C  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046A310  3C 80 80 64 */	lis r4, lit_3586@ha /* 0x80644854@ha */
/* 8046A314  38 A3 45 BC */	addi r5, r3, lit_459@l /* 0x806445BC@l */
/* 8046A318  C0 64 48 54 */	lfs f3, lit_3586@l(r4)  /* 0x80644854@l */
/* 8046A31C  C0 25 00 00 */	lfs f1, 0(r5)
/* 8046A320  38 60 00 01 */	li r3, 1
/* 8046A324  FC 40 08 90 */	fmr f2, f1
/* 8046A328  4B FA 1F D9 */	bl Matrix_translate
/* 8046A32C  38 60 C0 00 */	li r3, -16384
/* 8046A330  38 80 80 00 */	li r4, -32768
/* 8046A334  38 A0 00 00 */	li r5, 0
/* 8046A338  38 C0 00 01 */	li r6, 1
/* 8046A33C  4B FA 26 59 */	bl Matrix_rotateXYZ
/* 8046A340  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 8046A344  38 60 00 01 */	li r3, 1
/* 8046A348  C0 5D 00 38 */	lfs f2, 0x38(r29)
/* 8046A34C  C0 7D 00 3C */	lfs f3, 0x3c(r29)
/* 8046A350  4B FA 20 9D */	bl Matrix_scale
/* 8046A354  83 9F 02 D0 */	lwz r28, 0x2d0(r31)
/* 8046A358  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8046A35C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8046A360  38 7C 00 08 */	addi r3, r28, 8
/* 8046A364  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8046A368  90 1C 00 00 */	stw r0, 0(r28)
/* 8046A36C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8046A370  4B FA 30 65 */	bl _Matrix_to_Mtx_new
/* 8046A374  90 7C 00 04 */	stw r3, 4(r28)
/* 8046A378  3C 60 01 00 */	lis r3, 0x0100 /* 0x00FF9BFF@ha */
/* 8046A37C  3C 80 FB 00 */	lis r4, 0xfb00
/* 8046A380  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8046A384  38 03 9B FF */	addi r0, r3, 0x9BFF /* 0x00FF9BFF@l */
/* 8046A388  38 65 00 08 */	addi r3, r5, 8
/* 8046A38C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8046A390  90 85 00 00 */	stw r4, 0(r5)
/* 8046A394  90 05 00 04 */	stw r0, 4(r5)
/* 8046A398  A8 1D 00 80 */	lha r0, 0x80(r29)
/* 8046A39C  2C 00 00 00 */	cmpwi r0, 0
/* 8046A3A0  41 82 00 38 */	beq lbl_8046A3D8
/* 8046A3A4  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8046A3A8  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 8046A3AC  3C 00 DE 00 */	lis r0, 0xde00
/* 8046A3B0  38 85 00 08 */	addi r4, r5, 8
/* 8046A3B4  38 63 65 4C */	addi r3, r3, minsect_mdl@l /* 0x8068654C@l */
/* 8046A3B8  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 8046A3BC  90 05 00 00 */	stw r0, 0(r5)
/* 8046A3C0  80 1D 00 00 */	lwz r0, 0(r29)
/* 8046A3C4  54 00 10 3A */	slwi r0, r0, 2
/* 8046A3C8  7C 63 00 2E */	lwzx r3, r3, r0
/* 8046A3CC  80 03 00 00 */	lwz r0, 0(r3)
/* 8046A3D0  90 05 00 04 */	stw r0, 4(r5)
/* 8046A3D4  48 00 00 34 */	b lbl_8046A408
lbl_8046A3D8:
/* 8046A3D8  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8046A3DC  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 8046A3E0  3C 00 DE 00 */	lis r0, 0xde00
/* 8046A3E4  38 85 00 08 */	addi r4, r5, 8
/* 8046A3E8  38 63 65 4C */	addi r3, r3, minsect_mdl@l /* 0x8068654C@l */
/* 8046A3EC  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 8046A3F0  90 05 00 00 */	stw r0, 0(r5)
/* 8046A3F4  80 1D 00 00 */	lwz r0, 0(r29)
/* 8046A3F8  54 00 10 3A */	slwi r0, r0, 2
/* 8046A3FC  7C 63 00 2E */	lwzx r3, r3, r0
/* 8046A400  80 03 00 04 */	lwz r0, 4(r3)
/* 8046A404  90 05 00 04 */	stw r0, 4(r5)
lbl_8046A408:
/* 8046A408  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8046A40C  3C 00 43 30 */	lis r0, 0x4330
/* 8046A410  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8046A414  3C A0 80 64 */	lis r5, lit_678@ha /* 0x80644654@ha */
/* 8046A418  80 84 00 00 */	lwz r4, 0(r4)
/* 8046A41C  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8046A420  90 01 00 08 */	stw r0, 8(r1)
/* 8046A424  A8 04 17 52 */	lha r0, 0x1752(r4)
/* 8046A428  C8 23 46 3C */	lfd f1, lit_589@l(r3)  /* 0x8064463C@l */
/* 8046A42C  38 60 00 00 */	li r3, 0
/* 8046A430  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8046A434  C0 65 46 54 */	lfs f3, lit_678@l(r5)  /* 0x80644654@l */
/* 8046A438  90 01 00 0C */	stw r0, 0xc(r1)
/* 8046A43C  C0 BD 00 20 */	lfs f5, 0x20(r29)
/* 8046A440  C8 01 00 08 */	lfd f0, 8(r1)
/* 8046A444  C0 5D 00 58 */	lfs f2, 0x58(r29)
/* 8046A448  EC 00 08 28 */	fsubs f0, f0, f1
/* 8046A44C  C0 9D 00 24 */	lfs f4, 0x24(r29)
/* 8046A450  EC 45 10 2A */	fadds f2, f5, f2
/* 8046A454  83 FE 00 00 */	lwz r31, 0(r30)
/* 8046A458  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 8046A45C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8046A460  EC 64 00 2A */	fadds f3, f4, f0
/* 8046A464  4B FA 1E 9D */	bl Matrix_translate
/* 8046A468  A8 9D 00 7C */	lha r4, 0x7c(r29)
/* 8046A46C  38 60 00 00 */	li r3, 0
/* 8046A470  38 A0 00 00 */	li r5, 0
/* 8046A474  38 C0 00 01 */	li r6, 1
/* 8046A478  4B FA 25 1D */	bl Matrix_rotateXYZ
/* 8046A47C  A8 7D 00 68 */	lha r3, 0x68(r29)
/* 8046A480  38 C0 00 01 */	li r6, 1
/* 8046A484  A8 9D 00 6A */	lha r4, 0x6a(r29)
/* 8046A488  A8 BD 00 6C */	lha r5, 0x6c(r29)
/* 8046A48C  4B FA 25 09 */	bl Matrix_rotateXYZ
/* 8046A490  A8 1D 00 7C */	lha r0, 0x7c(r29)
/* 8046A494  38 60 00 00 */	li r3, 0
/* 8046A498  38 A0 00 00 */	li r5, 0
/* 8046A49C  38 C0 00 01 */	li r6, 1
/* 8046A4A0  7C 00 00 D0 */	neg r0, r0
/* 8046A4A4  7C 04 07 34 */	extsh r4, r0
/* 8046A4A8  4B FA 24 ED */	bl Matrix_rotateXYZ
/* 8046A4AC  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046A4B0  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 8046A4B4  38 83 45 BC */	addi r4, r3, lit_459@l /* 0x806445BC@l */
/* 8046A4B8  38 60 00 01 */	li r3, 1
/* 8046A4BC  C0 24 00 00 */	lfs f1, 0(r4)
/* 8046A4C0  FC 40 00 50 */	fneg f2, f0
/* 8046A4C4  FC 60 08 90 */	fmr f3, f1
/* 8046A4C8  4B FA 1E 39 */	bl Matrix_translate
/* 8046A4CC  A8 9D 00 78 */	lha r4, 0x78(r29)
/* 8046A4D0  38 60 00 00 */	li r3, 0
/* 8046A4D4  38 A0 00 00 */	li r5, 0
/* 8046A4D8  38 C0 00 01 */	li r6, 1
/* 8046A4DC  4B FA 24 B9 */	bl Matrix_rotateXYZ
/* 8046A4E0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8046A4E4  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8046A4E8  80 63 00 00 */	lwz r3, 0(r3)
/* 8046A4EC  A8 C3 16 9E */	lha r6, 0x169e(r3)
/* 8046A4F0  7C C0 07 35 */	extsh. r0, r6
/* 8046A4F4  41 82 00 7C */	beq lbl_8046A570
/* 8046A4F8  A8 83 16 9C */	lha r4, 0x169c(r3)
/* 8046A4FC  3C A0 43 30 */	lis r5, 0x4330
/* 8046A500  A8 03 16 A0 */	lha r0, 0x16a0(r3)
/* 8046A504  6C C3 80 00 */	xoris r3, r6, 0x8000
/* 8046A508  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8046A50C  3C C0 80 64 */	lis r6, lit_589@ha /* 0x8064463C@ha */
/* 8046A510  90 81 00 0C */	stw r4, 0xc(r1)
/* 8046A514  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8046A518  3C E0 80 64 */	lis r7, lit_3587@ha /* 0x80644858@ha */
/* 8046A51C  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80644654@ha */
/* 8046A520  90 A1 00 08 */	stw r5, 8(r1)
/* 8046A524  C8 86 46 3C */	lfd f4, lit_589@l(r6)  /* 0x8064463C@l */
/* 8046A528  C8 01 00 08 */	lfd f0, 8(r1)
/* 8046A52C  90 61 00 14 */	stw r3, 0x14(r1)
/* 8046A530  38 60 00 01 */	li r3, 1
/* 8046A534  EC 20 20 28 */	fsubs f1, f0, f4
/* 8046A538  C0 47 48 58 */	lfs f2, lit_3587@l(r7)  /* 0x80644858@l */
/* 8046A53C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8046A540  C0 64 46 54 */	lfs f3, lit_678@l(r4)  /* 0x80644654@l */
/* 8046A544  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8046A548  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046A54C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8046A550  EC 40 20 28 */	fsubs f2, f0, f4
/* 8046A554  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8046A558  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8046A55C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8046A560  EC 00 20 28 */	fsubs f0, f0, f4
/* 8046A564  EC 63 00 32 */	fmuls f3, f3, f0
/* 8046A568  4B FA 1D 99 */	bl Matrix_translate
/* 8046A56C  48 00 00 24 */	b lbl_8046A590
lbl_8046A570:
/* 8046A570  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046A574  3C 80 80 64 */	lis r4, lit_3910@ha /* 0x8064488C@ha */
/* 8046A578  38 A3 45 BC */	addi r5, r3, lit_459@l /* 0x806445BC@l */
/* 8046A57C  C0 44 48 8C */	lfs f2, lit_3910@l(r4)  /* 0x8064488C@l */
/* 8046A580  C0 25 00 00 */	lfs f1, 0(r5)
/* 8046A584  38 60 00 01 */	li r3, 1
/* 8046A588  FC 60 08 90 */	fmr f3, f1
/* 8046A58C  4B FA 1D 75 */	bl Matrix_translate
lbl_8046A590:
/* 8046A590  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8046A594  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8046A598  80 63 00 00 */	lwz r3, 0(r3)
/* 8046A59C  A8 63 16 A2 */	lha r3, 0x16a2(r3)
/* 8046A5A0  7C 60 07 35 */	extsh. r0, r3
/* 8046A5A4  41 82 00 78 */	beq lbl_8046A61C
/* 8046A5A8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8046A5AC  3C 00 43 30 */	lis r0, 0x4330
/* 8046A5B0  3C 80 80 64 */	lis r4, lit_589@ha /* 0x8064463C@ha */
/* 8046A5B4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8046A5B8  38 64 46 3C */	addi r3, r4, lit_589@l /* 0x8064463C@l */
/* 8046A5BC  3C C0 80 64 */	lis r6, kumo_top_pos@ha /* 0x80644874@ha */
/* 8046A5C0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8046A5C4  3C A0 80 64 */	lis r5, kumo_base_pos@ha /* 0x80644868@ha */
/* 8046A5C8  C8 23 00 00 */	lfd f1, 0(r3)
/* 8046A5CC  38 C6 48 74 */	addi r6, r6, kumo_top_pos@l /* 0x80644874@l */
/* 8046A5D0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8046A5D4  38 A5 48 68 */	addi r5, r5, kumo_base_pos@l /* 0x80644868@l */
/* 8046A5D8  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80644654@ha */
/* 8046A5DC  C0 66 00 04 */	lfs f3, 4(r6)
/* 8046A5E0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8046A5E4  C0 24 46 54 */	lfs f1, lit_678@l(r4)  /* 0x80644654@l */
/* 8046A5E8  C0 45 00 04 */	lfs f2, 4(r5)
/* 8046A5EC  3C 80 80 64 */	lis r4, lit_1067@ha /* 0x80644700@ha */
/* 8046A5F0  C0 9D 00 58 */	lfs f4, 0x58(r29)
/* 8046A5F4  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046A5F8  EC 43 10 28 */	fsubs f2, f3, f2
/* 8046A5FC  C0 63 46 0C */	lfs f3, lit_511@l(r3)  /* 0x8064460C@l */
/* 8046A600  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046A604  C0 24 47 00 */	lfs f1, lit_1067@l(r4)  /* 0x80644700@l */
/* 8046A608  38 60 00 01 */	li r3, 1
/* 8046A60C  EC 02 00 28 */	fsubs f0, f2, f0
/* 8046A610  EC 44 00 24 */	fdivs f2, f4, f0
/* 8046A614  4B FA 1D D9 */	bl Matrix_scale
/* 8046A618  48 00 00 54 */	b lbl_8046A66C
lbl_8046A61C:
/* 8046A61C  3C 60 80 64 */	lis r3, kumo_top_pos@ha /* 0x80644874@ha */
/* 8046A620  3C 80 80 64 */	lis r4, kumo_base_pos@ha /* 0x80644868@ha */
/* 8046A624  38 A3 48 74 */	addi r5, r3, kumo_top_pos@l /* 0x80644874@l */
/* 8046A628  C0 5D 00 58 */	lfs f2, 0x58(r29)
/* 8046A62C  38 84 48 68 */	addi r4, r4, kumo_base_pos@l /* 0x80644868@l */
/* 8046A630  C0 25 00 04 */	lfs f1, 4(r5)
/* 8046A634  C0 04 00 04 */	lfs f0, 4(r4)
/* 8046A638  3C 60 80 64 */	lis r3, lit_586@ha /* 0x80644634@ha */
/* 8046A63C  38 83 46 34 */	addi r4, r3, lit_586@l /* 0x80644634@l */
/* 8046A640  3C A0 80 64 */	lis r5, lit_507@ha /* 0x806445EC@ha */
/* 8046A644  EC 21 00 28 */	fsubs f1, f1, f0
/* 8046A648  C0 04 00 00 */	lfs f0, 0(r4)
/* 8046A64C  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046A650  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 8046A654  EC 01 00 28 */	fsubs f0, f1, f0
/* 8046A658  C0 25 45 EC */	lfs f1, lit_507@l(r5)  /* 0x806445EC@l */
/* 8046A65C  C0 64 00 00 */	lfs f3, 0(r4)
/* 8046A660  38 60 00 01 */	li r3, 1
/* 8046A664  EC 42 00 24 */	fdivs f2, f2, f0
/* 8046A668  4B FA 1D 85 */	bl Matrix_scale
lbl_8046A66C:
/* 8046A66C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8046A670  3C A0 43 30 */	lis r5, 0x4330
/* 8046A674  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8046A678  3D 00 80 64 */	lis r8, lit_3590@ha /* 0x80644864@ha */
/* 8046A67C  81 24 00 00 */	lwz r9, 0(r4)
/* 8046A680  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8046A684  38 C3 46 3C */	addi r6, r3, lit_589@l /* 0x8064463C@l */
/* 8046A688  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8046A68C  A8 89 17 4E */	lha r4, 0x174e(r9)
/* 8046A690  3C 60 80 64 */	lis r3, lit_678@ha /* 0x80644654@ha */
/* 8046A694  38 E3 46 54 */	addi r7, r3, lit_678@l /* 0x80644654@l */
/* 8046A698  A8 09 17 50 */	lha r0, 0x1750(r9)
/* 8046A69C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8046A6A0  C8 86 00 00 */	lfd f4, 0(r6)
/* 8046A6A4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8046A6A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8046A6AC  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046A6B0  C0 A7 00 00 */	lfs f5, 0(r7)
/* 8046A6B4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8046A6B8  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 8046A6BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046A6C0  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046A6C4  EC 20 20 28 */	fsubs f1, f0, f4
/* 8046A6C8  39 23 45 BC */	addi r9, r3, lit_459@l /* 0x806445BC@l */
/* 8046A6CC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8046A6D0  38 60 00 01 */	li r3, 1
/* 8046A6D4  C0 C8 48 64 */	lfs f6, lit_3590@l(r8)  /* 0x80644864@l */
/* 8046A6D8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8046A6DC  EC 45 00 72 */	fmuls f2, f5, f1
/* 8046A6E0  C0 64 00 00 */	lfs f3, 0(r4)
/* 8046A6E4  EC 00 20 28 */	fsubs f0, f0, f4
/* 8046A6E8  C0 29 00 00 */	lfs f1, 0(r9)
/* 8046A6EC  EC 46 10 2A */	fadds f2, f6, f2
/* 8046A6F0  EC 05 00 32 */	fmuls f0, f5, f0
/* 8046A6F4  EC 63 00 2A */	fadds f3, f3, f0
/* 8046A6F8  4B FA 1C 09 */	bl Matrix_translate
/* 8046A6FC  38 60 C0 00 */	li r3, -16384
/* 8046A700  38 80 80 00 */	li r4, -32768
/* 8046A704  38 A0 00 00 */	li r5, 0
/* 8046A708  38 C0 00 01 */	li r6, 1
/* 8046A70C  4B FA 22 89 */	bl Matrix_rotateXYZ
/* 8046A710  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 8046A714  38 60 00 01 */	li r3, 1
/* 8046A718  FC 40 08 90 */	fmr f2, f1
/* 8046A71C  FC 60 08 90 */	fmr f3, f1
/* 8046A720  4B FA 1C CD */	bl Matrix_scale
/* 8046A724  83 9F 02 D0 */	lwz r28, 0x2d0(r31)
/* 8046A728  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8046A72C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8046A730  38 7C 00 08 */	addi r3, r28, 8
/* 8046A734  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8046A738  90 1C 00 00 */	stw r0, 0(r28)
/* 8046A73C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8046A740  4B FA 2C 95 */	bl _Matrix_to_Mtx_new
/* 8046A744  90 7C 00 04 */	stw r3, 4(r28)
/* 8046A748  3C 80 01 00 */	lis r4, 0x0100 /* 0x00FF9BFF@ha */
/* 8046A74C  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 8046A750  3C E0 FB 00 */	lis r7, 0xfb00
/* 8046A754  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 8046A758  38 C4 9B FF */	addi r6, r4, 0x9BFF /* 0x00FF9BFF@l */
/* 8046A75C  3C 00 DE 00 */	lis r0, 0xde00
/* 8046A760  38 A3 65 4C */	addi r5, r3, minsect_mdl@l /* 0x8068654C@l */
/* 8046A764  38 88 00 08 */	addi r4, r8, 8
/* 8046A768  7F A3 EB 78 */	mr r3, r29
/* 8046A76C  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 8046A770  7F C4 F3 78 */	mr r4, r30
/* 8046A774  90 E8 00 00 */	stw r7, 0(r8)
/* 8046A778  90 C8 00 04 */	stw r6, 4(r8)
/* 8046A77C  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 8046A780  38 C7 00 08 */	addi r6, r7, 8
/* 8046A784  90 DF 02 D0 */	stw r6, 0x2d0(r31)
/* 8046A788  90 07 00 00 */	stw r0, 0(r7)
/* 8046A78C  80 1D 00 00 */	lwz r0, 0(r29)
/* 8046A790  54 00 10 3A */	slwi r0, r0, 2
/* 8046A794  7C A5 00 2E */	lwzx r5, r5, r0
/* 8046A798  80 05 00 08 */	lwz r0, 8(r5)
/* 8046A79C  90 07 00 04 */	stw r0, 4(r7)
/* 8046A7A0  4B FF 11 91 */	bl minsect_draw_shadow
/* 8046A7A4  39 61 00 30 */	addi r11, r1, 0x30
/* 8046A7A8  4B C3 07 75 */	bl func_8009AF1C
/* 8046A7AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046A7B0  7C 08 03 A6 */	mtlr r0
/* 8046A7B4  38 21 00 30 */	addi r1, r1, 0x30
/* 8046A7B8  4E 80 00 20 */	blr 
