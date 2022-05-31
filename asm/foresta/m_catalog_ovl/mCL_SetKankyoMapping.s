lbl_805CA4E8:
/* 805CA4E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CA4EC  7C 08 02 A6 */	mflr r0
/* 805CA4F0  3C A0 80 65 */	lis r5, data_8064AEA4@ha /* 0x8064AEA4@ha */
/* 805CA4F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CA4F8  C0 05 AE A4 */	lfs f0, data_8064AEA4@l(r5)  /* 0x8064AEA4@l */
/* 805CA4FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805CA500  7C 9F 23 78 */	mr r31, r4
/* 805CA504  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805CA508  7C 7E 1B 78 */	mr r30, r3
/* 805CA50C  38 60 09 00 */	li r3, 0x900
/* 805CA510  D0 01 00 08 */	stfs f0, 8(r1)
/* 805CA514  4B DF 05 DD */	bl sin_s
/* 805CA518  3C 60 80 65 */	lis r3, lit_749@ha /* 0x8064AF28@ha */
/* 805CA51C  3C 80 80 65 */	lis r4, lit_748@ha /* 0x8064AF24@ha */
/* 805CA520  38 A3 AF 28 */	addi r5, r3, lit_749@l /* 0x8064AF28@l */
/* 805CA524  C0 04 AF 24 */	lfs f0, lit_748@l(r4)  /* 0x8064AF24@l */
/* 805CA528  C0 45 00 00 */	lfs f2, 0(r5)
/* 805CA52C  38 60 09 00 */	li r3, 0x900
/* 805CA530  EC 22 00 72 */	fmuls f1, f2, f1
/* 805CA534  EC 00 08 2A */	fadds f0, f0, f1
/* 805CA538  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805CA53C  4B DF 05 61 */	bl cos_s
/* 805CA540  3C 60 80 65 */	lis r3, lit_749@ha /* 0x8064AF28@ha */
/* 805CA544  C0 03 AF 28 */	lfs f0, lit_749@l(r3)  /* 0x8064AF28@l */
/* 805CA548  EC 00 00 72 */	fmuls f0, f0, f1
/* 805CA54C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805CA550  88 1E 00 2B */	lbz r0, 0x2b(r30)
/* 805CA554  28 00 00 01 */	cmplwi r0, 1
/* 805CA558  40 82 00 24 */	bne lbl_805CA57C
/* 805CA55C  3C 60 80 6D */	lis r3, obj_pos@ha /* 0x806CB6CC@ha */
/* 805CA560  3C 80 80 6D */	lis r4, light_direction@ha /* 0x806CB6C0@ha */
/* 805CA564  38 A4 B6 C0 */	addi r5, r4, light_direction@l /* 0x806CB6C0@l */
/* 805CA568  80 DF 00 00 */	lwz r6, 0(r31)
/* 805CA56C  38 63 B6 CC */	addi r3, r3, obj_pos@l /* 0x806CB6CC@l */
/* 805CA570  38 81 00 08 */	addi r4, r1, 8
/* 805CA574  4B DA B9 91 */	bl HiliteReflect_init
/* 805CA578  48 00 00 28 */	b lbl_805CA5A0
lbl_805CA57C:
/* 805CA57C  28 00 00 02 */	cmplwi r0, 2
/* 805CA580  40 82 00 20 */	bne lbl_805CA5A0
/* 805CA584  3C 60 80 6D */	lis r3, obj_pos@ha /* 0x806CB6CC@ha */
/* 805CA588  3C 80 80 6D */	lis r4, light_direction@ha /* 0x806CB6C0@ha */
/* 805CA58C  38 A4 B6 C0 */	addi r5, r4, light_direction@l /* 0x806CB6C0@l */
/* 805CA590  80 DF 00 00 */	lwz r6, 0(r31)
/* 805CA594  38 63 B6 CC */	addi r3, r3, obj_pos@l /* 0x806CB6CC@l */
/* 805CA598  38 81 00 08 */	addi r4, r1, 8
/* 805CA59C  4B DA B9 A5 */	bl HiliteReflect_xlu_init
lbl_805CA5A0:
/* 805CA5A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CA5A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805CA5A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805CA5AC  7C 08 03 A6 */	mtlr r0
/* 805CA5B0  38 21 00 20 */	addi r1, r1, 0x20
/* 805CA5B4  4E 80 00 20 */	blr 
