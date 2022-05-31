lbl_803CD8B4:
/* 803CD8B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CD8B8  7C 08 02 A6 */	mflr r0
/* 803CD8BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CD8C0  39 61 00 30 */	addi r11, r1, 0x30
/* 803CD8C4  4B CC D6 11 */	bl func_8009AED4
/* 803CD8C8  28 06 00 00 */	cmplwi r6, 0
/* 803CD8CC  7C 7F 1B 78 */	mr r31, r3
/* 803CD8D0  7C FD 3B 78 */	mr r29, r7
/* 803CD8D4  40 82 00 0C */	bne lbl_803CD8E0
/* 803CD8D8  8B C5 00 0D */	lbz r30, 0xd(r5)
/* 803CD8DC  48 00 00 0C */	b lbl_803CD8E8
lbl_803CD8E0:
/* 803CD8E0  88 06 00 14 */	lbz r0, 0x14(r6)
/* 803CD8E4  54 1E 06 7E */	clrlwi r30, r0, 0x19
lbl_803CD8E8:
/* 803CD8E8  7C 83 23 78 */	mr r3, r4
/* 803CD8EC  7C A4 2B 78 */	mr r4, r5
/* 803CD8F0  7C C5 33 78 */	mr r5, r6
/* 803CD8F4  4B FF FC FD */	bl mNpc_SetRemailFreeString
/* 803CD8F8  3C 60 80 66 */	lis r3, mail_no@ha /* 0x8065B284@ha */
/* 803CD8FC  57 A4 15 BA */	rlwinm r4, r29, 2, 0x16, 0x1d
/* 803CD900  38 63 B2 84 */	addi r3, r3, mail_no@l /* 0x8065B284@l */
/* 803CD904  1C 1E 00 03 */	mulli r0, r30, 3
/* 803CD908  7C 63 20 2E */	lwzx r3, r3, r4
/* 803CD90C  7F C3 02 14 */	add r30, r3, r0
/* 803CD910  4B C8 F3 E5 */	bl fqrand
/* 803CD914  3C 80 80 64 */	lis r4, lit_1327@ha /* 0x806428E0@ha */
/* 803CD918  3C 60 81 17 */	lis r3, tmp_super@ha /* 0x8116B3D0@ha */
/* 803CD91C  38 A4 28 E0 */	addi r5, r4, lit_1327@l /* 0x806428E0@l */
/* 803CD920  38 DF 00 4A */	addi r6, r31, 0x4a
/* 803CD924  C0 05 00 00 */	lfs f0, 0(r5)
/* 803CD928  3C 80 81 17 */	lis r4, tmp_ps_1322@ha /* 0x8116B3F8@ha */
/* 803CD92C  38 A4 B3 F8 */	addi r5, r4, tmp_ps_1322@l /* 0x8116B3F8@l */
/* 803CD930  38 63 B3 D0 */	addi r3, r3, tmp_super@l /* 0x8116B3D0@l */
/* 803CD934  EC 00 00 72 */	fmuls f0, f0, f1
/* 803CD938  38 81 00 08 */	addi r4, r1, 8
/* 803CD93C  FC 00 00 1E */	fctiwz f0, f0
/* 803CD940  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803CD944  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CD948  7F DE 02 14 */	add r30, r30, r0
/* 803CD94C  7F C7 F3 78 */	mr r7, r30
/* 803CD950  4B FE 4D E5 */	bl mHandbill_Load_HandbillFromRom
/* 803CD954  80 01 00 08 */	lwz r0, 8(r1)
/* 803CD958  3C 60 81 17 */	lis r3, tmp_super@ha /* 0x8116B3D0@ha */
/* 803CD95C  38 83 B3 D0 */	addi r4, r3, tmp_super@l /* 0x8116B3D0@l */
/* 803CD960  38 A0 00 18 */	li r5, 0x18
/* 803CD964  98 1F 00 2F */	stb r0, 0x2f(r31)
/* 803CD968  38 7F 00 32 */	addi r3, r31, 0x32
/* 803CD96C  4B FE D0 B9 */	bl func_803BAA24
/* 803CD970  3C 80 81 17 */	lis r4, tmp_ps_1322@ha /* 0x8116B3F8@ha */
/* 803CD974  38 7F 01 0A */	addi r3, r31, 0x10a
/* 803CD978  38 84 B3 F8 */	addi r4, r4, tmp_ps_1322@l /* 0x8116B3F8@l */
/* 803CD97C  38 A0 00 20 */	li r5, 0x20
/* 803CD980  4B FE D0 A5 */	bl func_803BAA24
/* 803CD984  38 00 00 00 */	li r0, 0
/* 803CD988  39 61 00 30 */	addi r11, r1, 0x30
/* 803CD98C  B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 803CD990  4B CC D5 91 */	bl func_8009AF20
/* 803CD994  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CD998  7C 08 03 A6 */	mtlr r0
/* 803CD99C  38 21 00 30 */	addi r1, r1, 0x30
/* 803CD9A0  4E 80 00 20 */	blr 
