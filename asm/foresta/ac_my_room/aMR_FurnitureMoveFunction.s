lbl_8047CE20:
/* 8047CE20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8047CE24  7C 08 02 A6 */	mflr r0
/* 8047CE28  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047CE2C  39 61 00 30 */	addi r11, r1, 0x30
/* 8047CE30  4B C1 E0 91 */	bl func_8009AEC0
/* 8047CE34  3C A0 81 1D */	lis r5, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047CE38  7C 7C 1B 78 */	mr r28, r3
/* 8047CE3C  3B C5 DF E8 */	addi r30, r5, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047CE40  7C 99 23 78 */	mr r25, r4
/* 8047CE44  83 7E 00 00 */	lwz r27, 0(r30)
/* 8047CE48  3B A0 00 00 */	li r29, 0
/* 8047CE4C  83 5E 00 04 */	lwz r26, 4(r30)
/* 8047CE50  48 00 01 54 */	b lbl_8047CFA4
lbl_8047CE54:
/* 8047CE54  88 1A 00 00 */	lbz r0, 0(r26)
/* 8047CE58  28 00 00 00 */	cmplwi r0, 0
/* 8047CE5C  41 82 01 3C */	beq lbl_8047CF98
/* 8047CE60  A0 7B 00 00 */	lhz r3, 0(r27)
/* 8047CE64  4B FF 33 3D */	bl func_804701A0
/* 8047CE68  7C 7F 1B 79 */	or. r31, r3, r3
/* 8047CE6C  41 82 01 20 */	beq lbl_8047CF8C
/* 8047CE70  A8 1B 00 3C */	lha r0, 0x3c(r27)
/* 8047CE74  3C 60 80 69 */	lis r3, fproc@ha /* 0x8068A1C8@ha */
/* 8047CE78  38 A3 A1 C8 */	addi r5, r3, fproc@l /* 0x8068A1C8@l */
/* 8047CE7C  7F 63 DB 78 */	mr r3, r27
/* 8047CE80  54 00 10 3A */	slwi r0, r0, 2
/* 8047CE84  7F 24 CB 78 */	mr r4, r25
/* 8047CE88  7D 85 00 2E */	lwzx r12, r5, r0
/* 8047CE8C  7F 85 E3 78 */	mr r5, r28
/* 8047CE90  7D 89 03 A6 */	mtctr r12
/* 8047CE94  4E 80 04 21 */	bctrl 
/* 8047CE98  3C 60 80 64 */	lis r3, lit_1234@ha /* 0x80644A18@ha */
/* 8047CE9C  3C 80 80 64 */	lis r4, lit_1233@ha /* 0x80644A14@ha */
/* 8047CEA0  C0 1B 00 34 */	lfs f0, 0x34(r27)
/* 8047CEA4  C0 23 4A 18 */	lfs f1, lit_1234@l(r3)  /* 0x80644A18@l */
/* 8047CEA8  C0 44 4A 14 */	lfs f2, lit_1233@l(r4)  /* 0x80644A14@l */
/* 8047CEAC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8047CEB0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8047CEB4  FC 00 00 1E */	fctiwz f0, f0
/* 8047CEB8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8047CEBC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8047CEC0  B0 1B 01 24 */	sth r0, 0x124(r27)
/* 8047CEC4  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8047CEC8  28 00 00 00 */	cmplwi r0, 0
/* 8047CECC  41 82 00 1C */	beq lbl_8047CEE8
/* 8047CED0  3B 1B 01 34 */	addi r24, r27, 0x134
/* 8047CED4  7F 03 C3 78 */	mr r3, r24
/* 8047CED8  4B EF 41 3D */	bl cKF_SkeletonInfo_R_play
/* 8047CEDC  3C 60 80 64 */	lis r3, lit_967@ha /* 0x80644A04@ha */
/* 8047CEE0  C0 03 4A 04 */	lfs f0, lit_967@l(r3)  /* 0x80644A04@l */
/* 8047CEE4  D0 18 00 0C */	stfs f0, 0xc(r24)
lbl_8047CEE8:
/* 8047CEE8  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8047CEEC  28 04 00 00 */	cmplwi r4, 0
/* 8047CEF0  41 82 00 30 */	beq lbl_8047CF20
/* 8047CEF4  A8 7B 08 10 */	lha r3, 0x810(r27)
/* 8047CEF8  80 84 00 04 */	lwz r4, 4(r4)
/* 8047CEFC  38 03 00 01 */	addi r0, r3, 1
/* 8047CF00  B0 1B 08 10 */	sth r0, 0x810(r27)
/* 8047CF04  A8 1B 08 10 */	lha r0, 0x810(r27)
/* 8047CF08  7C 00 20 00 */	cmpw r0, r4
/* 8047CF0C  40 80 00 0C */	bge lbl_8047CF18
/* 8047CF10  7C 00 07 35 */	extsh. r0, r0
/* 8047CF14  40 80 00 0C */	bge lbl_8047CF20
lbl_8047CF18:
/* 8047CF18  38 00 00 00 */	li r0, 0
/* 8047CF1C  B0 1B 08 10 */	sth r0, 0x810(r27)
lbl_8047CF20:
/* 8047CF20  A8 1B 00 3C */	lha r0, 0x3c(r27)
/* 8047CF24  2C 00 00 0E */	cmpwi r0, 0xe
/* 8047CF28  41 82 00 4C */	beq lbl_8047CF74
/* 8047CF2C  2C 00 00 0F */	cmpwi r0, 0xf
/* 8047CF30  41 82 00 44 */	beq lbl_8047CF74
/* 8047CF34  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8047CF38  28 03 00 00 */	cmplwi r3, 0
/* 8047CF3C  41 82 00 38 */	beq lbl_8047CF74
/* 8047CF40  80 03 00 04 */	lwz r0, 4(r3)
/* 8047CF44  28 00 00 00 */	cmplwi r0, 0
/* 8047CF48  41 82 00 2C */	beq lbl_8047CF74
/* 8047CF4C  A0 7B 00 00 */	lhz r3, 0(r27)
/* 8047CF50  4B FF 3E 81 */	bl aMR_FtrNo2BankAddress
/* 8047CF54  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 8047CF58  7C 66 1B 78 */	mr r6, r3
/* 8047CF5C  7F 63 DB 78 */	mr r3, r27
/* 8047CF60  7F 25 CB 78 */	mr r5, r25
/* 8047CF64  81 84 00 04 */	lwz r12, 4(r4)
/* 8047CF68  7F 84 E3 78 */	mr r4, r28
/* 8047CF6C  7D 89 03 A6 */	mtctr r12
/* 8047CF70  4E 80 04 21 */	bctrl 
lbl_8047CF74:
/* 8047CF74  80 7B 00 08 */	lwz r3, 8(r27)
/* 8047CF78  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 8047CF7C  90 7B 00 14 */	stw r3, 0x14(r27)
/* 8047CF80  90 1B 00 18 */	stw r0, 0x18(r27)
/* 8047CF84  80 1B 00 10 */	lwz r0, 0x10(r27)
/* 8047CF88  90 1B 00 1C */	stw r0, 0x1c(r27)
lbl_8047CF8C:
/* 8047CF8C  7F 83 E3 78 */	mr r3, r28
/* 8047CF90  7F 64 DB 78 */	mr r4, r27
/* 8047CF94  4B FF FD 81 */	bl aMR_GetItemPosOnMovingFurniture
lbl_8047CF98:
/* 8047CF98  3B 5A 00 01 */	addi r26, r26, 1
/* 8047CF9C  3B 7B 08 58 */	addi r27, r27, 0x858
/* 8047CFA0  3B BD 00 01 */	addi r29, r29, 1
lbl_8047CFA4:
/* 8047CFA4  80 1E 00 08 */	lwz r0, 8(r30)
/* 8047CFA8  7C 1D 00 00 */	cmpw r29, r0
/* 8047CFAC  41 80 FE A8 */	blt lbl_8047CE54
/* 8047CFB0  39 61 00 30 */	addi r11, r1, 0x30
/* 8047CFB4  4B C1 DF 59 */	bl func_8009AF0C
/* 8047CFB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8047CFBC  7C 08 03 A6 */	mtlr r0
/* 8047CFC0  38 21 00 30 */	addi r1, r1, 0x30
/* 8047CFC4  4E 80 00 20 */	blr 
