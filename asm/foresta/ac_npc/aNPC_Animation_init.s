lbl_8052CA10:
/* 8052CA10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8052CA14  7C 08 02 A6 */	mflr r0
/* 8052CA18  90 01 00 34 */	stw r0, 0x34(r1)
/* 8052CA1C  39 61 00 30 */	addi r11, r1, 0x30
/* 8052CA20  4B B6 E4 A9 */	bl func_8009AEC8
/* 8052CA24  7C 7F 1B 78 */	mr r31, r3
/* 8052CA28  7C BB 2B 78 */	mr r27, r5
/* 8052CA2C  4B FF FE 55 */	bl aNPC_check_talk_anime
/* 8052CA30  7C 60 1B 78 */	mr r0, r3
/* 8052CA34  7F E3 FB 78 */	mr r3, r31
/* 8052CA38  7C 1A 03 78 */	mr r26, r0
/* 8052CA3C  7F 44 D3 78 */	mr r4, r26
/* 8052CA40  48 00 0D 1D */	bl aNPC_set_frame_sub_speed
/* 8052CA44  88 BF 07 51 */	lbz r5, 0x751(r31)
/* 8052CA48  3C 60 80 6A */	lis r3, aNPC_animeTable@ha /* 0x806A1430@ha */
/* 8052CA4C  57 40 18 38 */	slwi r0, r26, 3
/* 8052CA50  28 05 00 00 */	cmplwi r5, 0
/* 8052CA54  38 83 14 30 */	addi r4, r3, aNPC_animeTable@l /* 0x806A1430@l */
/* 8052CA58  7C C4 02 14 */	add r6, r4, r0
/* 8052CA5C  40 82 00 0C */	bne lbl_8052CA68
/* 8052CA60  7C DE 33 78 */	mr r30, r6
/* 8052CA64  48 00 00 1C */	b lbl_8052CA80
lbl_8052CA68:
/* 8052CA68  3C 60 80 6A */	lis r3, aNPC_sub_animeSeqNoTable@ha /* 0x806A1C54@ha */
/* 8052CA6C  54 A0 0D FC */	rlwinm r0, r5, 1, 0x17, 0x1e
/* 8052CA70  38 63 1C 54 */	addi r3, r3, aNPC_sub_animeSeqNoTable@l /* 0x806A1C54@l */
/* 8052CA74  7C 03 02 AE */	lhax r0, r3, r0
/* 8052CA78  54 00 18 38 */	slwi r0, r0, 3
/* 8052CA7C  7F C4 02 14 */	add r30, r4, r0
lbl_8052CA80:
/* 8052CA80  88 1F 09 70 */	lbz r0, 0x970(r31)
/* 8052CA84  28 00 00 00 */	cmplwi r0, 0
/* 8052CA88  40 82 00 0C */	bne lbl_8052CA94
/* 8052CA8C  7C DD 33 78 */	mr r29, r6
/* 8052CA90  48 00 00 84 */	b lbl_8052CB14
lbl_8052CA94:
/* 8052CA94  A8 1F 07 60 */	lha r0, 0x760(r31)
/* 8052CA98  2C 00 01 1E */	cmpwi r0, 0x11e
/* 8052CA9C  41 82 00 5C */	beq lbl_8052CAF8
/* 8052CAA0  40 80 00 34 */	bge lbl_8052CAD4
/* 8052CAA4  2C 00 00 BF */	cmpwi r0, 0xbf
/* 8052CAA8  41 82 00 50 */	beq lbl_8052CAF8
/* 8052CAAC  40 80 00 1C */	bge lbl_8052CAC8
/* 8052CAB0  2C 00 00 94 */	cmpwi r0, 0x94
/* 8052CAB4  41 82 00 44 */	beq lbl_8052CAF8
/* 8052CAB8  40 80 00 50 */	bge lbl_8052CB08
/* 8052CABC  2C 00 00 6B */	cmpwi r0, 0x6b
/* 8052CAC0  41 82 00 38 */	beq lbl_8052CAF8
/* 8052CAC4  48 00 00 44 */	b lbl_8052CB08
lbl_8052CAC8:
/* 8052CAC8  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8052CACC  41 82 00 2C */	beq lbl_8052CAF8
/* 8052CAD0  48 00 00 38 */	b lbl_8052CB08
lbl_8052CAD4:
/* 8052CAD4  2C 00 01 4A */	cmpwi r0, 0x14a
/* 8052CAD8  41 82 00 20 */	beq lbl_8052CAF8
/* 8052CADC  40 80 00 10 */	bge lbl_8052CAEC
/* 8052CAE0  2C 00 01 23 */	cmpwi r0, 0x123
/* 8052CAE4  41 82 00 14 */	beq lbl_8052CAF8
/* 8052CAE8  48 00 00 20 */	b lbl_8052CB08
lbl_8052CAEC:
/* 8052CAEC  2C 00 01 91 */	cmpwi r0, 0x191
/* 8052CAF0  41 82 00 08 */	beq lbl_8052CAF8
/* 8052CAF4  48 00 00 14 */	b lbl_8052CB08
lbl_8052CAF8:
/* 8052CAF8  3C 60 80 6A */	lis r3, aNPC_animeTable@ha /* 0x806A1430@ha */
/* 8052CAFC  38 63 14 30 */	addi r3, r3, aNPC_animeTable@l /* 0x806A1430@l */
/* 8052CB00  3B A3 07 A8 */	addi r29, r3, 0x7a8
/* 8052CB04  48 00 00 10 */	b lbl_8052CB14
lbl_8052CB08:
/* 8052CB08  3C 60 80 6A */	lis r3, aNPC_animeTable@ha /* 0x806A1430@ha */
/* 8052CB0C  38 63 14 30 */	addi r3, r3, aNPC_animeTable@l /* 0x806A1430@l */
/* 8052CB10  3B A3 07 A0 */	addi r29, r3, 0x7a0
lbl_8052CB14:
/* 8052CB14  80 1F 07 14 */	lwz r0, 0x714(r31)
/* 8052CB18  38 7F 01 A8 */	addi r3, r31, 0x1a8
/* 8052CB1C  83 86 00 00 */	lwz r28, 0(r6)
/* 8052CB20  7C 1A 00 00 */	cmpw r26, r0
/* 8052CB24  80 9F 01 C0 */	lwz r4, 0x1c0(r31)
/* 8052CB28  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 8052CB2C  7F 85 E3 78 */	mr r5, r28
/* 8052CB30  C0 5C 00 18 */	lfs f2, 0x18(r28)
/* 8052CB34  40 82 00 0C */	bne lbl_8052CB40
/* 8052CB38  C0 7F 01 B8 */	lfs f3, 0x1b8(r31)
/* 8052CB3C  48 00 00 08 */	b lbl_8052CB44
lbl_8052CB40:
/* 8052CB40  FC 60 08 90 */	fmr f3, f1
lbl_8052CB44:
/* 8052CB44  C0 9F 07 64 */	lfs f4, 0x764(r31)
/* 8052CB48  38 E0 00 00 */	li r7, 0
/* 8052CB4C  C0 1F 07 68 */	lfs f0, 0x768(r31)
/* 8052CB50  C0 BC 00 20 */	lfs f5, 0x20(r28)
/* 8052CB54  EC 84 00 32 */	fmuls f4, f4, f0
/* 8052CB58  80 DC 00 1C */	lwz r6, 0x1c(r28)
/* 8052CB5C  4B E4 41 79 */	bl cKF_SkeletonInfo_R_init
/* 8052CB60  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 8052CB64  28 00 00 00 */	cmplwi r0, 0
/* 8052CB68  41 82 00 0C */	beq lbl_8052CB74
/* 8052CB6C  90 1F 07 2C */	stw r0, 0x72c(r31)
/* 8052CB70  48 00 00 0C */	b lbl_8052CB7C
lbl_8052CB74:
/* 8052CB74  38 00 00 00 */	li r0, 0
/* 8052CB78  90 1F 07 2C */	stw r0, 0x72c(r31)
lbl_8052CB7C:
/* 8052CB7C  A8 1C 00 28 */	lha r0, 0x28(r28)
/* 8052CB80  98 1F 07 1C */	stb r0, 0x71c(r31)
/* 8052CB84  A8 1C 00 2A */	lha r0, 0x2a(r28)
/* 8052CB88  98 1F 07 28 */	stb r0, 0x728(r31)
/* 8052CB8C  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 8052CB90  28 00 00 00 */	cmplwi r0, 0
/* 8052CB94  41 82 00 0C */	beq lbl_8052CBA0
/* 8052CB98  90 1F 07 40 */	stw r0, 0x740(r31)
/* 8052CB9C  48 00 00 0C */	b lbl_8052CBA8
lbl_8052CBA0:
/* 8052CBA0  38 00 00 00 */	li r0, 0
/* 8052CBA4  90 1F 07 40 */	stw r0, 0x740(r31)
lbl_8052CBA8:
/* 8052CBA8  A8 1C 00 30 */	lha r0, 0x30(r28)
/* 8052CBAC  98 1F 07 30 */	stb r0, 0x730(r31)
/* 8052CBB0  A8 1C 00 32 */	lha r0, 0x32(r28)
/* 8052CBB4  98 1F 07 3C */	stb r0, 0x73c(r31)
/* 8052CBB8  A8 7F 07 56 */	lha r3, 0x756(r31)
/* 8052CBBC  2C 03 FF FF */	cmpwi r3, -1
/* 8052CBC0  41 82 00 30 */	beq lbl_8052CBF0
/* 8052CBC4  A8 1C 00 36 */	lha r0, 0x36(r28)
/* 8052CBC8  7C 03 00 00 */	cmpw r3, r0
/* 8052CBCC  41 82 00 24 */	beq lbl_8052CBF0
/* 8052CBD0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8052CBD4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8052CBD8  A0 9F 00 06 */	lhz r4, 6(r31)
/* 8052CBDC  3C A5 00 02 */	addis r5, r5, 2
/* 8052CBE0  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 8052CBE4  81 85 00 04 */	lwz r12, 4(r5)
/* 8052CBE8  7D 89 03 A6 */	mtctr r12
/* 8052CBEC  4E 80 04 21 */	bctrl 
lbl_8052CBF0:
/* 8052CBF0  A8 1C 00 36 */	lha r0, 0x36(r28)
/* 8052CBF4  B0 1F 07 56 */	sth r0, 0x756(r31)
/* 8052CBF8  A8 1C 00 34 */	lha r0, 0x34(r28)
/* 8052CBFC  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 8052CC00  80 1C 00 38 */	lwz r0, 0x38(r28)
/* 8052CC04  28 00 00 00 */	cmplwi r0, 0
/* 8052CC08  41 82 00 0C */	beq lbl_8052CC14
/* 8052CC0C  90 1F 07 58 */	stw r0, 0x758(r31)
/* 8052CC10  48 00 00 0C */	b lbl_8052CC1C
lbl_8052CC14:
/* 8052CC14  38 00 00 00 */	li r0, 0
/* 8052CC18  90 1F 07 58 */	stw r0, 0x758(r31)
lbl_8052CC1C:
/* 8052CC1C  80 BE 00 00 */	lwz r5, 0(r30)
/* 8052CC20  38 7F 03 64 */	addi r3, r31, 0x364
/* 8052CC24  80 9F 03 7C */	lwz r4, 0x37c(r31)
/* 8052CC28  38 E0 00 00 */	li r7, 0
/* 8052CC2C  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 8052CC30  C0 45 00 18 */	lfs f2, 0x18(r5)
/* 8052CC34  FC 60 08 90 */	fmr f3, f1
/* 8052CC38  C0 9F 07 64 */	lfs f4, 0x764(r31)
/* 8052CC3C  C0 A5 00 20 */	lfs f5, 0x20(r5)
/* 8052CC40  80 C5 00 1C */	lwz r6, 0x1c(r5)
/* 8052CC44  4B E4 40 91 */	bl cKF_SkeletonInfo_R_init
/* 8052CC48  80 BD 00 00 */	lwz r5, 0(r29)
/* 8052CC4C  38 7F 05 20 */	addi r3, r31, 0x520
/* 8052CC50  80 9F 05 38 */	lwz r4, 0x538(r31)
/* 8052CC54  38 E0 00 00 */	li r7, 0
/* 8052CC58  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 8052CC5C  C0 45 00 18 */	lfs f2, 0x18(r5)
/* 8052CC60  FC 60 08 90 */	fmr f3, f1
/* 8052CC64  C0 9F 07 64 */	lfs f4, 0x764(r31)
/* 8052CC68  C0 A5 00 20 */	lfs f5, 0x20(r5)
/* 8052CC6C  80 C5 00 1C */	lwz r6, 0x1c(r5)
/* 8052CC70  4B E4 40 65 */	bl cKF_SkeletonInfo_R_init
/* 8052CC74  A8 1C 00 30 */	lha r0, 0x30(r28)
/* 8052CC78  3C 60 80 65 */	lis r3, lit_802@ha /* 0x80649278@ha */
/* 8052CC7C  C0 23 92 78 */	lfs f1, lit_802@l(r3)  /* 0x80649278@l */
/* 8052CC80  2C 00 00 00 */	cmpwi r0, 0
/* 8052CC84  40 82 00 2C */	bne lbl_8052CCB0
/* 8052CC88  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 8052CC8C  28 00 00 00 */	cmplwi r0, 0
/* 8052CC90  40 82 00 20 */	bne lbl_8052CCB0
/* 8052CC94  2C 1B 00 01 */	cmpwi r27, 1
/* 8052CC98  41 82 00 18 */	beq lbl_8052CCB0
/* 8052CC9C  3C 80 80 65 */	lis r4, lit_803@ha /* 0x8064927C@ha */
/* 8052CCA0  3C 60 80 65 */	lis r3, data_80649274@ha /* 0x80649274@ha */
/* 8052CCA4  C0 04 92 7C */	lfs f0, lit_803@l(r4)  /* 0x8064927C@l */
/* 8052CCA8  C0 23 92 74 */	lfs f1, data_80649274@l(r3)  /* 0x80649274@l */
/* 8052CCAC  D0 1F 05 30 */	stfs f0, 0x530(r31)
lbl_8052CCB0:
/* 8052CCB0  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 8052CCB4  38 A0 00 00 */	li r5, 0
/* 8052CCB8  38 00 00 01 */	li r0, 1
/* 8052CCBC  7F E3 FB 78 */	mr r3, r31
/* 8052CCC0  93 5F 07 14 */	stw r26, 0x714(r31)
/* 8052CCC4  7F 84 E3 78 */	mr r4, r28
/* 8052CCC8  90 BF 01 98 */	stw r5, 0x198(r31)
/* 8052CCCC  90 BF 01 A0 */	stw r5, 0x1a0(r31)
/* 8052CCD0  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 8052CCD4  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 8052CCD8  FC 00 00 1E */	fctiwz f0, f0
/* 8052CCDC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8052CCE0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8052CCE4  90 BF 01 94 */	stw r5, 0x194(r31)
/* 8052CCE8  90 1F 01 9C */	stw r0, 0x19c(r31)
/* 8052CCEC  4B FF FC 39 */	bl aNPC_set_anime_se_info
/* 8052CCF0  39 61 00 30 */	addi r11, r1, 0x30
/* 8052CCF4  4B B6 E2 21 */	bl func_8009AF14
/* 8052CCF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8052CCFC  7C 08 03 A6 */	mtlr r0
/* 8052CD00  38 21 00 30 */	addi r1, r1, 0x30
/* 8052CD04  4E 80 00 20 */	blr 
