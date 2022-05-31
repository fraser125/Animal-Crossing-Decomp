lbl_803BEFEC:
/* 803BEFEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BEFF0  7C 08 02 A6 */	mflr r0
/* 803BEFF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BEFF8  39 61 00 20 */	addi r11, r1, 0x20
/* 803BEFFC  4B CD BE D9 */	bl func_8009AED4
/* 803BF000  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803BF004  3B C0 00 00 */	li r30, 0
/* 803BF008  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803BF00C  3C 63 00 02 */	addis r3, r3, 2
/* 803BF010  8B E3 60 03 */	lbz r31, 0x6003(r3)
/* 803BF014  2C 1F 00 04 */	cmpwi r31, 4
/* 803BF018  40 80 00 F8 */	bge lbl_803BF110
/* 803BF01C  4B FD BB 8D */	bl mEv_CheckArbeit
/* 803BF020  2C 03 00 00 */	cmpwi r3, 0
/* 803BF024  40 82 00 64 */	bne lbl_803BF088
/* 803BF028  7F E3 FB 78 */	mr r3, r31
/* 803BF02C  4B FF 45 8D */	bl mHS_get_arrange_idx
/* 803BF030  7C 7E 1B 78 */	mr r30, r3
/* 803BF034  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803BF038  1C BE 26 B0 */	mulli r5, r30, 0x26b0
/* 803BF03C  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803BF040  7C 80 2A 14 */	add r4, r0, r5
/* 803BF044  3F A4 00 01 */	addis r29, r4, 1
/* 803BF048  88 1D 9D 0C */	lbz r0, -0x62f4(r29)
/* 803BF04C  3B BD 9D 0C */	addi r29, r29, -25332
/* 803BF050  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 803BF054  40 82 00 34 */	bne lbl_803BF088
/* 803BF058  38 80 01 EF */	li r4, 0x1ef
/* 803BF05C  4B FF FD 65 */	bl mMkRm_NoMarkLetter
/* 803BF060  2C 03 00 00 */	cmpwi r3, 0
/* 803BF064  41 82 00 AC */	beq lbl_803BF110
/* 803BF068  88 1D 00 00 */	lbz r0, 0(r29)
/* 803BF06C  38 60 00 01 */	li r3, 1
/* 803BF070  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 803BF074  7F E3 FB 78 */	mr r3, r31
/* 803BF078  98 1D 00 00 */	stb r0, 0(r29)
/* 803BF07C  4B FF FB E1 */	bl mMkRm_ReportMarkEnd
/* 803BF080  48 00 00 90 */	b lbl_803BF110
/* 803BF084  48 00 00 8C */	b lbl_803BF110
lbl_803BF088:
/* 803BF088  7F E3 FB 78 */	mr r3, r31
/* 803BF08C  4B FF FB 29 */	bl func_803BEBB4
/* 803BF090  2C 03 00 00 */	cmpwi r3, 0
/* 803BF094  41 82 00 7C */	beq lbl_803BF110
/* 803BF098  1C 9E 26 B0 */	mulli r4, r30, 0x26b0
/* 803BF09C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803BF0A0  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803BF0A4  7C 60 22 14 */	add r3, r0, r4
/* 803BF0A8  3C 63 00 01 */	addis r3, r3, 1
/* 803BF0AC  88 03 9D 0C */	lbz r0, -0x62f4(r3)
/* 803BF0B0  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 803BF0B4  28 00 00 01 */	cmplwi r0, 1
/* 803BF0B8  40 82 00 18 */	bne lbl_803BF0D0
/* 803BF0BC  7F E3 FB 78 */	mr r3, r31
/* 803BF0C0  48 11 48 51 */	bl mMkRm_MarkRoomOvl
/* 803BF0C4  7F E3 FB 78 */	mr r3, r31
/* 803BF0C8  4B FF FB 95 */	bl mMkRm_ReportMarkEnd
/* 803BF0CC  48 00 00 44 */	b lbl_803BF110
lbl_803BF0D0:
/* 803BF0D0  4B C9 DC 25 */	bl fqrand
/* 803BF0D4  3C 60 80 64 */	lis r3, lit_518@ha /* 0x806425F4@ha */
/* 803BF0D8  C0 03 25 F4 */	lfs f0, lit_518@l(r3)  /* 0x806425F4@l */
/* 803BF0DC  EC 00 00 72 */	fmuls f0, f0, f1
/* 803BF0E0  FC 00 00 1E */	fctiwz f0, f0
/* 803BF0E4  D8 01 00 08 */	stfd f0, 8(r1)
/* 803BF0E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803BF0EC  2C 00 00 05 */	cmpwi r0, 5
/* 803BF0F0  41 82 00 0C */	beq lbl_803BF0FC
/* 803BF0F4  2C 00 00 09 */	cmpwi r0, 9
/* 803BF0F8  40 82 00 18 */	bne lbl_803BF110
lbl_803BF0FC:
/* 803BF0FC  7F C3 F3 78 */	mr r3, r30
/* 803BF100  7F E4 FB 78 */	mr r4, r31
/* 803BF104  4B FF FD 91 */	bl mMkRm_NoMarkLetter_Hint
/* 803BF108  7F E3 FB 78 */	mr r3, r31
/* 803BF10C  4B FF FB 51 */	bl mMkRm_ReportMarkEnd
lbl_803BF110:
/* 803BF110  39 61 00 20 */	addi r11, r1, 0x20
/* 803BF114  4B CD BE 0D */	bl func_8009AF20
/* 803BF118  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BF11C  7C 08 03 A6 */	mtlr r0
/* 803BF120  38 21 00 20 */	addi r1, r1, 0x20
/* 803BF124  4E 80 00 20 */	blr 
