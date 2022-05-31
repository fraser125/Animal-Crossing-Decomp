lbl_803F65A4:
/* 803F65A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F65A8  7C 08 02 A6 */	mflr r0
/* 803F65AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F65B0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 803F65B4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 803F65B8  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 803F65BC  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 803F65C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F65C4  93 C1 00 08 */	stw r30, 8(r1)
/* 803F65C8  88 03 00 98 */	lbz r0, 0x98(r3)
/* 803F65CC  7C 7E 1B 78 */	mr r30, r3
/* 803F65D0  7C 9F 23 78 */	mr r31, r4
/* 803F65D4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 803F65D8  41 82 00 F0 */	beq lbl_803F66C8
/* 803F65DC  A8 1F 00 00 */	lha r0, 0(r31)
/* 803F65E0  2C 00 00 00 */	cmpwi r0, 0
/* 803F65E4  40 82 00 10 */	bne lbl_803F65F4
/* 803F65E8  A8 1F 00 04 */	lha r0, 4(r31)
/* 803F65EC  2C 00 00 00 */	cmpwi r0, 0
/* 803F65F0  41 82 00 D8 */	beq lbl_803F66C8
lbl_803F65F4:
/* 803F65F4  A8 7F 00 04 */	lha r3, 4(r31)
/* 803F65F8  4B FC 44 A5 */	bl cos_s
/* 803F65FC  3C 60 80 64 */	lis r3, data_806433EC@ha /* 0x806433EC@ha */
/* 803F6600  C0 03 33 EC */	lfs f0, data_806433EC@l(r3)  /* 0x806433EC@l */
/* 803F6604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803F6608  4C 41 13 82 */	cror 2, 1, 2
/* 803F660C  40 82 00 10 */	bne lbl_803F661C
/* 803F6610  A8 7F 00 04 */	lha r3, 4(r31)
/* 803F6614  4B FC 44 89 */	bl cos_s
/* 803F6618  48 00 00 10 */	b lbl_803F6628
lbl_803F661C:
/* 803F661C  A8 7F 00 04 */	lha r3, 4(r31)
/* 803F6620  4B FC 44 7D */	bl cos_s
/* 803F6624  FC 20 08 50 */	fneg f1, f1
lbl_803F6628:
/* 803F6628  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 803F662C  C3 DE 00 6C */	lfs f30, 0x6c(r30)
/* 803F6630  EF E0 00 72 */	fmuls f31, f0, f1
/* 803F6634  A8 7F 00 00 */	lha r3, 0(r31)
/* 803F6638  4B FC 44 65 */	bl cos_s
/* 803F663C  3C 60 80 64 */	lis r3, data_806433EC@ha /* 0x806433EC@ha */
/* 803F6640  C0 03 33 EC */	lfs f0, data_806433EC@l(r3)  /* 0x806433EC@l */
/* 803F6644  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803F6648  4C 41 13 82 */	cror 2, 1, 2
/* 803F664C  40 82 00 10 */	bne lbl_803F665C
/* 803F6650  A8 7F 00 00 */	lha r3, 0(r31)
/* 803F6654  4B FC 44 49 */	bl cos_s
/* 803F6658  48 00 00 10 */	b lbl_803F6668
lbl_803F665C:
/* 803F665C  A8 7F 00 00 */	lha r3, 0(r31)
/* 803F6660  4B FC 44 3D */	bl cos_s
/* 803F6664  FC 20 08 50 */	fneg f1, f1
lbl_803F6668:
/* 803F6668  3C 60 80 64 */	lis r3, lit_408@ha /* 0x80643404@ha */
/* 803F666C  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 803F6670  C0 83 34 04 */	lfs f4, lit_408@l(r3)  /* 0x80643404@l */
/* 803F6674  38 60 00 01 */	li r3, 1
/* 803F6678  EC 22 00 72 */	fmuls f1, f2, f1
/* 803F667C  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 803F6680  EC 64 07 F2 */	fmuls f3, f4, f31
/* 803F6684  C0 BE 00 28 */	lfs f5, 0x28(r30)
/* 803F6688  EC 44 07 B2 */	fmuls f2, f4, f30
/* 803F668C  EC 24 00 72 */	fmuls f1, f4, f1
/* 803F6690  EC 03 00 2A */	fadds f0, f3, f0
/* 803F6694  EC 05 00 2A */	fadds f0, f5, f0
/* 803F6698  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 803F669C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 803F66A0  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 803F66A4  EC 02 00 2A */	fadds f0, f2, f0
/* 803F66A8  EC 03 00 2A */	fadds f0, f3, f0
/* 803F66AC  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 803F66B0  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 803F66B4  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 803F66B8  EC 01 00 2A */	fadds f0, f1, f0
/* 803F66BC  EC 02 00 2A */	fadds f0, f2, f0
/* 803F66C0  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 803F66C4  48 00 00 10 */	b lbl_803F66D4
lbl_803F66C8:
/* 803F66C8  7F C3 F3 78 */	mr r3, r30
/* 803F66CC  4B F7 DB 3D */	bl Actor_position_move
/* 803F66D0  38 60 00 00 */	li r3, 0
lbl_803F66D4:
/* 803F66D4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 803F66D8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 803F66DC  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 803F66E0  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 803F66E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F66E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F66EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803F66F0  7C 08 03 A6 */	mtlr r0
/* 803F66F4  38 21 00 30 */	addi r1, r1, 0x30
/* 803F66F8  4E 80 00 20 */	blr 
