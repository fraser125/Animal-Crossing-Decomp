lbl_803D8800:
/* 803D8800  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D8804  7C 08 02 A6 */	mflr r0
/* 803D8808  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D880C  39 61 00 30 */	addi r11, r1, 0x30
/* 803D8810  4B CC 26 C5 */	bl func_8009AED4
/* 803D8814  7C 9E 23 78 */	mr r30, r4
/* 803D8818  7C BF 2B 78 */	mr r31, r5
/* 803D881C  C0 65 00 08 */	lfs f3, 8(r5)
/* 803D8820  7C 7D 1B 78 */	mr r29, r3
/* 803D8824  C0 24 00 08 */	lfs f1, 8(r4)
/* 803D8828  C0 45 00 04 */	lfs f2, 4(r5)
/* 803D882C  C0 04 00 04 */	lfs f0, 4(r4)
/* 803D8830  EC 23 08 28 */	fsubs f1, f3, f1
/* 803D8834  EC 42 00 28 */	fsubs f2, f2, f0
/* 803D8838  4B C8 43 DD */	bl func_8005CC14
/* 803D883C  C0 7F 00 00 */	lfs f3, 0(r31)
/* 803D8840  C0 1E 00 00 */	lfs f0, 0(r30)
/* 803D8844  D0 21 00 08 */	stfs f1, 8(r1)
/* 803D8848  C0 5F 00 08 */	lfs f2, 8(r31)
/* 803D884C  EC 23 00 28 */	fsubs f1, f3, f0
/* 803D8850  C0 1E 00 08 */	lfs f0, 8(r30)
/* 803D8854  EC 42 00 28 */	fsubs f2, f2, f0
/* 803D8858  4B C8 43 BD */	bl func_8005CC14
/* 803D885C  3C 60 80 64 */	lis r3, data_80642914@ha /* 0x80642914@ha */
/* 803D8860  80 01 00 08 */	lwz r0, 8(r1)
/* 803D8864  C0 03 29 14 */	lfs f0, data_80642914@l(r3)  /* 0x80642914@l */
/* 803D8868  39 61 00 30 */	addi r11, r1, 0x30
/* 803D886C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 803D8870  90 1D 00 00 */	stw r0, 0(r29)
/* 803D8874  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803D8878  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 803D887C  90 1D 00 04 */	stw r0, 4(r29)
/* 803D8880  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803D8884  90 1D 00 08 */	stw r0, 8(r29)
/* 803D8888  4B CC 26 99 */	bl func_8009AF20
/* 803D888C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D8890  7C 08 03 A6 */	mtlr r0
/* 803D8894  38 21 00 30 */	addi r1, r1, 0x30
/* 803D8898  4E 80 00 20 */	blr 