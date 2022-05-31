lbl_8060E248:
/* 8060E248  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8060E24C  7C 08 02 A6 */	mflr r0
/* 8060E250  90 01 00 64 */	stw r0, 0x64(r1)
/* 8060E254  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8060E258  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8060E25C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8060E260  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8060E264  39 61 00 40 */	addi r11, r1, 0x40
/* 8060E268  4B A8 CC 69 */	bl func_8009AED0
/* 8060E26C  7C 7F 1B 78 */	mr r31, r3
/* 8060E270  7C 9D 23 78 */	mr r29, r4
/* 8060E274  A8 03 00 00 */	lha r0, 0(r3)
/* 8060E278  A8 63 00 4C */	lha r3, 0x4c(r3)
/* 8060E27C  20 00 00 6E */	subfic r0, r0, 0x6e
/* 8060E280  7C 1E 07 34 */	extsh r30, r0
/* 8060E284  4B DA C8 6D */	bl sin_s
/* 8060E288  3C 60 80 65 */	lis r3, lit_424@ha /* 0x8064C180@ha */
/* 8060E28C  3C 80 80 65 */	lis r4, lit_470@ha /* 0x8064C1A4@ha */
/* 8060E290  38 A3 C1 80 */	addi r5, r3, lit_424@l /* 0x8064C180@l */
/* 8060E294  C0 05 00 00 */	lfs f0, 0(r5)
/* 8060E298  3C 60 80 65 */	lis r3, lit_469@ha /* 0x8064C1A0@ha */
/* 8060E29C  38 C3 C1 A0 */	addi r6, r3, lit_469@l /* 0x8064C1A0@l */
/* 8060E2A0  3C A0 80 65 */	lis r5, lit_385@ha /* 0x8064C158@ha */
/* 8060E2A4  EC 20 08 2A */	fadds f1, f0, f1
/* 8060E2A8  C0 04 C1 A4 */	lfs f0, lit_470@l(r4)  /* 0x8064C1A4@l */
/* 8060E2AC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060E2B0  3C 80 80 65 */	lis r4, lit_468@ha /* 0x8064C19C@ha */
/* 8060E2B4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8060E2B8  EC 20 00 72 */	fmuls f1, f0, f1
/* 8060E2BC  C0 06 00 00 */	lfs f0, 0(r6)
/* 8060E2C0  3F 83 00 02 */	addis r28, r3, 2
/* 8060E2C4  38 C4 C1 9C */	addi r6, r4, lit_468@l /* 0x8064C19C@l */
/* 8060E2C8  80 7C 60 9C */	lwz r3, 0x609c(r28)
/* 8060E2CC  EC 40 00 72 */	fmuls f2, f0, f1
/* 8060E2D0  C0 06 00 00 */	lfs f0, 0(r6)
/* 8060E2D4  3C 80 80 65 */	lis r4, data_8064C154@ha /* 0x8064C154@ha */
/* 8060E2D8  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8060E2DC  7F C3 F3 78 */	mr r3, r30
/* 8060E2E0  EF C0 10 2A */	fadds f30, f0, f2
/* 8060E2E4  C0 25 C1 58 */	lfs f1, lit_385@l(r5)  /* 0x8064C158@l */
/* 8060E2E8  38 A0 00 6D */	li r5, 0x6d
/* 8060E2EC  C0 44 C1 54 */	lfs f2, data_8064C154@l(r4)  /* 0x8064C154@l */
/* 8060E2F0  38 80 00 00 */	li r4, 0
/* 8060E2F4  7D 89 03 A6 */	mtctr r12
/* 8060E2F8  4E 80 04 21 */	bctrl 
/* 8060E2FC  80 7C 60 9C */	lwz r3, 0x609c(r28)
/* 8060E300  3C 80 80 6D */	lis r4, eHanabiBotan2_morph_data_out@ha /* 0x806D267C@ha */
/* 8060E304  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8060E308  38 84 26 7C */	addi r4, r4, eHanabiBotan2_morph_data_out@l /* 0x806D267C@l */
/* 8060E30C  81 83 00 2C */	lwz r12, 0x2c(r3)
/* 8060E310  7F C5 F3 78 */	mr r5, r30
/* 8060E314  EF E0 08 2A */	fadds f31, f0, f1
/* 8060E318  38 61 00 14 */	addi r3, r1, 0x14
/* 8060E31C  7D 89 03 A6 */	mtctr r12
/* 8060E320  4E 80 04 21 */	bctrl 
/* 8060E324  80 7C 60 9C */	lwz r3, 0x609c(r28)
/* 8060E328  3C 80 80 6D */	lis r4, eHanabiBotan2_morph_data_in@ha /* 0x806D26E8@ha */
/* 8060E32C  38 84 26 E8 */	addi r4, r4, eHanabiBotan2_morph_data_in@l /* 0x806D26E8@l */
/* 8060E330  7F C5 F3 78 */	mr r5, r30
/* 8060E334  81 83 00 2C */	lwz r12, 0x2c(r3)
/* 8060E338  38 61 00 08 */	addi r3, r1, 8
/* 8060E33C  7D 89 03 A6 */	mtctr r12
/* 8060E340  4E 80 04 21 */	bctrl 
/* 8060E344  83 DD 00 00 */	lwz r30, 0(r29)
/* 8060E348  7F C3 F3 78 */	mr r3, r30
/* 8060E34C  4B DD 6E 0D */	bl _texture_z_light_fog_prim_xlu
/* 8060E350  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8060E354  38 60 00 00 */	li r3, 0
/* 8060E358  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8060E35C  C0 9F 00 14 */	lfs f4, 0x14(r31)
/* 8060E360  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 8060E364  EC 21 00 2A */	fadds f1, f1, f0
/* 8060E368  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 8060E36C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8060E370  EC 44 10 2A */	fadds f2, f4, f2
/* 8060E374  EC 63 00 2A */	fadds f3, f3, f0
/* 8060E378  4B DF DF 89 */	bl Matrix_translate
/* 8060E37C  38 60 C0 00 */	li r3, -16384
/* 8060E380  38 80 00 01 */	li r4, 1
/* 8060E384  4B DF E1 35 */	bl Matrix_RotateX
/* 8060E388  A8 1F 00 4E */	lha r0, 0x4e(r31)
/* 8060E38C  38 80 00 01 */	li r4, 1
/* 8060E390  7C 00 00 D0 */	neg r0, r0
/* 8060E394  7C 03 07 34 */	extsh r3, r0
/* 8060E398  4B DF E4 59 */	bl Matrix_RotateZ
/* 8060E39C  3C 60 80 65 */	lis r3, lit_424@ha /* 0x8064C180@ha */
/* 8060E3A0  FC 20 F0 90 */	fmr f1, f30
/* 8060E3A4  38 83 C1 80 */	addi r4, r3, lit_424@l /* 0x8064C180@l */
/* 8060E3A8  38 60 00 01 */	li r3, 1
/* 8060E3AC  C0 44 00 00 */	lfs f2, 0(r4)
/* 8060E3B0  FC 60 10 90 */	fmr f3, f2
/* 8060E3B4  4B DF E0 39 */	bl Matrix_scale
/* 8060E3B8  A8 7F 00 4E */	lha r3, 0x4e(r31)
/* 8060E3BC  38 80 00 01 */	li r4, 1
/* 8060E3C0  4B DF E4 31 */	bl Matrix_RotateZ
/* 8060E3C4  4B DF DE 11 */	bl Matrix_push
/* 8060E3C8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8060E3CC  3C 00 43 30 */	lis r0, 0x4330
/* 8060E3D0  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8060E3D4  3C A0 80 65 */	lis r5, data_8064C154@ha /* 0x8064C154@ha */
/* 8060E3D8  80 84 00 00 */	lwz r4, 0(r4)
/* 8060E3DC  3C 60 80 65 */	lis r3, lit_473@ha /* 0x8064C1AC@ha */
/* 8060E3E0  C8 23 C1 AC */	lfd f1, lit_473@l(r3)  /* 0x8064C1AC@l */
/* 8060E3E4  3C C0 80 65 */	lis r6, lit_424@ha /* 0x8064C180@ha */
/* 8060E3E8  A8 84 19 0A */	lha r4, 0x190a(r4)
/* 8060E3EC  38 60 00 01 */	li r3, 1
/* 8060E3F0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8060E3F4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8060E3F8  C0 45 C1 54 */	lfs f2, data_8064C154@l(r5)  /* 0x8064C154@l */
/* 8060E3FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060E400  C0 66 C1 80 */	lfs f3, lit_424@l(r6)  /* 0x8064C180@l */
/* 8060E404  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8060E408  EC 00 08 28 */	fsubs f0, f0, f1
/* 8060E40C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8060E410  EC 03 00 2A */	fadds f0, f3, f0
/* 8060E414  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8060E418  FC 40 08 90 */	fmr f2, f1
/* 8060E41C  FC 60 08 90 */	fmr f3, f1
/* 8060E420  4B DF DF CD */	bl Matrix_scale
/* 8060E424  83 9E 02 E0 */	lwz r28, 0x2e0(r30)
/* 8060E428  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8060E42C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8060E430  38 7C 00 08 */	addi r3, r28, 8
/* 8060E434  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8060E438  90 1C 00 00 */	stw r0, 0(r28)
/* 8060E43C  80 7D 00 00 */	lwz r3, 0(r29)
/* 8060E440  4B DF EF 95 */	bl _Matrix_to_Mtx_new
/* 8060E444  90 7C 00 04 */	stw r3, 4(r28)
/* 8060E448  3C 60 80 CB */	lis r3, ef_hanabi_b_00_modelT@ha /* 0x80CB3FA0@ha */
/* 8060E44C  3B E3 3F A0 */	addi r31, r3, ef_hanabi_b_00_modelT@l /* 0x80CB3FA0@l */
/* 8060E450  3C 80 FB 00 */	lis r4, 0xfb00
/* 8060E454  81 1E 02 E0 */	lwz r8, 0x2e0(r30)
/* 8060E458  3C 00 DE 00 */	lis r0, 0xde00
/* 8060E45C  38 68 00 08 */	addi r3, r8, 8
/* 8060E460  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8060E464  88 61 00 18 */	lbz r3, 0x18(r1)
/* 8060E468  64 63 FA 00 */	oris r3, r3, 0xfa00
/* 8060E46C  90 68 00 00 */	stw r3, 0(r8)
/* 8060E470  88 61 00 15 */	lbz r3, 0x15(r1)
/* 8060E474  88 A1 00 14 */	lbz r5, 0x14(r1)
/* 8060E478  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 8060E47C  88 C1 00 16 */	lbz r6, 0x16(r1)
/* 8060E480  50 A3 C0 0E */	rlwimi r3, r5, 0x18, 0, 7
/* 8060E484  88 E1 00 17 */	lbz r7, 0x17(r1)
/* 8060E488  50 C3 44 2E */	rlwimi r3, r6, 8, 0x10, 0x17
/* 8060E48C  50 E3 06 3E */	rlwimi r3, r7, 0, 0x18, 0x1f
/* 8060E490  90 68 00 04 */	stw r3, 4(r8)
/* 8060E494  80 FE 02 E0 */	lwz r7, 0x2e0(r30)
/* 8060E498  38 67 00 08 */	addi r3, r7, 8
/* 8060E49C  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8060E4A0  90 87 00 00 */	stw r4, 0(r7)
/* 8060E4A4  88 61 00 1A */	lbz r3, 0x1a(r1)
/* 8060E4A8  88 81 00 19 */	lbz r4, 0x19(r1)
/* 8060E4AC  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 8060E4B0  88 A1 00 1B */	lbz r5, 0x1b(r1)
/* 8060E4B4  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 8060E4B8  88 C1 00 1C */	lbz r6, 0x1c(r1)
/* 8060E4BC  50 A3 44 2E */	rlwimi r3, r5, 8, 0x10, 0x17
/* 8060E4C0  50 C3 06 3E */	rlwimi r3, r6, 0, 0x18, 0x1f
/* 8060E4C4  90 67 00 04 */	stw r3, 4(r7)
/* 8060E4C8  80 9E 02 E0 */	lwz r4, 0x2e0(r30)
/* 8060E4CC  38 64 00 08 */	addi r3, r4, 8
/* 8060E4D0  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8060E4D4  90 04 00 00 */	stw r0, 0(r4)
/* 8060E4D8  93 E4 00 04 */	stw r31, 4(r4)
/* 8060E4DC  4B DF DD 39 */	bl Matrix_pull
/* 8060E4E0  3C 80 80 65 */	lis r4, lit_471@ha /* 0x8064C1A8@ha */
/* 8060E4E4  38 60 00 01 */	li r3, 1
/* 8060E4E8  C0 04 C1 A8 */	lfs f0, lit_471@l(r4)  /* 0x8064C1A8@l */
/* 8060E4EC  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8060E4F0  FC 40 08 90 */	fmr f2, f1
/* 8060E4F4  FC 60 08 90 */	fmr f3, f1
/* 8060E4F8  4B DF DE F5 */	bl Matrix_scale
/* 8060E4FC  80 FE 02 E0 */	lwz r7, 0x2e0(r30)
/* 8060E500  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8060E504  3C A0 E7 00 */	lis r5, 0xe700
/* 8060E508  38 80 00 00 */	li r4, 0
/* 8060E50C  38 C7 00 08 */	addi r6, r7, 8
/* 8060E510  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8060E514  90 DE 02 E0 */	stw r6, 0x2e0(r30)
/* 8060E518  90 A7 00 00 */	stw r5, 0(r7)
/* 8060E51C  90 87 00 04 */	stw r4, 4(r7)
/* 8060E520  83 9E 02 E0 */	lwz r28, 0x2e0(r30)
/* 8060E524  38 7C 00 08 */	addi r3, r28, 8
/* 8060E528  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8060E52C  90 1C 00 00 */	stw r0, 0(r28)
/* 8060E530  80 7D 00 00 */	lwz r3, 0(r29)
/* 8060E534  4B DF EE A1 */	bl _Matrix_to_Mtx_new
/* 8060E538  90 7C 00 04 */	stw r3, 4(r28)
/* 8060E53C  3C 60 FB 00 */	lis r3, 0xfb00
/* 8060E540  3C 00 DE 00 */	lis r0, 0xde00
/* 8060E544  81 1E 02 E0 */	lwz r8, 0x2e0(r30)
/* 8060E548  38 88 00 08 */	addi r4, r8, 8
/* 8060E54C  90 9E 02 E0 */	stw r4, 0x2e0(r30)
/* 8060E550  88 81 00 0C */	lbz r4, 0xc(r1)
/* 8060E554  64 84 FA 00 */	oris r4, r4, 0xfa00
/* 8060E558  90 88 00 00 */	stw r4, 0(r8)
/* 8060E55C  88 81 00 09 */	lbz r4, 9(r1)
/* 8060E560  88 A1 00 08 */	lbz r5, 8(r1)
/* 8060E564  54 84 82 1E */	rlwinm r4, r4, 0x10, 8, 0xf
/* 8060E568  88 C1 00 0A */	lbz r6, 0xa(r1)
/* 8060E56C  50 A4 C0 0E */	rlwimi r4, r5, 0x18, 0, 7
/* 8060E570  88 E1 00 0B */	lbz r7, 0xb(r1)
/* 8060E574  50 C4 44 2E */	rlwimi r4, r6, 8, 0x10, 0x17
/* 8060E578  50 E4 06 3E */	rlwimi r4, r7, 0, 0x18, 0x1f
/* 8060E57C  90 88 00 04 */	stw r4, 4(r8)
/* 8060E580  80 FE 02 E0 */	lwz r7, 0x2e0(r30)
/* 8060E584  38 87 00 08 */	addi r4, r7, 8
/* 8060E588  90 9E 02 E0 */	stw r4, 0x2e0(r30)
/* 8060E58C  90 67 00 00 */	stw r3, 0(r7)
/* 8060E590  88 61 00 0E */	lbz r3, 0xe(r1)
/* 8060E594  88 81 00 0D */	lbz r4, 0xd(r1)
/* 8060E598  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 8060E59C  88 A1 00 0F */	lbz r5, 0xf(r1)
/* 8060E5A0  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 8060E5A4  88 C1 00 10 */	lbz r6, 0x10(r1)
/* 8060E5A8  50 A3 44 2E */	rlwimi r3, r5, 8, 0x10, 0x17
/* 8060E5AC  50 C3 06 3E */	rlwimi r3, r6, 0, 0x18, 0x1f
/* 8060E5B0  90 67 00 04 */	stw r3, 4(r7)
/* 8060E5B4  80 9E 02 E0 */	lwz r4, 0x2e0(r30)
/* 8060E5B8  38 64 00 08 */	addi r3, r4, 8
/* 8060E5BC  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8060E5C0  90 04 00 00 */	stw r0, 0(r4)
/* 8060E5C4  93 E4 00 04 */	stw r31, 4(r4)
/* 8060E5C8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8060E5CC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8060E5D0  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8060E5D4  39 61 00 40 */	addi r11, r1, 0x40
/* 8060E5D8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8060E5DC  4B A8 C9 41 */	bl func_8009AF1C
/* 8060E5E0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8060E5E4  7C 08 03 A6 */	mtlr r0
/* 8060E5E8  38 21 00 60 */	addi r1, r1, 0x60
/* 8060E5EC  4E 80 00 20 */	blr 
