lbl_8046E3CC:
/* 8046E3CC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8046E3D0  7C 08 02 A6 */	mflr r0
/* 8046E3D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8046E3D8  39 61 00 40 */	addi r11, r1, 0x40
/* 8046E3DC  4B C2 CA F5 */	bl func_8009AED0
/* 8046E3E0  7C 7D 1B 78 */	mr r29, r3
/* 8046E3E4  3C 60 80 47 */	lis r3, okera_dig_wait_process@ha /* 0x8046E1B0@ha */
/* 8046E3E8  80 BD 00 04 */	lwz r5, 4(r29)
/* 8046E3EC  38 03 E1 B0 */	addi r0, r3, okera_dig_wait_process@l /* 0x8046E1B0@l */
/* 8046E3F0  7C 9E 23 78 */	mr r30, r4
/* 8046E3F4  7C 05 00 40 */	cmplw r5, r0
/* 8046E3F8  41 82 01 84 */	beq lbl_8046E57C
/* 8046E3FC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8046E400  4B F7 6D 09 */	bl _texture_z_light_fog_prim
/* 8046E404  83 FE 00 00 */	lwz r31, 0(r30)
/* 8046E408  38 60 00 00 */	li r3, 0
/* 8046E40C  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 8046E410  C0 5D 00 20 */	lfs f2, 0x20(r29)
/* 8046E414  C0 7D 00 24 */	lfs f3, 0x24(r29)
/* 8046E418  4B F9 DE E9 */	bl Matrix_translate
/* 8046E41C  A8 7D 00 76 */	lha r3, 0x76(r29)
/* 8046E420  4B F4 C6 D1 */	bl sin_s
/* 8046E424  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8046E428  3C 00 43 30 */	lis r0, 0x4330
/* 8046E42C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8046E430  3C E0 80 64 */	lis r7, lit_505@ha /* 0x806445E4@ha */
/* 8046E434  80 A4 00 00 */	lwz r5, 0(r4)
/* 8046E438  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8046E43C  38 83 46 3C */	addi r4, r3, lit_589@l /* 0x8064463C@l */
/* 8046E440  90 01 00 08 */	stw r0, 8(r1)
/* 8046E444  A8 65 1B 1C */	lha r3, 0x1b1c(r5)
/* 8046E448  3C C0 80 64 */	lis r6, lit_461@ha /* 0x806445C4@ha */
/* 8046E44C  38 A6 45 C4 */	addi r5, r6, lit_461@l /* 0x806445C4@l */
/* 8046E450  90 01 00 18 */	stw r0, 0x18(r1)
/* 8046E454  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8046E458  C0 65 00 00 */	lfs f3, 0(r5)
/* 8046E45C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8046E460  38 C0 00 01 */	li r6, 1
/* 8046E464  C8 44 00 00 */	lfd f2, 0(r4)
/* 8046E468  C8 01 00 08 */	lfd f0, 8(r1)
/* 8046E46C  C0 87 45 E4 */	lfs f4, lit_505@l(r7)  /* 0x806445E4@l */
/* 8046E470  EC 00 10 28 */	fsubs f0, f0, f2
/* 8046E474  A8 1D 00 6A */	lha r0, 0x6a(r29)
/* 8046E478  A8 7D 00 68 */	lha r3, 0x68(r29)
/* 8046E47C  A8 BD 00 6C */	lha r5, 0x6c(r29)
/* 8046E480  EC 03 00 2A */	fadds f0, f3, f0
/* 8046E484  EC 04 00 32 */	fmuls f0, f4, f0
/* 8046E488  FC 00 00 1E */	fctiwz f0, f0
/* 8046E48C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8046E490  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8046E494  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8046E498  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8046E49C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8046E4A0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8046E4A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046E4A8  FC 00 00 1E */	fctiwz f0, f0
/* 8046E4AC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046E4B0  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8046E4B4  7C 00 22 14 */	add r0, r0, r4
/* 8046E4B8  7C 04 07 34 */	extsh r4, r0
/* 8046E4BC  4B F9 E4 D9 */	bl Matrix_rotateXYZ
/* 8046E4C0  A8 7D 00 78 */	lha r3, 0x78(r29)
/* 8046E4C4  38 80 00 00 */	li r4, 0
/* 8046E4C8  38 A0 00 00 */	li r5, 0
/* 8046E4CC  38 C0 00 01 */	li r6, 1
/* 8046E4D0  4B F9 E4 C5 */	bl Matrix_rotateXYZ
/* 8046E4D4  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 8046E4D8  38 60 00 01 */	li r3, 1
/* 8046E4DC  FC 40 08 90 */	fmr f2, f1
/* 8046E4E0  FC 60 08 90 */	fmr f3, f1
/* 8046E4E4  4B F9 DF 09 */	bl Matrix_scale
/* 8046E4E8  83 9F 02 D0 */	lwz r28, 0x2d0(r31)
/* 8046E4EC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8046E4F0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8046E4F4  38 7C 00 08 */	addi r3, r28, 8
/* 8046E4F8  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8046E4FC  90 1C 00 00 */	stw r0, 0(r28)
/* 8046E500  80 7E 00 00 */	lwz r3, 0(r30)
/* 8046E504  4B F9 EE D1 */	bl _Matrix_to_Mtx_new
/* 8046E508  90 7C 00 04 */	stw r3, 4(r28)
/* 8046E50C  3C A0 01 00 */	lis r5, 0x0100 /* 0x00FF9BFF@ha */
/* 8046E510  3C 80 80 68 */	lis r4, minsect_mdl@ha /* 0x8068654C@ha */
/* 8046E514  3C 60 80 47 */	lis r3, okera_dig_down_process@ha /* 0x8046DEFC@ha */
/* 8046E518  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 8046E51C  3C E0 FB 00 */	lis r7, 0xfb00
/* 8046E520  38 C5 9B FF */	addi r6, r5, 0x9BFF /* 0x00FF9BFF@l */
/* 8046E524  3C A0 DE 00 */	lis r5, 0xde00
/* 8046E528  38 08 00 08 */	addi r0, r8, 8
/* 8046E52C  38 84 65 4C */	addi r4, r4, minsect_mdl@l /* 0x8068654C@l */
/* 8046E530  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8046E534  38 03 DE FC */	addi r0, r3, okera_dig_down_process@l /* 0x8046DEFC@l */
/* 8046E538  90 E8 00 00 */	stw r7, 0(r8)
/* 8046E53C  90 C8 00 04 */	stw r6, 4(r8)
/* 8046E540  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 8046E544  38 66 00 08 */	addi r3, r6, 8
/* 8046E548  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8046E54C  90 A6 00 00 */	stw r5, 0(r6)
/* 8046E550  80 7D 00 00 */	lwz r3, 0(r29)
/* 8046E554  54 63 10 3A */	slwi r3, r3, 2
/* 8046E558  7C 64 18 2E */	lwzx r3, r4, r3
/* 8046E55C  80 63 00 00 */	lwz r3, 0(r3)
/* 8046E560  90 66 00 04 */	stw r3, 4(r6)
/* 8046E564  80 7D 00 04 */	lwz r3, 4(r29)
/* 8046E568  7C 03 00 40 */	cmplw r3, r0
/* 8046E56C  41 82 00 10 */	beq lbl_8046E57C
/* 8046E570  7F A3 EB 78 */	mr r3, r29
/* 8046E574  7F C4 F3 78 */	mr r4, r30
/* 8046E578  4B FE D3 B9 */	bl minsect_draw_shadow
lbl_8046E57C:
/* 8046E57C  39 61 00 40 */	addi r11, r1, 0x40
/* 8046E580  4B C2 C9 9D */	bl func_8009AF1C
/* 8046E584  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8046E588  7C 08 03 A6 */	mtlr r0
/* 8046E58C  38 21 00 40 */	addi r1, r1, 0x40
/* 8046E590  4E 80 00 20 */	blr 
