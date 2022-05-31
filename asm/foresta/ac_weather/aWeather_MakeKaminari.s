lbl_80602AAC:
/* 80602AAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80602AB0  7C 08 02 A6 */	mflr r0
/* 80602AB4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80602AB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80602ABC  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80602AC0  3C 85 00 02 */	addis r4, r5, 2
/* 80602AC4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80602AC8  7C 7F 1B 78 */	mr r31, r3
/* 80602ACC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80602AD0  A8 03 01 E0 */	lha r0, 0x1e0(r3)
/* 80602AD4  80 64 61 24 */	lwz r3, 0x6124(r4)
/* 80602AD8  2C 00 00 01 */	cmpwi r0, 1
/* 80602ADC  80 04 61 20 */	lwz r0, 0x6120(r4)
/* 80602AE0  90 61 00 10 */	stw r3, 0x10(r1)
/* 80602AE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80602AE8  88 01 00 11 */	lbz r0, 0x11(r1)
/* 80602AEC  41 82 01 30 */	beq lbl_80602C1C
/* 80602AF0  80 A5 00 14 */	lwz r5, 0x14(r5)
/* 80602AF4  2C 05 00 0F */	cmpwi r5, 0xf
/* 80602AF8  41 82 01 24 */	beq lbl_80602C1C
/* 80602AFC  2C 05 00 10 */	cmpwi r5, 0x10
/* 80602B00  41 82 01 1C */	beq lbl_80602C1C
/* 80602B04  2C 05 00 31 */	cmpwi r5, 0x31
/* 80602B08  40 82 00 08 */	bne lbl_80602B10
/* 80602B0C  48 00 01 10 */	b lbl_80602C1C
lbl_80602B10:
/* 80602B10  28 00 00 06 */	cmplwi r0, 6
/* 80602B14  41 80 01 08 */	blt lbl_80602C1C
/* 80602B18  28 00 00 08 */	cmplwi r0, 8
/* 80602B1C  41 81 01 00 */	bgt lbl_80602C1C
/* 80602B20  A8 1F 01 78 */	lha r0, 0x178(r31)
/* 80602B24  2C 00 00 01 */	cmpwi r0, 1
/* 80602B28  40 82 00 F4 */	bne lbl_80602C1C
/* 80602B2C  A8 1F 01 7E */	lha r0, 0x17e(r31)
/* 80602B30  2C 00 00 03 */	cmpwi r0, 3
/* 80602B34  40 82 00 E8 */	bne lbl_80602C1C
/* 80602B38  A8 9F 01 D0 */	lha r4, 0x1d0(r31)
/* 80602B3C  38 60 03 E8 */	li r3, 0x3e8
/* 80602B40  A8 DF 01 D2 */	lha r6, 0x1d2(r31)
/* 80602B44  7C 04 1B D6 */	divw r0, r4, r3
/* 80602B48  7C 00 19 D6 */	mullw r0, r0, r3
/* 80602B4C  7C 00 20 50 */	subf r0, r0, r4
/* 80602B50  7C 1E 07 34 */	extsh r30, r0
/* 80602B54  7C 1E 30 00 */	cmpw r30, r6
/* 80602B58  41 82 00 10 */	beq lbl_80602B68
/* 80602B5C  38 06 00 14 */	addi r0, r6, 0x14
/* 80602B60  7C 1E 00 00 */	cmpw r30, r0
/* 80602B64  40 82 00 68 */	bne lbl_80602BCC
lbl_80602B68:
/* 80602B68  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80602B6C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80602B70  3C 63 00 02 */	addis r3, r3, 2
/* 80602B74  80 E3 60 9C */	lwz r7, 0x609c(r3)
/* 80602B78  28 07 00 00 */	cmplwi r7, 0
/* 80602B7C  41 82 00 50 */	beq lbl_80602BCC
/* 80602B80  38 05 FF D6 */	addi r0, r5, -42
/* 80602B84  28 00 00 03 */	cmplwi r0, 3
/* 80602B88  40 81 00 44 */	ble lbl_80602BCC
/* 80602B8C  38 05 FF DC */	addi r0, r5, -36
/* 80602B90  28 00 00 01 */	cmplwi r0, 1
/* 80602B94  40 81 00 38 */	ble lbl_80602BCC
/* 80602B98  2C 05 00 27 */	cmpwi r5, 0x27
/* 80602B9C  41 82 00 30 */	beq lbl_80602BCC
/* 80602BA0  3C 80 80 65 */	lis r4, lit_863@ha /* 0x8064BA10@ha */
/* 80602BA4  38 61 00 08 */	addi r3, r1, 8
/* 80602BA8  38 A4 BA 10 */	addi r5, r4, lit_863@l /* 0x8064BA10@l */
/* 80602BAC  38 80 00 02 */	li r4, 2
/* 80602BB0  80 05 00 00 */	lwz r0, 0(r5)
/* 80602BB4  38 A0 00 23 */	li r5, 0x23
/* 80602BB8  38 C0 00 00 */	li r6, 0
/* 80602BBC  90 01 00 08 */	stw r0, 8(r1)
/* 80602BC0  81 87 00 30 */	lwz r12, 0x30(r7)
/* 80602BC4  7D 89 03 A6 */	mtctr r12
/* 80602BC8  4E 80 04 21 */	bctrl 
lbl_80602BCC:
/* 80602BCC  A8 7F 01 D2 */	lha r3, 0x1d2(r31)
/* 80602BD0  38 03 00 41 */	addi r0, r3, 0x41
/* 80602BD4  7C 1E 00 00 */	cmpw r30, r0
/* 80602BD8  40 82 00 38 */	bne lbl_80602C10
/* 80602BDC  38 60 04 24 */	li r3, 0x424
/* 80602BE0  48 02 B1 25 */	bl sAdo_SysTrgStart
/* 80602BE4  4B A5 A1 11 */	bl fqrand
/* 80602BE8  3C 80 80 65 */	lis r4, lit_874@ha /* 0x8064BA18@ha */
/* 80602BEC  3C 60 80 65 */	lis r3, lit_873@ha /* 0x8064BA14@ha */
/* 80602BF0  C0 44 BA 18 */	lfs f2, lit_874@l(r4)  /* 0x8064BA18@l */
/* 80602BF4  C0 03 BA 14 */	lfs f0, lit_873@l(r3)  /* 0x8064BA14@l */
/* 80602BF8  EC 22 00 72 */	fmuls f1, f2, f1
/* 80602BFC  EC 00 08 2A */	fadds f0, f0, f1
/* 80602C00  FC 00 00 1E */	fctiwz f0, f0
/* 80602C04  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80602C08  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80602C0C  B0 1F 01 D2 */	sth r0, 0x1d2(r31)
lbl_80602C10:
/* 80602C10  A8 7F 01 D0 */	lha r3, 0x1d0(r31)
/* 80602C14  38 03 00 01 */	addi r0, r3, 1
/* 80602C18  B0 1F 01 D0 */	sth r0, 0x1d0(r31)
lbl_80602C1C:
/* 80602C1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80602C20  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80602C24  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80602C28  7C 08 03 A6 */	mtlr r0
/* 80602C2C  38 21 00 30 */	addi r1, r1, 0x30
/* 80602C30  4E 80 00 20 */	blr 
