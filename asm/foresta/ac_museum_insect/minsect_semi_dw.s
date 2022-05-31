lbl_8045E56C:
/* 8045E56C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8045E570  7C 08 02 A6 */	mflr r0
/* 8045E574  90 01 00 44 */	stw r0, 0x44(r1)
/* 8045E578  39 61 00 40 */	addi r11, r1, 0x40
/* 8045E57C  4B C3 C9 51 */	bl func_8009AECC
/* 8045E580  7C 9D 23 78 */	mr r29, r4
/* 8045E584  7C 7C 1B 78 */	mr r28, r3
/* 8045E588  80 64 00 00 */	lwz r3, 0(r4)
/* 8045E58C  4B F8 6B 7D */	bl _texture_z_light_fog_prim
/* 8045E590  83 FD 00 00 */	lwz r31, 0(r29)
/* 8045E594  38 60 00 00 */	li r3, 0
/* 8045E598  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 8045E59C  C0 5C 00 20 */	lfs f2, 0x20(r28)
/* 8045E5A0  C0 7C 00 24 */	lfs f3, 0x24(r28)
/* 8045E5A4  4B FA DD 5D */	bl Matrix_translate
/* 8045E5A8  A8 7C 00 72 */	lha r3, 0x72(r28)
/* 8045E5AC  38 80 00 00 */	li r4, 0
/* 8045E5B0  38 A0 00 00 */	li r5, 0
/* 8045E5B4  38 C0 00 01 */	li r6, 1
/* 8045E5B8  4B FA E3 DD */	bl Matrix_rotateXYZ
/* 8045E5BC  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 8045E5C0  38 60 00 01 */	li r3, 1
/* 8045E5C4  FC 40 08 90 */	fmr f2, f1
/* 8045E5C8  FC 60 08 90 */	fmr f3, f1
/* 8045E5CC  4B FA DE 21 */	bl Matrix_scale
/* 8045E5D0  A8 7C 00 68 */	lha r3, 0x68(r28)
/* 8045E5D4  38 C0 00 01 */	li r6, 1
/* 8045E5D8  A8 9C 00 6A */	lha r4, 0x6a(r28)
/* 8045E5DC  A8 BC 00 6C */	lha r5, 0x6c(r28)
/* 8045E5E0  4B FA E3 B5 */	bl Matrix_rotateXYZ
/* 8045E5E4  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8045E5E8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8045E5EC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8045E5F0  38 7E 00 08 */	addi r3, r30, 8
/* 8045E5F4  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8045E5F8  90 1E 00 00 */	stw r0, 0(r30)
/* 8045E5FC  80 7D 00 00 */	lwz r3, 0(r29)
/* 8045E600  4B FA ED D5 */	bl _Matrix_to_Mtx_new
/* 8045E604  90 7E 00 04 */	stw r3, 4(r30)
/* 8045E608  3C 80 01 00 */	lis r4, 0x0100 /* 0x00FF9BFF@ha */
/* 8045E60C  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 8045E610  3C A0 FB 00 */	lis r5, 0xfb00
/* 8045E614  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 8045E618  38 84 9B FF */	addi r4, r4, 0x9BFF /* 0x00FF9BFF@l */
/* 8045E61C  3C 00 DE 00 */	lis r0, 0xde00
/* 8045E620  38 63 65 4C */	addi r3, r3, minsect_mdl@l /* 0x8068654C@l */
/* 8045E624  38 C7 00 08 */	addi r6, r7, 8
/* 8045E628  90 DF 02 D0 */	stw r6, 0x2d0(r31)
/* 8045E62C  90 A7 00 00 */	stw r5, 0(r7)
/* 8045E630  90 87 00 04 */	stw r4, 4(r7)
/* 8045E634  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8045E638  38 85 00 08 */	addi r4, r5, 8
/* 8045E63C  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 8045E640  90 05 00 00 */	stw r0, 0(r5)
/* 8045E644  80 1C 00 00 */	lwz r0, 0(r28)
/* 8045E648  54 00 10 3A */	slwi r0, r0, 2
/* 8045E64C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8045E650  80 03 00 00 */	lwz r0, 0(r3)
/* 8045E654  90 05 00 04 */	stw r0, 4(r5)
/* 8045E658  80 7D 00 00 */	lwz r3, 0(r29)
/* 8045E65C  4B F8 6A FD */	bl _texture_z_light_fog_prim_xlu
/* 8045E660  83 FD 00 00 */	lwz r31, 0(r29)
/* 8045E664  3C C0 43 30 */	lis r6, 0x4330
/* 8045E668  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 8045E66C  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8045E670  83 DF 02 E0 */	lwz r30, 0x2e0(r31)
/* 8045E674  38 83 46 3C */	addi r4, r3, lit_589@l /* 0x8064463C@l */
/* 8045E678  3C 00 FB 00 */	lis r0, 0xfb00
/* 8045E67C  3C 60 80 64 */	lis r3, lit_678@ha /* 0x80644654@ha */
/* 8045E680  90 1E 00 00 */	stw r0, 0(r30)
/* 8045E684  39 03 46 54 */	addi r8, r3, lit_678@l /* 0x80644654@l */
/* 8045E688  38 00 FF FF */	li r0, -1
/* 8045E68C  38 E5 61 38 */	addi r7, r5, debug_mode@l /* 0x81166138@l */
/* 8045E690  90 1E 00 04 */	stw r0, 4(r30)
/* 8045E694  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045E698  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 8045E69C  C8 84 00 00 */	lfd f4, 0(r4)
/* 8045E6A0  81 27 00 00 */	lwz r9, 0(r7)
/* 8045E6A4  38 60 00 01 */	li r3, 1
/* 8045E6A8  90 C1 00 08 */	stw r6, 8(r1)
/* 8045E6AC  3B DE 00 08 */	addi r30, r30, 8
/* 8045E6B0  A8 E9 16 96 */	lha r7, 0x1696(r9)
/* 8045E6B4  A8 89 16 98 */	lha r4, 0x1698(r9)
/* 8045E6B8  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 8045E6BC  A8 09 16 9A */	lha r0, 0x169a(r9)
/* 8045E6C0  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8045E6C4  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8045E6C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8045E6CC  C0 A8 00 00 */	lfs f5, 0(r8)
/* 8045E6D0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8045E6D4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8045E6D8  EC 20 20 28 */	fsubs f1, f0, f4
/* 8045E6DC  C0 DC 00 58 */	lfs f6, 0x58(r28)
/* 8045E6E0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8045E6E4  C0 65 00 00 */	lfs f3, 0(r5)
/* 8045E6E8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8045E6EC  EC 25 00 72 */	fmuls f1, f5, f1
/* 8045E6F0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8045E6F4  EC 40 20 28 */	fsubs f2, f0, f4
/* 8045E6F8  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8045E6FC  EC 26 08 2A */	fadds f1, f6, f1
/* 8045E700  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8045E704  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8045E708  EC 00 20 28 */	fsubs f0, f0, f4
/* 8045E70C  EC 43 10 2A */	fadds f2, f3, f2
/* 8045E710  EC 05 00 32 */	fmuls f0, f5, f0
/* 8045E714  EC 63 00 2A */	fadds f3, f3, f0
/* 8045E718  4B FA DC D5 */	bl Matrix_scale
/* 8045E71C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8045E720  7F DB F3 78 */	mr r27, r30
/* 8045E724  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8045E728  90 1E 00 00 */	stw r0, 0(r30)
/* 8045E72C  3B DE 00 08 */	addi r30, r30, 8
/* 8045E730  80 7D 00 00 */	lwz r3, 0(r29)
/* 8045E734  4B FA EC A1 */	bl _Matrix_to_Mtx_new
/* 8045E738  90 7B 00 04 */	stw r3, 4(r27)
/* 8045E73C  7F C4 F3 78 */	mr r4, r30
/* 8045E740  3C 00 DE 00 */	lis r0, 0xde00
/* 8045E744  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 8045E748  90 1E 00 00 */	stw r0, 0(r30)
/* 8045E74C  38 63 65 4C */	addi r3, r3, minsect_mdl@l /* 0x8068654C@l */
/* 8045E750  3B DE 00 08 */	addi r30, r30, 8
/* 8045E754  80 1C 00 00 */	lwz r0, 0(r28)
/* 8045E758  54 00 10 3A */	slwi r0, r0, 2
/* 8045E75C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8045E760  80 03 00 04 */	lwz r0, 4(r3)
/* 8045E764  90 04 00 04 */	stw r0, 4(r4)
/* 8045E768  93 DF 02 E0 */	stw r30, 0x2e0(r31)
/* 8045E76C  39 61 00 40 */	addi r11, r1, 0x40
/* 8045E770  4B C3 C7 A9 */	bl func_8009AF18
/* 8045E774  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8045E778  7C 08 03 A6 */	mtlr r0
/* 8045E77C  38 21 00 40 */	addi r1, r1, 0x40
/* 8045E780  4E 80 00 20 */	blr 
