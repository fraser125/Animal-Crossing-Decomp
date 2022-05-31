lbl_8045B780:
/* 8045B780  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045B784  7C 08 02 A6 */	mflr r0
/* 8045B788  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045B78C  39 61 00 20 */	addi r11, r1, 0x20
/* 8045B790  4B C3 F7 41 */	bl func_8009AED0
/* 8045B794  3C A0 81 1D */	lis r5, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8045B798  7C 7C 1B 78 */	mr r28, r3
/* 8045B79C  38 65 DF D0 */	addi r3, r5, data_811CDFD0@l /* 0x811CDFD0@l */
/* 8045B7A0  7C 9D 23 78 */	mr r29, r4
/* 8045B7A4  80 63 00 00 */	lwz r3, 0(r3)
/* 8045B7A8  3B E3 1C 0C */	addi r31, r3, 0x1c0c
/* 8045B7AC  4B C0 15 49 */	bl fqrand
/* 8045B7B0  3C 60 80 64 */	lis r3, lit_935@ha /* 0x806446C4@ha */
/* 8045B7B4  3B C0 00 00 */	li r30, 0
/* 8045B7B8  C0 03 46 C4 */	lfs f0, lit_935@l(r3)  /* 0x806446C4@l */
/* 8045B7BC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045B7C0  FC 00 00 1E */	fctiwz f0, f0
/* 8045B7C4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8045B7C8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8045B7CC  38 03 00 14 */	addi r0, r3, 0x14
/* 8045B7D0  B0 1C 00 6E */	sth r0, 0x6e(r28)
lbl_8045B7D4:
/* 8045B7D4  7F E3 FB 78 */	mr r3, r31
/* 8045B7D8  7F A4 EB 78 */	mr r4, r29
/* 8045B7DC  4B FF FB 21 */	bl ari_alone_dt
/* 8045B7E0  3B DE 00 01 */	addi r30, r30, 1
/* 8045B7E4  3B FF 00 94 */	addi r31, r31, 0x94
/* 8045B7E8  2C 1E 00 0F */	cmpwi r30, 0xf
/* 8045B7EC  41 80 FF E8 */	blt lbl_8045B7D4
/* 8045B7F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8045B7F4  4B C3 F7 29 */	bl func_8009AF1C
/* 8045B7F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045B7FC  7C 08 03 A6 */	mtlr r0
/* 8045B800  38 21 00 20 */	addi r1, r1, 0x20
/* 8045B804  4E 80 00 20 */	blr 
