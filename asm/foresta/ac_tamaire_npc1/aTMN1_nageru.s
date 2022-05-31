lbl_8058ABE4:
/* 8058ABE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8058ABE8  7C 08 02 A6 */	mflr r0
/* 8058ABEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8058ABF0  39 61 00 30 */	addi r11, r1, 0x30
/* 8058ABF4  4B B1 02 E1 */	bl func_8009AED4
/* 8058ABF8  7C 7E 1B 78 */	mr r30, r3
/* 8058ABFC  7C 9F 23 78 */	mr r31, r4
/* 8058AC00  88 03 09 B0 */	lbz r0, 0x9b0(r3)
/* 8058AC04  28 00 00 01 */	cmplwi r0, 1
/* 8058AC08  40 82 00 B4 */	bne lbl_8058ACBC
/* 8058AC0C  3C 80 80 65 */	lis r4, lit_670@ha /* 0x80649B8C@ha */
/* 8058AC10  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 8058AC14  C0 24 9B 8C */	lfs f1, lit_670@l(r4)  /* 0x80649B8C@l */
/* 8058AC18  4B DE 58 71 */	bl cKF_FrameControl_passCheck_now
/* 8058AC1C  2C 03 00 00 */	cmpwi r3, 0
/* 8058AC20  41 82 00 9C */	beq lbl_8058ACBC
/* 8058AC24  38 00 00 00 */	li r0, 0
/* 8058AC28  98 1E 09 B0 */	stb r0, 0x9b0(r30)
/* 8058AC2C  80 7E 08 A8 */	lwz r3, 0x8a8(r30)
/* 8058AC30  80 1E 08 AC */	lwz r0, 0x8ac(r30)
/* 8058AC34  90 61 00 08 */	stw r3, 8(r1)
/* 8058AC38  90 01 00 0C */	stw r0, 0xc(r1)
/* 8058AC3C  80 1E 08 B0 */	lwz r0, 0x8b0(r30)
/* 8058AC40  90 01 00 10 */	stw r0, 0x10(r1)
/* 8058AC44  4B AD 20 B1 */	bl fqrand
/* 8058AC48  3C 80 80 65 */	lis r4, lit_671@ha /* 0x80649B90@ha */
/* 8058AC4C  7F C3 F3 78 */	mr r3, r30
/* 8058AC50  C0 04 9B 90 */	lfs f0, lit_671@l(r4)  /* 0x80649B90@l */
/* 8058AC54  EC 00 00 72 */	fmuls f0, f0, f1
/* 8058AC58  FC 00 00 1E */	fctiwz f0, f0
/* 8058AC5C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8058AC60  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8058AC64  38 04 30 00 */	addi r0, r4, 0x3000
/* 8058AC68  7C 1D 07 34 */	extsh r29, r0
/* 8058AC6C  4B FF FA C1 */	bl aTMN1_Tamakago_angle
/* 8058AC70  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058AC74  A1 1E 00 06 */	lhz r8, 6(r30)
/* 8058AC78  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8058AC7C  7C 66 1B 78 */	mr r6, r3
/* 8058AC80  3C 84 00 02 */	addis r4, r4, 2
/* 8058AC84  7F E7 FB 78 */	mr r7, r31
/* 8058AC88  80 64 60 9C */	lwz r3, 0x609c(r4)
/* 8058AC8C  3C 88 FF FF */	addis r4, r8, 0xffff
/* 8058AC90  38 04 2F AC */	addi r0, r4, 0x2fac
/* 8058AC94  7F AA EB 78 */	mr r10, r29
/* 8058AC98  81 83 00 00 */	lwz r12, 0(r3)
/* 8058AC9C  54 00 FF FE */	rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 8058ACA0  38 81 00 08 */	addi r4, r1, 8
/* 8058ACA4  38 60 00 5B */	li r3, 0x5b
/* 8058ACA8  7C 09 07 34 */	extsh r9, r0
/* 8058ACAC  38 A0 00 01 */	li r5, 1
/* 8058ACB0  7D 89 03 A6 */	mtctr r12
/* 8058ACB4  4E 80 04 21 */	bctrl 
/* 8058ACB8  48 00 00 44 */	b lbl_8058ACFC
lbl_8058ACBC:
/* 8058ACBC  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 8058ACC0  4B DE 58 61 */	bl cKF_FrameControl_stop_proc
/* 8058ACC4  2C 03 00 01 */	cmpwi r3, 1
/* 8058ACC8  40 82 00 34 */	bne lbl_8058ACFC
/* 8058ACCC  88 1E 09 AF */	lbz r0, 0x9af(r30)
/* 8058ACD0  28 00 00 00 */	cmplwi r0, 0
/* 8058ACD4  41 82 00 18 */	beq lbl_8058ACEC
/* 8058ACD8  7F C3 F3 78 */	mr r3, r30
/* 8058ACDC  7F E4 FB 78 */	mr r4, r31
/* 8058ACE0  38 A0 00 09 */	li r5, 9
/* 8058ACE4  48 00 05 69 */	bl aTMN1_setup_think_proc
/* 8058ACE8  48 00 00 14 */	b lbl_8058ACFC
lbl_8058ACEC:
/* 8058ACEC  7F C3 F3 78 */	mr r3, r30
/* 8058ACF0  7F E4 FB 78 */	mr r4, r31
/* 8058ACF4  38 A0 00 0A */	li r5, 0xa
/* 8058ACF8  48 00 05 55 */	bl aTMN1_setup_think_proc
lbl_8058ACFC:
/* 8058ACFC  39 61 00 30 */	addi r11, r1, 0x30
/* 8058AD00  4B B1 02 21 */	bl func_8009AF20
/* 8058AD04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8058AD08  7C 08 03 A6 */	mtlr r0
/* 8058AD0C  38 21 00 30 */	addi r1, r1, 0x30
/* 8058AD10  4E 80 00 20 */	blr 
