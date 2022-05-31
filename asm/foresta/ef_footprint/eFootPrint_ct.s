lbl_8060BC98:
/* 8060BC98  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8060BC9C  7C 08 02 A6 */	mflr r0
/* 8060BCA0  90 01 00 74 */	stw r0, 0x74(r1)
/* 8060BCA4  39 61 00 70 */	addi r11, r1, 0x70
/* 8060BCA8  4B A8 F2 19 */	bl func_8009AEC0
/* 8060BCAC  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8060BCB0  7C 79 1B 78 */	mr r25, r3
/* 8060BCB4  38 66 85 38 */	addi r3, r6, common_data@l /* 0x81138538@l */
/* 8060BCB8  7C 9A 23 78 */	mr r26, r4
/* 8060BCBC  3C 63 00 02 */	addis r3, r3, 2
/* 8060BCC0  7C BB 2B 78 */	mr r27, r5
/* 8060BCC4  80 03 61 10 */	lwz r0, 0x6110(r3)
/* 8060BCC8  28 00 00 03 */	cmplwi r0, 3
/* 8060BCCC  41 82 00 18 */	beq lbl_8060BCE4
/* 8060BCD0  A8 1B 00 00 */	lha r0, 0(r27)
/* 8060BCD4  2C 00 00 16 */	cmpwi r0, 0x16
/* 8060BCD8  41 82 00 0C */	beq lbl_8060BCE4
/* 8060BCDC  2C 00 00 0B */	cmpwi r0, 0xb
/* 8060BCE0  40 82 01 B8 */	bne lbl_8060BE98
lbl_8060BCE4:
/* 8060BCE4  A8 7B 00 00 */	lha r3, 0(r27)
/* 8060BCE8  7C 60 07 35 */	extsh. r0, r3
/* 8060BCEC  41 82 00 24 */	beq lbl_8060BD10
/* 8060BCF0  38 03 FF FF */	addi r0, r3, -1
/* 8060BCF4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8060BCF8  28 00 00 02 */	cmplwi r0, 2
/* 8060BCFC  40 81 00 14 */	ble lbl_8060BD10
/* 8060BD00  2C 03 00 16 */	cmpwi r3, 0x16
/* 8060BD04  41 82 00 0C */	beq lbl_8060BD10
/* 8060BD08  2C 03 00 0B */	cmpwi r3, 0xb
/* 8060BD0C  40 82 01 8C */	bne lbl_8060BE98
lbl_8060BD10:
/* 8060BD10  80 B9 00 10 */	lwz r5, 0x10(r25)
/* 8060BD14  3C 60 80 65 */	lis r3, lit_429@ha /* 0x8064BFD0@ha */
/* 8060BD18  80 19 00 14 */	lwz r0, 0x14(r25)
/* 8060BD1C  38 81 00 34 */	addi r4, r1, 0x34
/* 8060BD20  C0 23 BF D0 */	lfs f1, lit_429@l(r3)  /* 0x8064BFD0@l */
/* 8060BD24  3B A0 00 00 */	li r29, 0
/* 8060BD28  90 A1 00 34 */	stw r5, 0x34(r1)
/* 8060BD2C  3B 80 00 00 */	li r28, 0
/* 8060BD30  38 60 00 00 */	li r3, 0
/* 8060BD34  90 01 00 38 */	stw r0, 0x38(r1)
/* 8060BD38  80 19 00 18 */	lwz r0, 0x18(r25)
/* 8060BD3C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8060BD40  4B D8 59 61 */	bl mCoBG_GetShadowBgY_AngleS_FromWpos
/* 8060BD44  3C 60 80 65 */	lis r3, lit_428@ha /* 0x8064BFCC@ha */
/* 8060BD48  3C 80 80 65 */	lis r4, data_8064BFC4@ha /* 0x8064BFC4@ha */
/* 8060BD4C  38 A3 BF CC */	addi r5, r3, lit_428@l /* 0x8064BFCC@l */
/* 8060BD50  3C 60 80 65 */	lis r3, lit_429@ha /* 0x8064BFD0@ha */
/* 8060BD54  C0 05 00 00 */	lfs f0, 0(r5)
/* 8060BD58  3B E4 BF C4 */	addi r31, r4, data_8064BFC4@l /* 0x8064BFC4@l */
/* 8060BD5C  3B 03 BF D0 */	addi r24, r3, lit_429@l /* 0x8064BFD0@l */
/* 8060BD60  3B C0 00 00 */	li r30, 0
/* 8060BD64  EC 00 08 2A */	fadds f0, f0, f1
/* 8060BD68  D0 19 00 14 */	stfs f0, 0x14(r25)
/* 8060BD6C  A8 1B 00 02 */	lha r0, 2(r27)
/* 8060BD70  B0 19 00 50 */	sth r0, 0x50(r25)
lbl_8060BD74:
/* 8060BD74  80 9F 00 00 */	lwz r4, 0(r31)
/* 8060BD78  7F C5 F3 78 */	mr r5, r30
/* 8060BD7C  A0 1F 00 04 */	lhz r0, 4(r31)
/* 8060BD80  38 61 00 40 */	addi r3, r1, 0x40
/* 8060BD84  90 81 00 08 */	stw r4, 8(r1)
/* 8060BD88  38 81 00 28 */	addi r4, r1, 0x28
/* 8060BD8C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8060BD90  80 D9 00 10 */	lwz r6, 0x10(r25)
/* 8060BD94  80 19 00 14 */	lwz r0, 0x14(r25)
/* 8060BD98  90 C1 00 28 */	stw r6, 0x28(r1)
/* 8060BD9C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8060BDA0  80 19 00 18 */	lwz r0, 0x18(r25)
/* 8060BDA4  90 01 00 30 */	stw r0, 0x30(r1)
/* 8060BDA8  4B FF FE AD */	bl eFootPrint_GetAreaPos
/* 8060BDAC  80 C1 00 40 */	lwz r6, 0x40(r1)
/* 8060BDB0  38 61 00 08 */	addi r3, r1, 8
/* 8060BDB4  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 8060BDB8  38 81 00 1C */	addi r4, r1, 0x1c
/* 8060BDBC  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8060BDC0  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8060BDC4  C0 38 00 00 */	lfs f1, 0(r24)
/* 8060BDC8  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8060BDCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060BDD0  4B D8 38 E9 */	bl func_8038F6B8
/* 8060BDD4  3B DE 00 01 */	addi r30, r30, 1
/* 8060BDD8  A8 61 00 08 */	lha r3, 8(r1)
/* 8060BDDC  A8 01 00 0C */	lha r0, 0xc(r1)
/* 8060BDE0  2C 1E 00 03 */	cmpwi r30, 3
/* 8060BDE4  7F BD 1A 14 */	add r29, r29, r3
/* 8060BDE8  7F 9C 02 14 */	add r28, r28, r0
/* 8060BDEC  41 80 FF 88 */	blt lbl_8060BD74
/* 8060BDF0  38 00 00 03 */	li r0, 3
/* 8060BDF4  7C 7D 03 D6 */	divw r3, r29, r0
/* 8060BDF8  7C 1C 03 D6 */	divw r0, r28, r0
/* 8060BDFC  B0 79 00 4C */	sth r3, 0x4c(r25)
/* 8060BE00  B0 19 00 4E */	sth r0, 0x4e(r25)
/* 8060BE04  A8 1B 00 00 */	lha r0, 0(r27)
/* 8060BE08  2C 00 00 16 */	cmpwi r0, 0x16
/* 8060BE0C  41 82 00 0C */	beq lbl_8060BE18
/* 8060BE10  2C 00 00 0B */	cmpwi r0, 0xb
/* 8060BE14  40 82 00 70 */	bne lbl_8060BE84
lbl_8060BE18:
/* 8060BE18  38 00 00 01 */	li r0, 1
/* 8060BE1C  B0 19 00 52 */	sth r0, 0x52(r25)
/* 8060BE20  A8 1B 00 00 */	lha r0, 0(r27)
/* 8060BE24  2C 00 00 0B */	cmpwi r0, 0xb
/* 8060BE28  40 82 00 64 */	bne lbl_8060BE8C
/* 8060BE2C  80 99 00 10 */	lwz r4, 0x10(r25)
/* 8060BE30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060BE34  80 19 00 14 */	lwz r0, 0x14(r25)
/* 8060BE38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8060BE3C  3C 63 00 02 */	addis r3, r3, 2
/* 8060BE40  7F 47 D3 78 */	mr r7, r26
/* 8060BE44  90 81 00 10 */	stw r4, 0x10(r1)
/* 8060BE48  38 81 00 10 */	addi r4, r1, 0x10
/* 8060BE4C  80 A3 60 9C */	lwz r5, 0x609c(r3)
/* 8060BE50  38 60 00 45 */	li r3, 0x45
/* 8060BE54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060BE58  38 C0 00 00 */	li r6, 0
/* 8060BE5C  39 20 00 02 */	li r9, 2
/* 8060BE60  39 40 00 00 */	li r10, 0
/* 8060BE64  80 19 00 18 */	lwz r0, 0x18(r25)
/* 8060BE68  90 01 00 18 */	stw r0, 0x18(r1)
/* 8060BE6C  81 85 00 00 */	lwz r12, 0(r5)
/* 8060BE70  88 B9 00 0E */	lbz r5, 0xe(r25)
/* 8060BE74  A1 19 00 0C */	lhz r8, 0xc(r25)
/* 8060BE78  7D 89 03 A6 */	mtctr r12
/* 8060BE7C  4E 80 04 21 */	bctrl 
/* 8060BE80  48 00 00 0C */	b lbl_8060BE8C
lbl_8060BE84:
/* 8060BE84  38 00 00 00 */	li r0, 0
/* 8060BE88  B0 19 00 52 */	sth r0, 0x52(r25)
lbl_8060BE8C:
/* 8060BE8C  38 00 00 A0 */	li r0, 0xa0
/* 8060BE90  B0 19 00 00 */	sth r0, 0(r25)
/* 8060BE94  48 00 00 0C */	b lbl_8060BEA0
lbl_8060BE98:
/* 8060BE98  38 00 00 00 */	li r0, 0
/* 8060BE9C  B0 19 00 00 */	sth r0, 0(r25)
lbl_8060BEA0:
/* 8060BEA0  39 61 00 70 */	addi r11, r1, 0x70
/* 8060BEA4  4B A8 F0 69 */	bl func_8009AF0C
/* 8060BEA8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8060BEAC  7C 08 03 A6 */	mtlr r0
/* 8060BEB0  38 21 00 70 */	addi r1, r1, 0x70
/* 8060BEB4  4E 80 00 20 */	blr 
