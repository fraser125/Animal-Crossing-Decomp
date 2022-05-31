lbl_8059BB7C:
/* 8059BB7C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8059BB80  7C 08 02 A6 */	mflr r0
/* 8059BB84  90 01 00 44 */	stw r0, 0x44(r1)
/* 8059BB88  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8059BB8C  7C 7F 1B 78 */	mr r31, r3
/* 8059BB90  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8059BB94  4B FF FA ED */	bl aIHT_BGcheck
/* 8059BB98  3C 60 80 65 */	lis r3, lit_627@ha /* 0x8064A094@ha */
/* 8059BB9C  3C 80 80 65 */	lis r4, lit_531@ha /* 0x8064A060@ha */
/* 8059BBA0  38 A3 A0 94 */	addi r5, r3, lit_627@l /* 0x8064A094@l */
/* 8059BBA4  3C 60 80 65 */	lis r3, lit_628@ha /* 0x8064A098@ha */
/* 8059BBA8  C0 45 00 00 */	lfs f2, 0(r5)
/* 8059BBAC  38 A4 A0 60 */	addi r5, r4, lit_531@l /* 0x8064A060@l */
/* 8059BBB0  38 83 A0 98 */	addi r4, r3, lit_628@l /* 0x8064A098@l */
/* 8059BBB4  C0 25 00 00 */	lfs f1, 0(r5)
/* 8059BBB8  D0 5F 00 5C */	stfs f2, 0x5c(r31)
/* 8059BBBC  7F E3 FB 78 */	mr r3, r31
/* 8059BBC0  C0 04 00 00 */	lfs f0, 0(r4)
/* 8059BBC4  38 80 00 00 */	li r4, 0
/* 8059BBC8  D0 5F 00 60 */	stfs f2, 0x60(r31)
/* 8059BBCC  D0 5F 00 64 */	stfs f2, 0x64(r31)
/* 8059BBD0  D0 3F 01 EC */	stfs f1, 0x1ec(r31)
/* 8059BBD4  D0 1F 01 E8 */	stfs f0, 0x1e8(r31)
/* 8059BBD8  4B FF FB D5 */	bl aIHT_fuwafuwa
/* 8059BBDC  C0 3F 02 44 */	lfs f1, 0x244(r31)
/* 8059BBE0  3C 60 80 65 */	lis r3, lit_629@ha /* 0x8064A09C@ha */
/* 8059BBE4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8059BBE8  C0 43 A0 9C */	lfs f2, lit_629@l(r3)  /* 0x8064A09C@l */
/* 8059BBEC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8059BBF0  FC 00 02 10 */	fabs f0, f0
/* 8059BBF4  FC 00 00 18 */	frsp f0, f0
/* 8059BBF8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8059BBFC  41 81 00 20 */	bgt lbl_8059BC1C
/* 8059BC00  C0 3F 02 48 */	lfs f1, 0x248(r31)
/* 8059BC04  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8059BC08  EC 01 00 28 */	fsubs f0, f1, f0
/* 8059BC0C  FC 00 02 10 */	fabs f0, f0
/* 8059BC10  FC 00 00 18 */	frsp f0, f0
/* 8059BC14  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8059BC18  40 81 01 74 */	ble lbl_8059BD8C
lbl_8059BC1C:
/* 8059BC1C  C0 1F 02 44 */	lfs f0, 0x244(r31)
/* 8059BC20  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8059BC24  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8059BC28  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8059BC2C  C0 1F 02 48 */	lfs f0, 0x248(r31)
/* 8059BC30  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8059BC34  4B AC 10 C1 */	bl fqrand
/* 8059BC38  3C 80 80 65 */	lis r4, lit_630@ha /* 0x8064A0A0@ha */
/* 8059BC3C  38 7F 00 28 */	addi r3, r31, 0x28
/* 8059BC40  38 A4 A0 A0 */	addi r5, r4, lit_630@l /* 0x8064A0A0@l */
/* 8059BC44  38 81 00 24 */	addi r4, r1, 0x24
/* 8059BC48  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059BC4C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059BC50  FC 00 00 1E */	fctiwz f0, f0
/* 8059BC54  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8059BC58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059BC5C  20 00 30 00 */	subfic r0, r0, 0x3000
/* 8059BC60  7C 1E 07 34 */	extsh r30, r0
/* 8059BC64  4B E1 F4 CD */	bl search_position_angleY
/* 8059BC68  7C 60 07 34 */	extsh r0, r3
/* 8059BC6C  3C 60 80 65 */	lis r3, lit_631@ha /* 0x8064A0A4@ha */
/* 8059BC70  7C 00 F2 14 */	add r0, r0, r30
/* 8059BC74  C0 03 A0 A4 */	lfs f0, lit_631@l(r3)  /* 0x8064A0A4@l */
/* 8059BC78  90 1F 02 34 */	stw r0, 0x234(r31)
/* 8059BC7C  C0 3F 01 F0 */	lfs f1, 0x1f0(r31)
/* 8059BC80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059BC84  40 81 00 A8 */	ble lbl_8059BD2C
/* 8059BC88  C0 5F 02 4C */	lfs f2, 0x24c(r31)
/* 8059BC8C  3C 60 80 65 */	lis r3, lit_465@ha /* 0x8064A028@ha */
/* 8059BC90  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8059BC94  C0 03 A0 28 */	lfs f0, lit_465@l(r3)  /* 0x8064A028@l */
/* 8059BC98  EC 42 08 28 */	fsubs f2, f2, f1
/* 8059BC9C  C0 7F 02 50 */	lfs f3, 0x250(r31)
/* 8059BCA0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8059BCA4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8059BCA8  EC 23 08 28 */	fsubs f1, f3, f1
/* 8059BCAC  4C 41 13 82 */	cror 2, 1, 2
/* 8059BCB0  40 82 00 0C */	bne lbl_8059BCBC
/* 8059BCB4  FC 60 10 90 */	fmr f3, f2
/* 8059BCB8  48 00 00 08 */	b lbl_8059BCC0
lbl_8059BCBC:
/* 8059BCBC  FC 60 10 50 */	fneg f3, f2
lbl_8059BCC0:
/* 8059BCC0  3C 60 80 65 */	lis r3, lit_632@ha /* 0x8064A0A8@ha */
/* 8059BCC4  C0 03 A0 A8 */	lfs f0, lit_632@l(r3)  /* 0x8064A0A8@l */
/* 8059BCC8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8059BCCC  41 81 00 34 */	bgt lbl_8059BD00
/* 8059BCD0  3C 60 80 65 */	lis r3, lit_465@ha /* 0x8064A028@ha */
/* 8059BCD4  C0 03 A0 28 */	lfs f0, lit_465@l(r3)  /* 0x8064A028@l */
/* 8059BCD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059BCDC  4C 41 13 82 */	cror 2, 1, 2
/* 8059BCE0  40 82 00 0C */	bne lbl_8059BCEC
/* 8059BCE4  FC 60 08 90 */	fmr f3, f1
/* 8059BCE8  48 00 00 08 */	b lbl_8059BCF0
lbl_8059BCEC:
/* 8059BCEC  FC 60 08 50 */	fneg f3, f1
lbl_8059BCF0:
/* 8059BCF0  3C 60 80 65 */	lis r3, lit_632@ha /* 0x8064A0A8@ha */
/* 8059BCF4  C0 03 A0 A8 */	lfs f0, lit_632@l(r3)  /* 0x8064A0A8@l */
/* 8059BCF8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8059BCFC  40 81 00 14 */	ble lbl_8059BD10
lbl_8059BD00:
/* 8059BD00  4B E7 03 01 */	bl atans_table
/* 8059BD04  7C 60 07 34 */	extsh r0, r3
/* 8059BD08  90 1F 02 34 */	stw r0, 0x234(r31)
/* 8059BD0C  48 00 00 14 */	b lbl_8059BD20
lbl_8059BD10:
/* 8059BD10  A8 7F 00 B6 */	lha r3, 0xb6(r31)
/* 8059BD14  3C 63 00 01 */	addis r3, r3, 1
/* 8059BD18  38 03 80 00 */	addi r0, r3, -32768
/* 8059BD1C  90 1F 02 34 */	stw r0, 0x234(r31)
lbl_8059BD20:
/* 8059BD20  38 00 00 01 */	li r0, 1
/* 8059BD24  90 1F 02 30 */	stw r0, 0x230(r31)
/* 8059BD28  48 00 00 64 */	b lbl_8059BD8C
lbl_8059BD2C:
/* 8059BD2C  80 1F 02 30 */	lwz r0, 0x230(r31)
/* 8059BD30  2C 00 00 01 */	cmpwi r0, 1
/* 8059BD34  40 82 00 58 */	bne lbl_8059BD8C
/* 8059BD38  3C 60 80 65 */	lis r3, lit_470@ha /* 0x8064A03C@ha */
/* 8059BD3C  C0 03 A0 3C */	lfs f0, lit_470@l(r3)  /* 0x8064A03C@l */
/* 8059BD40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059BD44  40 80 00 48 */	bge lbl_8059BD8C
/* 8059BD48  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 8059BD4C  38 61 00 18 */	addi r3, r1, 0x18
/* 8059BD50  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059BD54  38 81 00 0C */	addi r4, r1, 0xc
/* 8059BD58  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8059BD5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059BD60  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059BD64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059BD68  4B E0 97 D5 */	bl mFI_Wpos2UtCenterWpos
/* 8059BD6C  2C 03 00 01 */	cmpwi r3, 1
/* 8059BD70  40 82 00 14 */	bne lbl_8059BD84
/* 8059BD74  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8059BD78  D0 1F 02 44 */	stfs f0, 0x244(r31)
/* 8059BD7C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8059BD80  D0 1F 02 48 */	stfs f0, 0x248(r31)
lbl_8059BD84:
/* 8059BD84  38 00 00 00 */	li r0, 0
/* 8059BD88  90 1F 02 30 */	stw r0, 0x230(r31)
lbl_8059BD8C:
/* 8059BD8C  3C 60 80 65 */	lis r3, lit_633@ha /* 0x8064A0AC@ha */
/* 8059BD90  3C 80 80 65 */	lis r4, lit_570@ha /* 0x8064A07C@ha */
/* 8059BD94  38 A3 A0 AC */	addi r5, r3, lit_633@l /* 0x8064A0AC@l */
/* 8059BD98  C8 84 A0 7C */	lfd f4, lit_570@l(r4)  /* 0x8064A07C@l */
/* 8059BD9C  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8059BDA0  3C 60 80 65 */	lis r3, lit_571@ha /* 0x8064A084@ha */
/* 8059BDA4  38 A3 A0 84 */	addi r5, r3, lit_571@l /* 0x8064A084@l */
/* 8059BDA8  80 1F 02 34 */	lwz r0, 0x234(r31)
/* 8059BDAC  FC 40 28 34 */	frsqrte f2, f5
/* 8059BDB0  C8 65 00 00 */	lfd f3, 0(r5)
/* 8059BDB4  3C 60 80 65 */	lis r3, lit_566@ha /* 0x8064A064@ha */
/* 8059BDB8  38 A0 00 FA */	li r5, 0xfa
/* 8059BDBC  38 83 A0 64 */	addi r4, r3, lit_566@l /* 0x8064A064@l */
/* 8059BDC0  38 C0 00 00 */	li r6, 0
/* 8059BDC4  FC 22 00 B2 */	fmul f1, f2, f2
/* 8059BDC8  C0 04 00 00 */	lfs f0, 0(r4)
/* 8059BDCC  38 7F 00 36 */	addi r3, r31, 0x36
/* 8059BDD0  7C 04 07 34 */	extsh r4, r0
/* 8059BDD4  FC 44 00 B2 */	fmul f2, f4, f2
/* 8059BDD8  FC 25 00 72 */	fmul f1, f5, f1
/* 8059BDDC  FC 23 08 28 */	fsub f1, f3, f1
/* 8059BDE0  FC 42 00 72 */	fmul f2, f2, f1
/* 8059BDE4  FC 22 00 B2 */	fmul f1, f2, f2
/* 8059BDE8  FC 44 00 B2 */	fmul f2, f4, f2
/* 8059BDEC  FC 25 00 72 */	fmul f1, f5, f1
/* 8059BDF0  FC 23 08 28 */	fsub f1, f3, f1
/* 8059BDF4  FC 42 00 72 */	fmul f2, f2, f1
/* 8059BDF8  FC 22 00 B2 */	fmul f1, f2, f2
/* 8059BDFC  FC 44 00 B2 */	fmul f2, f4, f2
/* 8059BE00  FC 25 00 72 */	fmul f1, f5, f1
/* 8059BE04  FC 23 08 28 */	fsub f1, f3, f1
/* 8059BE08  FC 22 00 72 */	fmul f1, f2, f1
/* 8059BE0C  FC 25 00 72 */	fmul f1, f5, f1
/* 8059BE10  FC 20 08 18 */	frsp f1, f1
/* 8059BE14  D0 21 00 08 */	stfs f1, 8(r1)
/* 8059BE18  C0 21 00 08 */	lfs f1, 8(r1)
/* 8059BE1C  EC 20 08 28 */	fsubs f1, f0, f1
/* 8059BE20  4B E1 F4 F1 */	bl add_calc_short_angle2
/* 8059BE24  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8059BE28  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8059BE2C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8059BE30  7C 08 03 A6 */	mtlr r0
/* 8059BE34  38 21 00 40 */	addi r1, r1, 0x40
/* 8059BE38  4E 80 00 20 */	blr 
