lbl_8058AD14:
/* 8058AD14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8058AD18  7C 08 02 A6 */	mflr r0
/* 8058AD1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8058AD20  A8 A3 09 A0 */	lha r5, 0x9a0(r3)
/* 8058AD24  2C 05 00 00 */	cmpwi r5, 0
/* 8058AD28  40 81 00 9C */	ble lbl_8058ADC4
/* 8058AD2C  38 85 FF FF */	addi r4, r5, -1
/* 8058AD30  3C 00 43 30 */	lis r0, 0x4330
/* 8058AD34  B0 83 09 A0 */	sth r4, 0x9a0(r3)
/* 8058AD38  3C 80 80 65 */	lis r4, lit_572@ha /* 0x80649B64@ha */
/* 8058AD3C  38 E4 9B 64 */	addi r7, r4, lit_572@l /* 0x80649B64@l */
/* 8058AD40  3C 80 80 65 */	lis r4, lit_680@ha /* 0x80649B94@ha */
/* 8058AD44  A8 A3 09 A6 */	lha r5, 0x9a6(r3)
/* 8058AD48  38 C4 9B 94 */	addi r6, r4, lit_680@l /* 0x80649B94@l */
/* 8058AD4C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058AD50  90 01 00 18 */	stw r0, 0x18(r1)
/* 8058AD54  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8058AD58  C8 47 00 00 */	lfd f2, 0(r7)
/* 8058AD5C  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8058AD60  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8058AD64  3C A4 00 02 */	addis r5, r4, 2
/* 8058AD68  C0 26 00 00 */	lfs f1, 0(r6)
/* 8058AD6C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8058AD70  38 E1 00 08 */	addi r7, r1, 8
/* 8058AD74  90 01 00 20 */	stw r0, 0x20(r1)
/* 8058AD78  38 80 00 03 */	li r4, 3
/* 8058AD7C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8058AD80  81 05 60 4C */	lwz r8, 0x604c(r5)
/* 8058AD84  38 A0 00 02 */	li r5, 2
/* 8058AD88  38 C0 00 00 */	li r6, 0
/* 8058AD8C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8058AD90  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8058AD94  EC 01 00 2A */	fadds f0, f1, f0
/* 8058AD98  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8058AD9C  A8 03 09 A8 */	lha r0, 0x9a8(r3)
/* 8058ADA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8058ADA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058ADA8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8058ADAC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8058ADB0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8058ADB4  81 88 01 0C */	lwz r12, 0x10c(r8)
/* 8058ADB8  7D 89 03 A6 */	mtctr r12
/* 8058ADBC  4E 80 04 21 */	bctrl 
/* 8058ADC0  48 00 00 0C */	b lbl_8058ADCC
lbl_8058ADC4:
/* 8058ADC4  38 A0 00 02 */	li r5, 2
/* 8058ADC8  48 00 04 85 */	bl aTMN1_setup_think_proc
lbl_8058ADCC:
/* 8058ADCC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8058ADD0  7C 08 03 A6 */	mtlr r0
/* 8058ADD4  38 21 00 30 */	addi r1, r1, 0x30
/* 8058ADD8  4E 80 00 20 */	blr 
