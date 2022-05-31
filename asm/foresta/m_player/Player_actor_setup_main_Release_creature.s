lbl_804FEC24:
/* 804FEC24  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804FEC28  7C 08 02 A6 */	mflr r0
/* 804FEC2C  90 01 00 74 */	stw r0, 0x74(r1)
/* 804FEC30  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 804FEC34  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 804FEC38  39 61 00 60 */	addi r11, r1, 0x60
/* 804FEC3C  4B B9 C2 91 */	bl func_8009AECC
/* 804FEC40  7C 7B 1B 78 */	mr r27, r3
/* 804FEC44  7C 9C 23 78 */	mr r28, r4
/* 804FEC48  83 A3 0D 78 */	lwz r29, 0xd78(r3)
/* 804FEC4C  83 E3 0D 60 */	lwz r31, 0xd60(r3)
/* 804FEC50  28 1D 00 00 */	cmplwi r29, 0
/* 804FEC54  83 C3 0D 64 */	lwz r30, 0xd64(r3)
/* 804FEC58  40 82 01 70 */	bne lbl_804FEDC8
/* 804FEC5C  2C 1F 00 01 */	cmpwi r31, 1
/* 804FEC60  40 82 00 58 */	bne lbl_804FECB8
/* 804FEC64  38 E0 FF FF */	li r7, -1
/* 804FEC68  38 00 00 00 */	li r0, 0
/* 804FEC6C  90 E1 00 08 */	stw r7, 8(r1)
/* 804FEC70  38 7C 1D A8 */	addi r3, r28, 0x1da8
/* 804FEC74  38 A0 00 81 */	li r5, 0x81
/* 804FEC78  38 C0 00 00 */	li r6, 0
/* 804FEC7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804FEC80  39 00 00 00 */	li r8, 0
/* 804FEC84  A8 1B 0D 6A */	lha r0, 0xd6a(r27)
/* 804FEC88  90 01 00 10 */	stw r0, 0x10(r1)
/* 804FEC8C  90 E1 00 14 */	stw r7, 0x14(r1)
/* 804FEC90  90 E1 00 18 */	stw r7, 0x18(r1)
/* 804FEC94  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 804FEC98  C0 5B 00 2C */	lfs f2, 0x2c(r27)
/* 804FEC9C  C0 7B 00 30 */	lfs f3, 0x30(r27)
/* 804FECA0  A8 FB 0D 68 */	lha r7, 0xd68(r27)
/* 804FECA4  89 3C 00 E4 */	lbz r9, 0xe4(r28)
/* 804FECA8  89 5C 00 E5 */	lbz r10, 0xe5(r28)
/* 804FECAC  4B E7 6A 9D */	bl Actor_info_make_actor
/* 804FECB0  7C 7D 1B 78 */	mr r29, r3
/* 804FECB4  48 00 01 08 */	b lbl_804FEDBC
lbl_804FECB8:
/* 804FECB8  2C 1F 00 00 */	cmpwi r31, 0
/* 804FECBC  40 82 00 34 */	bne lbl_804FECF0
/* 804FECC0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804FECC4  38 BB 0D 68 */	addi r5, r27, 0xd68
/* 804FECC8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 804FECCC  3C 84 00 02 */	addis r4, r4, 2
/* 804FECD0  7F 83 E3 78 */	mr r3, r28
/* 804FECD4  80 C4 60 88 */	lwz r6, 0x6088(r4)
/* 804FECD8  80 9B 0D 74 */	lwz r4, 0xd74(r27)
/* 804FECDC  81 86 00 10 */	lwz r12, 0x10(r6)
/* 804FECE0  7D 89 03 A6 */	mtctr r12
/* 804FECE4  4E 80 04 21 */	bctrl 
/* 804FECE8  7C 7D 1B 78 */	mr r29, r3
/* 804FECEC  48 00 00 D0 */	b lbl_804FEDBC
lbl_804FECF0:
/* 804FECF0  80 1B 11 74 */	lwz r0, 0x1174(r27)
/* 804FECF4  28 00 00 00 */	cmplwi r0, 0
/* 804FECF8  7C 1D 03 78 */	mr r29, r0
/* 804FECFC  41 82 00 C0 */	beq lbl_804FEDBC
/* 804FED00  38 00 00 00 */	li r0, 0
/* 804FED04  B0 01 00 28 */	sth r0, 0x28(r1)
/* 804FED08  A8 7B 00 DE */	lha r3, 0xde(r27)
/* 804FED0C  B0 61 00 2A */	sth r3, 0x2a(r1)
/* 804FED10  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 804FED14  4B EB BD DD */	bl sin_s
/* 804FED18  FF E0 08 90 */	fmr f31, f1
/* 804FED1C  A8 61 00 2A */	lha r3, 0x2a(r1)
/* 804FED20  4B EB BD 7D */	bl cos_s
/* 804FED24  80 BB 00 28 */	lwz r5, 0x28(r27)
/* 804FED28  3C 80 80 65 */	lis r4, lit_14402@ha /* 0x80648568@ha */
/* 804FED2C  80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 804FED30  3C 60 80 64 */	lis r3, lit_1375@ha /* 0x80646A30@ha */
/* 804FED34  C0 44 85 68 */	lfs f2, lit_14402@l(r4)  /* 0x80648568@l */
/* 804FED38  3C 80 80 64 */	lis r4, lit_5980@ha /* 0x80647DC8@ha */
/* 804FED3C  C0 03 6A 30 */	lfs f0, lit_1375@l(r3)  /* 0x80646A30@l */
/* 804FED40  38 C4 7D C8 */	addi r6, r4, lit_5980@l /* 0x80647DC8@l */
/* 804FED44  90 A1 00 30 */	stw r5, 0x30(r1)
/* 804FED48  EC C2 07 F2 */	fmuls f6, f2, f31
/* 804FED4C  EC 00 00 72 */	fmuls f0, f0, f1
/* 804FED50  C0 86 00 00 */	lfs f4, 0(r6)
/* 804FED54  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FED58  3C 80 80 64 */	lis r4, lit_950@ha /* 0x806468F4@ha */
/* 804FED5C  38 A4 68 F4 */	addi r5, r4, lit_950@l /* 0x806468F4@l */
/* 804FED60  80 1B 00 30 */	lwz r0, 0x30(r27)
/* 804FED64  EC 46 00 2A */	fadds f2, f6, f0
/* 804FED68  C0 A1 00 34 */	lfs f5, 0x34(r1)
/* 804FED6C  90 01 00 38 */	stw r0, 0x38(r1)
/* 804FED70  EC 00 30 28 */	fsubs f0, f0, f6
/* 804FED74  C0 61 00 30 */	lfs f3, 0x30(r1)
/* 804FED78  EC 85 20 2A */	fadds f4, f5, f4
/* 804FED7C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 804FED80  EC 43 10 2A */	fadds f2, f3, f2
/* 804FED84  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 804FED88  3C 60 80 65 */	lis r3, lit_8275@ha /* 0x8064843C@ha */
/* 804FED8C  EC 01 00 2A */	fadds f0, f1, f0
/* 804FED90  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FED94  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 804FED98  C0 43 84 3C */	lfs f2, lit_8275@l(r3)  /* 0x8064843C@l */
/* 804FED9C  7F 84 E3 78 */	mr r4, r28
/* 804FEDA0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804FEDA4  38 C1 00 28 */	addi r6, r1, 0x28
/* 804FEDA8  39 01 00 30 */	addi r8, r1, 0x30
/* 804FEDAC  80 7B 11 74 */	lwz r3, 0x1174(r27)
/* 804FEDB0  38 E0 00 00 */	li r7, 0
/* 804FEDB4  80 BB 0D 68 */	lwz r5, 0xd68(r27)
/* 804FEDB8  4B F1 4F C9 */	bl Ac_Balloon_request_fly
lbl_804FEDBC:
/* 804FEDBC  38 00 00 01 */	li r0, 1
/* 804FEDC0  90 1B 0D 28 */	stw r0, 0xd28(r27)
/* 804FEDC4  48 00 00 0C */	b lbl_804FEDD0
lbl_804FEDC8:
/* 804FEDC8  38 00 00 00 */	li r0, 0
/* 804FEDCC  90 1B 0D 28 */	stw r0, 0xd28(r27)
lbl_804FEDD0:
/* 804FEDD0  93 FB 0D 18 */	stw r31, 0xd18(r27)
/* 804FEDD4  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804FEDD8  38 A3 65 68 */	addi r5, r3, lit_604@l /* 0x80646568@l */
/* 804FEDDC  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FEDE0  93 DB 0D 1C */	stw r30, 0xd1c(r27)
/* 804FEDE4  38 83 83 54 */	addi r4, r3, lit_7381@l /* 0x80648354@l */
/* 804FEDE8  C0 05 00 00 */	lfs f0, 0(r5)
/* 804FEDEC  7F 63 DB 78 */	mr r3, r27
/* 804FEDF0  93 BB 0D 20 */	stw r29, 0xd20(r27)
/* 804FEDF4  38 A1 00 24 */	addi r5, r1, 0x24
/* 804FEDF8  C0 24 00 00 */	lfs f1, 0(r4)
/* 804FEDFC  38 C1 00 20 */	addi r6, r1, 0x20
/* 804FEE00  D0 1B 0D 24 */	stfs f0, 0xd24(r27)
/* 804FEE04  38 80 00 00 */	li r4, 0
/* 804FEE08  4B FD B1 59 */	bl Player_actor_SetupItem_Base1
/* 804FEE0C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FEE10  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FEE14  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FEE18  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804FEE1C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FEE20  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FEE24  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804FEE28  7F 63 DB 78 */	mr r3, r27
/* 804FEE2C  FC 40 08 90 */	fmr f2, f1
/* 804FEE30  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 804FEE34  80 E1 00 20 */	lwz r7, 0x20(r1)
/* 804FEE38  7F 84 E3 78 */	mr r4, r28
/* 804FEE3C  38 A0 00 00 */	li r5, 0
/* 804FEE40  4B FD 78 B9 */	bl Player_actor_InitAnimation_Base1
/* 804FEE44  7F 63 DB 78 */	mr r3, r27
/* 804FEE48  7F 84 E3 78 */	mr r4, r28
/* 804FEE4C  4B FD 6A AD */	bl Player_actor_setup_main_Base
/* 804FEE50  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804FEE54  39 61 00 60 */	addi r11, r1, 0x60
/* 804FEE58  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804FEE5C  4B B9 C0 BD */	bl func_8009AF18
/* 804FEE60  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804FEE64  7C 08 03 A6 */	mtlr r0
/* 804FEE68  38 21 00 70 */	addi r1, r1, 0x70
/* 804FEE6C  4E 80 00 20 */	blr 
