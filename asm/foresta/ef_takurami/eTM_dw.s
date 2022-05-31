lbl_80620CD4:
/* 80620CD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80620CD8  7C 08 02 A6 */	mflr r0
/* 80620CDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80620CE0  39 61 00 30 */	addi r11, r1, 0x30
/* 80620CE4  4B A7 A1 E9 */	bl func_8009AECC
/* 80620CE8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80620CEC  7C 7E 1B 78 */	mr r30, r3
/* 80620CF0  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 80620CF4  A8 1E 00 00 */	lha r0, 0(r30)
/* 80620CF8  3F A3 00 02 */	addis r29, r3, 2
/* 80620CFC  3C C0 80 65 */	lis r6, lit_379@ha /* 0x8064CD24@ha */
/* 80620D00  80 7D 60 9C */	lwz r3, 0x609c(r29)
/* 80620D04  20 00 00 36 */	subfic r0, r0, 0x36
/* 80620D08  3C A0 80 65 */	lis r5, lit_393@ha /* 0x8064CD40@ha */
/* 80620D0C  7C 9B 23 78 */	mr r27, r4
/* 80620D10  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80620D14  7C 1C 07 34 */	extsh r28, r0
/* 80620D18  C0 45 CD 40 */	lfs f2, lit_393@l(r5)  /* 0x8064CD40@l */
/* 80620D1C  7F 83 E3 78 */	mr r3, r28
/* 80620D20  AB FE 00 4C */	lha r31, 0x4c(r30)
/* 80620D24  38 80 00 00 */	li r4, 0
/* 80620D28  C0 26 CD 24 */	lfs f1, lit_379@l(r6)  /* 0x8064CD24@l */
/* 80620D2C  38 A0 00 08 */	li r5, 8
/* 80620D30  7D 89 03 A6 */	mtctr r12
/* 80620D34  4E 80 04 21 */	bctrl 
/* 80620D38  D0 3E 00 34 */	stfs f1, 0x34(r30)
/* 80620D3C  3C C0 80 65 */	lis r6, lit_432@ha /* 0x8064CD4C@ha */
/* 80620D40  3C A0 80 65 */	lis r5, lit_379@ha /* 0x8064CD24@ha */
/* 80620D44  7F 83 E3 78 */	mr r3, r28
/* 80620D48  80 9D 60 9C */	lwz r4, 0x609c(r29)
/* 80620D4C  C0 45 CD 24 */	lfs f2, lit_379@l(r5)  /* 0x8064CD24@l */
/* 80620D50  38 A0 00 36 */	li r5, 0x36
/* 80620D54  81 84 00 14 */	lwz r12, 0x14(r4)
/* 80620D58  38 80 00 2E */	li r4, 0x2e
/* 80620D5C  C0 26 CD 4C */	lfs f1, lit_432@l(r6)  /* 0x8064CD4C@l */
/* 80620D60  7D 89 03 A6 */	mtctr r12
/* 80620D64  4E 80 04 21 */	bctrl 
/* 80620D68  FC 00 08 1E */	fctiwz f0, f1
/* 80620D6C  80 BD 60 9C */	lwz r5, 0x609c(r29)
/* 80620D70  7F 63 DB 78 */	mr r3, r27
/* 80620D74  38 9E 00 10 */	addi r4, r30, 0x10
/* 80620D78  81 85 00 1C */	lwz r12, 0x1c(r5)
/* 80620D7C  38 BE 00 34 */	addi r5, r30, 0x34
/* 80620D80  D8 01 00 08 */	stfd f0, 8(r1)
/* 80620D84  38 DE 00 40 */	addi r6, r30, 0x40
/* 80620D88  83 BB 00 00 */	lwz r29, 0(r27)
/* 80620D8C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80620D90  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 80620D94  7D 89 03 A6 */	mtctr r12
/* 80620D98  4E 80 04 21 */	bctrl 
/* 80620D9C  80 DD 02 E0 */	lwz r6, 0x2e0(r29)
/* 80620DA0  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA0000FF@ha */
/* 80620DA4  3C 60 80 6D */	lis r3, eTM_direct2disp@ha /* 0x806D37B8@ha */
/* 80620DA8  3C 80 DE 00 */	lis r4, 0xde00
/* 80620DAC  38 06 00 08 */	addi r0, r6, 8
/* 80620DB0  38 A5 00 FF */	addi r5, r5, 0x00FF /* 0xFA0000FF@l */
/* 80620DB4  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 80620DB8  57 E0 10 3A */	slwi r0, r31, 2
/* 80620DBC  38 63 37 B8 */	addi r3, r3, eTM_direct2disp@l /* 0x806D37B8@l */
/* 80620DC0  90 A6 00 00 */	stw r5, 0(r6)
/* 80620DC4  93 86 00 04 */	stw r28, 4(r6)
/* 80620DC8  80 DD 02 E0 */	lwz r6, 0x2e0(r29)
/* 80620DCC  38 A6 00 08 */	addi r5, r6, 8
/* 80620DD0  90 BD 02 E0 */	stw r5, 0x2e0(r29)
/* 80620DD4  90 86 00 00 */	stw r4, 0(r6)
/* 80620DD8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80620DDC  90 06 00 04 */	stw r0, 4(r6)
/* 80620DE0  39 61 00 30 */	addi r11, r1, 0x30
/* 80620DE4  4B A7 A1 35 */	bl func_8009AF18
/* 80620DE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80620DEC  7C 08 03 A6 */	mtlr r0
/* 80620DF0  38 21 00 30 */	addi r1, r1, 0x30
/* 80620DF4  4E 80 00 20 */	blr 
