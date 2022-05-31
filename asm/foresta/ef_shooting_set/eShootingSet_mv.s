lbl_8061C7C0:
/* 8061C7C0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8061C7C4  7C 08 02 A6 */	mflr r0
/* 8061C7C8  90 01 00 94 */	stw r0, 0x94(r1)
/* 8061C7CC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8061C7D0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8061C7D4  39 61 00 80 */	addi r11, r1, 0x80
/* 8061C7D8  4B A7 E6 F5 */	bl func_8009AECC
/* 8061C7DC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8061C7E0  7C 9E 23 78 */	mr r30, r4
/* 8061C7E4  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 8061C7E8  7C 7D 1B 78 */	mr r29, r3
/* 8061C7EC  3F E4 00 02 */	addis r31, r4, 2
/* 8061C7F0  38 80 00 64 */	li r4, 0x64
/* 8061C7F4  80 DF 60 9C */	lwz r6, 0x609c(r31)
/* 8061C7F8  38 A0 00 64 */	li r5, 0x64
/* 8061C7FC  81 86 00 10 */	lwz r12, 0x10(r6)
/* 8061C800  7D 89 03 A6 */	mtctr r12
/* 8061C804  4E 80 04 21 */	bctrl 
/* 8061C808  4B D7 E6 B1 */	bl mEv_CheckTitleDemo
/* 8061C80C  2C 03 FF F7 */	cmpwi r3, -9
/* 8061C810  41 82 02 74 */	beq lbl_8061CA84
/* 8061C814  A8 7D 00 4C */	lha r3, 0x4c(r29)
/* 8061C818  A8 1D 00 4E */	lha r0, 0x4e(r29)
/* 8061C81C  7C 03 00 00 */	cmpw r3, r0
/* 8061C820  41 80 01 CC */	blt lbl_8061C9EC
/* 8061C824  38 00 00 00 */	li r0, 0
/* 8061C828  B0 1D 00 4C */	sth r0, 0x4c(r29)
/* 8061C82C  4B FF FE 55 */	bl eShootingSet_GetFrame_MakeNextShooting
/* 8061C830  B0 7D 00 4E */	sth r3, 0x4e(r29)
/* 8061C834  38 61 00 20 */	addi r3, r1, 0x20
/* 8061C838  80 BD 00 10 */	lwz r5, 0x10(r29)
/* 8061C83C  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 8061C840  80 9F 60 9C */	lwz r4, 0x609c(r31)
/* 8061C844  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8061C848  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061C84C  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 8061C850  90 01 00 28 */	stw r0, 0x28(r1)
/* 8061C854  81 84 00 38 */	lwz r12, 0x38(r4)
/* 8061C858  7D 89 03 A6 */	mtctr r12
/* 8061C85C  4E 80 04 21 */	bctrl 
/* 8061C860  2C 03 00 00 */	cmpwi r3, 0
/* 8061C864  41 82 01 88 */	beq lbl_8061C9EC
/* 8061C868  4B A4 04 8D */	bl fqrand
/* 8061C86C  3C 60 80 65 */	lis r3, lit_459@ha /* 0x8064CB20@ha */
/* 8061C870  C0 03 CB 20 */	lfs f0, lit_459@l(r3)  /* 0x8064CB20@l */
/* 8061C874  EC 00 00 72 */	fmuls f0, f0, f1
/* 8061C878  FC 00 00 1E */	fctiwz f0, f0
/* 8061C87C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8061C880  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8061C884  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8061C888  7C 00 07 34 */	extsh r0, r0
/* 8061C88C  2C 00 00 01 */	cmpwi r0, 1
/* 8061C890  40 82 00 30 */	bne lbl_8061C8C0
/* 8061C894  4B A4 04 61 */	bl fqrand
/* 8061C898  3C 60 80 65 */	lis r3, lit_460@ha /* 0x8064CB24@ha */
/* 8061C89C  C0 03 CB 24 */	lfs f0, lit_460@l(r3)  /* 0x8064CB24@l */
/* 8061C8A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8061C8A4  FC 00 00 1E */	fctiwz f0, f0
/* 8061C8A8  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8061C8AC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8061C8B0  7C 03 07 34 */	extsh r3, r0
/* 8061C8B4  3F 63 00 01 */	addis r27, r3, 1
/* 8061C8B8  3B 7B E0 00 */	addi r27, r27, -8192
/* 8061C8BC  48 00 00 30 */	b lbl_8061C8EC
lbl_8061C8C0:
/* 8061C8C0  4B A4 04 35 */	bl fqrand
/* 8061C8C4  3C 80 80 65 */	lis r4, lit_460@ha /* 0x8064CB24@ha */
/* 8061C8C8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000E000@ha */
/* 8061C8CC  C0 04 CB 24 */	lfs f0, lit_460@l(r4)  /* 0x8064CB24@l */
/* 8061C8D0  38 03 E0 00 */	addi r0, r3, 0xE000 /* 0x0000E000@l */
/* 8061C8D4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8061C8D8  FC 00 00 1E */	fctiwz f0, f0
/* 8061C8DC  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8061C8E0  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 8061C8E4  7C 63 07 34 */	extsh r3, r3
/* 8061C8E8  7F 63 00 50 */	subf r27, r3, r0
lbl_8061C8EC:
/* 8061C8EC  80 BD 00 10 */	lwz r5, 0x10(r29)
/* 8061C8F0  7F C3 F3 78 */	mr r3, r30
/* 8061C8F4  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 8061C8F8  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 8061C8FC  90 A1 00 38 */	stw r5, 0x38(r1)
/* 8061C900  90 81 00 3C */	stw r4, 0x3c(r1)
/* 8061C904  90 01 00 40 */	stw r0, 0x40(r1)
/* 8061C908  4B DB CD 39 */	bl get_player_actor_withoutCheck
/* 8061C90C  7C 7C 1B 78 */	mr r28, r3
/* 8061C910  4B A4 03 E5 */	bl fqrand
/* 8061C914  3C 60 80 65 */	lis r3, lit_461@ha /* 0x8064CB28@ha */
/* 8061C918  C0 03 CB 28 */	lfs f0, lit_461@l(r3)  /* 0x8064CB28@l */
/* 8061C91C  EF E0 00 72 */	fmuls f31, f0, f1
/* 8061C920  4B A4 03 D5 */	bl fqrand
/* 8061C924  3C 80 80 65 */	lis r4, lit_462@ha /* 0x8064CB2C@ha */
/* 8061C928  C0 61 00 38 */	lfs f3, 0x38(r1)
/* 8061C92C  C0 44 CB 2C */	lfs f2, lit_462@l(r4)  /* 0x8064CB2C@l */
/* 8061C930  3C 60 80 65 */	lis r3, lit_463@ha /* 0x8064CB30@ha */
/* 8061C934  C0 1C 00 28 */	lfs f0, 0x28(r28)
/* 8061C938  EC 82 00 72 */	fmuls f4, f2, f1
/* 8061C93C  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8061C940  C0 3C 00 30 */	lfs f1, 0x30(r28)
/* 8061C944  EC 63 00 2A */	fadds f3, f3, f0
/* 8061C948  C0 03 CB 30 */	lfs f0, lit_463@l(r3)  /* 0x8064CB30@l */
/* 8061C94C  EC 42 08 2A */	fadds f2, f2, f1
/* 8061C950  FC 80 20 1E */	fctiwz f4, f4
/* 8061C954  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 8061C958  EC 23 00 32 */	fmuls f1, f3, f0
/* 8061C95C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8061C960  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8061C964  D8 81 00 60 */	stfd f4, 0x60(r1)
/* 8061C968  83 81 00 64 */	lwz r28, 0x64(r1)
/* 8061C96C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8061C970  7F 83 E3 78 */	mr r3, r28
/* 8061C974  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8061C978  4B D9 E1 25 */	bl cos_s
/* 8061C97C  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8061C980  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8061C984  7F 83 E3 78 */	mr r3, r28
/* 8061C988  EC 00 08 2A */	fadds f0, f0, f1
/* 8061C98C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8061C990  4B D9 E1 0D */	bl cos_s
/* 8061C994  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8061C998  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8061C99C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8061C9A0  7F C7 F3 78 */	mr r7, r30
/* 8061C9A4  80 61 00 38 */	lwz r3, 0x38(r1)
/* 8061C9A8  38 81 00 14 */	addi r4, r1, 0x14
/* 8061C9AC  EC 00 08 2A */	fadds f0, f0, f1
/* 8061C9B0  90 61 00 14 */	stw r3, 0x14(r1)
/* 8061C9B4  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 8061C9B8  7F 66 07 34 */	extsh r6, r27
/* 8061C9BC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8061C9C0  38 60 00 73 */	li r3, 0x73
/* 8061C9C4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8061C9C8  39 20 00 00 */	li r9, 0
/* 8061C9CC  39 40 00 00 */	li r10, 0
/* 8061C9D0  80 01 00 40 */	lwz r0, 0x40(r1)
/* 8061C9D4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8061C9D8  81 85 00 00 */	lwz r12, 0(r5)
/* 8061C9DC  A1 1D 00 0C */	lhz r8, 0xc(r29)
/* 8061C9E0  88 BD 00 0E */	lbz r5, 0xe(r29)
/* 8061C9E4  7D 89 03 A6 */	mtctr r12
/* 8061C9E8  4E 80 04 21 */	bctrl 
lbl_8061C9EC:
/* 8061C9EC  A8 9D 00 4C */	lha r4, 0x4c(r29)
/* 8061C9F0  38 61 00 08 */	addi r3, r1, 8
/* 8061C9F4  38 04 00 01 */	addi r0, r4, 1
/* 8061C9F8  B0 1D 00 4C */	sth r0, 0x4c(r29)
/* 8061C9FC  80 BD 00 10 */	lwz r5, 0x10(r29)
/* 8061CA00  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 8061CA04  80 9F 60 9C */	lwz r4, 0x609c(r31)
/* 8061CA08  90 A1 00 08 */	stw r5, 8(r1)
/* 8061CA0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061CA10  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 8061CA14  90 01 00 10 */	stw r0, 0x10(r1)
/* 8061CA18  81 84 00 38 */	lwz r12, 0x38(r4)
/* 8061CA1C  7D 89 03 A6 */	mtctr r12
/* 8061CA20  4E 80 04 21 */	bctrl 
/* 8061CA24  2C 03 00 00 */	cmpwi r3, 0
/* 8061CA28  41 82 00 5C */	beq lbl_8061CA84
/* 8061CA2C  80 FD 00 10 */	lwz r7, 0x10(r29)
/* 8061CA30  3C 60 80 65 */	lis r3, lit_464@ha /* 0x8064CB34@ha */
/* 8061CA34  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 8061CA38  38 83 CB 34 */	addi r4, r3, lit_464@l /* 0x8064CB34@l */
/* 8061CA3C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061CA40  C0 04 00 00 */	lfs f0, 0(r4)
/* 8061CA44  90 01 00 30 */	stw r0, 0x30(r1)
/* 8061CA48  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061CA4C  3C C3 00 02 */	addis r6, r3, 2
/* 8061CA50  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8061CA54  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8061CA58  38 60 00 02 */	li r3, 2
/* 8061CA5C  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 8061CA60  38 80 00 00 */	li r4, 0
/* 8061CA64  EC 01 00 2A */	fadds f0, f1, f0
/* 8061CA68  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 8061CA6C  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 8061CA70  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061CA74  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8061CA78  81 86 00 18 */	lwz r12, 0x18(r6)
/* 8061CA7C  7D 89 03 A6 */	mtctr r12
/* 8061CA80  4E 80 04 21 */	bctrl 
lbl_8061CA84:
/* 8061CA84  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8061CA88  39 61 00 80 */	addi r11, r1, 0x80
/* 8061CA8C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8061CA90  4B A7 E4 89 */	bl func_8009AF18
/* 8061CA94  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8061CA98  7C 08 03 A6 */	mtlr r0
/* 8061CA9C  38 21 00 90 */	addi r1, r1, 0x90
/* 8061CAA0  4E 80 00 20 */	blr 
