lbl_805BA194:
/* 805BA194  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805BA198  7C 08 02 A6 */	mflr r0
/* 805BA19C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805BA1A0  39 61 00 40 */	addi r11, r1, 0x40
/* 805BA1A4  4B AE 0D 1D */	bl func_8009AEC0
/* 805BA1A8  2C 05 00 06 */	cmpwi r5, 6
/* 805BA1AC  83 C3 00 00 */	lwz r30, 0(r3)
/* 805BA1B0  7D 1B 43 78 */	mr r27, r8
/* 805BA1B4  40 82 01 28 */	bne lbl_805BA2DC
/* 805BA1B8  7F C3 F3 78 */	mr r3, r30
/* 805BA1BC  4B E5 32 19 */	bl _Matrix_to_Mtx_new
/* 805BA1C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 805BA1C4  41 82 01 18 */	beq lbl_805BA2DC
/* 805BA1C8  80 1B 02 B8 */	lwz r0, 0x2b8(r27)
/* 805BA1CC  2C 00 3F FF */	cmpwi r0, 0x3fff
/* 805BA1D0  40 82 00 1C */	bne lbl_805BA1EC
/* 805BA1D4  3B 40 00 78 */	li r26, 0x78
/* 805BA1D8  3B 20 00 FF */	li r25, 0xff
/* 805BA1DC  3B 00 00 FF */	li r24, 0xff
/* 805BA1E0  3B A0 00 96 */	li r29, 0x96
/* 805BA1E4  3B 80 00 FF */	li r28, 0xff
/* 805BA1E8  48 00 00 7C */	b lbl_805BA264
lbl_805BA1EC:
/* 805BA1EC  2C 00 00 00 */	cmpwi r0, 0
/* 805BA1F0  40 82 00 1C */	bne lbl_805BA20C
/* 805BA1F4  3B 40 00 00 */	li r26, 0
/* 805BA1F8  3B 20 00 00 */	li r25, 0
/* 805BA1FC  3B 00 00 00 */	li r24, 0
/* 805BA200  3B A0 00 00 */	li r29, 0
/* 805BA204  3B 80 00 FF */	li r28, 0xff
/* 805BA208  48 00 00 5C */	b lbl_805BA264
lbl_805BA20C:
/* 805BA20C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 805BA210  3C 00 43 30 */	lis r0, 0x4330
/* 805BA214  3C 80 80 65 */	lis r4, lit_708@ha /* 0x8064AAD4@ha */
/* 805BA218  90 61 00 0C */	stw r3, 0xc(r1)
/* 805BA21C  38 64 AA D4 */	addi r3, r4, lit_708@l /* 0x8064AAD4@l */
/* 805BA220  3B 20 00 FF */	li r25, 0xff
/* 805BA224  90 01 00 08 */	stw r0, 8(r1)
/* 805BA228  3C 80 80 65 */	lis r4, lit_704@ha /* 0x8064AAC4@ha */
/* 805BA22C  C8 23 00 00 */	lfd f1, 0(r3)
/* 805BA230  3C 60 80 65 */	lis r3, lit_751@ha /* 0x8064AADC@ha */
/* 805BA234  C8 01 00 08 */	lfd f0, 8(r1)
/* 805BA238  3B 00 00 FF */	li r24, 0xff
/* 805BA23C  C0 44 AA C4 */	lfs f2, lit_704@l(r4)  /* 0x8064AAC4@l */
/* 805BA240  3B A0 00 96 */	li r29, 0x96
/* 805BA244  EC 00 08 28 */	fsubs f0, f0, f1
/* 805BA248  C0 23 AA DC */	lfs f1, lit_751@l(r3)  /* 0x8064AADC@l */
/* 805BA24C  3B 80 00 FF */	li r28, 0xff
/* 805BA250  EC 02 00 32 */	fmuls f0, f2, f0
/* 805BA254  EC 01 00 32 */	fmuls f0, f1, f0
/* 805BA258  FC 00 00 1E */	fctiwz f0, f0
/* 805BA25C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805BA260  83 41 00 14 */	lwz r26, 0x14(r1)
lbl_805BA264:
/* 805BA264  80 1B 02 D8 */	lwz r0, 0x2d8(r27)
/* 805BA268  7F C3 F3 78 */	mr r3, r30
/* 805BA26C  20 00 00 03 */	subfic r0, r0, 3
/* 805BA270  7C 00 00 34 */	cntlzw r0, r0
/* 805BA274  54 1B D9 7E */	srwi r27, r0, 5
/* 805BA278  4B E2 AE B9 */	bl _texture_z_light_fog_prim_shadow
/* 805BA27C  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 805BA280  80 FE 03 00 */	lwz r7, 0x300(r30)
/* 805BA284  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 805BA288  57 06 82 1E */	rlwinm r6, r24, 0x10, 8, 0xf
/* 805BA28C  90 07 00 00 */	stw r0, 0(r7)
/* 805BA290  53 26 C0 0E */	rlwimi r6, r25, 0x18, 0, 7
/* 805BA294  53 A6 44 2E */	rlwimi r6, r29, 8, 0x10, 0x17
/* 805BA298  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805BA29C  53 86 06 3E */	rlwimi r6, r28, 0, 0x18, 0x1f
/* 805BA2A0  3C 60 80 6C */	lis r3, mdl@ha /* 0x806C6730@ha */
/* 805BA2A4  38 A4 00 03 */	addi r5, r4, 0x0003 /* 0xDA380003@l */
/* 805BA2A8  90 C7 00 04 */	stw r6, 4(r7)
/* 805BA2AC  3C 80 DE 00 */	lis r4, 0xde00
/* 805BA2B0  57 60 10 3A */	slwi r0, r27, 2
/* 805BA2B4  90 A7 00 08 */	stw r5, 8(r7)
/* 805BA2B8  38 63 67 30 */	addi r3, r3, mdl@l /* 0x806C6730@l */
/* 805BA2BC  93 E7 00 0C */	stw r31, 0xc(r7)
/* 805BA2C0  38 E7 00 10 */	addi r7, r7, 0x10
/* 805BA2C4  7C E5 3B 78 */	mr r5, r7
/* 805BA2C8  90 87 00 00 */	stw r4, 0(r7)
/* 805BA2CC  38 E7 00 08 */	addi r7, r7, 8
/* 805BA2D0  7C 03 00 2E */	lwzx r0, r3, r0
/* 805BA2D4  90 05 00 04 */	stw r0, 4(r5)
/* 805BA2D8  90 FE 03 00 */	stw r7, 0x300(r30)
lbl_805BA2DC:
/* 805BA2DC  38 60 00 01 */	li r3, 1
/* 805BA2E0  39 61 00 40 */	addi r11, r1, 0x40
/* 805BA2E4  4B AE 0C 29 */	bl func_8009AF0C
/* 805BA2E8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805BA2EC  7C 08 03 A6 */	mtlr r0
/* 805BA2F0  38 21 00 40 */	addi r1, r1, 0x40
/* 805BA2F4  4E 80 00 20 */	blr 
