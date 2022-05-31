lbl_804A61BC:
/* 804A61BC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804A61C0  7C 08 02 A6 */	mflr r0
/* 804A61C4  90 01 00 44 */	stw r0, 0x44(r1)
/* 804A61C8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804A61CC  7C 9F 23 78 */	mr r31, r4
/* 804A61D0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804A61D4  7C 7E 1B 78 */	mr r30, r3
/* 804A61D8  4B FF EF 61 */	bl aSMAN_set_speed_relations_swim
/* 804A61DC  3C 60 80 64 */	lis r3, lit_1304@ha /* 0x80645D8C@ha */
/* 804A61E0  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 804A61E4  C0 03 5D 8C */	lfs f0, lit_1304@l(r3)  /* 0x80645D8C@l */
/* 804A61E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A61EC  40 80 00 14 */	bge lbl_804A6200
/* 804A61F0  7F C3 F3 78 */	mr r3, r30
/* 804A61F4  4B EC E2 4D */	bl Actor_delete
/* 804A61F8  38 60 00 00 */	li r3, 0
/* 804A61FC  48 00 01 90 */	b lbl_804A638C
lbl_804A6200:
/* 804A6200  3C 80 80 64 */	lis r4, lit_1305@ha /* 0x80645D90@ha */
/* 804A6204  38 7E 00 5C */	addi r3, r30, 0x5c
/* 804A6208  C0 24 5D 90 */	lfs f1, lit_1305@l(r4)  /* 0x80645D90@l */
/* 804A620C  4B F1 4D A1 */	bl xyz_t_mult_v
/* 804A6210  3C 80 80 64 */	lis r4, lit_473@ha /* 0x80645CA0@ha */
/* 804A6214  3C 60 80 64 */	lis r3, lit_813@ha /* 0x80645D1C@ha */
/* 804A6218  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 804A621C  C0 44 5C A0 */	lfs f2, lit_473@l(r4)  /* 0x80645CA0@l */
/* 804A6220  C0 03 5D 1C */	lfs f0, lit_813@l(r3)  /* 0x80645D1C@l */
/* 804A6224  EC 21 10 28 */	fsubs f1, f1, f2
/* 804A6228  EC 01 00 24 */	fdivs f0, f1, f0
/* 804A622C  D0 1E 01 D0 */	stfs f0, 0x1d0(r30)
/* 804A6230  C0 7E 00 5C */	lfs f3, 0x5c(r30)
/* 804A6234  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 804A6238  4C 41 13 82 */	cror 2, 1, 2
/* 804A623C  40 82 00 48 */	bne lbl_804A6284
/* 804A6240  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804A6244  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804A6248  3C 63 00 02 */	addis r3, r3, 2
/* 804A624C  80 A3 60 B8 */	lwz r5, 0x60b8(r3)
/* 804A6250  28 05 00 00 */	cmplwi r5, 0
/* 804A6254  41 82 00 30 */	beq lbl_804A6284
/* 804A6258  3C 80 80 64 */	lis r4, lit_1306@ha /* 0x80645D94@ha */
/* 804A625C  3C 60 80 64 */	lis r3, lit_1081@ha /* 0x80645D58@ha */
/* 804A6260  C0 24 5D 94 */	lfs f1, lit_1306@l(r4)  /* 0x80645D94@l */
/* 804A6264  38 80 00 01 */	li r4, 1
/* 804A6268  C0 03 5D 58 */	lfs f0, lit_1081@l(r3)  /* 0x80645D58@l */
/* 804A626C  38 7E 00 28 */	addi r3, r30, 0x28
/* 804A6270  EC 21 00 F2 */	fmuls f1, f1, f3
/* 804A6274  81 85 00 0C */	lwz r12, 0xc(r5)
/* 804A6278  EC 21 00 24 */	fdivs f1, f1, f0
/* 804A627C  7D 89 03 A6 */	mtctr r12
/* 804A6280  4E 80 04 21 */	bctrl 
lbl_804A6284:
/* 804A6284  88 1E 00 9A */	lbz r0, 0x9a(r30)
/* 804A6288  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 804A628C  40 82 00 1C */	bne lbl_804A62A8
/* 804A6290  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 804A6294  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804A6298  28 00 00 0D */	cmplwi r0, 0xd
/* 804A629C  40 82 00 0C */	bne lbl_804A62A8
/* 804A62A0  7F C3 F3 78 */	mr r3, r30
/* 804A62A4  48 00 01 01 */	bl aSMAN_process_air_init
lbl_804A62A8:
/* 804A62A8  A8 7E 01 FA */	lha r3, 0x1fa(r30)
/* 804A62AC  2C 03 00 20 */	cmpwi r3, 0x20
/* 804A62B0  40 80 00 D8 */	bge lbl_804A6388
/* 804A62B4  80 9F 00 A0 */	lwz r4, 0xa0(r31)
/* 804A62B8  54 80 07 BF */	clrlwi. r0, r4, 0x1e
/* 804A62BC  40 82 00 0C */	bne lbl_804A62C8
/* 804A62C0  2C 03 00 10 */	cmpwi r3, 0x10
/* 804A62C4  41 80 00 0C */	blt lbl_804A62D0
lbl_804A62C8:
/* 804A62C8  54 80 07 7F */	clrlwi. r0, r4, 0x1d
/* 804A62CC  40 82 00 B0 */	bne lbl_804A637C
lbl_804A62D0:
/* 804A62D0  80 FE 00 28 */	lwz r7, 0x28(r30)
/* 804A62D4  3C 60 80 69 */	lis r3, lit_1038@ha /* 0x8068E8A0@ha */
/* 804A62D8  80 DE 00 2C */	lwz r6, 0x2c(r30)
/* 804A62DC  38 83 E8 A0 */	addi r4, r3, lit_1038@l /* 0x8068E8A0@l */
/* 804A62E0  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804A62E4  38 61 00 14 */	addi r3, r1, 0x14
/* 804A62E8  90 E1 00 20 */	stw r7, 0x20(r1)
/* 804A62EC  38 A0 07 3F */	li r5, 0x73f
/* 804A62F0  90 C1 00 24 */	stw r6, 0x24(r1)
/* 804A62F4  90 01 00 28 */	stw r0, 0x28(r1)
/* 804A62F8  90 E1 00 14 */	stw r7, 0x14(r1)
/* 804A62FC  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804A6300  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804A6304  4B EE DC B5 */	bl mCoBG_GetWaterHeight_File
/* 804A6308  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804A630C  3C 60 80 64 */	lis r3, lit_683@ha /* 0x80645CEC@ha */
/* 804A6310  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 804A6314  38 83 5C EC */	addi r4, r3, lit_683@l /* 0x80645CEC@l */
/* 804A6318  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 804A631C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804A6320  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804A6324  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804A6328  90 C1 00 08 */	stw r6, 8(r1)
/* 804A632C  3C 63 00 02 */	addis r3, r3, 2
/* 804A6330  C0 24 00 00 */	lfs f1, 0(r4)
/* 804A6334  7F E7 FB 78 */	mr r7, r31
/* 804A6338  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804A633C  38 81 00 08 */	addi r4, r1, 8
/* 804A6340  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804A6344  38 60 00 45 */	li r3, 0x45
/* 804A6348  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A634C  38 A0 00 01 */	li r5, 1
/* 804A6350  39 20 00 05 */	li r9, 5
/* 804A6354  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 804A6358  81 86 00 00 */	lwz r12, 0(r6)
/* 804A635C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A6360  A8 DE 00 36 */	lha r6, 0x36(r30)
/* 804A6364  A1 1E 00 06 */	lhz r8, 6(r30)
/* 804A6368  FC 00 00 1E */	fctiwz f0, f0
/* 804A636C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804A6370  81 41 00 34 */	lwz r10, 0x34(r1)
/* 804A6374  7D 89 03 A6 */	mtctr r12
/* 804A6378  4E 80 04 21 */	bctrl 
lbl_804A637C:
/* 804A637C  A8 7E 01 FA */	lha r3, 0x1fa(r30)
/* 804A6380  38 03 00 01 */	addi r0, r3, 1
/* 804A6384  B0 1E 01 FA */	sth r0, 0x1fa(r30)
lbl_804A6388:
/* 804A6388  38 60 00 01 */	li r3, 1
lbl_804A638C:
/* 804A638C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804A6390  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804A6394  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804A6398  7C 08 03 A6 */	mtlr r0
/* 804A639C  38 21 00 40 */	addi r1, r1, 0x40
/* 804A63A0  4E 80 00 20 */	blr 
