lbl_80413298:
/* 80413298  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8041329C  7C 08 02 A6 */	mflr r0
/* 804132A0  90 01 00 54 */	stw r0, 0x54(r1)
/* 804132A4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804132A8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804132AC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804132B0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804132B4  7C 7E 1B 78 */	mr r30, r3
/* 804132B8  3C 60 80 66 */	lis r3, lit_779@ha /* 0x8065FB48@ha */
/* 804132BC  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 804132C0  38 03 FB 48 */	addi r0, r3, lit_779@l /* 0x8065FB48@l */
/* 804132C4  80 DE 00 2C */	lwz r6, 0x2c(r30)
/* 804132C8  7C 9F 23 78 */	mr r31, r4
/* 804132CC  7C 04 03 78 */	mr r4, r0
/* 804132D0  38 61 00 14 */	addi r3, r1, 0x14
/* 804132D4  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804132D8  38 A0 03 61 */	li r5, 0x361
/* 804132DC  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804132E0  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804132E4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804132E8  4B F8 0C D1 */	bl mCoBG_GetWaterHeight_File
/* 804132EC  3C 60 80 64 */	lis r3, lit_672@ha /* 0x80643A28@ha */
/* 804132F0  3C 80 80 64 */	lis r4, lit_671@ha /* 0x80643A24@ha */
/* 804132F4  FF E0 08 90 */	fmr f31, f1
/* 804132F8  C0 43 3A 28 */	lfs f2, lit_672@l(r3)  /* 0x80643A28@l */
/* 804132FC  C0 24 3A 24 */	lfs f1, lit_671@l(r4)  /* 0x80643A24@l */
/* 80413300  38 7E 01 E8 */	addi r3, r30, 0x1e8
/* 80413304  4B FA 7F D5 */	bl add_calc0
/* 80413308  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 8041330C  38 61 00 20 */	addi r3, r1, 0x20
/* 80413310  54 04 AE BE */	rlwinm r4, r0, 0x15, 0x1a, 0x1f
/* 80413314  4B F8 10 21 */	bl mCoBG_GetWaterFlow
/* 80413318  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8041331C  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80413320  4B FF 8C E1 */	bl atans_table
/* 80413324  7C 68 1B 78 */	mr r8, r3
/* 80413328  A8 1E 00 36 */	lha r0, 0x36(r30)
/* 8041332C  7D 03 07 34 */	extsh r3, r8
/* 80413330  7C 63 00 50 */	subf r3, r3, r0
/* 80413334  7C 60 07 35 */	extsh. r0, r3
/* 80413338  7C 60 07 34 */	extsh r0, r3
/* 8041333C  7C E0 00 D0 */	neg r7, r0
/* 80413340  41 80 00 08 */	blt lbl_80413348
/* 80413344  7C 07 03 78 */	mr r7, r0
lbl_80413348:
/* 80413348  38 00 40 00 */	li r0, 0x4000
/* 8041334C  3C 80 80 66 */	lis r4, angl_add_table@ha /* 0x8065FB44@ha */
/* 80413350  7C E0 02 78 */	xor r0, r7, r0
/* 80413354  38 7E 00 36 */	addi r3, r30, 0x36
/* 80413358  7C 06 0E 70 */	srawi r6, r0, 1
/* 8041335C  38 A4 FB 44 */	addi r5, r4, angl_add_table@l /* 0x8065FB44@l */
/* 80413360  7C 00 38 38 */	and r0, r0, r7
/* 80413364  7D 04 07 34 */	extsh r4, r8
/* 80413368  7C 00 30 50 */	subf r0, r0, r6
/* 8041336C  54 00 17 BC */	rlwinm r0, r0, 2, 0x1e, 0x1e
/* 80413370  7C A5 02 AE */	lhax r5, r5, r0
/* 80413374  4B FA 77 D1 */	bl chase_angle
/* 80413378  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8041337C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80413380  40 80 00 14 */	bge lbl_80413394
/* 80413384  3C 60 80 64 */	lis r3, lit_549@ha /* 0x806439EC@ha */
/* 80413388  C0 03 39 EC */	lfs f0, lit_549@l(r3)  /* 0x806439EC@l */
/* 8041338C  D0 1E 00 7C */	stfs f0, 0x7c(r30)
/* 80413390  48 00 00 10 */	b lbl_804133A0
lbl_80413394:
/* 80413394  3C 60 80 64 */	lis r3, lit_780@ha /* 0x80643A54@ha */
/* 80413398  C0 03 3A 54 */	lfs f0, lit_780@l(r3)  /* 0x80643A54@l */
/* 8041339C  D0 1E 00 7C */	stfs f0, 0x7c(r30)
lbl_804133A0:
/* 804133A0  A8 7E 01 FC */	lha r3, 0x1fc(r30)
/* 804133A4  2C 03 00 20 */	cmpwi r3, 0x20
/* 804133A8  40 80 00 80 */	bge lbl_80413428
/* 804133AC  80 9F 00 A0 */	lwz r4, 0xa0(r31)
/* 804133B0  54 80 07 BF */	clrlwi. r0, r4, 0x1e
/* 804133B4  40 82 00 0C */	bne lbl_804133C0
/* 804133B8  2C 03 00 10 */	cmpwi r3, 0x10
/* 804133BC  41 80 00 0C */	blt lbl_804133C8
lbl_804133C0:
/* 804133C0  54 80 07 7F */	clrlwi. r0, r4, 0x1d
/* 804133C4  40 82 00 58 */	bne lbl_8041341C
lbl_804133C8:
/* 804133C8  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 804133CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804133D0  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 804133D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804133D8  3C 63 00 02 */	addis r3, r3, 2
/* 804133DC  7F E7 FB 78 */	mr r7, r31
/* 804133E0  90 81 00 08 */	stw r4, 8(r1)
/* 804133E4  38 81 00 08 */	addi r4, r1, 8
/* 804133E8  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804133EC  38 60 00 45 */	li r3, 0x45
/* 804133F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804133F4  38 A0 00 01 */	li r5, 1
/* 804133F8  39 20 00 01 */	li r9, 1
/* 804133FC  39 40 00 00 */	li r10, 0
/* 80413400  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80413404  90 01 00 10 */	stw r0, 0x10(r1)
/* 80413408  81 86 00 00 */	lwz r12, 0(r6)
/* 8041340C  A8 DE 00 36 */	lha r6, 0x36(r30)
/* 80413410  A1 1E 00 06 */	lhz r8, 6(r30)
/* 80413414  7D 89 03 A6 */	mtctr r12
/* 80413418  4E 80 04 21 */	bctrl 
lbl_8041341C:
/* 8041341C  A8 7E 01 FC */	lha r3, 0x1fc(r30)
/* 80413420  38 03 00 01 */	addi r0, r3, 1
/* 80413424  B0 1E 01 FC */	sth r0, 0x1fc(r30)
lbl_80413428:
/* 80413428  3C 80 80 64 */	lis r4, lit_544@ha /* 0x806439D8@ha */
/* 8041342C  3C 60 80 64 */	lis r3, lit_549@ha /* 0x806439EC@ha */
/* 80413430  C0 24 39 D8 */	lfs f1, lit_544@l(r4)  /* 0x806439D8@l */
/* 80413434  C0 03 39 EC */	lfs f0, lit_549@l(r3)  /* 0x806439EC@l */
/* 80413438  D0 3E 00 78 */	stfs f1, 0x78(r30)
/* 8041343C  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
/* 80413440  D0 3E 01 F0 */	stfs f1, 0x1f0(r30)
/* 80413444  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80413448  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8041344C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80413450  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80413454  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80413458  7C 08 03 A6 */	mtlr r0
/* 8041345C  38 21 00 50 */	addi r1, r1, 0x50
/* 80413460  4E 80 00 20 */	blr 
