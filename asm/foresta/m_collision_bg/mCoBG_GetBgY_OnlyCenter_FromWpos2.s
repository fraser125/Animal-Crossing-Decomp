lbl_8038F998:
/* 8038F998  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8038F99C  7C 08 02 A6 */	mflr r0
/* 8038F9A0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8038F9A4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8038F9A8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8038F9AC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8038F9B0  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8038F9B4  80 A3 00 00 */	lwz r5, 0(r3)
/* 8038F9B8  FF C0 08 90 */	fmr f30, f1
/* 8038F9BC  80 C3 00 04 */	lwz r6, 4(r3)
/* 8038F9C0  38 81 00 08 */	addi r4, r1, 8
/* 8038F9C4  80 03 00 08 */	lwz r0, 8(r3)
/* 8038F9C8  38 61 00 0C */	addi r3, r1, 0xc
/* 8038F9CC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8038F9D0  38 A1 00 10 */	addi r5, r1, 0x10
/* 8038F9D4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8038F9D8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8038F9DC  48 01 59 8D */	bl mFI_Wpos2UtNum
/* 8038F9E0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8038F9E4  80 81 00 08 */	lwz r4, 8(r1)
/* 8038F9E8  48 01 66 C5 */	bl mFI_UtNum2BaseHeight
/* 8038F9EC  FF E0 08 90 */	fmr f31, f1
/* 8038F9F0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8038F9F4  80 81 00 08 */	lwz r4, 8(r1)
/* 8038F9F8  48 01 6D 79 */	bl mFI_UtNum2UtKeepH
/* 8038F9FC  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8038FA00  3C 00 43 30 */	lis r0, 0x4330
/* 8038FA04  3C 60 80 64 */	lis r3, lit_804@ha /* 0x806419EC@ha */
/* 8038FA08  90 81 00 24 */	stw r4, 0x24(r1)
/* 8038FA0C  38 83 19 EC */	addi r4, r3, lit_804@l /* 0x806419EC@l */
/* 8038FA10  90 01 00 20 */	stw r0, 0x20(r1)
/* 8038FA14  3C 60 80 64 */	lis r3, lit_802@ha /* 0x806419E4@ha */
/* 8038FA18  C8 44 00 00 */	lfd f2, 0(r4)
/* 8038FA1C  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 8038FA20  C0 03 19 E4 */	lfs f0, lit_802@l(r3)  /* 0x806419E4@l */
/* 8038FA24  EC 21 10 28 */	fsubs f1, f1, f2
/* 8038FA28  EC 00 00 72 */	fmuls f0, f0, f1
/* 8038FA2C  EC 00 F8 2A */	fadds f0, f0, f31
/* 8038FA30  EC 20 F0 28 */	fsubs f1, f0, f30
/* 8038FA34  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8038FA38  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8038FA3C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8038FA40  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8038FA44  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8038FA48  7C 08 03 A6 */	mtlr r0
/* 8038FA4C  38 21 00 50 */	addi r1, r1, 0x50
/* 8038FA50  4E 80 00 20 */	blr 
