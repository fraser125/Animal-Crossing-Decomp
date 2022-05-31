lbl_803BF7FC:
/* 803BF7FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BF800  7C 08 02 A6 */	mflr r0
/* 803BF804  28 04 00 00 */	cmplwi r4, 0
/* 803BF808  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BF80C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BF810  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803BF814  7C 7E 1B 78 */	mr r30, r3
/* 803BF818  41 82 00 98 */	beq lbl_803BF8B0
/* 803BF81C  90 9E 00 20 */	stw r4, 0x20(r30)
/* 803BF820  38 61 00 08 */	addi r3, r1, 8
/* 803BF824  90 BE 00 24 */	stw r5, 0x24(r30)
/* 803BF828  48 01 23 69 */	bl mNpc_GetNpcWorldName
/* 803BF82C  38 61 00 08 */	addi r3, r1, 8
/* 803BF830  38 80 00 08 */	li r4, 8
/* 803BF834  48 00 14 31 */	bl mMsg_Get_Length_String
/* 803BF838  7C 60 1B 78 */	mr r0, r3
/* 803BF83C  38 61 00 08 */	addi r3, r1, 8
/* 803BF840  7C 1F 03 78 */	mr r31, r0
/* 803BF844  38 A0 00 01 */	li r5, 1
/* 803BF848  7F E4 FB 78 */	mr r4, r31
/* 803BF84C  4B FE FE 85 */	bl mFont_GetStringWidth
/* 803BF850  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803BF854  3C 00 43 30 */	lis r0, 0x4330
/* 803BF858  90 61 00 14 */	stw r3, 0x14(r1)
/* 803BF85C  3C 80 80 64 */	lis r4, lit_449@ha /* 0x8064260C@ha */
/* 803BF860  C8 44 26 0C */	lfd f2, lit_449@l(r4)  /* 0x8064260C@l */
/* 803BF864  3C 60 80 64 */	lis r3, lit_446@ha /* 0x80642604@ha */
/* 803BF868  90 01 00 10 */	stw r0, 0x10(r1)
/* 803BF86C  3C 80 80 64 */	lis r4, lit_445@ha /* 0x80642600@ha */
/* 803BF870  C0 03 26 04 */	lfs f0, lit_446@l(r3)  /* 0x80642604@l */
/* 803BF874  3C 60 80 64 */	lis r3, data_806425FC@ha /* 0x806425FC@ha */
/* 803BF878  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 803BF87C  38 A3 25 FC */	addi r5, r3, data_806425FC@l /* 0x806425FC@l */
/* 803BF880  C0 65 00 00 */	lfs f3, 0(r5)
/* 803BF884  3C 60 80 64 */	lis r3, lit_447@ha /* 0x80642608@ha */
/* 803BF888  EC 21 10 28 */	fsubs f1, f1, f2
/* 803BF88C  C0 44 26 00 */	lfs f2, lit_445@l(r4)  /* 0x80642600@l */
/* 803BF890  EC 20 08 28 */	fsubs f1, f0, f1
/* 803BF894  C0 03 26 08 */	lfs f0, lit_447@l(r3)  /* 0x80642608@l */
/* 803BF898  EC 22 00 72 */	fmuls f1, f2, f1
/* 803BF89C  EC 23 08 2A */	fadds f1, f3, f1
/* 803BF8A0  D0 3E 00 2C */	stfs f1, 0x2c(r30)
/* 803BF8A4  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 803BF8A8  93 FE 00 28 */	stw r31, 0x28(r30)
/* 803BF8AC  48 00 00 10 */	b lbl_803BF8BC
lbl_803BF8B0:
/* 803BF8B0  38 00 00 00 */	li r0, 0
/* 803BF8B4  90 1E 00 20 */	stw r0, 0x20(r30)
/* 803BF8B8  90 1E 00 24 */	stw r0, 0x24(r30)
lbl_803BF8BC:
/* 803BF8BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BF8C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BF8C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803BF8C8  7C 08 03 A6 */	mtlr r0
/* 803BF8CC  38 21 00 20 */	addi r1, r1, 0x20
/* 803BF8D0  4E 80 00 20 */	blr 
