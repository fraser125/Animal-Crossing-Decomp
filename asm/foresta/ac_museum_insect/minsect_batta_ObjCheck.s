lbl_8045C454:
/* 8045C454  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8045C458  7C 08 02 A6 */	mflr r0
/* 8045C45C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8045C460  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8045C464  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8045C468  39 61 00 40 */	addi r11, r1, 0x40
/* 8045C46C  4B C3 EA 59 */	bl func_8009AEC4
/* 8045C470  3C 80 81 1D */	lis r4, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8045C474  7C 7A 1B 78 */	mr r26, r3
/* 8045C478  80 84 DF D0 */	lwz r4, data_811CDFD0@l(r4)  /* 0x811CDFD0@l */
/* 8045C47C  3B A0 00 06 */	li r29, 6
/* 8045C480  A8 04 15 14 */	lha r0, 0x1514(r4)
/* 8045C484  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8045C488  41 82 00 1C */	beq lbl_8045C4A4
/* 8045C48C  3C 60 80 47 */	lis r3, okera_normal_process@ha /* 0x8046D984@ha */
/* 8045C490  80 84 14 8C */	lwz r4, 0x148c(r4)
/* 8045C494  38 03 D9 84 */	addi r0, r3, okera_normal_process@l /* 0x8046D984@l */
/* 8045C498  7C 04 00 40 */	cmplw r4, r0
/* 8045C49C  40 82 00 08 */	bne lbl_8045C4A4
/* 8045C4A0  3B A0 00 07 */	li r29, 7
lbl_8045C4A4:
/* 8045C4A4  3C 80 81 1D */	lis r4, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8045C4A8  3C 60 80 68 */	lis r3, idx_tbl@ha /* 0x80686E1C@ha */
/* 8045C4AC  3B C4 DF D0 */	addi r30, r4, data_811CDFD0@l /* 0x811CDFD0@l */
/* 8045C4B0  3B 80 00 00 */	li r28, 0
/* 8045C4B4  3B E3 6E 1C */	addi r31, r3, idx_tbl@l /* 0x80686E1C@l */
/* 8045C4B8  3B 20 00 00 */	li r25, 0
/* 8045C4BC  48 00 01 94 */	b lbl_8045C650
lbl_8045C4C0:
/* 8045C4C0  7C 1F C8 2E */	lwzx r0, r31, r25
/* 8045C4C4  80 9E 00 00 */	lwz r4, 0(r30)
/* 8045C4C8  1C 60 00 94 */	mulli r3, r0, 0x94
/* 8045C4CC  38 C3 01 74 */	addi r6, r3, 0x174
/* 8045C4D0  7C C4 32 14 */	add r6, r4, r6
/* 8045C4D4  7C 06 D0 40 */	cmplw r6, r26
/* 8045C4D8  41 82 01 70 */	beq lbl_8045C648
/* 8045C4DC  A8 06 00 8C */	lha r0, 0x8c(r6)
/* 8045C4E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8045C4E4  41 82 01 64 */	beq lbl_8045C648
/* 8045C4E8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8045C4EC  3C 00 43 30 */	lis r0, 0x4330
/* 8045C4F0  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8045C4F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8045C4F8  80 84 00 00 */	lwz r4, 0(r4)
/* 8045C4FC  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8045C500  C0 26 00 1C */	lfs f1, 0x1c(r6)
/* 8045C504  3C A0 80 64 */	lis r5, lit_586@ha /* 0x80644634@ha */
/* 8045C508  A8 04 17 48 */	lha r0, 0x1748(r4)
/* 8045C50C  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 8045C510  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8045C514  C0 86 00 24 */	lfs f4, 0x24(r6)
/* 8045C518  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045C51C  EC 41 00 28 */	fsubs f2, f1, f0
/* 8045C520  C0 3A 00 24 */	lfs f1, 0x24(r26)
/* 8045C524  C8 63 46 3C */	lfd f3, lit_589@l(r3)  /* 0x8064463C@l */
/* 8045C528  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8045C52C  EC 24 08 28 */	fsubs f1, f4, f1
/* 8045C530  C0 85 46 34 */	lfs f4, lit_586@l(r5)  /* 0x80644634@l */
/* 8045C534  EC A2 00 B2 */	fmuls f5, f2, f2
/* 8045C538  EC 00 18 28 */	fsubs f0, f0, f3
/* 8045C53C  EC 61 00 72 */	fmuls f3, f1, f1
/* 8045C540  EC 04 00 2A */	fadds f0, f4, f0
/* 8045C544  EF E5 18 2A */	fadds f31, f5, f3
/* 8045C548  EC 00 00 32 */	fmuls f0, f0, f0
/* 8045C54C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8045C550  40 80 00 F8 */	bge lbl_8045C648
/* 8045C554  4B FA FA AD */	bl atans_table
/* 8045C558  3C 80 80 64 */	lis r4, lit_459@ha /* 0x806445BC@ha */
/* 8045C55C  7C 7B 1B 78 */	mr r27, r3
/* 8045C560  C0 04 45 BC */	lfs f0, lit_459@l(r4)  /* 0x806445BC@l */
/* 8045C564  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8045C568  40 81 00 6C */	ble lbl_8045C5D4
/* 8045C56C  FC 20 F8 34 */	frsqrte f1, f31
/* 8045C570  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 8045C574  38 83 45 FC */	addi r4, r3, lit_509@l /* 0x806445FC@l */
/* 8045C578  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8045C57C  C8 64 00 00 */	lfd f3, 0(r4)
/* 8045C580  FC 01 00 72 */	fmul f0, f1, f1
/* 8045C584  C8 43 46 04 */	lfd f2, lit_510@l(r3)  /* 0x80644604@l */
/* 8045C588  FC 23 00 72 */	fmul f1, f3, f1
/* 8045C58C  FC 1F 00 32 */	fmul f0, f31, f0
/* 8045C590  FC 02 00 28 */	fsub f0, f2, f0
/* 8045C594  FC 21 00 32 */	fmul f1, f1, f0
/* 8045C598  FC 01 00 72 */	fmul f0, f1, f1
/* 8045C59C  FC 23 00 72 */	fmul f1, f3, f1
/* 8045C5A0  FC 1F 00 32 */	fmul f0, f31, f0
/* 8045C5A4  FC 02 00 28 */	fsub f0, f2, f0
/* 8045C5A8  FC 21 00 32 */	fmul f1, f1, f0
/* 8045C5AC  FC 01 00 72 */	fmul f0, f1, f1
/* 8045C5B0  FC 23 00 72 */	fmul f1, f3, f1
/* 8045C5B4  FC 1F 00 32 */	fmul f0, f31, f0
/* 8045C5B8  FC 02 00 28 */	fsub f0, f2, f0
/* 8045C5BC  FC 01 00 32 */	fmul f0, f1, f0
/* 8045C5C0  FC 1F 00 32 */	fmul f0, f31, f0
/* 8045C5C4  FC 00 00 18 */	frsp f0, f0
/* 8045C5C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8045C5CC  C0 61 00 08 */	lfs f3, 8(r1)
/* 8045C5D0  48 00 00 08 */	b lbl_8045C5D8
lbl_8045C5D4:
/* 8045C5D4  FC 60 F8 90 */	fmr f3, f31
lbl_8045C5D8:
/* 8045C5D8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8045C5DC  3C 00 43 30 */	lis r0, 0x4330
/* 8045C5E0  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8045C5E4  3C A0 80 64 */	lis r5, lit_586@ha /* 0x80644634@ha */
/* 8045C5E8  80 84 00 00 */	lwz r4, 0(r4)
/* 8045C5EC  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8045C5F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8045C5F4  A8 04 17 48 */	lha r0, 0x1748(r4)
/* 8045C5F8  C8 23 46 3C */	lfd f1, lit_589@l(r3)  /* 0x8064463C@l */
/* 8045C5FC  7F 63 DB 78 */	mr r3, r27
/* 8045C600  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8045C604  C0 45 46 34 */	lfs f2, lit_586@l(r5)  /* 0x80644634@l */
/* 8045C608  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045C60C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8045C610  EC 00 08 28 */	fsubs f0, f0, f1
/* 8045C614  EC 02 00 2A */	fadds f0, f2, f0
/* 8045C618  EF E0 18 28 */	fsubs f31, f0, f3
/* 8045C61C  4B F5 E4 D5 */	bl sin_s
/* 8045C620  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8045C624  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 8045C628  7F 63 DB 78 */	mr r3, r27
/* 8045C62C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8045C630  D0 1A 00 1C */	stfs f0, 0x1c(r26)
/* 8045C634  4B F5 E4 69 */	bl cos_s
/* 8045C638  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8045C63C  C0 1A 00 24 */	lfs f0, 0x24(r26)
/* 8045C640  EC 00 08 28 */	fsubs f0, f0, f1
/* 8045C644  D0 1A 00 24 */	stfs f0, 0x24(r26)
lbl_8045C648:
/* 8045C648  3B 9C 00 01 */	addi r28, r28, 1
/* 8045C64C  3B 39 00 04 */	addi r25, r25, 4
lbl_8045C650:
/* 8045C650  7C 1C E8 00 */	cmpw r28, r29
/* 8045C654  41 80 FE 6C */	blt lbl_8045C4C0
/* 8045C658  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8045C65C  39 61 00 40 */	addi r11, r1, 0x40
/* 8045C660  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8045C664  4B C3 E8 AD */	bl func_8009AF10
/* 8045C668  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8045C66C  7C 08 03 A6 */	mtlr r0
/* 8045C670  38 21 00 50 */	addi r1, r1, 0x50
/* 8045C674  4E 80 00 20 */	blr 
