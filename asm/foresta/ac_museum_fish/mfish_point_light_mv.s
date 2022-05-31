lbl_80431450:
/* 80431450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80431454  7C 08 02 A6 */	mflr r0
/* 80431458  38 A0 00 00 */	li r5, 0
/* 8043145C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80431460  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80431464  7C 7F 1B 78 */	mr r31, r3
/* 80431468  93 C1 00 08 */	stw r30, 8(r1)
/* 8043146C  7C 9E 23 78 */	mr r30, r4
/* 80431470  4B FF FB 95 */	bl mfish_point_ligh_pos_get
/* 80431474  7F E3 FB 78 */	mr r3, r31
/* 80431478  7F C4 F3 78 */	mr r4, r30
/* 8043147C  38 A0 00 01 */	li r5, 1
/* 80431480  4B FF FB 85 */	bl mfish_point_ligh_pos_get
/* 80431484  3C 9F 00 01 */	addis r4, r31, 1
/* 80431488  38 A0 00 00 */	li r5, 0
/* 8043148C  A8 04 4D BC */	lha r0, 0x4dbc(r4)
/* 80431490  38 C0 00 96 */	li r6, 0x96
/* 80431494  A8 64 4D B8 */	lha r3, 0x4db8(r4)
/* 80431498  38 E0 00 FF */	li r7, 0xff
/* 8043149C  54 08 06 3E */	clrlwi r8, r0, 0x18
/* 804314A0  38 84 4D 08 */	addi r4, r4, 0x4d08
/* 804314A4  4B F8 85 F9 */	bl mEnv_OperateReservedPointLight
/* 804314A8  3C 9F 00 01 */	addis r4, r31, 1
/* 804314AC  38 A0 00 00 */	li r5, 0
/* 804314B0  A8 04 4D BE */	lha r0, 0x4dbe(r4)
/* 804314B4  38 C0 00 96 */	li r6, 0x96
/* 804314B8  A8 64 4D BA */	lha r3, 0x4dba(r4)
/* 804314BC  38 E0 00 FF */	li r7, 0xff
/* 804314C0  54 08 06 3E */	clrlwi r8, r0, 0x18
/* 804314C4  38 84 4D 14 */	addi r4, r4, 0x4d14
/* 804314C8  4B F8 85 D5 */	bl mEnv_OperateReservedPointLight
/* 804314CC  3C 9F 00 01 */	addis r4, r31, 1
/* 804314D0  80 64 4D 08 */	lwz r3, 0x4d08(r4)
/* 804314D4  80 04 4D 0C */	lwz r0, 0x4d0c(r4)
/* 804314D8  90 7F 00 28 */	stw r3, 0x28(r31)
/* 804314DC  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 804314E0  80 04 4D 10 */	lwz r0, 0x4d10(r4)
/* 804314E4  90 1F 00 30 */	stw r0, 0x30(r31)
/* 804314E8  A8 64 4D C0 */	lha r3, 0x4dc0(r4)
/* 804314EC  4B F8 96 05 */	bl sin_s
/* 804314F0  3C 80 80 64 */	lis r4, lit_10419@ha /* 0x80644580@ha */
/* 804314F4  3C 7F 00 01 */	addis r3, r31, 1
/* 804314F8  C0 04 45 80 */	lfs f0, lit_10419@l(r4)  /* 0x80644580@l */
/* 804314FC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80431500  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80431504  A8 03 4D C0 */	lha r0, 0x4dc0(r3)
/* 80431508  54 00 08 3C */	slwi r0, r0, 1
/* 8043150C  7C 03 07 34 */	extsh r3, r0
/* 80431510  4B F8 95 E1 */	bl sin_s
/* 80431514  3C 80 80 64 */	lis r4, lit_697@ha /* 0x806442B0@ha */
/* 80431518  3C 7F 00 01 */	addis r3, r31, 1
/* 8043151C  C0 04 42 B0 */	lfs f0, lit_697@l(r4)  /* 0x806442B0@l */
/* 80431520  EC 00 00 72 */	fmuls f0, f0, f1
/* 80431524  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80431528  A8 63 4D C0 */	lha r3, 0x4dc0(r3)
/* 8043152C  4B F8 95 71 */	bl cos_s
/* 80431530  3C 60 80 64 */	lis r3, lit_10419@ha /* 0x80644580@ha */
/* 80431534  3C 9F 00 01 */	addis r4, r31, 1
/* 80431538  C0 03 45 80 */	lfs f0, lit_10419@l(r3)  /* 0x80644580@l */
/* 8043153C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80431540  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 80431544  A8 64 4D C0 */	lha r3, 0x4dc0(r4)
/* 80431548  38 03 01 11 */	addi r0, r3, 0x111
/* 8043154C  B0 04 4D C0 */	sth r0, 0x4dc0(r4)
/* 80431550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80431554  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80431558  83 C1 00 08 */	lwz r30, 8(r1)
/* 8043155C  7C 08 03 A6 */	mtlr r0
/* 80431560  38 21 00 10 */	addi r1, r1, 0x10
/* 80431564  4E 80 00 20 */	blr 
