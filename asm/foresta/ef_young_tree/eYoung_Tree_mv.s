lbl_80626A98:
/* 80626A98  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80626A9C  7C 08 02 A6 */	mflr r0
/* 80626AA0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80626AA4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80626AA8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80626AAC  39 61 00 50 */	addi r11, r1, 0x50
/* 80626AB0  4B A7 44 21 */	bl func_8009AED0
/* 80626AB4  7C 7D 1B 78 */	mr r29, r3
/* 80626AB8  7C 9E 23 78 */	mr r30, r4
/* 80626ABC  38 7D 00 1C */	addi r3, r29, 0x1c
/* 80626AC0  7C 65 1B 78 */	mr r5, r3
/* 80626AC4  38 9D 00 28 */	addi r4, r29, 0x28
/* 80626AC8  4B D9 44 7D */	bl xyz_t_add
/* 80626ACC  38 7D 00 10 */	addi r3, r29, 0x10
/* 80626AD0  38 9D 00 1C */	addi r4, r29, 0x1c
/* 80626AD4  7C 65 1B 78 */	mr r5, r3
/* 80626AD8  4B D9 44 6D */	bl xyz_t_add
/* 80626ADC  A8 1D 00 06 */	lha r0, 6(r29)
/* 80626AE0  2C 00 00 01 */	cmpwi r0, 1
/* 80626AE4  40 82 00 14 */	bne lbl_80626AF8
/* 80626AE8  A8 7D 00 4E */	lha r3, 0x4e(r29)
/* 80626AEC  38 03 01 80 */	addi r0, r3, 0x180
/* 80626AF0  B0 1D 00 4E */	sth r0, 0x4e(r29)
/* 80626AF4  48 00 02 38 */	b lbl_80626D2C
lbl_80626AF8:
/* 80626AF8  2C 00 00 02 */	cmpwi r0, 2
/* 80626AFC  40 82 00 14 */	bne lbl_80626B10
/* 80626B00  A8 7D 00 4E */	lha r3, 0x4e(r29)
/* 80626B04  38 03 FE 80 */	addi r0, r3, -384
/* 80626B08  B0 1D 00 4E */	sth r0, 0x4e(r29)
/* 80626B0C  48 00 02 20 */	b lbl_80626D2C
lbl_80626B10:
/* 80626B10  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80626B14  3C A0 80 65 */	lis r5, lit_434@ha /* 0x8064D038@ha */
/* 80626B18  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80626B1C  3C 80 80 65 */	lis r4, lit_435@ha /* 0x8064D03C@ha */
/* 80626B20  3F E3 00 02 */	addis r31, r3, 2
/* 80626B24  38 E5 D0 38 */	addi r7, r5, lit_434@l /* 0x8064D038@l */
/* 80626B28  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 80626B2C  38 C4 D0 3C */	addi r6, r4, lit_435@l /* 0x8064D03C@l */
/* 80626B30  A8 7D 00 00 */	lha r3, 0(r29)
/* 80626B34  38 80 00 00 */	li r4, 0
/* 80626B38  81 85 00 14 */	lwz r12, 0x14(r5)
/* 80626B3C  38 A0 00 28 */	li r5, 0x28
/* 80626B40  C0 27 00 00 */	lfs f1, 0(r7)
/* 80626B44  C0 46 00 00 */	lfs f2, 0(r6)
/* 80626B48  7D 89 03 A6 */	mtctr r12
/* 80626B4C  4E 80 04 21 */	bctrl 
/* 80626B50  FF E0 08 90 */	fmr f31, f1
/* 80626B54  A8 7D 00 50 */	lha r3, 0x50(r29)
/* 80626B58  4B D9 3F 99 */	bl sin_s
/* 80626B5C  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80626B60  FC 00 00 1E */	fctiwz f0, f0
/* 80626B64  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80626B68  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80626B6C  B0 1D 00 4E */	sth r0, 0x4e(r29)
/* 80626B70  A8 7D 00 50 */	lha r3, 0x50(r29)
/* 80626B74  38 03 0C 68 */	addi r0, r3, 0xc68
/* 80626B78  B0 1D 00 50 */	sth r0, 0x50(r29)
/* 80626B7C  A8 1D 00 00 */	lha r0, 0(r29)
/* 80626B80  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 80626B84  40 82 01 A8 */	bne lbl_80626D2C
/* 80626B88  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80626B8C  80 DD 00 10 */	lwz r6, 0x10(r29)
/* 80626B90  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80626B94  80 BD 00 14 */	lwz r5, 0x14(r29)
/* 80626B98  3C 63 00 02 */	addis r3, r3, 2
/* 80626B9C  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 80626BA0  80 03 61 14 */	lwz r0, 0x6114(r3)
/* 80626BA4  38 60 00 04 */	li r3, 4
/* 80626BA8  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 80626BAC  28 00 00 04 */	cmplwi r0, 4
/* 80626BB0  90 A1 00 30 */	stw r5, 0x30(r1)
/* 80626BB4  90 81 00 34 */	stw r4, 0x34(r1)
/* 80626BB8  40 82 00 08 */	bne lbl_80626BC0
/* 80626BBC  38 60 00 06 */	li r3, 6
lbl_80626BC0:
/* 80626BC0  A8 1D 00 08 */	lha r0, 8(r29)
/* 80626BC4  7C 7C 1B 78 */	mr r28, r3
/* 80626BC8  2C 00 00 01 */	cmpwi r0, 1
/* 80626BCC  40 82 00 10 */	bne lbl_80626BDC
/* 80626BD0  60 60 20 00 */	ori r0, r3, 0x2000
/* 80626BD4  7C 1C 07 34 */	extsh r28, r0
/* 80626BD8  48 00 00 28 */	b lbl_80626C00
lbl_80626BDC:
/* 80626BDC  2C 00 00 02 */	cmpwi r0, 2
/* 80626BE0  40 82 00 10 */	bne lbl_80626BF0
/* 80626BE4  60 60 40 00 */	ori r0, r3, 0x4000
/* 80626BE8  7C 1C 07 34 */	extsh r28, r0
/* 80626BEC  48 00 00 14 */	b lbl_80626C00
lbl_80626BF0:
/* 80626BF0  2C 00 00 03 */	cmpwi r0, 3
/* 80626BF4  40 82 00 0C */	bne lbl_80626C00
/* 80626BF8  60 60 60 00 */	ori r0, r3, 0x6000
/* 80626BFC  7C 1C 07 34 */	extsh r28, r0
lbl_80626C00:
/* 80626C00  4B A3 61 2D */	bl fqrand2
/* 80626C04  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064D040@ha */
/* 80626C08  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80626C0C  C0 43 D0 40 */	lfs f2, lit_436@l(r3)  /* 0x8064D040@l */
/* 80626C10  EC 22 00 72 */	fmuls f1, f2, f1
/* 80626C14  EC 00 08 2A */	fadds f0, f0, f1
/* 80626C18  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80626C1C  4B A3 60 D9 */	bl fqrand
/* 80626C20  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064D040@ha */
/* 80626C24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80626C28  C0 43 D0 40 */	lfs f2, lit_436@l(r3)  /* 0x8064D040@l */
/* 80626C2C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80626C30  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80626C34  39 03 FF FF */	addi r8, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80626C38  EC 22 00 72 */	fmuls f1, f2, f1
/* 80626C3C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80626C40  90 81 00 14 */	stw r4, 0x14(r1)
/* 80626C44  7F C7 F3 78 */	mr r7, r30
/* 80626C48  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 80626C4C  38 81 00 14 */	addi r4, r1, 0x14
/* 80626C50  EC 00 08 2A */	fadds f0, f0, f1
/* 80626C54  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80626C58  63 8A 80 00 */	ori r10, r28, 0x8000
/* 80626C5C  38 60 00 33 */	li r3, 0x33
/* 80626C60  38 A0 00 02 */	li r5, 2
/* 80626C64  38 C0 00 00 */	li r6, 0
/* 80626C68  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80626C6C  39 20 00 00 */	li r9, 0
/* 80626C70  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80626C74  90 01 00 18 */	stw r0, 0x18(r1)
/* 80626C78  81 8B 00 00 */	lwz r12, 0(r11)
/* 80626C7C  7D 89 03 A6 */	mtctr r12
/* 80626C80  4E 80 04 21 */	bctrl 
/* 80626C84  A8 1D 00 4C */	lha r0, 0x4c(r29)
/* 80626C88  2C 00 00 03 */	cmpwi r0, 3
/* 80626C8C  40 82 00 A0 */	bne lbl_80626D2C
/* 80626C90  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 80626C94  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 80626C98  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80626C9C  90 81 00 20 */	stw r4, 0x20(r1)
/* 80626CA0  90 61 00 24 */	stw r3, 0x24(r1)
/* 80626CA4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80626CA8  4B A3 60 85 */	bl fqrand2
/* 80626CAC  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064D040@ha */
/* 80626CB0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80626CB4  C0 43 D0 40 */	lfs f2, lit_436@l(r3)  /* 0x8064D040@l */
/* 80626CB8  EC 22 00 72 */	fmuls f1, f2, f1
/* 80626CBC  EC 00 08 2A */	fadds f0, f0, f1
/* 80626CC0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80626CC4  4B A3 60 31 */	bl fqrand
/* 80626CC8  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064D040@ha */
/* 80626CCC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80626CD0  C0 43 D0 40 */	lfs f2, lit_436@l(r3)  /* 0x8064D040@l */
/* 80626CD4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80626CD8  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80626CDC  39 03 FF FF */	addi r8, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80626CE0  EC 22 00 72 */	fmuls f1, f2, f1
/* 80626CE4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80626CE8  90 81 00 08 */	stw r4, 8(r1)
/* 80626CEC  7F C7 F3 78 */	mr r7, r30
/* 80626CF0  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 80626CF4  38 81 00 08 */	addi r4, r1, 8
/* 80626CF8  EC 00 08 2A */	fadds f0, f0, f1
/* 80626CFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80626D00  38 60 00 34 */	li r3, 0x34
/* 80626D04  38 A0 00 02 */	li r5, 2
/* 80626D08  38 C0 00 00 */	li r6, 0
/* 80626D0C  39 20 00 00 */	li r9, 0
/* 80626D10  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80626D14  39 40 00 00 */	li r10, 0
/* 80626D18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80626D1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80626D20  81 8B 00 00 */	lwz r12, 0(r11)
/* 80626D24  7D 89 03 A6 */	mtctr r12
/* 80626D28  4E 80 04 21 */	bctrl 
lbl_80626D2C:
/* 80626D2C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80626D30  39 61 00 50 */	addi r11, r1, 0x50
/* 80626D34  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80626D38  4B A7 41 E5 */	bl func_8009AF1C
/* 80626D3C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80626D40  7C 08 03 A6 */	mtlr r0
/* 80626D44  38 21 00 60 */	addi r1, r1, 0x60
/* 80626D48  4E 80 00 20 */	blr 