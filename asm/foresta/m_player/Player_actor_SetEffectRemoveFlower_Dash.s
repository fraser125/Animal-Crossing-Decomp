lbl_804E7280:
/* 804E7280  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804E7284  7C 08 02 A6 */	mflr r0
/* 804E7288  90 01 00 64 */	stw r0, 0x64(r1)
/* 804E728C  39 61 00 60 */	addi r11, r1, 0x60
/* 804E7290  4B BB 3C 41 */	bl func_8009AED0
/* 804E7294  7C 7E 1B 78 */	mr r30, r3
/* 804E7298  7C 9C 23 78 */	mr r28, r4
/* 804E729C  7C BD 2B 78 */	mr r29, r5
/* 804E72A0  4B B7 5A 55 */	bl fqrand
/* 804E72A4  3C 60 80 65 */	lis r3, lit_7410@ha /* 0x80648358@ha */
/* 804E72A8  C0 03 83 58 */	lfs f0, lit_7410@l(r3)  /* 0x80648358@l */
/* 804E72AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 804E72B0  FC 00 00 1E */	fctiwz f0, f0
/* 804E72B4  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 804E72B8  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 804E72BC  2C 00 00 00 */	cmpwi r0, 0
/* 804E72C0  40 82 01 54 */	bne lbl_804E7414
/* 804E72C4  3B FE 00 28 */	addi r31, r30, 0x28
/* 804E72C8  38 61 00 2C */	addi r3, r1, 0x2c
/* 804E72CC  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 804E72D0  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 804E72D4  90 81 00 2C */	stw r4, 0x2c(r1)
/* 804E72D8  90 01 00 30 */	stw r0, 0x30(r1)
/* 804E72DC  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804E72E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E72E4  4B EC 01 4D */	bl mFI_GetUnitFG
/* 804E72E8  28 03 00 00 */	cmplwi r3, 0
/* 804E72EC  41 82 01 28 */	beq lbl_804E7414
/* 804E72F0  A3 C3 00 00 */	lhz r30, 0(r3)
/* 804E72F4  38 00 00 00 */	li r0, 0
/* 804E72F8  28 1E 08 3C */	cmplwi r30, 0x83c
/* 804E72FC  41 80 00 10 */	blt lbl_804E730C
/* 804E7300  28 1E 08 4D */	cmplwi r30, 0x84d
/* 804E7304  41 81 00 08 */	bgt lbl_804E730C
/* 804E7308  38 00 00 01 */	li r0, 1
lbl_804E730C:
/* 804E730C  2C 00 00 00 */	cmpwi r0, 0
/* 804E7310  41 82 01 04 */	beq lbl_804E7414
/* 804E7314  80 BF 00 00 */	lwz r5, 0(r31)
/* 804E7318  38 61 00 38 */	addi r3, r1, 0x38
/* 804E731C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804E7320  38 81 00 20 */	addi r4, r1, 0x20
/* 804E7324  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804E7328  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E732C  80 1F 00 08 */	lwz r0, 8(r31)
/* 804E7330  90 01 00 28 */	stw r0, 0x28(r1)
/* 804E7334  4B EB E2 09 */	bl mFI_Wpos2UtCenterWpos
/* 804E7338  2C 03 00 00 */	cmpwi r3, 0
/* 804E733C  41 82 00 D8 */	beq lbl_804E7414
/* 804E7340  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 804E7344  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E7348  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 804E734C  38 83 65 68 */	addi r4, r3, lit_604@l /* 0x80646568@l */
/* 804E7350  80 01 00 40 */	lwz r0, 0x40(r1)
/* 804E7354  38 61 00 14 */	addi r3, r1, 0x14
/* 804E7358  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804E735C  C0 24 00 00 */	lfs f1, 0(r4)
/* 804E7360  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804E7364  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804E7368  4B EA 86 31 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804E736C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 804E7370  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E7374  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E7378  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 804E737C  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 804E7380  3C 63 00 02 */	addis r3, r3, 2
/* 804E7384  80 01 00 40 */	lwz r0, 0x40(r1)
/* 804E7388  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804E738C  90 C1 00 08 */	stw r6, 8(r1)
/* 804E7390  7F A6 EB 78 */	mr r6, r29
/* 804E7394  81 63 60 9C */	lwz r11, 0x609c(r3)
/* 804E7398  7F 87 E3 78 */	mr r7, r28
/* 804E739C  90 81 00 0C */	stw r4, 0xc(r1)
/* 804E73A0  38 81 00 08 */	addi r4, r1, 8
/* 804E73A4  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804E73A8  7F C9 07 34 */	extsh r9, r30
/* 804E73AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E73B0  38 60 00 6C */	li r3, 0x6c
/* 804E73B4  38 A0 00 02 */	li r5, 2
/* 804E73B8  39 40 00 00 */	li r10, 0
/* 804E73BC  81 8B 00 00 */	lwz r12, 0(r11)
/* 804E73C0  7D 89 03 A6 */	mtctr r12
/* 804E73C4  4E 80 04 21 */	bctrl 
/* 804E73C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E73CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E73D0  3C 63 00 02 */	addis r3, r3, 2
/* 804E73D4  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804E73D8  28 03 00 00 */	cmplwi r3, 0
/* 804E73DC  41 82 00 20 */	beq lbl_804E73FC
/* 804E73E0  81 83 00 50 */	lwz r12, 0x50(r3)
/* 804E73E4  28 0C 00 00 */	cmplwi r12, 0
/* 804E73E8  41 82 00 14 */	beq lbl_804E73FC
/* 804E73EC  7F C3 F3 78 */	mr r3, r30
/* 804E73F0  7F E4 FB 78 */	mr r4, r31
/* 804E73F4  7D 89 03 A6 */	mtctr r12
/* 804E73F8  4E 80 04 21 */	bctrl 
lbl_804E73FC:
/* 804E73FC  38 60 00 10 */	li r3, 0x10
/* 804E7400  4B EC CC 19 */	bl mISL_SetNowPlayerAction
/* 804E7404  38 60 00 20 */	li r3, 0x20
/* 804E7408  4B EC CC 11 */	bl mISL_SetNowPlayerAction
/* 804E740C  38 60 00 01 */	li r3, 1
/* 804E7410  48 00 00 08 */	b lbl_804E7418
lbl_804E7414:
/* 804E7414  38 60 00 00 */	li r3, 0
lbl_804E7418:
/* 804E7418  39 61 00 60 */	addi r11, r1, 0x60
/* 804E741C  4B BB 3B 01 */	bl func_8009AF1C
/* 804E7420  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804E7424  7C 08 03 A6 */	mtlr r0
/* 804E7428  38 21 00 60 */	addi r1, r1, 0x60
/* 804E742C  4E 80 00 20 */	blr 
