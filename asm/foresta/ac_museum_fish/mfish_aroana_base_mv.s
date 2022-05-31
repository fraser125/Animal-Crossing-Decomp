lbl_8043BC68:
/* 8043BC68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8043BC6C  7C 08 02 A6 */	mflr r0
/* 8043BC70  3C A0 80 64 */	lis r5, lit_698@ha /* 0x806442B4@ha */
/* 8043BC74  90 01 00 34 */	stw r0, 0x34(r1)
/* 8043BC78  C0 25 42 B4 */	lfs f1, lit_698@l(r5)  /* 0x806442B4@l */
/* 8043BC7C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8043BC80  7C 9F 23 78 */	mr r31, r4
/* 8043BC84  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8043BC88  7C 7E 1B 78 */	mr r30, r3
/* 8043BC8C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8043BC90  C0 5E 05 F8 */	lfs f2, 0x5f8(r30)
/* 8043BC94  EC 01 00 32 */	fmuls f0, f1, f0
/* 8043BC98  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043BC9C  40 81 00 18 */	ble lbl_8043BCB4
/* 8043BCA0  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043BCA4  38 00 00 00 */	li r0, 0
/* 8043BCA8  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043BCAC  D0 1E 05 F8 */	stfs f0, 0x5f8(r30)
/* 8043BCB0  B0 1E 06 26 */	sth r0, 0x626(r30)
lbl_8043BCB4:
/* 8043BCB4  A8 9E 06 26 */	lha r4, 0x626(r30)
/* 8043BCB8  38 64 FF FF */	addi r3, r4, -1
/* 8043BCBC  7C 80 07 35 */	extsh. r0, r4
/* 8043BCC0  B0 7E 06 26 */	sth r3, 0x626(r30)
/* 8043BCC4  41 81 00 78 */	bgt lbl_8043BD3C
/* 8043BCC8  4B C2 10 2D */	bl fqrand
/* 8043BCCC  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 8043BCD0  3C 00 43 30 */	lis r0, 0x4330
/* 8043BCD4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8043BCD8  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8043BCDC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8043BCE0  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 8043BCE4  90 61 00 14 */	stw r3, 0x14(r1)
/* 8043BCE8  7F C3 F3 78 */	mr r3, r30
/* 8043BCEC  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 8043BCF0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8043BCF4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8043BCF8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043BCFC  FC 00 00 1E */	fctiwz f0, f0
/* 8043BD00  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8043BD04  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8043BD08  7C 00 22 14 */	add r0, r0, r4
/* 8043BD0C  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 8043BD10  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8043BD14  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 8043BD18  4B FF 5E D5 */	bl mfish_WallCheck
/* 8043BD1C  2C 03 00 00 */	cmpwi r3, 0
/* 8043BD20  41 82 00 10 */	beq lbl_8043BD30
/* 8043BD24  7F C3 F3 78 */	mr r3, r30
/* 8043BD28  4B FF F2 79 */	bl mfish_aroana_turn_process_init
/* 8043BD2C  48 00 00 E4 */	b lbl_8043BE10
lbl_8043BD30:
/* 8043BD30  7F C3 F3 78 */	mr r3, r30
/* 8043BD34  4B FF E9 A9 */	bl mfish_aroana_normal_process_init
/* 8043BD38  48 00 00 D8 */	b lbl_8043BE10
lbl_8043BD3C:
/* 8043BD3C  3C 60 80 44 */	lis r3, mfish_aroana_normal_process@ha /* 0x8043A92C@ha */
/* 8043BD40  80 9E 00 34 */	lwz r4, 0x34(r30)
/* 8043BD44  38 03 A9 2C */	addi r0, r3, mfish_aroana_normal_process@l /* 0x8043A92C@l */
/* 8043BD48  7C 04 00 40 */	cmplw r4, r0
/* 8043BD4C  40 82 00 C4 */	bne lbl_8043BE10
/* 8043BD50  A8 9E 06 2E */	lha r4, 0x62e(r30)
/* 8043BD54  54 80 06 FD */	rlwinm. r0, r4, 0, 0x1b, 0x1e
/* 8043BD58  41 82 00 2C */	beq lbl_8043BD84
/* 8043BD5C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 8043BD60  A8 1E 06 2C */	lha r0, 0x62c(r30)
/* 8043BD64  7C 63 00 50 */	subf r3, r3, r0
/* 8043BD68  7C 60 07 34 */	extsh r0, r3
/* 8043BD6C  7C 63 07 35 */	extsh. r3, r3
/* 8043BD70  7C 60 00 D0 */	neg r3, r0
/* 8043BD74  41 80 00 08 */	blt lbl_8043BD7C
/* 8043BD78  7C 03 03 78 */	mr r3, r0
lbl_8043BD7C:
/* 8043BD7C  2C 03 15 55 */	cmpwi r3, 0x1555
/* 8043BD80  41 80 00 3C */	blt lbl_8043BDBC
lbl_8043BD84:
/* 8043BD84  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 8043BD88  41 82 00 88 */	beq lbl_8043BE10
/* 8043BD8C  A8 7E 06 2A */	lha r3, 0x62a(r30)
/* 8043BD90  A8 9E 06 0E */	lha r4, 0x60e(r30)
/* 8043BD94  3C 63 00 01 */	addis r3, r3, 1
/* 8043BD98  38 03 80 00 */	addi r0, r3, -32768
/* 8043BD9C  7C 64 00 50 */	subf r3, r4, r0
/* 8043BDA0  7C 60 07 35 */	extsh. r0, r3
/* 8043BDA4  7C 60 07 34 */	extsh r0, r3
/* 8043BDA8  7C 60 00 D0 */	neg r3, r0
/* 8043BDAC  41 80 00 08 */	blt lbl_8043BDB4
/* 8043BDB0  7C 03 03 78 */	mr r3, r0
lbl_8043BDB4:
/* 8043BDB4  2C 03 15 55 */	cmpwi r3, 0x1555
/* 8043BDB8  40 80 00 58 */	bge lbl_8043BE10
lbl_8043BDBC:
/* 8043BDBC  4B C2 0F 39 */	bl fqrand
/* 8043BDC0  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 8043BDC4  3C 00 43 30 */	lis r0, 0x4330
/* 8043BDC8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8043BDCC  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8043BDD0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8043BDD4  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 8043BDD8  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8043BDDC  7F C3 F3 78 */	mr r3, r30
/* 8043BDE0  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 8043BDE4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8043BDE8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8043BDEC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043BDF0  FC 00 00 1E */	fctiwz f0, f0
/* 8043BDF4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8043BDF8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8043BDFC  7C 00 22 14 */	add r0, r0, r4
/* 8043BE00  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 8043BE04  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8043BE08  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 8043BE0C  4B FF F1 95 */	bl mfish_aroana_turn_process_init
lbl_8043BE10:
/* 8043BE10  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043BE14  7F C3 F3 78 */	mr r3, r30
/* 8043BE18  38 A4 42 48 */	addi r5, r4, lit_468@l /* 0x80644248@l */
/* 8043BE1C  7F E4 FB 78 */	mr r4, r31
/* 8043BE20  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043BE24  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 8043BE28  A8 BE 06 38 */	lha r5, 0x638(r30)
/* 8043BE2C  38 05 03 8E */	addi r0, r5, 0x38e
/* 8043BE30  B0 1E 06 38 */	sth r0, 0x638(r30)
/* 8043BE34  81 9E 00 34 */	lwz r12, 0x34(r30)
/* 8043BE38  7D 89 03 A6 */	mtctr r12
/* 8043BE3C  4E 80 04 21 */	bctrl 
/* 8043BE40  A8 9E 06 22 */	lha r4, 0x622(r30)
/* 8043BE44  7C 80 07 35 */	extsh. r0, r4
/* 8043BE48  7C 64 00 D0 */	neg r3, r4
/* 8043BE4C  41 80 00 08 */	blt lbl_8043BE54
/* 8043BE50  7C 83 23 78 */	mr r3, r4
lbl_8043BE54:
/* 8043BE54  A8 BE 06 1C */	lha r5, 0x61c(r30)
/* 8043BE58  7C A0 07 35 */	extsh. r0, r5
/* 8043BE5C  7C 05 00 D0 */	neg r0, r5
/* 8043BE60  41 80 00 08 */	blt lbl_8043BE68
/* 8043BE64  7C A0 2B 78 */	mr r0, r5
lbl_8043BE68:
/* 8043BE68  7C 00 18 00 */	cmpw r0, r3
/* 8043BE6C  40 81 00 50 */	ble lbl_8043BEBC
/* 8043BE70  7C 80 07 35 */	extsh. r0, r4
/* 8043BE74  7C 04 00 D0 */	neg r0, r4
/* 8043BE78  41 80 00 08 */	blt lbl_8043BE80
/* 8043BE7C  7C 80 23 78 */	mr r0, r4
lbl_8043BE80:
/* 8043BE80  2C 00 01 6C */	cmpwi r0, 0x16c
/* 8043BE84  40 81 00 38 */	ble lbl_8043BEBC
/* 8043BE88  3C 60 80 64 */	lis r3, lit_839@ha /* 0x806442D4@ha */
/* 8043BE8C  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043BE90  C0 23 42 D4 */	lfs f1, lit_839@l(r3)  /* 0x806442D4@l */
/* 8043BE94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043BE98  40 80 00 08 */	bge lbl_8043BEA0
/* 8043BE9C  48 00 00 08 */	b lbl_8043BEA4
lbl_8043BEA0:
/* 8043BEA0  FC 20 00 90 */	fmr f1, f0
lbl_8043BEA4:
/* 8043BEA4  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 8043BEA8  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8043BEAC  C0 63 42 5C */	lfs f3, lit_471@l(r3)  /* 0x8064425C@l */
/* 8043BEB0  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8043BEB4  C0 44 42 D4 */	lfs f2, lit_839@l(r4)  /* 0x806442D4@l */
/* 8043BEB8  4B F7 F3 DD */	bl add_calc2
lbl_8043BEBC:
/* 8043BEBC  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 8043BEC0  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043BEC4  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 8043BEC8  38 C0 00 5B */	li r6, 0x5b
/* 8043BECC  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8043BED0  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 8043BED4  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043BED8  C8 85 00 00 */	lfd f4, 0(r5)
/* 8043BEDC  FC 40 28 34 */	frsqrte f2, f5
/* 8043BEE0  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 8043BEE4  C8 64 00 00 */	lfd f3, 0(r4)
/* 8043BEE8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043BEEC  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8043BEF0  38 7E 06 0C */	addi r3, r30, 0x60c
/* 8043BEF4  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043BEF8  A8 9E 06 12 */	lha r4, 0x612(r30)
/* 8043BEFC  38 A0 03 8E */	li r5, 0x38e
/* 8043BF00  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043BF04  FC 25 00 72 */	fmul f1, f5, f1
/* 8043BF08  FC 23 08 28 */	fsub f1, f3, f1
/* 8043BF0C  FC 42 00 72 */	fmul f2, f2, f1
/* 8043BF10  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043BF14  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043BF18  FC 25 00 72 */	fmul f1, f5, f1
/* 8043BF1C  FC 23 08 28 */	fsub f1, f3, f1
/* 8043BF20  FC 42 00 72 */	fmul f2, f2, f1
/* 8043BF24  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043BF28  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043BF2C  FC 25 00 72 */	fmul f1, f5, f1
/* 8043BF30  FC 23 08 28 */	fsub f1, f3, f1
/* 8043BF34  FC 22 00 72 */	fmul f1, f2, f1
/* 8043BF38  FC 25 00 72 */	fmul f1, f5, f1
/* 8043BF3C  FC 20 08 18 */	frsp f1, f1
/* 8043BF40  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8043BF44  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8043BF48  EC 20 08 28 */	fsubs f1, f0, f1
/* 8043BF4C  4B F7 F3 C5 */	bl add_calc_short_angle2
/* 8043BF50  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 8043BF54  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043BF58  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 8043BF5C  38 C0 00 5B */	li r6, 0x5b
/* 8043BF60  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8043BF64  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 8043BF68  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043BF6C  C8 85 00 00 */	lfd f4, 0(r5)
/* 8043BF70  FC 40 28 34 */	frsqrte f2, f5
/* 8043BF74  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 8043BF78  C8 64 00 00 */	lfd f3, 0(r4)
/* 8043BF7C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043BF80  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8043BF84  38 7E 06 12 */	addi r3, r30, 0x612
/* 8043BF88  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043BF8C  38 80 00 00 */	li r4, 0
/* 8043BF90  38 A0 01 C7 */	li r5, 0x1c7
/* 8043BF94  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043BF98  FC 25 00 72 */	fmul f1, f5, f1
/* 8043BF9C  FC 23 08 28 */	fsub f1, f3, f1
/* 8043BFA0  FC 42 00 72 */	fmul f2, f2, f1
/* 8043BFA4  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043BFA8  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043BFAC  FC 25 00 72 */	fmul f1, f5, f1
/* 8043BFB0  FC 23 08 28 */	fsub f1, f3, f1
/* 8043BFB4  FC 42 00 72 */	fmul f2, f2, f1
/* 8043BFB8  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043BFBC  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043BFC0  FC 25 00 72 */	fmul f1, f5, f1
/* 8043BFC4  FC 23 08 28 */	fsub f1, f3, f1
/* 8043BFC8  FC 22 00 72 */	fmul f1, f2, f1
/* 8043BFCC  FC 25 00 72 */	fmul f1, f5, f1
/* 8043BFD0  FC 20 08 18 */	frsp f1, f1
/* 8043BFD4  D0 21 00 08 */	stfs f1, 8(r1)
/* 8043BFD8  C0 21 00 08 */	lfs f1, 8(r1)
/* 8043BFDC  EC 20 08 28 */	fsubs f1, f0, f1
/* 8043BFE0  4B F7 F3 31 */	bl add_calc_short_angle2
/* 8043BFE4  7F C3 F3 78 */	mr r3, r30
/* 8043BFE8  7F E4 FB 78 */	mr r4, r31
/* 8043BFEC  4B FF F9 85 */	bl mfish_aroana_base_FishMove
/* 8043BFF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8043BFF4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8043BFF8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8043BFFC  7C 08 03 A6 */	mtlr r0
/* 8043C000  38 21 00 30 */	addi r1, r1, 0x30
/* 8043C004  4E 80 00 20 */	blr 
