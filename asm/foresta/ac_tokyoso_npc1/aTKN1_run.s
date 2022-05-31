lbl_8058CAB8:
/* 8058CAB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058CABC  7C 08 02 A6 */	mflr r0
/* 8058CAC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058CAC4  39 61 00 20 */	addi r11, r1, 0x20
/* 8058CAC8  4B B0 E4 0D */	bl func_8009AED4
/* 8058CACC  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8058CAD0  7C 7F 1B 78 */	mr r31, r3
/* 8058CAD4  7C 9E 23 78 */	mr r30, r4
/* 8058CAD8  28 00 00 02 */	cmplwi r0, 2
/* 8058CADC  40 82 00 10 */	bne lbl_8058CAEC
/* 8058CAE0  88 1F 07 F6 */	lbz r0, 0x7f6(r31)
/* 8058CAE4  28 00 00 FF */	cmplwi r0, 0xff
/* 8058CAE8  41 82 00 2C */	beq lbl_8058CB14
lbl_8058CAEC:
/* 8058CAEC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058CAF0  7F E3 FB 78 */	mr r3, r31
/* 8058CAF4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8058CAF8  3F A4 00 02 */	addis r29, r4, 2
/* 8058CAFC  80 9D 60 D8 */	lwz r4, 0x60d8(r29)
/* 8058CB00  81 84 00 0C */	lwz r12, 0xc(r4)
/* 8058CB04  7D 89 03 A6 */	mtctr r12
/* 8058CB08  4E 80 04 21 */	bctrl 
/* 8058CB0C  7C 60 07 35 */	extsh. r0, r3
/* 8058CB10  41 82 00 AC */	beq lbl_8058CBBC
lbl_8058CB14:
/* 8058CB14  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058CB18  7F E3 FB 78 */	mr r3, r31
/* 8058CB1C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8058CB20  3F A4 00 02 */	addis r29, r4, 2
/* 8058CB24  80 9D 60 D8 */	lwz r4, 0x60d8(r29)
/* 8058CB28  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8058CB2C  7D 89 03 A6 */	mtctr r12
/* 8058CB30  4E 80 04 21 */	bctrl 
/* 8058CB34  7C 65 1B 78 */	mr r5, r3
/* 8058CB38  7C A0 07 35 */	extsh. r0, r5
/* 8058CB3C  40 82 00 70 */	bne lbl_8058CBAC
/* 8058CB40  80 9D 60 D8 */	lwz r4, 0x60d8(r29)
/* 8058CB44  7F E3 FB 78 */	mr r3, r31
/* 8058CB48  81 84 00 00 */	lwz r12, 0(r4)
/* 8058CB4C  7D 89 03 A6 */	mtctr r12
/* 8058CB50  4E 80 04 21 */	bctrl 
/* 8058CB54  80 9D 60 D8 */	lwz r4, 0x60d8(r29)
/* 8058CB58  7F E3 FB 78 */	mr r3, r31
/* 8058CB5C  81 84 00 10 */	lwz r12, 0x10(r4)
/* 8058CB60  7D 89 03 A6 */	mtctr r12
/* 8058CB64  4E 80 04 21 */	bctrl 
/* 8058CB68  7C 60 07 35 */	extsh. r0, r3
/* 8058CB6C  41 82 00 2C */	beq lbl_8058CB98
/* 8058CB70  4B AD 01 85 */	bl fqrand
/* 8058CB74  3C 60 80 65 */	lis r3, lit_620@ha /* 0x80649BB8@ha */
/* 8058CB78  C0 03 9B B8 */	lfs f0, lit_620@l(r3)  /* 0x80649BB8@l */
/* 8058CB7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8058CB80  40 80 00 18 */	bge lbl_8058CB98
/* 8058CB84  7F E3 FB 78 */	mr r3, r31
/* 8058CB88  7F C4 F3 78 */	mr r4, r30
/* 8058CB8C  38 A0 00 0C */	li r5, 0xc
/* 8058CB90  48 00 09 8D */	bl aTKN1_setup_think_proc
/* 8058CB94  48 00 00 8C */	b lbl_8058CC20
lbl_8058CB98:
/* 8058CB98  7F E3 FB 78 */	mr r3, r31
/* 8058CB9C  7F C4 F3 78 */	mr r4, r30
/* 8058CBA0  38 A0 00 0B */	li r5, 0xb
/* 8058CBA4  48 00 09 79 */	bl aTKN1_setup_think_proc
/* 8058CBA8  48 00 00 78 */	b lbl_8058CC20
lbl_8058CBAC:
/* 8058CBAC  7F E3 FB 78 */	mr r3, r31
/* 8058CBB0  7F C4 F3 78 */	mr r4, r30
/* 8058CBB4  4B FF FA 71 */	bl func_8058C624
/* 8058CBB8  48 00 00 68 */	b lbl_8058CC20
lbl_8058CBBC:
/* 8058CBBC  C0 1F 09 04 */	lfs f0, 0x904(r31)
/* 8058CBC0  A8 1F 09 A2 */	lha r0, 0x9a2(r31)
/* 8058CBC4  FC 00 00 1E */	fctiwz f0, f0
/* 8058CBC8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8058CBCC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8058CBD0  7C 63 07 34 */	extsh r3, r3
/* 8058CBD4  7C 03 00 00 */	cmpw r3, r0
/* 8058CBD8  40 82 00 24 */	bne lbl_8058CBFC
/* 8058CBDC  C0 1F 09 08 */	lfs f0, 0x908(r31)
/* 8058CBE0  A8 1F 09 A4 */	lha r0, 0x9a4(r31)
/* 8058CBE4  FC 00 00 1E */	fctiwz f0, f0
/* 8058CBE8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8058CBEC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8058CBF0  7C 63 07 34 */	extsh r3, r3
/* 8058CBF4  7C 03 00 00 */	cmpw r3, r0
/* 8058CBF8  41 82 00 28 */	beq lbl_8058CC20
lbl_8058CBFC:
/* 8058CBFC  80 9D 60 D8 */	lwz r4, 0x60d8(r29)
/* 8058CC00  7F E3 FB 78 */	mr r3, r31
/* 8058CC04  81 84 00 00 */	lwz r12, 0(r4)
/* 8058CC08  7D 89 03 A6 */	mtctr r12
/* 8058CC0C  4E 80 04 21 */	bctrl 
/* 8058CC10  7F E3 FB 78 */	mr r3, r31
/* 8058CC14  7F C4 F3 78 */	mr r4, r30
/* 8058CC18  38 A0 00 0B */	li r5, 0xb
/* 8058CC1C  48 00 09 01 */	bl aTKN1_setup_think_proc
lbl_8058CC20:
/* 8058CC20  39 61 00 20 */	addi r11, r1, 0x20
/* 8058CC24  4B B0 E2 FD */	bl func_8009AF20
/* 8058CC28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058CC2C  7C 08 03 A6 */	mtlr r0
/* 8058CC30  38 21 00 20 */	addi r1, r1, 0x20
/* 8058CC34  4E 80 00 20 */	blr 
