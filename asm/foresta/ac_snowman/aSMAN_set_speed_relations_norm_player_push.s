lbl_804A4498:
/* 804A4498  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A449C  7C 08 02 A6 */	mflr r0
/* 804A44A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A44A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A44A8  7C 7F 1B 78 */	mr r31, r3
/* 804A44AC  7C 83 23 78 */	mr r3, r4
/* 804A44B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804A44B4  4B F3 51 8D */	bl get_player_actor_withoutCheck
/* 804A44B8  A8 63 00 36 */	lha r3, 0x36(r3)
/* 804A44BC  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 804A44C0  7C 63 00 51 */	subf. r3, r3, r0
/* 804A44C4  7C 03 00 D0 */	neg r0, r3
/* 804A44C8  41 80 00 08 */	blt lbl_804A44D0
/* 804A44CC  7C 60 1B 78 */	mr r0, r3
lbl_804A44D0:
/* 804A44D0  7F E3 FB 78 */	mr r3, r31
/* 804A44D4  7C 1E 07 34 */	extsh r30, r0
/* 804A44D8  38 81 00 0C */	addi r4, r1, 0xc
/* 804A44DC  38 BF 00 28 */	addi r5, r31, 0x28
/* 804A44E0  4B FF FA 35 */	bl aSMAN_get_ground_norm
/* 804A44E4  2C 03 00 00 */	cmpwi r3, 0
/* 804A44E8  41 82 01 00 */	beq lbl_804A45E8
/* 804A44EC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804A44F0  3C 60 80 64 */	lis r3, lit_784@ha /* 0x80645D10@ha */
/* 804A44F4  C0 23 5D 10 */	lfs f1, lit_784@l(r3)  /* 0x80645D10@l */
/* 804A44F8  FC 00 02 10 */	fabs f0, f0
/* 804A44FC  FC 00 00 18 */	frsp f0, f0
/* 804A4500  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A4504  40 80 00 18 */	bge lbl_804A451C
/* 804A4508  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804A450C  FC 00 02 10 */	fabs f0, f0
/* 804A4510  FC 00 00 18 */	frsp f0, f0
/* 804A4514  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A4518  41 80 00 D0 */	blt lbl_804A45E8
lbl_804A451C:
/* 804A451C  2C 1E 40 00 */	cmpwi r30, 0x4000
/* 804A4520  40 80 00 A4 */	bge lbl_804A45C4
/* 804A4524  3C 60 80 64 */	lis r3, lit_812@ha /* 0x80645D18@ha */
/* 804A4528  3C A0 80 64 */	lis r5, lit_811@ha /* 0x80645D14@ha */
/* 804A452C  38 83 5D 18 */	addi r4, r3, lit_812@l /* 0x80645D18@l */
/* 804A4530  C0 85 5D 14 */	lfs f4, lit_811@l(r5)  /* 0x80645D14@l */
/* 804A4534  C0 24 00 00 */	lfs f1, 0(r4)
/* 804A4538  3C 60 80 64 */	lis r3, lit_639@ha /* 0x80645CB0@ha */
/* 804A453C  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 804A4540  38 83 5C B0 */	addi r4, r3, lit_639@l /* 0x80645CB0@l */
/* 804A4544  C0 44 00 00 */	lfs f2, 0(r4)
/* 804A4548  38 7F 00 68 */	addi r3, r31, 0x68
/* 804A454C  EC 61 00 32 */	fmuls f3, f1, f0
/* 804A4550  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804A4554  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 804A4558  38 81 00 08 */	addi r4, r1, 8
/* 804A455C  38 BF 00 36 */	addi r5, r31, 0x36
/* 804A4560  EC 64 18 2A */	fadds f3, f4, f3
/* 804A4564  EC 63 00 B2 */	fmuls f3, f3, f2
/* 804A4568  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804A456C  EC 01 00 2A */	fadds f0, f1, f0
/* 804A4570  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 804A4574  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804A4578  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804A457C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804A4580  EC 01 00 2A */	fadds f0, f1, f0
/* 804A4584  D0 1F 00 70 */	stfs f0, 0x70(r31)
/* 804A4588  4B F5 1F 01 */	bl func_803F6488
/* 804A458C  3C 60 80 64 */	lis r3, lit_813@ha /* 0x80645D1C@ha */
/* 804A4590  3C 80 80 64 */	lis r4, lit_473@ha /* 0x80645CA0@ha */
/* 804A4594  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 804A4598  C0 23 5D 1C */	lfs f1, lit_813@l(r3)  /* 0x80645D1C@l */
/* 804A459C  C0 61 00 08 */	lfs f3, 8(r1)
/* 804A45A0  EC 21 00 32 */	fmuls f1, f1, f0
/* 804A45A4  C0 44 5C A0 */	lfs f2, lit_473@l(r4)  /* 0x80645CA0@l */
/* 804A45A8  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 804A45AC  EC 22 08 2A */	fadds f1, f2, f1
/* 804A45B0  EC 00 18 28 */	fsubs f0, f0, f3
/* 804A45B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A45B8  EC 03 00 2A */	fadds f0, f3, f0
/* 804A45BC  D0 1F 01 C4 */	stfs f0, 0x1c4(r31)
/* 804A45C0  48 00 00 28 */	b lbl_804A45E8
lbl_804A45C4:
/* 804A45C4  3C 60 80 64 */	lis r3, lit_680@ha /* 0x80645CD8@ha */
/* 804A45C8  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 804A45CC  C0 03 5C D8 */	lfs f0, lit_680@l(r3)  /* 0x80645CD8@l */
/* 804A45D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A45D4  40 81 00 14 */	ble lbl_804A45E8
/* 804A45D8  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A45DC  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A45E0  D0 1F 01 C4 */	stfs f0, 0x1c4(r31)
/* 804A45E4  D0 1F 01 C8 */	stfs f0, 0x1c8(r31)
lbl_804A45E8:
/* 804A45E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A45EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A45F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804A45F4  7C 08 03 A6 */	mtlr r0
/* 804A45F8  38 21 00 20 */	addi r1, r1, 0x20
/* 804A45FC  4E 80 00 20 */	blr 
