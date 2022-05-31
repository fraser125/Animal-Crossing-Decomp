lbl_80497D20:
/* 80497D20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80497D24  7C 08 02 A6 */	mflr r0
/* 80497D28  90 01 00 34 */	stw r0, 0x34(r1)
/* 80497D2C  39 61 00 30 */	addi r11, r1, 0x30
/* 80497D30  4B C0 31 A1 */	bl func_8009AED0
/* 80497D34  7C 7E 1B 78 */	mr r30, r3
/* 80497D38  7C 9F 23 78 */	mr r31, r4
/* 80497D3C  7C FD 3B 78 */	mr r29, r7
/* 80497D40  7C A3 2B 78 */	mr r3, r5
/* 80497D44  7C C4 33 78 */	mr r4, r6
/* 80497D48  3B 80 00 00 */	li r28, 0
/* 80497D4C  4B F0 E4 99 */	bl mFI_BkNum2BlockType
/* 80497D50  3C 80 80 69 */	lis r4, l_gate_direct@ha /* 0x8068BBAC@ha */
/* 80497D54  7C 60 1B 78 */	mr r0, r3
/* 80497D58  38 A4 BB AC */	addi r5, r4, l_gate_direct@l /* 0x8068BBAC@l */
/* 80497D5C  38 61 00 08 */	addi r3, r1, 8
/* 80497D60  7C A5 E8 AE */	lbzx r5, r5, r29
/* 80497D64  7C 04 03 78 */	mr r4, r0
/* 80497D68  4B F4 CE 2D */	bl mRF_BlockTypeDirect2GateData
/* 80497D6C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80497D70  41 82 00 5C */	beq lbl_80497DCC
/* 80497D74  4B BC 4F 81 */	bl fqrand
/* 80497D78  80 81 00 08 */	lwz r4, 8(r1)
/* 80497D7C  3C 00 43 30 */	lis r0, 0x4330
/* 80497D80  90 01 00 10 */	stw r0, 0x10(r1)
/* 80497D84  3C 60 80 64 */	lis r3, data_80644CDC@ha /* 0x80644CDC@ha */
/* 80497D88  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80497D8C  C8 43 4C DC */	lfd f2, data_80644CDC@l(r3)  /* 0x80644CDC@l */
/* 80497D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80497D94  3B 80 00 01 */	li r28, 1
/* 80497D98  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80497D9C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80497DA0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80497DA4  FC 00 00 1E */	fctiwz f0, f0
/* 80497DA8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80497DAC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80497DB0  54 03 18 38 */	slwi r3, r0, 3
/* 80497DB4  7C 1D 18 2E */	lwzx r0, r29, r3
/* 80497DB8  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80497DBC  90 1E 00 00 */	stw r0, 0(r30)
/* 80497DC0  7C 1D 18 2E */	lwzx r0, r29, r3
/* 80497DC4  7C 00 26 70 */	srawi r0, r0, 4
/* 80497DC8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80497DCC:
/* 80497DCC  7F 83 E3 78 */	mr r3, r28
/* 80497DD0  39 61 00 30 */	addi r11, r1, 0x30
/* 80497DD4  4B C0 31 49 */	bl func_8009AF1C
/* 80497DD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80497DDC  7C 08 03 A6 */	mtlr r0
/* 80497DE0  38 21 00 30 */	addi r1, r1, 0x30
/* 80497DE4  4E 80 00 20 */	blr 
