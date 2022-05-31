lbl_8053AB80:
/* 8053AB80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053AB84  7C 08 02 A6 */	mflr r0
/* 8053AB88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053AB8C  39 61 00 20 */	addi r11, r1, 0x20
/* 8053AB90  4B B6 03 41 */	bl func_8009AED0
/* 8053AB94  3C A0 81 1D */	lis r5, data_811D3978@ha /* 0x811D3978@ha */
/* 8053AB98  7C 7C 1B 78 */	mr r28, r3
/* 8053AB9C  83 E5 39 78 */	lwz r31, data_811D3978@l(r5)  /* 0x811D3978@l */
/* 8053ABA0  7C 9D 23 78 */	mr r29, r4
/* 8053ABA4  3B C0 00 00 */	li r30, 0
/* 8053ABA8  28 1F 00 00 */	cmplwi r31, 0
/* 8053ABAC  41 82 00 90 */	beq lbl_8053AC3C
/* 8053ABB0  7F A3 EB 78 */	mr r3, r29
/* 8053ABB4  4B FF FE D1 */	bl aNPC_set_talk_area_info
/* 8053ABB8  80 7F 09 B0 */	lwz r3, 0x9b0(r31)
/* 8053ABBC  80 1D 20 90 */	lwz r0, 0x2090(r29)
/* 8053ABC0  7C 03 00 40 */	cmplw r3, r0
/* 8053ABC4  40 82 00 78 */	bne lbl_8053AC3C
/* 8053ABC8  80 1F 09 B4 */	lwz r0, 0x9b4(r31)
/* 8053ABCC  7C 00 E0 40 */	cmplw r0, r28
/* 8053ABD0  41 82 00 6C */	beq lbl_8053AC3C
/* 8053ABD4  C0 5F 09 BC */	lfs f2, 0x9bc(r31)
/* 8053ABD8  C0 1C 00 28 */	lfs f0, 0x28(r28)
/* 8053ABDC  C0 7F 09 C4 */	lfs f3, 0x9c4(r31)
/* 8053ABE0  C0 3C 00 30 */	lfs f1, 0x30(r28)
/* 8053ABE4  EC 42 00 28 */	fsubs f2, f2, f0
/* 8053ABE8  C0 1F 09 B8 */	lfs f0, 0x9b8(r31)
/* 8053ABEC  EC 23 08 28 */	fsubs f1, f3, f1
/* 8053ABF0  EC 82 00 B2 */	fmuls f4, f2, f2
/* 8053ABF4  EC 61 00 72 */	fmuls f3, f1, f1
/* 8053ABF8  EC 64 18 2A */	fadds f3, f4, f3
/* 8053ABFC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8053AC00  40 80 00 3C */	bge lbl_8053AC3C
/* 8053AC04  4B ED 13 FD */	bl atans_table
/* 8053AC08  A8 1C 00 DE */	lha r0, 0xde(r28)
/* 8053AC0C  7C 63 07 34 */	extsh r3, r3
/* 8053AC10  7C 00 18 50 */	subf r0, r0, r3
/* 8053AC14  7C 04 07 35 */	extsh. r4, r0
/* 8053AC18  7C 04 00 D0 */	neg r0, r4
/* 8053AC1C  41 80 00 08 */	blt lbl_8053AC24
/* 8053AC20  7C 80 23 78 */	mr r0, r4
lbl_8053AC24:
/* 8053AC24  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8053AC28  40 80 00 14 */	bge lbl_8053AC3C
/* 8053AC2C  3C 63 00 01 */	addis r3, r3, 1
/* 8053AC30  3B C0 00 01 */	li r30, 1
/* 8053AC34  38 03 80 00 */	addi r0, r3, -32768
/* 8053AC38  B0 1C 09 5E */	sth r0, 0x95e(r28)
lbl_8053AC3C:
/* 8053AC3C  9B DC 09 5A */	stb r30, 0x95a(r28)
/* 8053AC40  39 61 00 20 */	addi r11, r1, 0x20
/* 8053AC44  4B B6 02 D9 */	bl func_8009AF1C
/* 8053AC48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053AC4C  7C 08 03 A6 */	mtlr r0
/* 8053AC50  38 21 00 20 */	addi r1, r1, 0x20
/* 8053AC54  4E 80 00 20 */	blr 
