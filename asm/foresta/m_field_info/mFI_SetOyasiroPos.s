lbl_803AB018:
/* 803AB018  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803AB01C  7C 08 02 A6 */	mflr r0
/* 803AB020  38 A0 00 04 */	li r5, 4
/* 803AB024  90 01 00 54 */	stw r0, 0x54(r1)
/* 803AB028  38 81 00 10 */	addi r4, r1, 0x10
/* 803AB02C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 803AB030  7C 7F 1B 78 */	mr r31, r3
/* 803AB034  38 61 00 14 */	addi r3, r1, 0x14
/* 803AB038  4B FF B3 C9 */	bl mFI_BlockKind2BkNum
/* 803AB03C  2C 03 00 01 */	cmpwi r3, 1
/* 803AB040  40 82 00 AC */	bne lbl_803AB0EC
/* 803AB044  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 803AB048  38 61 00 0C */	addi r3, r1, 0xc
/* 803AB04C  80 E1 00 10 */	lwz r7, 0x10(r1)
/* 803AB050  38 81 00 08 */	addi r4, r1, 8
/* 803AB054  38 A0 58 25 */	li r5, 0x5825
/* 803AB058  4B FF D2 49 */	bl mFI_SearchFGInBlock
/* 803AB05C  2C 03 00 00 */	cmpwi r3, 0
/* 803AB060  40 82 00 30 */	bne lbl_803AB090
/* 803AB064  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000F103@ha */
/* 803AB068  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 803AB06C  80 E1 00 10 */	lwz r7, 0x10(r1)
/* 803AB070  38 61 00 0C */	addi r3, r1, 0xc
/* 803AB074  38 81 00 08 */	addi r4, r1, 8
/* 803AB078  38 A5 F1 03 */	addi r5, r5, 0xF103 /* 0x0000F103@l */
/* 803AB07C  4B FF D2 25 */	bl mFI_SearchFGInBlock
/* 803AB080  2C 03 00 00 */	cmpwi r3, 0
/* 803AB084  40 82 00 0C */	bne lbl_803AB090
/* 803AB088  38 60 00 00 */	li r3, 0
/* 803AB08C  48 00 00 64 */	b lbl_803AB0F0
lbl_803AB090:
/* 803AB090  80 81 00 14 */	lwz r4, 0x14(r1)
/* 803AB094  38 61 00 18 */	addi r3, r1, 0x18
/* 803AB098  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 803AB09C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 803AB0A0  80 E1 00 08 */	lwz r7, 8(r1)
/* 803AB0A4  4B FF AC 51 */	bl mFI_BkandUtNum2CenterWpos
/* 803AB0A8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 803AB0AC  38 60 00 01 */	li r3, 1
/* 803AB0B0  FC 00 00 1E */	fctiwz f0, f0
/* 803AB0B4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 803AB0B8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 803AB0BC  B0 1F 00 00 */	sth r0, 0(r31)
/* 803AB0C0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 803AB0C4  FC 00 00 1E */	fctiwz f0, f0
/* 803AB0C8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 803AB0CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803AB0D0  B0 1F 00 02 */	sth r0, 2(r31)
/* 803AB0D4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 803AB0D8  FC 00 00 1E */	fctiwz f0, f0
/* 803AB0DC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 803AB0E0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 803AB0E4  B0 1F 00 04 */	sth r0, 4(r31)
/* 803AB0E8  48 00 00 08 */	b lbl_803AB0F0
lbl_803AB0EC:
/* 803AB0EC  38 60 00 00 */	li r3, 0
lbl_803AB0F0:
/* 803AB0F0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803AB0F4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 803AB0F8  7C 08 03 A6 */	mtlr r0
/* 803AB0FC  38 21 00 50 */	addi r1, r1, 0x50
/* 803AB100  4E 80 00 20 */	blr 
