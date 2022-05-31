lbl_8059D88C:
/* 8059D88C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059D890  7C 08 02 A6 */	mflr r0
/* 8059D894  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059D898  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8059D89C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8059D8A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059D8A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059D8A8  7C 7E 1B 78 */	mr r30, r3
/* 8059D8AC  3C 60 80 6C */	lis r3, lit_575@ha /* 0x806C34F0@ha */
/* 8059D8B0  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 8059D8B4  38 03 34 F0 */	addi r0, r3, lit_575@l /* 0x806C34F0@l */
/* 8059D8B8  80 DE 00 2C */	lwz r6, 0x2c(r30)
/* 8059D8BC  7C 9F 23 78 */	mr r31, r4
/* 8059D8C0  7C 04 03 78 */	mr r4, r0
/* 8059D8C4  38 61 00 08 */	addi r3, r1, 8
/* 8059D8C8  90 A1 00 08 */	stw r5, 8(r1)
/* 8059D8CC  38 A0 02 1D */	li r5, 0x21d
/* 8059D8D0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8059D8D4  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8059D8D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059D8DC  4B DF 66 DD */	bl mCoBG_GetWaterHeight_File
/* 8059D8E0  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 8059D8E4  FF E0 08 90 */	fmr f31, f1
/* 8059D8E8  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 8059D8EC  FC 40 00 50 */	fneg f2, f0
/* 8059D8F0  4B E6 E7 11 */	bl atans_table
/* 8059D8F4  B0 7E 00 DC */	sth r3, 0xdc(r30)
/* 8059D8F8  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8059D8FC  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8059D900  4C 40 13 82 */	cror 2, 0, 2
/* 8059D904  40 82 00 14 */	bne lbl_8059D918
/* 8059D908  7F C3 F3 78 */	mr r3, r30
/* 8059D90C  7F E5 FB 78 */	mr r5, r31
/* 8059D910  38 80 00 05 */	li r4, 5
/* 8059D914  48 00 04 61 */	bl aIKR_setupAction
lbl_8059D918:
/* 8059D918  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8059D91C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059D920  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8059D924  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059D928  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059D92C  7C 08 03 A6 */	mtlr r0
/* 8059D930  38 21 00 30 */	addi r1, r1, 0x30
/* 8059D934  4E 80 00 20 */	blr 
