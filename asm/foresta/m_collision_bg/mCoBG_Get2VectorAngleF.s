lbl_8038AA10:
/* 8038AA10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038AA14  7C 08 02 A6 */	mflr r0
/* 8038AA18  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038AA1C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8038AA20  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8038AA24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038AA28  93 C1 00 08 */	stw r30, 8(r1)
/* 8038AA2C  3C C0 80 64 */	lis r6, data_806419A4@ha /* 0x806419A4@ha */
/* 8038AA30  C0 03 00 00 */	lfs f0, 0(r3)
/* 8038AA34  C0 26 19 A4 */	lfs f1, data_806419A4@l(r6)  /* 0x806419A4@l */
/* 8038AA38  7C 7E 1B 78 */	mr r30, r3
/* 8038AA3C  7C 9F 23 78 */	mr r31, r4
/* 8038AA40  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8038AA44  40 82 00 28 */	bne lbl_8038AA6C
/* 8038AA48  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8038AA4C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8038AA50  40 82 00 1C */	bne lbl_8038AA6C
/* 8038AA54  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8038AA58  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8038AA5C  40 82 00 10 */	bne lbl_8038AA6C
/* 8038AA60  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8038AA64  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8038AA68  41 82 00 88 */	beq lbl_8038AAF0
lbl_8038AA6C:
/* 8038AA6C  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 8038AA70  2C 00 00 01 */	cmpwi r0, 1
/* 8038AA74  41 82 00 3C */	beq lbl_8038AAB0
/* 8038AA78  40 80 00 6C */	bge lbl_8038AAE4
/* 8038AA7C  2C 00 00 00 */	cmpwi r0, 0
/* 8038AA80  40 80 00 08 */	bge lbl_8038AA88
/* 8038AA84  48 00 00 60 */	b lbl_8038AAE4
lbl_8038AA88:
/* 8038AA88  7F C3 F3 78 */	mr r3, r30
/* 8038AA8C  7F E4 FB 78 */	mr r4, r31
/* 8038AA90  4B FF F7 A1 */	bl mCoBG_GetVectorProductin2D
/* 8038AA94  FF E0 08 90 */	fmr f31, f1
/* 8038AA98  7F C3 F3 78 */	mr r3, r30
/* 8038AA9C  7F E4 FB 78 */	mr r4, r31
/* 8038AAA0  4B FF FD 7D */	bl mCoBG_GetVectorScalar2D
/* 8038AAA4  FC 40 F8 90 */	fmr f2, f31
/* 8038AAA8  48 08 16 A1 */	bl atanf_table
/* 8038AAAC  48 00 00 4C */	b lbl_8038AAF8
lbl_8038AAB0:
/* 8038AAB0  7F C3 F3 78 */	mr r3, r30
/* 8038AAB4  7F E4 FB 78 */	mr r4, r31
/* 8038AAB8  4B FF F7 79 */	bl mCoBG_GetVectorProductin2D
/* 8038AABC  FF E0 08 90 */	fmr f31, f1
/* 8038AAC0  7F C3 F3 78 */	mr r3, r30
/* 8038AAC4  7F E4 FB 78 */	mr r4, r31
/* 8038AAC8  4B FF FD 55 */	bl mCoBG_GetVectorScalar2D
/* 8038AACC  FC 40 F8 90 */	fmr f2, f31
/* 8038AAD0  48 08 16 79 */	bl atanf_table
/* 8038AAD4  3C 60 80 64 */	lis r3, lit_521@ha /* 0x806419AC@ha */
/* 8038AAD8  C0 03 19 AC */	lfs f0, lit_521@l(r3)  /* 0x806419AC@l */
/* 8038AADC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8038AAE0  48 00 00 18 */	b lbl_8038AAF8
lbl_8038AAE4:
/* 8038AAE4  3C 60 80 64 */	lis r3, lit_522@ha /* 0x806419B0@ha */
/* 8038AAE8  C0 23 19 B0 */	lfs f1, lit_522@l(r3)  /* 0x806419B0@l */
/* 8038AAEC  48 00 00 0C */	b lbl_8038AAF8
lbl_8038AAF0:
/* 8038AAF0  3C 60 80 64 */	lis r3, lit_522@ha /* 0x806419B0@ha */
/* 8038AAF4  C0 23 19 B0 */	lfs f1, lit_522@l(r3)  /* 0x806419B0@l */
lbl_8038AAF8:
/* 8038AAF8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8038AAFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038AB00  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8038AB04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038AB08  83 C1 00 08 */	lwz r30, 8(r1)
/* 8038AB0C  7C 08 03 A6 */	mtlr r0
/* 8038AB10  38 21 00 20 */	addi r1, r1, 0x20
/* 8038AB14  4E 80 00 20 */	blr 
