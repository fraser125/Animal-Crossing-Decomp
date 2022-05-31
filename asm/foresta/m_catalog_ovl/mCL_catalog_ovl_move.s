lbl_805CA018:
/* 805CA018  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805CA01C  7C 08 02 A6 */	mflr r0
/* 805CA020  90 01 00 34 */	stw r0, 0x34(r1)
/* 805CA024  39 61 00 30 */	addi r11, r1, 0x30
/* 805CA028  4B AD 0E AD */	bl func_8009AED4
/* 805CA02C  7C 7D 1B 78 */	mr r29, r3
/* 805CA030  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805CA034  3B E4 05 F4 */	addi r31, r4, 0x5f4
/* 805CA038  83 C4 09 CC */	lwz r30, 0x9cc(r4)
/* 805CA03C  81 84 06 00 */	lwz r12, 0x600(r4)
/* 805CA040  7D 89 03 A6 */	mtctr r12
/* 805CA044  4E 80 04 21 */	bctrl 
/* 805CA048  80 1F 00 04 */	lwz r0, 4(r31)
/* 805CA04C  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806CB6AC@ha */
/* 805CA050  38 A3 B6 AC */	addi r5, r3, ovl_move_proc@l /* 0x806CB6AC@l */
/* 805CA054  7F A3 EB 78 */	mr r3, r29
/* 805CA058  54 00 10 3A */	slwi r0, r0, 2
/* 805CA05C  7F E4 FB 78 */	mr r4, r31
/* 805CA060  7D 85 00 2E */	lwzx r12, r5, r0
/* 805CA064  7D 89 03 A6 */	mtctr r12
/* 805CA068  4E 80 04 21 */	bctrl 
/* 805CA06C  3C DE 00 01 */	addis r6, r30, 1
/* 805CA070  38 60 00 23 */	li r3, 0x23
/* 805CA074  88 86 D9 FE */	lbz r4, -0x2602(r6)
/* 805CA078  38 84 00 01 */	addi r4, r4, 1
/* 805CA07C  7C 04 1B D6 */	divw r0, r4, r3
/* 805CA080  7C 00 19 D6 */	mullw r0, r0, r3
/* 805CA084  7C 00 20 50 */	subf r0, r0, r4
/* 805CA088  98 06 D9 FE */	stb r0, -0x2602(r6)
/* 805CA08C  88 86 D9 FE */	lbz r4, -0x2602(r6)
/* 805CA090  28 04 00 11 */	cmplwi r4, 0x11
/* 805CA094  40 80 00 50 */	bge lbl_805CA0E4
/* 805CA098  3C 00 43 30 */	lis r0, 0x4330
/* 805CA09C  3C A0 80 65 */	lis r5, lit_693@ha /* 0x8064AF0C@ha */
/* 805CA0A0  3C 60 80 65 */	lis r3, lit_697@ha /* 0x8064AF1C@ha */
/* 805CA0A4  90 81 00 0C */	stw r4, 0xc(r1)
/* 805CA0A8  38 83 AF 1C */	addi r4, r3, lit_697@l /* 0x8064AF1C@l */
/* 805CA0AC  C0 45 AF 0C */	lfs f2, lit_693@l(r5)  /* 0x8064AF0C@l */
/* 805CA0B0  90 01 00 08 */	stw r0, 8(r1)
/* 805CA0B4  3C 60 80 65 */	lis r3, lit_694@ha /* 0x8064AF10@ha */
/* 805CA0B8  C8 24 00 00 */	lfd f1, 0(r4)
/* 805CA0BC  C8 01 00 08 */	lfd f0, 8(r1)
/* 805CA0C0  EC 20 08 28 */	fsubs f1, f0, f1
/* 805CA0C4  C0 03 AF 10 */	lfs f0, lit_694@l(r3)  /* 0x8064AF10@l */
/* 805CA0C8  EC 22 00 72 */	fmuls f1, f2, f1
/* 805CA0CC  EC 01 00 24 */	fdivs f0, f1, f0
/* 805CA0D0  FC 00 00 1E */	fctiwz f0, f0
/* 805CA0D4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805CA0D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CA0DC  98 06 D9 FF */	stb r0, -0x2601(r6)
/* 805CA0E0  48 00 00 50 */	b lbl_805CA130
lbl_805CA0E4:
/* 805CA0E4  20 64 00 23 */	subfic r3, r4, 0x23
/* 805CA0E8  3C 00 43 30 */	lis r0, 0x4330
/* 805CA0EC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805CA0F0  3C 80 80 65 */	lis r4, lit_678@ha /* 0x8064AF04@ha */
/* 805CA0F4  90 61 00 14 */	stw r3, 0x14(r1)
/* 805CA0F8  3C A0 80 65 */	lis r5, lit_693@ha /* 0x8064AF0C@ha */
/* 805CA0FC  C8 24 AF 04 */	lfd f1, lit_678@l(r4)  /* 0x8064AF04@l */
/* 805CA100  3C 60 80 65 */	lis r3, lit_695@ha /* 0x8064AF14@ha */
/* 805CA104  90 01 00 10 */	stw r0, 0x10(r1)
/* 805CA108  C0 45 AF 0C */	lfs f2, lit_693@l(r5)  /* 0x8064AF0C@l */
/* 805CA10C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805CA110  EC 20 08 28 */	fsubs f1, f0, f1
/* 805CA114  C0 03 AF 14 */	lfs f0, lit_695@l(r3)  /* 0x8064AF14@l */
/* 805CA118  EC 22 00 72 */	fmuls f1, f2, f1
/* 805CA11C  EC 01 00 24 */	fdivs f0, f1, f0
/* 805CA120  FC 00 00 1E */	fctiwz f0, f0
/* 805CA124  D8 01 00 08 */	stfd f0, 8(r1)
/* 805CA128  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805CA12C  98 06 D9 FF */	stb r0, -0x2601(r6)
lbl_805CA130:
/* 805CA130  39 61 00 30 */	addi r11, r1, 0x30
/* 805CA134  4B AD 0D ED */	bl func_8009AF20
/* 805CA138  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805CA13C  7C 08 03 A6 */	mtlr r0
/* 805CA140  38 21 00 30 */	addi r1, r1, 0x30
/* 805CA144  4E 80 00 20 */	blr 
