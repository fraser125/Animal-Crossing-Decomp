lbl_8045F0D4:
/* 8045F0D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045F0D8  7C 08 02 A6 */	mflr r0
/* 8045F0DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045F0E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045F0E4  7C 7F 1B 78 */	mr r31, r3
/* 8045F0E8  80 03 00 00 */	lwz r0, 0(r3)
/* 8045F0EC  2C 00 00 0A */	cmpwi r0, 0xa
/* 8045F0F0  40 82 00 24 */	bne lbl_8045F114
/* 8045F0F4  4B BF DC 01 */	bl fqrand
/* 8045F0F8  3C 60 80 64 */	lis r3, lit_1086@ha /* 0x80644708@ha */
/* 8045F0FC  38 00 00 00 */	li r0, 0
/* 8045F100  C0 03 47 08 */	lfs f0, lit_1086@l(r3)  /* 0x80644708@l */
/* 8045F104  EC 00 08 2A */	fadds f0, f0, f1
/* 8045F108  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 8045F10C  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 8045F110  48 00 00 9C */	b lbl_8045F1AC
lbl_8045F114:
/* 8045F114  2C 00 00 09 */	cmpwi r0, 9
/* 8045F118  40 82 00 30 */	bne lbl_8045F148
/* 8045F11C  4B BF DB D9 */	bl fqrand
/* 8045F120  3C 80 80 64 */	lis r4, lit_1086@ha /* 0x80644708@ha */
/* 8045F124  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806446FC@ha */
/* 8045F128  C0 44 47 08 */	lfs f2, lit_1086@l(r4)  /* 0x80644708@l */
/* 8045F12C  38 00 00 00 */	li r0, 0
/* 8045F130  C0 03 46 FC */	lfs f0, lit_1066@l(r3)  /* 0x806446FC@l */
/* 8045F134  EC 22 08 2A */	fadds f1, f2, f1
/* 8045F138  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045F13C  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 8045F140  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 8045F144  48 00 00 68 */	b lbl_8045F1AC
lbl_8045F148:
/* 8045F148  2C 00 00 0B */	cmpwi r0, 0xb
/* 8045F14C  40 82 00 30 */	bne lbl_8045F17C
/* 8045F150  4B BF DB A5 */	bl fqrand
/* 8045F154  3C 80 80 64 */	lis r4, lit_1086@ha /* 0x80644708@ha */
/* 8045F158  3C 60 80 64 */	lis r3, lit_1067@ha /* 0x80644700@ha */
/* 8045F15C  C0 44 47 08 */	lfs f2, lit_1086@l(r4)  /* 0x80644708@l */
/* 8045F160  38 00 00 00 */	li r0, 0
/* 8045F164  C0 03 47 00 */	lfs f0, lit_1067@l(r3)  /* 0x80644700@l */
/* 8045F168  EC 22 08 2A */	fadds f1, f2, f1
/* 8045F16C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045F170  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 8045F174  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 8045F178  48 00 00 34 */	b lbl_8045F1AC
lbl_8045F17C:
/* 8045F17C  2C 00 00 0C */	cmpwi r0, 0xc
/* 8045F180  40 82 00 2C */	bne lbl_8045F1AC
/* 8045F184  4B BF DB 71 */	bl fqrand
/* 8045F188  3C 80 80 64 */	lis r4, lit_1086@ha /* 0x80644708@ha */
/* 8045F18C  3C 60 80 64 */	lis r3, lit_1068@ha /* 0x80644704@ha */
/* 8045F190  C0 44 47 08 */	lfs f2, lit_1086@l(r4)  /* 0x80644708@l */
/* 8045F194  38 00 00 00 */	li r0, 0
/* 8045F198  C0 03 47 04 */	lfs f0, lit_1068@l(r3)  /* 0x80644704@l */
/* 8045F19C  EC 22 08 2A */	fadds f1, f2, f1
/* 8045F1A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045F1A4  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 8045F1A8  B0 1F 00 6E */	sth r0, 0x6e(r31)
lbl_8045F1AC:
/* 8045F1AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045F1B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045F1B4  7C 08 03 A6 */	mtlr r0
/* 8045F1B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8045F1BC  4E 80 00 20 */	blr 
