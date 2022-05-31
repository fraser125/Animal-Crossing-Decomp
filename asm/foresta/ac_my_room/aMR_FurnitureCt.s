lbl_80471EB4:
/* 80471EB4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80471EB8  7C 08 02 A6 */	mflr r0
/* 80471EBC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80471EC0  39 61 00 60 */	addi r11, r1, 0x60
/* 80471EC4  4B C2 8F F9 */	bl func_8009AEBC
/* 80471EC8  AB A1 00 6A */	lha r29, 0x6a(r1)
/* 80471ECC  7C FA 3B 78 */	mr r26, r7
/* 80471ED0  7C 77 1B 78 */	mr r23, r3
/* 80471ED4  7C B8 2B 78 */	mr r24, r5
/* 80471ED8  7C D9 33 78 */	mr r25, r6
/* 80471EDC  7D 1B 43 78 */	mr r27, r8
/* 80471EE0  7D 3C 4B 78 */	mr r28, r9
/* 80471EE4  7D 5E 53 78 */	mr r30, r10
/* 80471EE8  54 FF 07 BE */	clrlwi r31, r7, 0x1e
/* 80471EEC  38 80 08 58 */	li r4, 0x858
/* 80471EF0  4B BE B1 79 */	bl bzero
/* 80471EF4  38 00 00 01 */	li r0, 1
/* 80471EF8  3C 60 80 69 */	lis r3, xyz0_1214@ha /* 0x806897A4@ha */
/* 80471EFC  B0 17 00 02 */	sth r0, 2(r23)
/* 80471F00  39 23 97 A4 */	addi r9, r3, xyz0_1214@l /* 0x806897A4@l */
/* 80471F04  3C C0 80 64 */	lis r6, aMR_angle_table@ha /* 0x806449D8@ha */
/* 80471F08  3C 60 80 64 */	lis r3, lit_1234@ha /* 0x80644A18@ha */
/* 80471F0C  81 09 00 00 */	lwz r8, 0(r9)
/* 80471F10  38 83 4A 18 */	addi r4, r3, lit_1234@l /* 0x80644A18@l */
/* 80471F14  80 E9 00 04 */	lwz r7, 4(r9)
/* 80471F18  3C 60 80 64 */	lis r3, lit_1233@ha /* 0x80644A14@ha */
/* 80471F1C  38 A3 4A 14 */	addi r5, r3, lit_1233@l /* 0x80644A14@l */
/* 80471F20  57 E0 10 3A */	slwi r0, r31, 2
/* 80471F24  91 17 00 40 */	stw r8, 0x40(r23)
/* 80471F28  38 66 49 D8 */	addi r3, r6, aMR_angle_table@l /* 0x806449D8@l */
/* 80471F2C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80471F30  7F 43 D3 78 */	mr r3, r26
/* 80471F34  90 F7 00 44 */	stw r7, 0x44(r23)
/* 80471F38  C0 24 00 00 */	lfs f1, 0(r4)
/* 80471F3C  80 09 00 08 */	lwz r0, 8(r9)
/* 80471F40  C0 45 00 00 */	lfs f2, 0(r5)
/* 80471F44  90 17 00 48 */	stw r0, 0x48(r23)
/* 80471F48  B3 D7 08 3C */	sth r30, 0x83c(r23)
/* 80471F4C  D0 17 00 34 */	stfs f0, 0x34(r23)
/* 80471F50  C0 17 00 34 */	lfs f0, 0x34(r23)
/* 80471F54  D0 17 00 38 */	stfs f0, 0x38(r23)
/* 80471F58  C0 17 00 34 */	lfs f0, 0x34(r23)
/* 80471F5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80471F60  EC 02 00 32 */	fmuls f0, f2, f0
/* 80471F64  FC 00 00 1E */	fctiwz f0, f0
/* 80471F68  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80471F6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80471F70  B0 17 01 24 */	sth r0, 0x124(r23)
/* 80471F74  4B F7 58 1D */	bl mRmTp_FtrItemNo2FtrIdx
/* 80471F78  B0 77 00 00 */	sth r3, 0(r23)
/* 80471F7C  A0 77 00 00 */	lhz r3, 0(r23)
/* 80471F80  4B FF E2 21 */	bl func_804701A0
/* 80471F84  B3 97 00 3C */	sth r28, 0x3c(r23)
/* 80471F88  7C 7E 1B 78 */	mr r30, r3
/* 80471F8C  7E E3 BB 78 */	mr r3, r23
/* 80471F90  7F E4 FB 78 */	mr r4, r31
/* 80471F94  4B FF F3 C1 */	bl aMR_SetFurnitureType
/* 80471F98  7E E3 BB 78 */	mr r3, r23
/* 80471F9C  4B FF F4 29 */	bl aMR_SetFirstScale
/* 80471FA0  88 97 00 3E */	lbz r4, 0x3e(r23)
/* 80471FA4  7F 05 C3 78 */	mr r5, r24
/* 80471FA8  7F 26 CB 78 */	mr r6, r25
/* 80471FAC  38 61 00 20 */	addi r3, r1, 0x20
/* 80471FB0  4B FF F0 05 */	bl aMR_UnitNumber2Position
/* 80471FB4  80 E1 00 20 */	lwz r7, 0x20(r1)
/* 80471FB8  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 80471FBC  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 80471FC0  38 A3 49 F8 */	addi r5, r3, lit_886@l /* 0x806449F8@l */
/* 80471FC4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80471FC8  38 81 00 14 */	addi r4, r1, 0x14
/* 80471FCC  90 E1 00 14 */	stw r7, 0x14(r1)
/* 80471FD0  38 60 00 00 */	li r3, 0
/* 80471FD4  C0 25 00 00 */	lfs f1, 0(r5)
/* 80471FD8  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80471FDC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80471FE0  4B F1 D6 D9 */	bl func_8038F6B8
/* 80471FE4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80471FE8  57 20 20 36 */	slwi r0, r25, 4
/* 80471FEC  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 80471FF0  7F 65 DB 78 */	mr r5, r27
/* 80471FF4  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80471FF8  7C 98 02 14 */	add r4, r24, r0
/* 80471FFC  90 D7 00 08 */	stw r6, 8(r23)
/* 80472000  90 77 00 0C */	stw r3, 0xc(r23)
/* 80472004  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80472008  90 17 00 10 */	stw r0, 0x10(r23)
/* 8047200C  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80472010  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80472014  90 77 00 14 */	stw r3, 0x14(r23)
/* 80472018  90 17 00 18 */	stw r0, 0x18(r23)
/* 8047201C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80472020  90 17 00 1C */	stw r0, 0x1c(r23)
/* 80472024  93 77 00 04 */	stw r27, 4(r23)
/* 80472028  88 77 00 3E */	lbz r3, 0x3e(r23)
/* 8047202C  A8 D7 08 3C */	lha r6, 0x83c(r23)
/* 80472030  4B FF F2 55 */	bl aMR_SetInfoFurnitureTable
/* 80472034  38 00 00 00 */	li r0, 0
/* 80472038  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8047203C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80472040  B0 17 00 CC */	sth r0, 0xcc(r23)
/* 80472044  3C 63 00 02 */	addis r3, r3, 2
/* 80472048  80 63 60 8C */	lwz r3, 0x608c(r3)
/* 8047204C  28 03 00 00 */	cmplwi r3, 0
/* 80472050  41 82 00 1C */	beq lbl_8047206C
/* 80472054  80 A3 00 00 */	lwz r5, 0(r3)
/* 80472058  28 05 00 00 */	cmplwi r5, 0
/* 8047205C  41 82 00 10 */	beq lbl_8047206C
/* 80472060  7E E3 BB 78 */	mr r3, r23
/* 80472064  7F A4 EB 78 */	mr r4, r29
/* 80472068  4B FF F6 31 */	bl aMR_SetSwitchStepData
lbl_8047206C:
/* 8047206C  7E E3 BB 78 */	mr r3, r23
/* 80472070  7F A4 EB 78 */	mr r4, r29
/* 80472074  4B FF F9 0D */	bl aMR_MiniDiskCommonCt
/* 80472078  7E E3 BB 78 */	mr r3, r23
/* 8047207C  7F A4 EB 78 */	mr r4, r29
/* 80472080  4B FF FB 29 */	bl aMR_RadioCommonCt
/* 80472084  7E E3 BB 78 */	mr r3, r23
/* 80472088  7F 84 E3 78 */	mr r4, r28
/* 8047208C  4B FF FD FD */	bl aMR_Status2MoveBgCollisionScale
/* 80472090  A0 1E 00 2E */	lhz r0, 0x2e(r30)
/* 80472094  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80472098  41 82 00 08 */	beq lbl_804720A0
/* 8047209C  B3 B7 08 30 */	sth r29, 0x830(r23)
lbl_804720A0:
/* 804720A0  7E E3 BB 78 */	mr r3, r23
/* 804720A4  7F C4 F3 78 */	mr r4, r30
/* 804720A8  4B FF F7 ED */	bl aMR_RegistMoveBg
/* 804720AC  2C 03 00 00 */	cmpwi r3, 0
/* 804720B0  41 82 00 40 */	beq lbl_804720F0
/* 804720B4  7E E3 BB 78 */	mr r3, r23
/* 804720B8  7F C4 F3 78 */	mr r4, r30
/* 804720BC  4B FF F7 19 */	bl aMR_SystemAnimeCt_UniqueCt
/* 804720C0  2C 03 00 00 */	cmpwi r3, 0
/* 804720C4  41 82 00 2C */	beq lbl_804720F0
/* 804720C8  80 D7 00 08 */	lwz r6, 8(r23)
/* 804720CC  7E E3 BB 78 */	mr r3, r23
/* 804720D0  80 17 00 0C */	lwz r0, 0xc(r23)
/* 804720D4  38 81 00 08 */	addi r4, r1, 8
/* 804720D8  38 A0 00 01 */	li r5, 1
/* 804720DC  90 C1 00 08 */	stw r6, 8(r1)
/* 804720E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804720E4  80 17 00 10 */	lwz r0, 0x10(r23)
/* 804720E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804720EC  48 00 9C 09 */	bl aMR_SetFurniture2FG
lbl_804720F0:
/* 804720F0  39 61 00 60 */	addi r11, r1, 0x60
/* 804720F4  4B C2 8E 15 */	bl func_8009AF08
/* 804720F8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804720FC  7C 08 03 A6 */	mtlr r0
/* 80472100  38 21 00 60 */	addi r1, r1, 0x60
/* 80472104  4E 80 00 20 */	blr 
