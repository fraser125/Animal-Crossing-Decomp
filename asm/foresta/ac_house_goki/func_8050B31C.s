lbl_8050B31C:
/* 8050B31C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050B320  7C 08 02 A6 */	mflr r0
/* 8050B324  3C A0 80 65 */	lis r5, data_80648DEC@ha /* 0x80648DEC@ha */
/* 8050B328  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050B32C  C0 05 8D EC */	lfs f0, data_80648DEC@l(r5)  /* 0x80648DEC@l */
/* 8050B330  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050B334  7C 7F 1B 78 */	mr r31, r3
/* 8050B338  93 C1 00 08 */	stw r30, 8(r1)
/* 8050B33C  7C 9E 23 78 */	mr r30, r4
/* 8050B340  D0 1F 01 90 */	stfs f0, 0x190(r31)
/* 8050B344  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 8050B348  2C 00 00 00 */	cmpwi r0, 0
/* 8050B34C  41 81 00 18 */	bgt lbl_8050B364
/* 8050B350  3C 60 80 65 */	lis r3, lit_436@ha /* 0x80648DF0@ha */
/* 8050B354  38 00 00 00 */	li r0, 0
/* 8050B358  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 8050B35C  C0 03 8D F0 */	lfs f0, lit_436@l(r3)  /* 0x80648DF0@l */
/* 8050B360  D0 1F 01 90 */	stfs f0, 0x190(r31)
lbl_8050B364:
/* 8050B364  3C 80 80 65 */	lis r4, lit_437@ha /* 0x80648DF4@ha */
/* 8050B368  3C 60 80 65 */	lis r3, lit_439@ha /* 0x80648DFC@ha */
/* 8050B36C  38 A4 8D F4 */	addi r5, r4, lit_437@l /* 0x80648DF4@l */
/* 8050B370  C0 43 8D FC */	lfs f2, lit_439@l(r3)  /* 0x80648DFC@l */
/* 8050B374  C0 05 00 00 */	lfs f0, 0(r5)
/* 8050B378  3C 80 80 65 */	lis r4, lit_438@ha /* 0x80648DF8@ha */
/* 8050B37C  38 A4 8D F8 */	addi r5, r4, lit_438@l /* 0x80648DF8@l */
/* 8050B380  3C 60 80 37 */	lis r3, mAc_ActorShadowCircle@ha /* 0x80376F30@ha */
/* 8050B384  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 8050B388  38 83 6F 30 */	addi r4, r3, mAc_ActorShadowCircle@l /* 0x80376F30@l */
/* 8050B38C  FC 60 10 90 */	fmr f3, f2
/* 8050B390  C0 25 00 00 */	lfs f1, 0(r5)
/* 8050B394  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 8050B398  7F E3 FB 78 */	mr r3, r31
/* 8050B39C  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 8050B3A0  4B E6 90 51 */	bl Shape_Info_init
/* 8050B3A4  38 7F 00 0C */	addi r3, r31, 0xc
/* 8050B3A8  38 9F 00 28 */	addi r4, r31, 0x28
/* 8050B3AC  4B EA FB 11 */	bl xyz_t_move
/* 8050B3B0  3C 80 80 65 */	lis r4, lit_440@ha /* 0x80648E00@ha */
/* 8050B3B4  7F E3 FB 78 */	mr r3, r31
/* 8050B3B8  38 A4 8E 00 */	addi r5, r4, lit_440@l /* 0x80648E00@l */
/* 8050B3BC  C0 05 00 00 */	lfs f0, 0(r5)
/* 8050B3C0  7F C4 F3 78 */	mr r4, r30
/* 8050B3C4  38 A0 00 00 */	li r5, 0
/* 8050B3C8  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 8050B3CC  A8 DF 00 B6 */	lha r6, 0xb6(r31)
/* 8050B3D0  3C C6 00 01 */	addis r6, r6, 1
/* 8050B3D4  38 06 80 00 */	addi r0, r6, -32768
/* 8050B3D8  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 8050B3DC  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8050B3E0  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8050B3E4  48 00 0C 91 */	bl aHG_setupAction
/* 8050B3E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050B3EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050B3F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050B3F4  7C 08 03 A6 */	mtlr r0
/* 8050B3F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8050B3FC  4E 80 00 20 */	blr 
