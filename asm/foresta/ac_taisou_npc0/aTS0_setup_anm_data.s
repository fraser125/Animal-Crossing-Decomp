lbl_80588EDC:
/* 80588EDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80588EE0  7C 08 02 A6 */	mflr r0
/* 80588EE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80588EE8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80588EEC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80588EF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80588EF4  7C 7F 1B 78 */	mr r31, r3
/* 80588EF8  88 03 09 94 */	lbz r0, 0x994(r3)
/* 80588EFC  7C 00 07 74 */	extsb r0, r0
/* 80588F00  2C 00 00 0A */	cmpwi r0, 0xa
/* 80588F04  40 80 00 A8 */	bge lbl_80588FAC
/* 80588F08  88 1F 09 95 */	lbz r0, 0x995(r31)
/* 80588F0C  3C 80 80 65 */	lis r4, lit_560@ha /* 0x80649B24@ha */
/* 80588F10  C3 E4 9B 24 */	lfs f31, lit_560@l(r4)  /* 0x80649B24@l */
/* 80588F14  28 00 00 00 */	cmplwi r0, 0
/* 80588F18  40 82 00 4C */	bne lbl_80588F64
/* 80588F1C  80 9F 09 A4 */	lwz r4, 0x9a4(r31)
/* 80588F20  38 A0 00 01 */	li r5, 1
/* 80588F24  4B FF FA B9 */	bl aTS0_check_over_bgm_block_part
/* 80588F28  2C 03 00 01 */	cmpwi r3, 1
/* 80588F2C  40 82 00 2C */	bne lbl_80588F58
/* 80588F30  80 7F 09 A4 */	lwz r3, 0x9a4(r31)
/* 80588F34  38 03 00 01 */	addi r0, r3, 1
/* 80588F38  90 1F 09 A4 */	stw r0, 0x9a4(r31)
/* 80588F3C  80 1F 01 BC */	lwz r0, 0x1bc(r31)
/* 80588F40  2C 00 00 00 */	cmpwi r0, 0
/* 80588F44  40 82 00 14 */	bne lbl_80588F58
/* 80588F48  88 9F 09 94 */	lbz r4, 0x994(r31)
/* 80588F4C  7F E3 FB 78 */	mr r3, r31
/* 80588F50  7C 84 07 74 */	extsb r4, r4
/* 80588F54  4B FF F8 FD */	bl aTS0_set_animation
lbl_80588F58:
/* 80588F58  7F E3 FB 78 */	mr r3, r31
/* 80588F5C  4B FF F8 89 */	bl func_805887E4
/* 80588F60  48 00 00 48 */	b lbl_80588FA8
lbl_80588F64:
/* 80588F64  88 1F 09 98 */	lbz r0, 0x998(r31)
/* 80588F68  3C 80 80 6C */	lis r4, aTS0_endRatio@ha /* 0x806C1E70@ha */
/* 80588F6C  3C A0 80 6C */	lis r5, aTS0_morphRatio@ha /* 0x806C1E98@ha */
/* 80588F70  C0 3F 09 9C */	lfs f1, 0x99c(r31)
/* 80588F74  7C 00 07 74 */	extsb r0, r0
/* 80588F78  38 84 1E 70 */	addi r4, r4, aTS0_endRatio@l /* 0x806C1E70@l */
/* 80588F7C  54 00 10 3A */	slwi r0, r0, 2
/* 80588F80  38 A5 1E 98 */	addi r5, r5, aTS0_morphRatio@l /* 0x806C1E98@l */
/* 80588F84  7C 04 04 2E */	lfsx f0, r4, r0
/* 80588F88  3C 60 80 65 */	lis r3, lit_660@ha /* 0x80649B34@ha */
/* 80588F8C  7C 45 04 2E */	lfsx f2, r5, r0
/* 80588F90  EC 21 00 28 */	fsubs f1, f1, f0
/* 80588F94  C0 03 9B 34 */	lfs f0, lit_660@l(r3)  /* 0x80649B34@l */
/* 80588F98  EF E2 08 24 */	fdivs f31, f2, f1
/* 80588F9C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80588FA0  40 80 00 08 */	bge lbl_80588FA8
/* 80588FA4  FF E0 00 90 */	fmr f31, f0
lbl_80588FA8:
/* 80588FA8  D3 FF 01 C8 */	stfs f31, 0x1c8(r31)
lbl_80588FAC:
/* 80588FAC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80588FB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80588FB4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80588FB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80588FBC  7C 08 03 A6 */	mtlr r0
/* 80588FC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80588FC4  4E 80 00 20 */	blr 
