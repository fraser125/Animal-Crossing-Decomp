lbl_803EB220:
/* 803EB220  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803EB224  7C 08 02 A6 */	mflr r0
/* 803EB228  90 01 00 34 */	stw r0, 0x34(r1)
/* 803EB22C  39 61 00 30 */	addi r11, r1, 0x30
/* 803EB230  4B CA FC 9D */	bl func_8009AECC
/* 803EB234  7C 7B 1B 78 */	mr r27, r3
/* 803EB238  7C 9E 23 78 */	mr r30, r4
/* 803EB23C  7C BF 2B 78 */	mr r31, r5
/* 803EB240  4B FF FF 39 */	bl mSP_GetNonePossessionItemCount_InList
/* 803EB244  7C 7D 1B 79 */	or. r29, r3, r3
/* 803EB248  41 82 00 B0 */	beq lbl_803EB2F8
/* 803EB24C  28 1B 00 00 */	cmplwi r27, 0
/* 803EB250  41 82 00 A8 */	beq lbl_803EB2F8
/* 803EB254  4B C7 1A A1 */	bl fqrand
/* 803EB258  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 803EB25C  3C 00 43 30 */	lis r0, 0x4330
/* 803EB260  90 61 00 0C */	stw r3, 0xc(r1)
/* 803EB264  3C 80 80 64 */	lis r4, lit_562@ha /* 0x8064318C@ha */
/* 803EB268  7F 7C DB 78 */	mr r28, r27
/* 803EB26C  C8 44 31 8C */	lfd f2, lit_562@l(r4)  /* 0x8064318C@l */
/* 803EB270  90 01 00 08 */	stw r0, 8(r1)
/* 803EB274  3B 60 00 00 */	li r27, 0
/* 803EB278  C8 01 00 08 */	lfd f0, 8(r1)
/* 803EB27C  EC 00 10 28 */	fsubs f0, f0, f2
/* 803EB280  EC 00 00 72 */	fmuls f0, f0, f1
/* 803EB284  FC 00 00 1E */	fctiwz f0, f0
/* 803EB288  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803EB28C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803EB290  48 00 00 5C */	b lbl_803EB2EC
lbl_803EB294:
/* 803EB294  2C 1E 00 00 */	cmpwi r30, 0
/* 803EB298  40 82 00 0C */	bne lbl_803EB2A4
/* 803EB29C  4B FF C4 F5 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803EB2A0  48 00 00 18 */	b lbl_803EB2B8
lbl_803EB2A4:
/* 803EB2A4  2C 1E 00 03 */	cmpwi r30, 3
/* 803EB2A8  40 82 00 0C */	bne lbl_803EB2B4
/* 803EB2AC  38 63 DA 00 */	addi r3, r3, -9728
/* 803EB2B0  48 00 00 08 */	b lbl_803EB2B8
lbl_803EB2B4:
/* 803EB2B4  38 63 D9 00 */	addi r3, r3, -9984
lbl_803EB2B8:
/* 803EB2B8  7C 64 2E 70 */	srawi r4, r3, 5
/* 803EB2BC  54 60 06 FE */	clrlwi r0, r3, 0x1b
/* 803EB2C0  54 83 10 3A */	slwi r3, r4, 2
/* 803EB2C4  7C 7F 18 2E */	lwzx r3, r31, r3
/* 803EB2C8  7C 60 04 30 */	srw r0, r3, r0
/* 803EB2CC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803EB2D0  40 82 00 18 */	bne lbl_803EB2E8
/* 803EB2D4  7C 1D D8 00 */	cmpw r29, r27
/* 803EB2D8  40 82 00 0C */	bne lbl_803EB2E4
/* 803EB2DC  A0 7C 00 00 */	lhz r3, 0(r28)
/* 803EB2E0  48 00 00 1C */	b lbl_803EB2FC
lbl_803EB2E4:
/* 803EB2E4  3B 7B 00 01 */	addi r27, r27, 1
lbl_803EB2E8:
/* 803EB2E8  3B 9C 00 02 */	addi r28, r28, 2
lbl_803EB2EC:
/* 803EB2EC  A0 7C 00 00 */	lhz r3, 0(r28)
/* 803EB2F0  28 03 00 00 */	cmplwi r3, 0
/* 803EB2F4  40 82 FF A0 */	bne lbl_803EB294
lbl_803EB2F8:
/* 803EB2F8  38 60 00 00 */	li r3, 0
lbl_803EB2FC:
/* 803EB2FC  39 61 00 30 */	addi r11, r1, 0x30
/* 803EB300  4B CA FC 19 */	bl func_8009AF18
/* 803EB304  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803EB308  7C 08 03 A6 */	mtlr r0
/* 803EB30C  38 21 00 30 */	addi r1, r1, 0x30
/* 803EB310  4E 80 00 20 */	blr 
