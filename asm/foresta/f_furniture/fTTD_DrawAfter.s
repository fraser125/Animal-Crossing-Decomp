lbl_8063D878:
/* 8063D878  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063D87C  7C 08 02 A6 */	mflr r0
/* 8063D880  3C 80 80 65 */	lis r4, lit_1028@ha /* 0x8064D2CC@ha */
/* 8063D884  2C 05 00 03 */	cmpwi r5, 3
/* 8063D888  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063D88C  C0 24 D2 CC */	lfs f1, lit_1028@l(r4)  /* 0x8064D2CC@l */
/* 8063D890  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8063D894  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8063D898  C0 08 08 34 */	lfs f0, 0x834(r8)
/* 8063D89C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8063D8A0  FC 00 00 1E */	fctiwz f0, f0
/* 8063D8A4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8063D8A8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8063D8AC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8063D8B0  40 82 00 50 */	bne lbl_8063D900
/* 8063D8B4  83 C3 00 00 */	lwz r30, 0(r3)
/* 8063D8B8  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063D8BC  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063D8C0  83 FE 02 E0 */	lwz r31, 0x2e0(r30)
/* 8063D8C4  38 9F 00 08 */	addi r4, r31, 8
/* 8063D8C8  90 9E 02 E0 */	stw r4, 0x2e0(r30)
/* 8063D8CC  90 1F 00 00 */	stw r0, 0(r31)
/* 8063D8D0  80 63 00 00 */	lwz r3, 0(r3)
/* 8063D8D4  4B DC FB 01 */	bl _Matrix_to_Mtx_new
/* 8063D8D8  90 7F 00 04 */	stw r3, 4(r31)
/* 8063D8DC  3C 60 81 10 */	lis r3, int_tak_toudai_evw_model@ha /* 0x810FB0F0@ha */
/* 8063D8E0  3C 80 DE 00 */	lis r4, 0xde00
/* 8063D8E4  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 8063D8E8  38 03 B0 F0 */	addi r0, r3, int_tak_toudai_evw_model@l /* 0x810FB0F0@l */
/* 8063D8EC  38 65 00 08 */	addi r3, r5, 8
/* 8063D8F0  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8063D8F4  90 85 00 00 */	stw r4, 0(r5)
/* 8063D8F8  90 05 00 04 */	stw r0, 4(r5)
/* 8063D8FC  48 00 00 70 */	b lbl_8063D96C
lbl_8063D900:
/* 8063D900  2C 05 00 07 */	cmpwi r5, 7
/* 8063D904  40 82 00 68 */	bne lbl_8063D96C
/* 8063D908  83 C3 00 00 */	lwz r30, 0(r3)
/* 8063D90C  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063D910  64 06 FA 00 */	oris r6, r0, 0xfa00
/* 8063D914  38 A0 96 FF */	li r5, -26881
/* 8063D918  80 FE 02 E0 */	lwz r7, 0x2e0(r30)
/* 8063D91C  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063D920  38 87 00 08 */	addi r4, r7, 8
/* 8063D924  90 9E 02 E0 */	stw r4, 0x2e0(r30)
/* 8063D928  90 C7 00 00 */	stw r6, 0(r7)
/* 8063D92C  90 A7 00 04 */	stw r5, 4(r7)
/* 8063D930  83 FE 02 E0 */	lwz r31, 0x2e0(r30)
/* 8063D934  38 9F 00 08 */	addi r4, r31, 8
/* 8063D938  90 9E 02 E0 */	stw r4, 0x2e0(r30)
/* 8063D93C  90 1F 00 00 */	stw r0, 0(r31)
/* 8063D940  80 63 00 00 */	lwz r3, 0(r3)
/* 8063D944  4B DC FA 91 */	bl _Matrix_to_Mtx_new
/* 8063D948  90 7F 00 04 */	stw r3, 4(r31)
/* 8063D94C  3C 60 81 10 */	lis r3, int_tak_toudai_right_model@ha /* 0x810FAF50@ha */
/* 8063D950  3C 80 DE 00 */	lis r4, 0xde00
/* 8063D954  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 8063D958  38 03 AF 50 */	addi r0, r3, int_tak_toudai_right_model@l /* 0x810FAF50@l */
/* 8063D95C  38 65 00 08 */	addi r3, r5, 8
/* 8063D960  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8063D964  90 85 00 00 */	stw r4, 0(r5)
/* 8063D968  90 05 00 04 */	stw r0, 4(r5)
lbl_8063D96C:
/* 8063D96C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063D970  38 60 00 01 */	li r3, 1
/* 8063D974  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8063D978  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8063D97C  7C 08 03 A6 */	mtlr r0
/* 8063D980  38 21 00 20 */	addi r1, r1, 0x20
/* 8063D984  4E 80 00 20 */	blr 
