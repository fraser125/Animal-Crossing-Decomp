lbl_803B0588:
/* 803B0588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B058C  7C 08 02 A6 */	mflr r0
/* 803B0590  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B0594  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B0598  7C BF 2B 78 */	mr r31, r5
/* 803B059C  93 C1 00 08 */	stw r30, 8(r1)
/* 803B05A0  7C 7E 1B 78 */	mr r30, r3
/* 803B05A4  88 63 00 38 */	lbz r3, 0x38(r3)
/* 803B05A8  28 03 00 00 */	cmplwi r3, 0
/* 803B05AC  41 82 00 30 */	beq lbl_803B05DC
/* 803B05B0  38 03 FF FF */	addi r0, r3, -1
/* 803B05B4  98 1E 00 38 */	stb r0, 0x38(r30)
/* 803B05B8  88 1E 00 38 */	lbz r0, 0x38(r30)
/* 803B05BC  28 00 00 00 */	cmplwi r0, 0
/* 803B05C0  40 82 00 1C */	bne lbl_803B05DC
/* 803B05C4  38 7E 00 34 */	addi r3, r30, 0x34
/* 803B05C8  38 84 00 18 */	addi r4, r4, 0x18
/* 803B05CC  48 00 AF 5D */	bl rgba_t_move
/* 803B05D0  7F E3 FB 78 */	mr r3, r31
/* 803B05D4  38 9E 00 34 */	addi r4, r30, 0x34
/* 803B05D8  4B FF F3 21 */	bl mFont_gppSetPrimColor
lbl_803B05DC:
/* 803B05DC  88 1E 00 05 */	lbz r0, 5(r30)
/* 803B05E0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 803B05E4  41 82 00 34 */	beq lbl_803B0618
/* 803B05E8  3C 60 80 64 */	lis r3, lit_632@ha /* 0x806420A0@ha */
/* 803B05EC  C0 03 20 A0 */	lfs f0, lit_632@l(r3)  /* 0x806420A0@l */
/* 803B05F0  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 803B05F4  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 803B05F8  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 803B05FC  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 803B0600  88 1E 00 05 */	lbz r0, 5(r30)
/* 803B0604  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 803B0608  98 1E 00 05 */	stb r0, 5(r30)
/* 803B060C  88 1E 00 05 */	lbz r0, 5(r30)
/* 803B0610  60 00 00 08 */	ori r0, r0, 8
/* 803B0614  98 1E 00 05 */	stb r0, 5(r30)
lbl_803B0618:
/* 803B0618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B061C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B0620  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B0624  7C 08 03 A6 */	mtlr r0
/* 803B0628  38 21 00 10 */	addi r1, r1, 0x10
/* 803B062C  4E 80 00 20 */	blr 
