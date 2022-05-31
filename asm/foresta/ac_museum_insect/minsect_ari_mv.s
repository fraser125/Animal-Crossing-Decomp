lbl_8045B808:
/* 8045B808  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045B80C  7C 08 02 A6 */	mflr r0
/* 8045B810  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045B814  39 61 00 20 */	addi r11, r1, 0x20
/* 8045B818  4B C3 F6 B9 */	bl func_8009AED0
/* 8045B81C  7C 7C 1B 78 */	mr r28, r3
/* 8045B820  3C 60 81 1D */	lis r3, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8045B824  A8 BC 00 6E */	lha r5, 0x6e(r28)
/* 8045B828  7C 9D 23 78 */	mr r29, r4
/* 8045B82C  80 C3 DF D0 */	lwz r6, data_811CDFD0@l(r3)  /* 0x811CDFD0@l */
/* 8045B830  38 65 FF FF */	addi r3, r5, -1
/* 8045B834  7C A0 07 35 */	extsh. r0, r5
/* 8045B838  B0 7C 00 6E */	sth r3, 0x6e(r28)
/* 8045B83C  3B E6 1C 0C */	addi r31, r6, 0x1c0c
/* 8045B840  40 80 00 38 */	bge lbl_8045B878
/* 8045B844  4B C0 14 B1 */	bl fqrand
/* 8045B848  3C 80 80 64 */	lis r4, lit_935@ha /* 0x806446C4@ha */
/* 8045B84C  7F E3 FB 78 */	mr r3, r31
/* 8045B850  38 A4 46 C4 */	addi r5, r4, lit_935@l /* 0x806446C4@l */
/* 8045B854  C0 05 00 00 */	lfs f0, 0(r5)
/* 8045B858  7F A4 EB 78 */	mr r4, r29
/* 8045B85C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045B860  FC 00 00 1E */	fctiwz f0, f0
/* 8045B864  D8 01 00 08 */	stfd f0, 8(r1)
/* 8045B868  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8045B86C  38 05 00 14 */	addi r0, r5, 0x14
/* 8045B870  B0 1C 00 6E */	sth r0, 0x6e(r28)
/* 8045B874  4B FF FA 49 */	bl ari_alone_make
lbl_8045B878:
/* 8045B878  3B C0 00 00 */	li r30, 0
lbl_8045B87C:
/* 8045B87C  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 8045B880  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8045B884  41 82 00 18 */	beq lbl_8045B89C
/* 8045B888  7F E3 FB 78 */	mr r3, r31
/* 8045B88C  7F A4 EB 78 */	mr r4, r29
/* 8045B890  4B FF FA 7D */	bl ari_alone_move
/* 8045B894  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 8045B898  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_8045B89C:
/* 8045B89C  3B DE 00 01 */	addi r30, r30, 1
/* 8045B8A0  3B FF 00 94 */	addi r31, r31, 0x94
/* 8045B8A4  2C 1E 00 0F */	cmpwi r30, 0xf
/* 8045B8A8  41 80 FF D4 */	blt lbl_8045B87C
/* 8045B8AC  39 61 00 20 */	addi r11, r1, 0x20
/* 8045B8B0  4B C3 F6 6D */	bl func_8009AF1C
/* 8045B8B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045B8B8  7C 08 03 A6 */	mtlr r0
/* 8045B8BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8045B8C0  4E 80 00 20 */	blr 
