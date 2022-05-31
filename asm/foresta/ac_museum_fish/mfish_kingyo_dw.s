lbl_8044C1DC:
/* 8044C1DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8044C1E0  7C 08 02 A6 */	mflr r0
/* 8044C1E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8044C1E8  39 61 00 40 */	addi r11, r1, 0x40
/* 8044C1EC  4B C4 EC DD */	bl func_8009AEC8
/* 8044C1F0  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 8044C1F4  7C 7B 1B 78 */	mr r27, r3
/* 8044C1F8  7C 9C 23 78 */	mr r28, r4
/* 8044C1FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8044C200  3B FB 00 38 */	addi r31, r27, 0x38
/* 8044C204  41 82 00 0C */	beq lbl_8044C210
/* 8044C208  3B DF 00 70 */	addi r30, r31, 0x70
/* 8044C20C  48 00 00 08 */	b lbl_8044C214
lbl_8044C210:
/* 8044C210  3B DF 02 B0 */	addi r30, r31, 0x2b0
lbl_8044C214:
/* 8044C214  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044C218  3C C0 43 30 */	lis r6, 0x4330
/* 8044C21C  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8044C220  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044C224  80 63 00 00 */	lwz r3, 0(r3)
/* 8044C228  39 04 42 8C */	addi r8, r4, lit_570@l /* 0x8064428C@l */
/* 8044C22C  A8 BB 06 0C */	lha r5, 0x60c(r27)
/* 8044C230  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806442C4@ha */
/* 8044C234  A8 03 1B 96 */	lha r0, 0x1b96(r3)
/* 8044C238  3C 60 80 64 */	lis r3, lit_792@ha /* 0x806442C0@ha */
/* 8044C23C  6C A7 80 00 */	xoris r7, r5, 0x8000
/* 8044C240  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8044C244  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8044C248  38 A3 42 C0 */	addi r5, r3, lit_792@l /* 0x806442C0@l */
/* 8044C24C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044C250  38 60 00 00 */	li r3, 0
/* 8044C254  C8 88 00 00 */	lfd f4, 0(r8)
/* 8044C258  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8044C25C  C0 24 42 C4 */	lfs f1, lit_793@l(r4)  /* 0x806442C4@l */
/* 8044C260  EC 00 20 28 */	fsubs f0, f0, f4
/* 8044C264  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8044C268  C0 65 00 00 */	lfs f3, 0(r5)
/* 8044C26C  90 C1 00 08 */	stw r6, 8(r1)
/* 8044C270  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044C274  83 BC 00 00 */	lwz r29, 0(r28)
/* 8044C278  C8 41 00 08 */	lfd f2, 8(r1)
/* 8044C27C  C0 3B 05 A0 */	lfs f1, 0x5a0(r27)
/* 8044C280  EC 82 20 28 */	fsubs f4, f2, f4
/* 8044C284  C0 5B 05 A4 */	lfs f2, 0x5a4(r27)
/* 8044C288  EC 03 00 2A */	fadds f0, f3, f0
/* 8044C28C  C0 7B 05 A8 */	lfs f3, 0x5a8(r27)
/* 8044C290  EC 04 00 32 */	fmuls f0, f4, f0
/* 8044C294  FC 00 00 1E */	fctiwz f0, f0
/* 8044C298  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8044C29C  83 41 00 1C */	lwz r26, 0x1c(r1)
/* 8044C2A0  4B FC 00 61 */	bl Matrix_translate
/* 8044C2A4  A8 7B 06 0E */	lha r3, 0x60e(r27)
/* 8044C2A8  38 80 00 01 */	li r4, 1
/* 8044C2AC  4B FC 03 B1 */	bl Matrix_RotateY
/* 8044C2B0  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8044C2B4  3C 60 80 64 */	lis r3, lit_1315@ha /* 0x80644334@ha */
/* 8044C2B8  C0 24 42 48 */	lfs f1, lit_468@l(r4)  /* 0x80644248@l */
/* 8044C2BC  C0 63 43 34 */	lfs f3, lit_1315@l(r3)  /* 0x80644334@l */
/* 8044C2C0  38 60 00 01 */	li r3, 1
/* 8044C2C4  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 8044C2C8  FC 40 08 90 */	fmr f2, f1
/* 8044C2CC  EC 63 00 32 */	fmuls f3, f3, f0
/* 8044C2D0  4B FC 00 31 */	bl Matrix_translate
/* 8044C2D4  7F 43 D3 78 */	mr r3, r26
/* 8044C2D8  38 80 00 01 */	li r4, 1
/* 8044C2DC  4B FC 01 DD */	bl Matrix_RotateX
/* 8044C2E0  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 8044C2E4  3C A0 80 64 */	lis r5, lit_468@ha /* 0x80644248@ha */
/* 8044C2E8  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 8044C2EC  C0 25 42 48 */	lfs f1, lit_468@l(r5)  /* 0x80644248@l */
/* 8044C2F0  FC 00 00 50 */	fneg f0, f0
/* 8044C2F4  C0 64 42 5C */	lfs f3, lit_471@l(r4)  /* 0x8064425C@l */
/* 8044C2F8  FC 40 08 90 */	fmr f2, f1
/* 8044C2FC  38 60 00 01 */	li r3, 1
/* 8044C300  EC 63 00 32 */	fmuls f3, f3, f0
/* 8044C304  4B FB FF FD */	bl Matrix_translate
/* 8044C308  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8044C30C  38 60 00 01 */	li r3, 1
/* 8044C310  FC 40 08 90 */	fmr f2, f1
/* 8044C314  FC 60 08 90 */	fmr f3, f1
/* 8044C318  4B FC 00 D5 */	bl Matrix_scale
/* 8044C31C  83 5D 02 D0 */	lwz r26, 0x2d0(r29)
/* 8044C320  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8044C324  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8044C328  38 7A 00 08 */	addi r3, r26, 8
/* 8044C32C  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8044C330  90 1A 00 00 */	stw r0, 0(r26)
/* 8044C334  80 7C 00 00 */	lwz r3, 0(r28)
/* 8044C338  4B FC 10 9D */	bl _Matrix_to_Mtx_new
/* 8044C33C  3C 80 80 45 */	lis r4, mfish_kingyo_before_disp@ha /* 0x8044BE3C@ha */
/* 8044C340  90 7A 00 04 */	stw r3, 4(r26)
/* 8044C344  38 C4 BE 3C */	addi r6, r4, mfish_kingyo_before_disp@l /* 0x8044BE3C@l */
/* 8044C348  7F 83 E3 78 */	mr r3, r28
/* 8044C34C  7F E4 FB 78 */	mr r4, r31
/* 8044C350  7F C5 F3 78 */	mr r5, r30
/* 8044C354  7F 68 DB 78 */	mr r8, r27
/* 8044C358  38 E0 00 00 */	li r7, 0
/* 8044C35C  4B F2 53 DD */	bl cKF_Si3_draw_R_SV
/* 8044C360  39 61 00 40 */	addi r11, r1, 0x40
/* 8044C364  4B C4 EB B1 */	bl func_8009AF14
/* 8044C368  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8044C36C  7C 08 03 A6 */	mtlr r0
/* 8044C370  38 21 00 40 */	addi r1, r1, 0x40
/* 8044C374  4E 80 00 20 */	blr 
