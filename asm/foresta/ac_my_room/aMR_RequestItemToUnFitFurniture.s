lbl_80477D44:
/* 80477D44  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80477D48  7C 08 02 A6 */	mflr r0
/* 80477D4C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80477D50  39 61 00 70 */	addi r11, r1, 0x70
/* 80477D54  4B C2 31 65 */	bl func_8009AEB8
/* 80477D58  7C 76 1B 78 */	mr r22, r3
/* 80477D5C  7C 97 23 78 */	mr r23, r4
/* 80477D60  38 60 00 01 */	li r3, 1
/* 80477D64  4B FF 86 8D */	bl aMR_GetLayerTopFg
/* 80477D68  80 16 05 00 */	lwz r0, 0x500(r22)
/* 80477D6C  7C 7F 1B 78 */	mr r31, r3
/* 80477D70  2C 00 FF FF */	cmpwi r0, -1
/* 80477D74  41 82 01 D0 */	beq lbl_80477F44
/* 80477D78  28 1F 00 00 */	cmplwi r31, 0
/* 80477D7C  41 82 01 C8 */	beq lbl_80477F44
/* 80477D80  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80477D84  3B 36 05 08 */	addi r25, r22, 0x508
/* 80477D88  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80477D8C  3B 40 00 00 */	li r26, 0
/* 80477D90  3F C3 00 02 */	addis r30, r3, 2
lbl_80477D94:
/* 80477D94  80 19 00 00 */	lwz r0, 0(r25)
/* 80477D98  2C 00 00 01 */	cmpwi r0, 1
/* 80477D9C  40 82 01 98 */	bne lbl_80477F34
/* 80477DA0  38 00 00 00 */	li r0, 0
/* 80477DA4  3C 60 80 64 */	lis r3, lit_885@ha /* 0x806449F4@ha */
/* 80477DA8  90 19 00 00 */	stw r0, 0(r25)
/* 80477DAC  C0 23 49 F4 */	lfs f1, lit_885@l(r3)  /* 0x806449F4@l */
/* 80477DB0  C0 19 00 20 */	lfs f0, 0x20(r25)
/* 80477DB4  C0 59 00 18 */	lfs f2, 0x18(r25)
/* 80477DB8  EC 00 08 24 */	fdivs f0, f0, f1
/* 80477DBC  80 B9 00 10 */	lwz r5, 0x10(r25)
/* 80477DC0  2C 05 FF FF */	cmpwi r5, -1
/* 80477DC4  EC 22 08 24 */	fdivs f1, f2, f1
/* 80477DC8  FC 00 00 1E */	fctiwz f0, f0
/* 80477DCC  FC 20 08 1E */	fctiwz f1, f1
/* 80477DD0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80477DD4  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 80477DD8  83 61 00 3C */	lwz r27, 0x3c(r1)
/* 80477DDC  83 81 00 34 */	lwz r28, 0x34(r1)
/* 80477DE0  57 60 20 36 */	slwi r0, r27, 4
/* 80477DE4  7F BC 02 14 */	add r29, r28, r0
/* 80477DE8  41 82 01 04 */	beq lbl_80477EEC
/* 80477DEC  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80477DF0  38 00 FF FF */	li r0, -1
/* 80477DF4  38 83 DF E8 */	addi r4, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80477DF8  38 61 00 20 */	addi r3, r1, 0x20
/* 80477DFC  80 C4 00 00 */	lwz r6, 0(r4)
/* 80477E00  1C A5 08 58 */	mulli r5, r5, 0x858
/* 80477E04  38 81 00 14 */	addi r4, r1, 0x14
/* 80477E08  90 19 00 10 */	stw r0, 0x10(r25)
/* 80477E0C  7F 06 2A 14 */	add r24, r6, r5
/* 80477E10  80 B9 00 18 */	lwz r5, 0x18(r25)
/* 80477E14  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 80477E18  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80477E1C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80477E20  80 19 00 20 */	lwz r0, 0x20(r25)
/* 80477E24  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80477E28  4B F2 D7 15 */	bl mFI_Wpos2UtCenterWpos
/* 80477E2C  A8 B6 05 04 */	lha r5, 0x504(r22)
/* 80477E30  3C 00 43 30 */	lis r0, 0x4330
/* 80477E34  A8 97 01 24 */	lha r4, 0x124(r23)
/* 80477E38  3C 60 80 64 */	lis r3, lit_888@ha /* 0x806449FC@ha */
/* 80477E3C  A8 F8 01 24 */	lha r7, 0x124(r24)
/* 80477E40  7C A5 20 50 */	subf r5, r5, r4
/* 80477E44  C8 23 49 FC */	lfd f1, lit_888@l(r3)  /* 0x806449FC@l */
/* 80477E48  7C A6 07 34 */	extsh r6, r5
/* 80477E4C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80477E50  7C C7 32 14 */	add r6, r7, r6
/* 80477E54  3C 80 80 64 */	lis r4, lit_3091@ha /* 0x80644A24@ha */
/* 80477E58  B0 D8 01 24 */	sth r6, 0x124(r24)
/* 80477E5C  38 E4 4A 24 */	addi r7, r4, lit_3091@l /* 0x80644A24@l */
/* 80477E60  3C A0 80 64 */	lis r5, lit_3090@ha /* 0x80644A20@ha */
/* 80477E64  C0 47 00 00 */	lfs f2, 0(r7)
/* 80477E68  A8 D8 01 24 */	lha r6, 0x124(r24)
/* 80477E6C  39 05 4A 20 */	addi r8, r5, lit_3090@l /* 0x80644A20@l */
/* 80477E70  C0 68 00 00 */	lfs f3, 0(r8)
/* 80477E74  7F 03 C3 78 */	mr r3, r24
/* 80477E78  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 80477E7C  38 81 00 08 */	addi r4, r1, 8
/* 80477E80  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80477E84  38 A0 00 01 */	li r5, 1
/* 80477E88  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80477E8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80477E90  EC 02 00 32 */	fmuls f0, f2, f0
/* 80477E94  EC 03 00 32 */	fmuls f0, f3, f0
/* 80477E98  D0 18 00 34 */	stfs f0, 0x34(r24)
/* 80477E9C  C0 18 00 34 */	lfs f0, 0x34(r24)
/* 80477EA0  D0 18 00 38 */	stfs f0, 0x38(r24)
/* 80477EA4  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 80477EA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80477EAC  90 D8 00 08 */	stw r6, 8(r24)
/* 80477EB0  90 18 00 0C */	stw r0, 0xc(r24)
/* 80477EB4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80477EB8  90 18 00 10 */	stw r0, 0x10(r24)
/* 80477EBC  80 D8 00 08 */	lwz r6, 8(r24)
/* 80477EC0  80 18 00 0C */	lwz r0, 0xc(r24)
/* 80477EC4  90 C1 00 08 */	stw r6, 8(r1)
/* 80477EC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80477ECC  80 18 00 10 */	lwz r0, 0x10(r24)
/* 80477ED0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80477ED4  48 00 3E 21 */	bl aMR_SetFurniture2FG
/* 80477ED8  80 B8 00 04 */	lwz r5, 4(r24)
/* 80477EDC  7F A4 EB 78 */	mr r4, r29
/* 80477EE0  38 60 00 04 */	li r3, 4
/* 80477EE4  38 C0 00 01 */	li r6, 1
/* 80477EE8  4B FF 93 9D */	bl aMR_SetInfoFurnitureTable
lbl_80477EEC:
/* 80477EEC  A1 39 00 14 */	lhz r9, 0x14(r25)
/* 80477EF0  28 09 00 00 */	cmplwi r9, 0
/* 80477EF4  41 82 00 40 */	beq lbl_80477F34
/* 80477EF8  A9 19 00 16 */	lha r8, 0x16(r25)
/* 80477EFC  57 A0 08 3C */	slwi r0, r29, 1
/* 80477F00  A8 F6 05 04 */	lha r7, 0x504(r22)
/* 80477F04  7F 63 DB 78 */	mr r3, r27
/* 80477F08  A8 D7 01 24 */	lha r6, 0x124(r23)
/* 80477F0C  7F 84 E3 78 */	mr r4, r28
/* 80477F10  38 A0 00 01 */	li r5, 1
/* 80477F14  7D 3F 03 2E */	sthx r9, r31, r0
/* 80477F18  7C 07 30 50 */	subf r0, r7, r6
/* 80477F1C  7C 08 02 14 */	add r0, r8, r0
/* 80477F20  80 FE 60 BC */	lwz r7, 0x60bc(r30)
/* 80477F24  7C 06 07 34 */	extsh r6, r0
/* 80477F28  81 87 00 0C */	lwz r12, 0xc(r7)
/* 80477F2C  7D 89 03 A6 */	mtctr r12
/* 80477F30  4E 80 04 21 */	bctrl 
lbl_80477F34:
/* 80477F34  3B 5A 00 01 */	addi r26, r26, 1
/* 80477F38  3B 39 00 24 */	addi r25, r25, 0x24
/* 80477F3C  2C 1A 00 04 */	cmpwi r26, 4
/* 80477F40  41 80 FE 54 */	blt lbl_80477D94
lbl_80477F44:
/* 80477F44  38 00 FF FF */	li r0, -1
/* 80477F48  39 61 00 70 */	addi r11, r1, 0x70
/* 80477F4C  90 16 05 00 */	stw r0, 0x500(r22)
/* 80477F50  4B C2 2F B5 */	bl func_8009AF04
/* 80477F54  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80477F58  7C 08 03 A6 */	mtlr r0
/* 80477F5C  38 21 00 70 */	addi r1, r1, 0x70
/* 80477F60  4E 80 00 20 */	blr 
