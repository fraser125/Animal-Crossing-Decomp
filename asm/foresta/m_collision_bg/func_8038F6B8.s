lbl_8038F6B8:
/* 8038F6B8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8038F6BC  7C 08 02 A6 */	mflr r0
/* 8038F6C0  90 01 00 94 */	stw r0, 0x94(r1)
/* 8038F6C4  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8038F6C8  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8038F6CC  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8038F6D0  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8038F6D4  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8038F6D8  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 8038F6DC  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8038F6E0  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8038F6E4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8038F6E8  FF A0 08 90 */	fmr f29, f1
/* 8038F6EC  7C 9F 23 78 */	mr r31, r4
/* 8038F6F0  41 82 00 18 */	beq lbl_8038F708
/* 8038F6F4  3C 60 80 65 */	lis r3, ground_angle0_3194@ha /* 0x80650DD4@ha */
/* 8038F6F8  84 03 0D D4 */	lwzu r0, ground_angle0_3194@l(r3)  /* 0x80650DD4@l */
/* 8038F6FC  90 1E 00 00 */	stw r0, 0(r30)
/* 8038F700  A0 03 00 04 */	lhz r0, 4(r3)
/* 8038F704  B0 1E 00 04 */	sth r0, 4(r30)
lbl_8038F708:
/* 8038F708  80 DF 00 00 */	lwz r6, 0(r31)
/* 8038F70C  38 61 00 20 */	addi r3, r1, 0x20
/* 8038F710  80 BF 00 04 */	lwz r5, 4(r31)
/* 8038F714  38 81 00 14 */	addi r4, r1, 0x14
/* 8038F718  80 1F 00 08 */	lwz r0, 8(r31)
/* 8038F71C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8038F720  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8038F724  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8038F728  4B FF 64 E1 */	bl mCoBG_Wpos2UnitInfo
/* 8038F72C  38 61 00 0C */	addi r3, r1, 0xc
/* 8038F730  38 81 00 20 */	addi r4, r1, 0x20
/* 8038F734  4B FF 94 F9 */	bl mCoBG_GetBGHeight_Normal
/* 8038F738  FF E0 08 90 */	fmr f31, f1
/* 8038F73C  7F E3 FB 78 */	mr r3, r31
/* 8038F740  38 81 00 20 */	addi r4, r1, 0x20
/* 8038F744  4B FF F9 2D */	bl mCoBG_GetBGHeight_Column
/* 8038F748  FF C0 08 90 */	fmr f30, f1
/* 8038F74C  7F E4 FB 78 */	mr r4, r31
/* 8038F750  38 61 00 08 */	addi r3, r1, 8
/* 8038F754  4B FF D3 C9 */	bl mCoBG_GetMoveBgHeight
/* 8038F758  28 1E 00 00 */	cmplwi r30, 0
/* 8038F75C  41 82 00 38 */	beq lbl_8038F794
/* 8038F760  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 8038F764  4C 41 13 82 */	cror 2, 1, 2
/* 8038F768  40 82 00 2C */	bne lbl_8038F794
/* 8038F76C  C0 01 00 08 */	lfs f0, 8(r1)
/* 8038F770  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8038F774  4C 41 13 82 */	cror 2, 1, 2
/* 8038F778  40 82 00 1C */	bne lbl_8038F794
/* 8038F77C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8038F780  EC 3F E8 28 */	fsubs f1, f31, f29
/* 8038F784  90 1E 00 00 */	stw r0, 0(r30)
/* 8038F788  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 8038F78C  B0 1E 00 04 */	sth r0, 4(r30)
/* 8038F790  48 00 00 60 */	b lbl_8038F7F0
lbl_8038F794:
/* 8038F794  C0 41 00 08 */	lfs f2, 8(r1)
/* 8038F798  FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 8038F79C  40 81 00 0C */	ble lbl_8038F7A8
/* 8038F7A0  FC 20 F8 90 */	fmr f1, f31
/* 8038F7A4  48 00 00 08 */	b lbl_8038F7AC
lbl_8038F7A8:
/* 8038F7A8  FC 20 10 90 */	fmr f1, f2
lbl_8038F7AC:
/* 8038F7AC  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 8038F7B0  40 81 00 0C */	ble lbl_8038F7BC
/* 8038F7B4  FC 00 F8 90 */	fmr f0, f31
/* 8038F7B8  48 00 00 08 */	b lbl_8038F7C0
lbl_8038F7BC:
/* 8038F7BC  FC 00 F0 90 */	fmr f0, f30
lbl_8038F7C0:
/* 8038F7C0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8038F7C4  40 81 00 1C */	ble lbl_8038F7E0
/* 8038F7C8  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 8038F7CC  40 81 00 0C */	ble lbl_8038F7D8
/* 8038F7D0  FC 40 F8 90 */	fmr f2, f31
/* 8038F7D4  48 00 00 18 */	b lbl_8038F7EC
lbl_8038F7D8:
/* 8038F7D8  FC 40 F0 90 */	fmr f2, f30
/* 8038F7DC  48 00 00 10 */	b lbl_8038F7EC
lbl_8038F7E0:
/* 8038F7E0  FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 8038F7E4  40 81 00 08 */	ble lbl_8038F7EC
/* 8038F7E8  FC 40 F8 90 */	fmr f2, f31
lbl_8038F7EC:
/* 8038F7EC  EC 22 E8 28 */	fsubs f1, f2, f29
lbl_8038F7F0:
/* 8038F7F0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8038F7F4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8038F7F8  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8038F7FC  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8038F800  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 8038F804  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8038F808  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8038F80C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8038F810  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8038F814  7C 08 03 A6 */	mtlr r0
/* 8038F818  38 21 00 90 */	addi r1, r1, 0x90
/* 8038F81C  4E 80 00 20 */	blr 
