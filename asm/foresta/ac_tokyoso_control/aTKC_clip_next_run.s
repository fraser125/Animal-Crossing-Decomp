lbl_804AB75C:
/* 804AB75C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804AB760  7C 08 02 A6 */	mflr r0
/* 804AB764  90 01 00 54 */	stw r0, 0x54(r1)
/* 804AB768  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804AB76C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804AB770  39 61 00 40 */	addi r11, r1, 0x40
/* 804AB774  4B BE F7 5D */	bl func_8009AED0
/* 804AB778  7C 7C 1B 78 */	mr r28, r3
/* 804AB77C  48 00 02 D9 */	bl aTKC_clip_get_angle
/* 804AB780  A0 BC 00 06 */	lhz r5, 6(r28)
/* 804AB784  7C 7E 1B 78 */	mr r30, r3
/* 804AB788  38 60 00 0F */	li r3, 0xf
/* 804AB78C  38 80 00 08 */	li r4, 8
/* 804AB790  3C A5 FF FF */	addis r5, r5, 0xffff
/* 804AB794  38 05 2F D3 */	addi r0, r5, 0x2fd3
/* 804AB798  54 1D 07 FE */	clrlwi r29, r0, 0x1f
/* 804AB79C  4B EF 26 31 */	bl mEv_get_save_area
/* 804AB7A0  7C 7F 1B 78 */	mr r31, r3
/* 804AB7A4  4B BB 15 51 */	bl fqrand
/* 804AB7A8  3C 60 80 64 */	lis r3, lit_662@ha /* 0x80645E5C@ha */
/* 804AB7AC  C0 43 5E 5C */	lfs f2, lit_662@l(r3)  /* 0x80645E5C@l */
/* 804AB7B0  EC 02 00 72 */	fmuls f0, f2, f1
/* 804AB7B4  EC 02 00 2A */	fadds f0, f2, f0
/* 804AB7B8  FC 00 00 1E */	fctiwz f0, f0
/* 804AB7BC  D8 01 00 08 */	stfd f0, 8(r1)
/* 804AB7C0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804AB7C4  7F DE 02 14 */	add r30, r30, r0
/* 804AB7C8  4B BB 15 2D */	bl fqrand
/* 804AB7CC  6F A4 80 00 */	xoris r4, r29, 0x8000
/* 804AB7D0  3C 00 43 30 */	lis r0, 0x4330
/* 804AB7D4  90 81 00 14 */	stw r4, 0x14(r1)
/* 804AB7D8  3C A0 80 64 */	lis r5, lit_664@ha /* 0x80645E64@ha */
/* 804AB7DC  3C 60 80 64 */	lis r3, lit_676@ha /* 0x80645E8C@ha */
/* 804AB7E0  C0 45 5E 64 */	lfs f2, lit_664@l(r5)  /* 0x80645E64@l */
/* 804AB7E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804AB7E8  3C C0 80 64 */	lis r6, lit_663@ha /* 0x80645E60@ha */
/* 804AB7EC  C8 63 5E 8C */	lfd f3, lit_676@l(r3)  /* 0x80645E8C@l */
/* 804AB7F0  EC 82 00 72 */	fmuls f4, f2, f1
/* 804AB7F4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804AB7F8  3C A0 80 64 */	lis r5, lit_665@ha /* 0x80645E68@ha */
/* 804AB7FC  C0 46 5E 60 */	lfs f2, lit_663@l(r6)  /* 0x80645E60@l */
/* 804AB800  3C 60 80 64 */	lis r3, lit_667@ha /* 0x80645E70@ha */
/* 804AB804  C0 25 5E 68 */	lfs f1, lit_665@l(r5)  /* 0x80645E68@l */
/* 804AB808  EC 00 18 28 */	fsubs f0, f0, f3
/* 804AB80C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804AB810  EC 42 20 2A */	fadds f2, f2, f4
/* 804AB814  38 A3 5E 70 */	addi r5, r3, lit_667@l /* 0x80645E70@l */
/* 804AB818  90 01 00 18 */	stw r0, 0x18(r1)
/* 804AB81C  3C 80 80 64 */	lis r4, lit_666@ha /* 0x80645E6C@ha */
/* 804AB820  EC 21 00 32 */	fmuls f1, f1, f0
/* 804AB824  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804AB828  3C 60 80 64 */	lis r3, lit_668@ha /* 0x80645E74@ha */
/* 804AB82C  38 C4 5E 6C */	addi r6, r4, lit_666@l /* 0x80645E6C@l */
/* 804AB830  38 83 5E 74 */	addi r4, r3, lit_668@l /* 0x80645E74@l */
/* 804AB834  EC 00 18 28 */	fsubs f0, f0, f3
/* 804AB838  EF E2 08 28 */	fsubs f31, f2, f1
/* 804AB83C  C0 45 00 00 */	lfs f2, 0(r5)
/* 804AB840  C0 24 00 00 */	lfs f1, 0(r4)
/* 804AB844  7F 83 E3 78 */	mr r3, r28
/* 804AB848  C0 66 00 00 */	lfs f3, 0(r6)
/* 804AB84C  EC 42 07 F2 */	fmuls f2, f2, f31
/* 804AB850  EC 01 00 32 */	fmuls f0, f1, f0
/* 804AB854  EC 23 10 2A */	fadds f1, f3, f2
/* 804AB858  EC 01 00 28 */	fsubs f0, f1, f0
/* 804AB85C  D0 1C 09 9C */	stfs f0, 0x99c(r28)
/* 804AB860  48 00 03 ED */	bl aTKC_clip_top_check
/* 804AB864  7C 60 07 35 */	extsh. r0, r3
/* 804AB868  41 82 00 18 */	beq lbl_804AB880
/* 804AB86C  3C 60 80 64 */	lis r3, lit_669@ha /* 0x80645E78@ha */
/* 804AB870  C0 3C 09 9C */	lfs f1, 0x99c(r28)
/* 804AB874  C0 03 5E 78 */	lfs f0, lit_669@l(r3)  /* 0x80645E78@l */
/* 804AB878  EC 01 00 28 */	fsubs f0, f1, f0
/* 804AB87C  D0 1C 09 9C */	stfs f0, 0x99c(r28)
lbl_804AB880:
/* 804AB880  7F C3 F3 78 */	mr r3, r30
/* 804AB884  4B F0 F2 19 */	bl cos_s
/* 804AB888  A8 9F 00 04 */	lha r4, 4(r31)
/* 804AB88C  3C 00 43 30 */	lis r0, 0x4330
/* 804AB890  90 01 00 18 */	stw r0, 0x18(r1)
/* 804AB894  3C 60 80 64 */	lis r3, lit_676@ha /* 0x80645E8C@ha */
/* 804AB898  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804AB89C  EC 5F 00 72 */	fmuls f2, f31, f1
/* 804AB8A0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804AB8A4  C8 23 5E 8C */	lfd f1, lit_676@l(r3)  /* 0x80645E8C@l */
/* 804AB8A8  7F C3 F3 78 */	mr r3, r30
/* 804AB8AC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804AB8B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 804AB8B4  EC 00 10 2A */	fadds f0, f0, f2
/* 804AB8B8  FC 00 00 1E */	fctiwz f0, f0
/* 804AB8BC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804AB8C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AB8C4  B0 1C 09 A2 */	sth r0, 0x9a2(r28)
/* 804AB8C8  4B F0 F2 29 */	bl sin_s
/* 804AB8CC  A8 7F 00 06 */	lha r3, 6(r31)
/* 804AB8D0  3C 80 43 30 */	lis r4, 0x4330
/* 804AB8D4  3C C0 80 64 */	lis r6, lit_676@ha /* 0x80645E8C@ha */
/* 804AB8D8  90 81 00 08 */	stw r4, 8(r1)
/* 804AB8DC  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 804AB8E0  57 A0 08 3C */	slwi r0, r29, 1
/* 804AB8E4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804AB8E8  EC 7F 00 72 */	fmuls f3, f31, f1
/* 804AB8EC  3C 60 80 64 */	lis r3, lit_614@ha /* 0x80645E58@ha */
/* 804AB8F0  C8 46 5E 8C */	lfd f2, lit_676@l(r6)  /* 0x80645E8C@l */
/* 804AB8F4  C8 21 00 08 */	lfd f1, 8(r1)
/* 804AB8F8  7C 9F 02 14 */	add r4, r31, r0
/* 804AB8FC  C0 03 5E 58 */	lfs f0, lit_614@l(r3)  /* 0x80645E58@l */
/* 804AB900  EC 21 10 28 */	fsubs f1, f1, f2
/* 804AB904  7C 7F EA 14 */	add r3, r31, r29
/* 804AB908  EC 21 18 28 */	fsubs f1, f1, f3
/* 804AB90C  FC 20 08 1E */	fctiwz f1, f1
/* 804AB910  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 804AB914  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AB918  B0 1C 09 A4 */	sth r0, 0x9a4(r28)
/* 804AB91C  B3 C4 00 16 */	sth r30, 0x16(r4)
/* 804AB920  D0 1C 09 00 */	stfs f0, 0x900(r28)
/* 804AB924  88 03 00 1A */	lbz r0, 0x1a(r3)
/* 804AB928  28 00 00 08 */	cmplwi r0, 8
/* 804AB92C  40 82 01 00 */	bne lbl_804ABA2C
/* 804AB930  A8 04 00 16 */	lha r0, 0x16(r4)
/* 804AB934  2C 00 00 00 */	cmpwi r0, 0
/* 804AB938  40 81 00 F4 */	ble lbl_804ABA2C
/* 804AB93C  4B BB 13 B9 */	bl fqrand
/* 804AB940  A8 7F 00 04 */	lha r3, 4(r31)
/* 804AB944  3C 80 43 30 */	lis r4, 0x4330
/* 804AB948  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 804AB94C  3C A0 80 64 */	lis r5, lit_676@ha /* 0x80645E8C@ha */
/* 804AB950  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804AB954  3C E0 80 64 */	lis r7, data_80645E4C@ha /* 0x80645E4C@ha */
/* 804AB958  90 61 00 24 */	stw r3, 0x24(r1)
/* 804AB95C  3C C0 80 64 */	lis r6, lit_670@ha /* 0x80645E7C@ha */
/* 804AB960  C8 65 5E 8C */	lfd f3, lit_676@l(r5)  /* 0x80645E8C@l */
/* 804AB964  38 A6 5E 7C */	addi r5, r6, lit_670@l /* 0x80645E7C@l */
/* 804AB968  90 81 00 20 */	stw r4, 0x20(r1)
/* 804AB96C  3C 60 80 64 */	lis r3, lit_671@ha /* 0x80645E80@ha */
/* 804AB970  C0 A7 5E 4C */	lfs f5, data_80645E4C@l(r7)  /* 0x80645E4C@l */
/* 804AB974  3C C0 80 64 */	lis r6, lit_672@ha /* 0x80645E84@ha */
/* 804AB978  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804AB97C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804AB980  EC C5 00 72 */	fmuls f6, f5, f1
/* 804AB984  EC 40 18 28 */	fsubs f2, f0, f3
/* 804AB988  C0 85 00 00 */	lfs f4, 0(r5)
/* 804AB98C  90 81 00 18 */	stw r4, 0x18(r1)
/* 804AB990  C0 23 5E 80 */	lfs f1, lit_671@l(r3)  /* 0x80645E80@l */
/* 804AB994  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804AB998  EC 44 10 2A */	fadds f2, f4, f2
/* 804AB99C  C0 A6 5E 84 */	lfs f5, lit_672@l(r6)  /* 0x80645E84@l */
/* 804AB9A0  EC 00 18 28 */	fsubs f0, f0, f3
/* 804AB9A4  EC 86 28 28 */	fsubs f4, f6, f5
/* 804AB9A8  EF E1 00 32 */	fmuls f31, f1, f0
/* 804AB9AC  EC 02 F8 28 */	fsubs f0, f2, f31
/* 804AB9B0  EC 00 20 2A */	fadds f0, f0, f4
/* 804AB9B4  FC 00 00 1E */	fctiwz f0, f0
/* 804AB9B8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804AB9BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AB9C0  B0 1C 09 A2 */	sth r0, 0x9a2(r28)
/* 804AB9C4  4B BB 13 31 */	bl fqrand
/* 804AB9C8  A8 7F 00 06 */	lha r3, 6(r31)
/* 804AB9CC  3C 00 43 30 */	lis r0, 0x4330
/* 804AB9D0  3C C0 80 64 */	lis r6, data_80645E4C@ha /* 0x80645E4C@ha */
/* 804AB9D4  3C A0 80 64 */	lis r5, lit_676@ha /* 0x80645E8C@ha */
/* 804AB9D8  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 804AB9DC  C0 66 5E 4C */	lfs f3, data_80645E4C@l(r6)  /* 0x80645E4C@l */
/* 804AB9E0  90 81 00 0C */	stw r4, 0xc(r1)
/* 804AB9E4  38 85 5E 8C */	addi r4, r5, lit_676@l /* 0x80645E8C@l */
/* 804AB9E8  C8 44 00 00 */	lfd f2, 0(r4)
/* 804AB9EC  3C 60 80 64 */	lis r3, lit_673@ha /* 0x80645E88@ha */
/* 804AB9F0  90 01 00 08 */	stw r0, 8(r1)
/* 804AB9F4  3C A0 80 64 */	lis r5, lit_672@ha /* 0x80645E84@ha */
/* 804AB9F8  EC 63 00 72 */	fmuls f3, f3, f1
/* 804AB9FC  C0 25 5E 84 */	lfs f1, lit_672@l(r5)  /* 0x80645E84@l */
/* 804ABA00  C8 01 00 08 */	lfd f0, 8(r1)
/* 804ABA04  EC 40 10 28 */	fsubs f2, f0, f2
/* 804ABA08  C0 03 5E 88 */	lfs f0, lit_673@l(r3)  /* 0x80645E88@l */
/* 804ABA0C  EC 23 08 28 */	fsubs f1, f3, f1
/* 804ABA10  EC 02 00 28 */	fsubs f0, f2, f0
/* 804ABA14  EC 00 F8 2A */	fadds f0, f0, f31
/* 804ABA18  EC 00 08 2A */	fadds f0, f0, f1
/* 804ABA1C  FC 00 00 1E */	fctiwz f0, f0
/* 804ABA20  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804ABA24  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804ABA28  B0 1C 09 A4 */	sth r0, 0x9a4(r28)
lbl_804ABA2C:
/* 804ABA2C  38 00 01 2C */	li r0, 0x12c
/* 804ABA30  B0 1C 09 A6 */	sth r0, 0x9a6(r28)
/* 804ABA34  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804ABA38  39 61 00 40 */	addi r11, r1, 0x40
/* 804ABA3C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804ABA40  4B BE F4 DD */	bl func_8009AF1C
/* 804ABA44  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804ABA48  7C 08 03 A6 */	mtlr r0
/* 804ABA4C  38 21 00 50 */	addi r1, r1, 0x50
/* 804ABA50  4E 80 00 20 */	blr 
