lbl_80606A20:
/* 80606A20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80606A24  7C 08 02 A6 */	mflr r0
/* 80606A28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80606A2C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80606A30  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80606A34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80606A38  93 C1 00 08 */	stw r30, 8(r1)
/* 80606A3C  7C 7E 1B 78 */	mr r30, r3
/* 80606A40  4B A5 62 B5 */	bl fqrand
/* 80606A44  3C 80 80 65 */	lis r4, lit_424@ha /* 0x8064BC90@ha */
/* 80606A48  3C 60 80 65 */	lis r3, data_8064BC8C@ha /* 0x8064BC8C@ha */
/* 80606A4C  C0 44 BC 90 */	lfs f2, lit_424@l(r4)  /* 0x8064BC90@l */
/* 80606A50  3B FE 00 1C */	addi r31, r30, 0x1c
/* 80606A54  C0 03 BC 8C */	lfs f0, data_8064BC8C@l(r3)  /* 0x8064BC8C@l */
/* 80606A58  EC 22 00 72 */	fmuls f1, f2, f1
/* 80606A5C  EF E0 08 2A */	fadds f31, f0, f1
/* 80606A60  4B A5 62 95 */	bl fqrand
/* 80606A64  3C 60 80 65 */	lis r3, lit_426@ha /* 0x8064BC98@ha */
/* 80606A68  3C 80 80 65 */	lis r4, lit_425@ha /* 0x8064BC94@ha */
/* 80606A6C  38 A3 BC 98 */	addi r5, r3, lit_426@l /* 0x8064BC98@l */
/* 80606A70  C0 44 BC 94 */	lfs f2, lit_425@l(r4)  /* 0x8064BC94@l */
/* 80606A74  C0 05 00 00 */	lfs f0, 0(r5)
/* 80606A78  3C 60 80 65 */	lis r3, lit_427@ha /* 0x8064BC9C@ha */
/* 80606A7C  EC 60 00 72 */	fmuls f3, f0, f1
/* 80606A80  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80606A84  C0 03 BC 9C */	lfs f0, lit_427@l(r3)  /* 0x8064BC9C@l */
/* 80606A88  EC 42 18 2A */	fadds f2, f2, f3
/* 80606A8C  EC 21 10 2A */	fadds f1, f1, f2
/* 80606A90  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 80606A94  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80606A98  EC 21 10 2A */	fadds f1, f1, f2
/* 80606A9C  D0 3E 00 18 */	stfs f1, 0x18(r30)
/* 80606AA0  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 80606AA4  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 80606AA8  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 80606AAC  A8 1E 00 08 */	lha r0, 8(r30)
/* 80606AB0  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80606AB4  41 82 00 1C */	beq lbl_80606AD0
/* 80606AB8  38 00 00 14 */	li r0, 0x14
/* 80606ABC  B0 1E 00 00 */	sth r0, 0(r30)
/* 80606AC0  A8 1E 00 08 */	lha r0, 8(r30)
/* 80606AC4  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 80606AC8  B0 1E 00 08 */	sth r0, 8(r30)
/* 80606ACC  48 00 00 0C */	b lbl_80606AD8
lbl_80606AD0:
/* 80606AD0  38 00 00 3C */	li r0, 0x3c
/* 80606AD4  B0 1E 00 00 */	sth r0, 0(r30)
lbl_80606AD8:
/* 80606AD8  A8 1E 00 08 */	lha r0, 8(r30)
/* 80606ADC  54 00 9F BE */	rlwinm r0, r0, 0x13, 0x1e, 0x1f
/* 80606AE0  B0 1E 00 54 */	sth r0, 0x54(r30)
/* 80606AE4  A8 1E 00 08 */	lha r0, 8(r30)
/* 80606AE8  54 00 04 E0 */	rlwinm r0, r0, 0, 0x13, 0x10
/* 80606AEC  B0 1E 00 08 */	sth r0, 8(r30)
/* 80606AF0  A8 7E 00 08 */	lha r3, 8(r30)
/* 80606AF4  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 80606AF8  41 82 00 18 */	beq lbl_80606B10
/* 80606AFC  54 63 05 24 */	rlwinm r3, r3, 0, 0x14, 0x12
/* 80606B00  38 00 00 01 */	li r0, 1
/* 80606B04  B0 7E 00 08 */	sth r3, 8(r30)
/* 80606B08  B0 1E 00 56 */	sth r0, 0x56(r30)
/* 80606B0C  48 00 00 0C */	b lbl_80606B18
lbl_80606B10:
/* 80606B10  38 00 00 00 */	li r0, 0
/* 80606B14  B0 1E 00 56 */	sth r0, 0x56(r30)
lbl_80606B18:
/* 80606B18  A8 1E 00 08 */	lha r0, 8(r30)
/* 80606B1C  2C 00 00 01 */	cmpwi r0, 1
/* 80606B20  40 82 00 20 */	bne lbl_80606B40
/* 80606B24  3C 60 80 65 */	lis r3, lit_428@ha /* 0x8064BCA0@ha */
/* 80606B28  A8 9E 00 00 */	lha r4, 0(r30)
/* 80606B2C  C0 03 BC A0 */	lfs f0, lit_428@l(r3)  /* 0x8064BCA0@l */
/* 80606B30  38 04 00 14 */	addi r0, r4, 0x14
/* 80606B34  EF FF 00 32 */	fmuls f31, f31, f0
/* 80606B38  B0 1E 00 00 */	sth r0, 0(r30)
/* 80606B3C  48 00 00 70 */	b lbl_80606BAC
lbl_80606B40:
/* 80606B40  2C 00 00 02 */	cmpwi r0, 2
/* 80606B44  41 82 00 0C */	beq lbl_80606B50
/* 80606B48  2C 00 00 06 */	cmpwi r0, 6
/* 80606B4C  40 82 00 20 */	bne lbl_80606B6C
lbl_80606B50:
/* 80606B50  3C 60 80 65 */	lis r3, lit_429@ha /* 0x8064BCA4@ha */
/* 80606B54  A8 9E 00 00 */	lha r4, 0(r30)
/* 80606B58  C0 03 BC A4 */	lfs f0, lit_429@l(r3)  /* 0x8064BCA4@l */
/* 80606B5C  38 04 00 14 */	addi r0, r4, 0x14
/* 80606B60  EF FF 00 32 */	fmuls f31, f31, f0
/* 80606B64  B0 1E 00 00 */	sth r0, 0(r30)
/* 80606B68  48 00 00 44 */	b lbl_80606BAC
lbl_80606B6C:
/* 80606B6C  2C 00 00 03 */	cmpwi r0, 3
/* 80606B70  40 82 00 20 */	bne lbl_80606B90
/* 80606B74  3C 60 80 65 */	lis r3, lit_430@ha /* 0x8064BCA8@ha */
/* 80606B78  A8 9E 00 00 */	lha r4, 0(r30)
/* 80606B7C  C0 03 BC A8 */	lfs f0, lit_430@l(r3)  /* 0x8064BCA8@l */
/* 80606B80  38 04 00 14 */	addi r0, r4, 0x14
/* 80606B84  EF FF 00 32 */	fmuls f31, f31, f0
/* 80606B88  B0 1E 00 00 */	sth r0, 0(r30)
/* 80606B8C  48 00 00 20 */	b lbl_80606BAC
lbl_80606B90:
/* 80606B90  2C 00 00 04 */	cmpwi r0, 4
/* 80606B94  41 82 00 0C */	beq lbl_80606BA0
/* 80606B98  2C 00 00 05 */	cmpwi r0, 5
/* 80606B9C  40 82 00 10 */	bne lbl_80606BAC
lbl_80606BA0:
/* 80606BA0  A8 7E 00 00 */	lha r3, 0(r30)
/* 80606BA4  38 03 00 14 */	addi r0, r3, 0x14
/* 80606BA8  B0 1E 00 00 */	sth r0, 0(r30)
lbl_80606BAC:
/* 80606BAC  A8 1E 00 08 */	lha r0, 8(r30)
/* 80606BB0  2C 00 00 02 */	cmpwi r0, 2
/* 80606BB4  41 82 00 0C */	beq lbl_80606BC0
/* 80606BB8  2C 00 00 03 */	cmpwi r0, 3
/* 80606BBC  40 82 00 3C */	bne lbl_80606BF8
lbl_80606BC0:
/* 80606BC0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80606BC4  3C 80 80 65 */	lis r4, lit_431@ha /* 0x8064BCAC@ha */
/* 80606BC8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80606BCC  FC 20 F8 90 */	fmr f1, f31
/* 80606BD0  3C 63 00 02 */	addis r3, r3, 2
/* 80606BD4  38 A4 BC AC */	addi r5, r4, lit_431@l /* 0x8064BCAC@l */
/* 80606BD8  80 83 60 9C */	lwz r4, 0x609c(r3)
/* 80606BDC  7F E3 FB 78 */	mr r3, r31
/* 80606BE0  C0 45 00 00 */	lfs f2, 0(r5)
/* 80606BE4  81 84 00 0C */	lwz r12, 0xc(r4)
/* 80606BE8  FC 60 10 90 */	fmr f3, f2
/* 80606BEC  7D 89 03 A6 */	mtctr r12
/* 80606BF0  4E 80 04 21 */	bctrl 
/* 80606BF4  48 00 00 B8 */	b lbl_80606CAC
lbl_80606BF8:
/* 80606BF8  2C 00 00 04 */	cmpwi r0, 4
/* 80606BFC  41 82 00 0C */	beq lbl_80606C08
/* 80606C00  2C 00 00 06 */	cmpwi r0, 6
/* 80606C04  40 82 00 2C */	bne lbl_80606C30
lbl_80606C08:
/* 80606C08  4B A5 61 25 */	bl fqrand2
/* 80606C0C  3C 60 80 65 */	lis r3, lit_432@ha /* 0x8064BCB0@ha */
/* 80606C10  C0 03 BC B0 */	lfs f0, lit_432@l(r3)  /* 0x8064BCB0@l */
/* 80606C14  EC 00 00 72 */	fmuls f0, f0, f1
/* 80606C18  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80606C1C  4B A5 61 11 */	bl fqrand2
/* 80606C20  D0 3F 00 04 */	stfs f1, 4(r31)
/* 80606C24  4B A5 60 D1 */	bl fqrand
/* 80606C28  D0 3F 00 08 */	stfs f1, 8(r31)
/* 80606C2C  48 00 00 80 */	b lbl_80606CAC
lbl_80606C30:
/* 80606C30  2C 00 00 05 */	cmpwi r0, 5
/* 80606C34  41 82 00 0C */	beq lbl_80606C40
/* 80606C38  2C 00 00 07 */	cmpwi r0, 7
/* 80606C3C  40 82 00 3C */	bne lbl_80606C78
lbl_80606C40:
/* 80606C40  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80606C44  3C 80 80 65 */	lis r4, lit_431@ha /* 0x8064BCAC@ha */
/* 80606C48  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80606C4C  FC 20 F8 90 */	fmr f1, f31
/* 80606C50  3C 63 00 02 */	addis r3, r3, 2
/* 80606C54  38 A4 BC AC */	addi r5, r4, lit_431@l /* 0x8064BCAC@l */
/* 80606C58  80 83 60 9C */	lwz r4, 0x609c(r3)
/* 80606C5C  7F E3 FB 78 */	mr r3, r31
/* 80606C60  C0 45 00 00 */	lfs f2, 0(r5)
/* 80606C64  81 84 00 0C */	lwz r12, 0xc(r4)
/* 80606C68  FC 60 10 90 */	fmr f3, f2
/* 80606C6C  7D 89 03 A6 */	mtctr r12
/* 80606C70  4E 80 04 21 */	bctrl 
/* 80606C74  48 00 00 38 */	b lbl_80606CAC
lbl_80606C78:
/* 80606C78  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80606C7C  3C 80 80 65 */	lis r4, lit_433@ha /* 0x8064BCB4@ha */
/* 80606C80  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80606C84  FC 20 F8 90 */	fmr f1, f31
/* 80606C88  3C 63 00 02 */	addis r3, r3, 2
/* 80606C8C  38 A4 BC B4 */	addi r5, r4, lit_433@l /* 0x8064BCB4@l */
/* 80606C90  80 83 60 9C */	lwz r4, 0x609c(r3)
/* 80606C94  7F E3 FB 78 */	mr r3, r31
/* 80606C98  C0 45 00 00 */	lfs f2, 0(r5)
/* 80606C9C  81 84 00 0C */	lwz r12, 0xc(r4)
/* 80606CA0  FC 60 10 90 */	fmr f3, f2
/* 80606CA4  7D 89 03 A6 */	mtctr r12
/* 80606CA8  4E 80 04 21 */	bctrl 
lbl_80606CAC:
/* 80606CAC  38 00 00 00 */	li r0, 0
/* 80606CB0  B0 1E 00 50 */	sth r0, 0x50(r30)
/* 80606CB4  4B A5 60 19 */	bl func_8005CCCC
/* 80606CB8  B0 7E 00 52 */	sth r3, 0x52(r30)
/* 80606CBC  4B A5 60 11 */	bl func_8005CCCC
/* 80606CC0  B0 7E 00 4C */	sth r3, 0x4c(r30)
/* 80606CC4  4B A5 60 09 */	bl func_8005CCCC
/* 80606CC8  B0 7E 00 4E */	sth r3, 0x4e(r30)
/* 80606CCC  A8 1E 00 08 */	lha r0, 8(r30)
/* 80606CD0  2C 00 00 03 */	cmpwi r0, 3
/* 80606CD4  40 81 00 1C */	ble lbl_80606CF0
/* 80606CD8  3C 60 80 65 */	lis r3, lit_434@ha /* 0x8064BCB8@ha */
/* 80606CDC  C0 03 BC B8 */	lfs f0, lit_434@l(r3)  /* 0x8064BCB8@l */
/* 80606CE0  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 80606CE4  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80606CE8  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 80606CEC  48 00 00 18 */	b lbl_80606D04
lbl_80606CF0:
/* 80606CF0  3C 60 80 65 */	lis r3, lit_435@ha /* 0x8064BCBC@ha */
/* 80606CF4  C0 03 BC BC */	lfs f0, lit_435@l(r3)  /* 0x8064BCBC@l */
/* 80606CF8  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 80606CFC  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80606D00  D0 1E 00 34 */	stfs f0, 0x34(r30)
lbl_80606D04:
/* 80606D04  A8 1E 00 56 */	lha r0, 0x56(r30)
/* 80606D08  2C 00 00 01 */	cmpwi r0, 1
/* 80606D0C  40 82 00 18 */	bne lbl_80606D24
/* 80606D10  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064BCC0@ha */
/* 80606D14  C0 03 BC C0 */	lfs f0, lit_436@l(r3)  /* 0x8064BCC0@l */
/* 80606D18  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 80606D1C  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80606D20  D0 1E 00 34 */	stfs f0, 0x34(r30)
lbl_80606D24:
/* 80606D24  3C 80 80 65 */	lis r4, lit_427@ha /* 0x8064BC9C@ha */
/* 80606D28  3C 60 80 65 */	lis r3, lit_438@ha /* 0x8064BCC8@ha */
/* 80606D2C  38 A4 BC 9C */	addi r5, r4, lit_427@l /* 0x8064BC9C@l */
/* 80606D30  C0 23 BC C8 */	lfs f1, lit_438@l(r3)  /* 0x8064BCC8@l */
/* 80606D34  C0 65 00 00 */	lfs f3, 0(r5)
/* 80606D38  3C 80 80 65 */	lis r4, lit_437@ha /* 0x8064BCC4@ha */
/* 80606D3C  C0 44 BC C4 */	lfs f2, lit_437@l(r4)  /* 0x8064BCC4@l */
/* 80606D40  D0 7E 00 28 */	stfs f3, 0x28(r30)
/* 80606D44  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80606D48  FC 00 00 50 */	fneg f0, f0
/* 80606D4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80606D50  EC 02 00 32 */	fmuls f0, f2, f0
/* 80606D54  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 80606D58  D0 7E 00 30 */	stfs f3, 0x30(r30)
/* 80606D5C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80606D60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80606D64  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80606D68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80606D6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80606D70  7C 08 03 A6 */	mtlr r0
/* 80606D74  38 21 00 20 */	addi r1, r1, 0x20
/* 80606D78  4E 80 00 20 */	blr 
