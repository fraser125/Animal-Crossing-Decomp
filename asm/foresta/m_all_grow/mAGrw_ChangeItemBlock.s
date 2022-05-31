lbl_80373A4C:
/* 80373A4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80373A50  7C 08 02 A6 */	mflr r0
/* 80373A54  90 01 00 34 */	stw r0, 0x34(r1)
/* 80373A58  39 61 00 30 */	addi r11, r1, 0x30
/* 80373A5C  4B D2 74 75 */	bl func_8009AED0
/* 80373A60  7C 7C 1B 78 */	mr r28, r3
/* 80373A64  7C 9D 23 78 */	mr r29, r4
/* 80373A68  7C BE 2B 78 */	mr r30, r5
/* 80373A6C  7C DF 33 78 */	mr r31, r6
/* 80373A70  4B CE 92 85 */	bl fqrand
/* 80373A74  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80373A78  3C 60 43 30 */	lis r3, 0x4330
/* 80373A7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80373A80  3C 80 80 64 */	lis r4, data_806411D4@ha /* 0x806411D4@ha */
/* 80373A84  C8 44 11 D4 */	lfd f2, data_806411D4@l(r4)  /* 0x806411D4@l */
/* 80373A88  38 00 01 00 */	li r0, 0x100
/* 80373A8C  90 61 00 08 */	stw r3, 8(r1)
/* 80373A90  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 80373A94  C8 01 00 08 */	lfd f0, 8(r1)
/* 80373A98  EC 00 10 28 */	fsubs f0, f0, f2
/* 80373A9C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80373AA0  FC 00 00 1E */	fctiwz f0, f0
/* 80373AA4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80373AA8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80373AAC  7C 09 03 A6 */	mtctr r0
lbl_80373AB0:
/* 80373AB0  A0 1C 00 00 */	lhz r0, 0(r28)
/* 80373AB4  7C 00 18 40 */	cmplw r0, r3
/* 80373AB8  40 82 00 18 */	bne lbl_80373AD0
/* 80373ABC  2C 04 00 00 */	cmpwi r4, 0
/* 80373AC0  41 81 00 0C */	bgt lbl_80373ACC
/* 80373AC4  B3 BC 00 00 */	sth r29, 0(r28)
/* 80373AC8  48 00 00 10 */	b lbl_80373AD8
lbl_80373ACC:
/* 80373ACC  38 84 FF FF */	addi r4, r4, -1
lbl_80373AD0:
/* 80373AD0  3B 9C 00 02 */	addi r28, r28, 2
/* 80373AD4  42 00 FF DC */	bdnz lbl_80373AB0
lbl_80373AD8:
/* 80373AD8  39 61 00 30 */	addi r11, r1, 0x30
/* 80373ADC  4B D2 74 41 */	bl func_8009AF1C
/* 80373AE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80373AE4  7C 08 03 A6 */	mtlr r0
/* 80373AE8  38 21 00 30 */	addi r1, r1, 0x30
/* 80373AEC  4E 80 00 20 */	blr 
