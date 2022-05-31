lbl_8047C9E4:
/* 8047C9E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8047C9E8  7C 08 02 A6 */	mflr r0
/* 8047C9EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047C9F0  39 61 00 30 */	addi r11, r1, 0x30
/* 8047C9F4  4B C1 E4 D5 */	bl func_8009AEC8
/* 8047C9F8  7C 7D 1B 78 */	mr r29, r3
/* 8047C9FC  3C C0 80 64 */	lis r6, lit_5492@ha /* 0x80644B28@ha */
/* 8047CA00  C0 5D 08 14 */	lfs f2, 0x814(r29)
/* 8047CA04  3C 60 80 64 */	lis r3, lit_3417@ha /* 0x80644A64@ha */
/* 8047CA08  C0 26 4B 28 */	lfs f1, lit_5492@l(r6)  /* 0x80644B28@l */
/* 8047CA0C  7C BF 2B 78 */	mr r31, r5
/* 8047CA10  C0 03 4A 64 */	lfs f0, lit_3417@l(r3)  /* 0x80644A64@l */
/* 8047CA14  7C 9E 23 78 */	mr r30, r4
/* 8047CA18  EC 22 08 28 */	fsubs f1, f2, f1
/* 8047CA1C  D0 3D 08 14 */	stfs f1, 0x814(r29)
/* 8047CA20  C0 3D 08 14 */	lfs f1, 0x814(r29)
/* 8047CA24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047CA28  40 80 00 0C */	bge lbl_8047CA34
/* 8047CA2C  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 8047CA30  C0 23 49 F8 */	lfs f1, lit_886@l(r3)  /* 0x806449F8@l */
lbl_8047CA34:
/* 8047CA34  D0 3D 08 14 */	stfs f1, 0x814(r29)
/* 8047CA38  C0 1D 08 14 */	lfs f0, 0x814(r29)
/* 8047CA3C  D0 1D 08 18 */	stfs f0, 0x818(r29)
/* 8047CA40  C0 1D 08 14 */	lfs f0, 0x814(r29)
/* 8047CA44  D0 1D 08 1C */	stfs f0, 0x81c(r29)
/* 8047CA48  A8 9F 03 86 */	lha r4, 0x386(r31)
/* 8047CA4C  38 64 FF FF */	addi r3, r4, -1
/* 8047CA50  7C 80 07 35 */	extsh. r0, r4
/* 8047CA54  B0 7F 03 86 */	sth r3, 0x386(r31)
/* 8047CA58  40 82 00 74 */	bne lbl_8047CACC
/* 8047CA5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8047CA60  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8047CA64  3F 43 00 02 */	addis r26, r3, 2
/* 8047CA68  80 1A 60 9C */	lwz r0, 0x609c(r26)
/* 8047CA6C  28 00 00 00 */	cmplwi r0, 0
/* 8047CA70  41 82 00 5C */	beq lbl_8047CACC
/* 8047CA74  7F A4 EB 78 */	mr r4, r29
/* 8047CA78  38 7F 03 74 */	addi r3, r31, 0x374
/* 8047CA7C  4B FF B5 A9 */	bl aMR_GetFtrShapeCenter
/* 8047CA80  80 BF 03 74 */	lwz r5, 0x374(r31)
/* 8047CA84  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8047CA88  80 1F 03 78 */	lwz r0, 0x378(r31)
/* 8047CA8C  7F C7 F3 78 */	mr r7, r30
/* 8047CA90  81 7A 60 9C */	lwz r11, 0x609c(r26)
/* 8047CA94  38 81 00 08 */	addi r4, r1, 8
/* 8047CA98  90 A1 00 08 */	stw r5, 8(r1)
/* 8047CA9C  39 03 FF FF */	addi r8, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8047CAA0  38 60 00 01 */	li r3, 1
/* 8047CAA4  38 A0 00 02 */	li r5, 2
/* 8047CAA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8047CAAC  38 C0 00 00 */	li r6, 0
/* 8047CAB0  39 20 00 00 */	li r9, 0
/* 8047CAB4  39 40 00 04 */	li r10, 4
/* 8047CAB8  80 1F 03 7C */	lwz r0, 0x37c(r31)
/* 8047CABC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8047CAC0  81 8B 00 00 */	lwz r12, 0(r11)
/* 8047CAC4  7D 89 03 A6 */	mtctr r12
/* 8047CAC8  4E 80 04 21 */	bctrl 
lbl_8047CACC:
/* 8047CACC  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 8047CAD0  C0 1D 08 14 */	lfs f0, 0x814(r29)
/* 8047CAD4  C0 23 49 F8 */	lfs f1, lit_886@l(r3)  /* 0x806449F8@l */
/* 8047CAD8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8047CADC  40 82 00 E4 */	bne lbl_8047CBC0
/* 8047CAE0  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047CAE4  83 7D 00 04 */	lwz r27, 4(r29)
/* 8047CAE8  38 83 DF E8 */	addi r4, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047CAEC  A0 7D 00 00 */	lhz r3, 0(r29)
/* 8047CAF0  83 44 00 04 */	lwz r26, 4(r4)
/* 8047CAF4  4B FF 36 AD */	bl func_804701A0
/* 8047CAF8  A8 1D 08 3C */	lha r0, 0x83c(r29)
/* 8047CAFC  7C 7C 1B 78 */	mr r28, r3
/* 8047CB00  2C 00 00 00 */	cmpwi r0, 0
/* 8047CB04  40 82 00 14 */	bne lbl_8047CB18
/* 8047CB08  7F C4 F3 78 */	mr r4, r30
/* 8047CB0C  38 7D 00 08 */	addi r3, r29, 8
/* 8047CB10  38 A0 00 01 */	li r5, 1
/* 8047CB14  4B FF AA 4D */	bl aMR_MakeGokiburi
lbl_8047CB18:
/* 8047CB18  80 1F 03 6C */	lwz r0, 0x36c(r31)
/* 8047CB1C  2C 00 00 00 */	cmpwi r0, 0
/* 8047CB20  41 82 00 18 */	beq lbl_8047CB38
/* 8047CB24  7F A4 EB 78 */	mr r4, r29
/* 8047CB28  38 7F 03 74 */	addi r3, r31, 0x374
/* 8047CB2C  4B FF B4 F9 */	bl aMR_GetFtrShapeCenter
/* 8047CB30  38 00 00 01 */	li r0, 1
/* 8047CB34  90 1F 03 80 */	stw r0, 0x380(r31)
lbl_8047CB38:
/* 8047CB38  28 1C 00 00 */	cmplwi r28, 0
/* 8047CB3C  41 82 00 6C */	beq lbl_8047CBA8
/* 8047CB40  7F A3 EB 78 */	mr r3, r29
/* 8047CB44  4B FF 66 C5 */	bl aMR_KeepItem2Fg
/* 8047CB48  7F A3 EB 78 */	mr r3, r29
/* 8047CB4C  7F E4 FB 78 */	mr r4, r31
/* 8047CB50  4B FF 4F D1 */	bl aMR_MiniDiskCommonDt
/* 8047CB54  7F A3 EB 78 */	mr r3, r29
/* 8047CB58  7F E4 FB 78 */	mr r4, r31
/* 8047CB5C  4B FF 50 95 */	bl aMR_RadioCommonDt
/* 8047CB60  7F E3 FB 78 */	mr r3, r31
/* 8047CB64  7F A4 EB 78 */	mr r4, r29
/* 8047CB68  4B FF 41 71 */	bl aMR_MinusWeight
/* 8047CB6C  80 7C 00 30 */	lwz r3, 0x30(r28)
/* 8047CB70  28 03 00 00 */	cmplwi r3, 0
/* 8047CB74  41 82 00 30 */	beq lbl_8047CBA4
/* 8047CB78  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8047CB7C  28 00 00 00 */	cmplwi r0, 0
/* 8047CB80  41 82 00 24 */	beq lbl_8047CBA4
/* 8047CB84  A0 7D 00 00 */	lhz r3, 0(r29)
/* 8047CB88  4B FF 42 49 */	bl aMR_FtrNo2BankAddress
/* 8047CB8C  80 BC 00 30 */	lwz r5, 0x30(r28)
/* 8047CB90  7C 64 1B 78 */	mr r4, r3
/* 8047CB94  7F A3 EB 78 */	mr r3, r29
/* 8047CB98  81 85 00 0C */	lwz r12, 0xc(r5)
/* 8047CB9C  7D 89 03 A6 */	mtctr r12
/* 8047CBA0  4E 80 04 21 */	bctrl 
lbl_8047CBA4:
/* 8047CBA4  4B F4 21 39 */	bl mMkRm_ReportChangePlayerRoom
lbl_8047CBA8:
/* 8047CBA8  38 00 00 00 */	li r0, 0
/* 8047CBAC  7C 1A D9 AE */	stbx r0, r26, r27
/* 8047CBB0  A0 7D 00 00 */	lhz r3, 0(r29)
/* 8047CBB4  4B FF 48 B1 */	bl aMR_DeleteFurnitureBank
/* 8047CBB8  7F A3 EB 78 */	mr r3, r29
/* 8047CBBC  4B FF 3A 09 */	bl aMR_ClearBitSwitch
lbl_8047CBC0:
/* 8047CBC0  39 61 00 30 */	addi r11, r1, 0x30
/* 8047CBC4  4B C1 E3 51 */	bl func_8009AF14
/* 8047CBC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8047CBCC  7C 08 03 A6 */	mtlr r0
/* 8047CBD0  38 21 00 30 */	addi r1, r1, 0x30
/* 8047CBD4  4E 80 00 20 */	blr 
