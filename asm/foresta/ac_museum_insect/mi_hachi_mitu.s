lbl_80464124:
/* 80464124  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80464128  7C 08 02 A6 */	mflr r0
/* 8046412C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80464130  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80464134  7C 7F 1B 78 */	mr r31, r3
/* 80464138  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8046413C  7C 9E 23 78 */	mr r30, r4
/* 80464140  A8 63 00 6E */	lha r3, 0x6e(r3)
/* 80464144  38 03 FF FF */	addi r0, r3, -1
/* 80464148  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 8046414C  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 80464150  2C 00 00 00 */	cmpwi r0, 0
/* 80464154  40 80 00 AC */	bge lbl_80464200
/* 80464158  4B BF 8B 9D */	bl fqrand
/* 8046415C  3C 60 80 64 */	lis r3, lit_586@ha /* 0x80644634@ha */
/* 80464160  A8 1F 00 7A */	lha r0, 0x7a(r31)
/* 80464164  C0 03 46 34 */	lfs f0, lit_586@l(r3)  /* 0x80644634@l */
/* 80464168  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046416C  FC 00 00 1E */	fctiwz f0, f0
/* 80464170  D8 01 00 08 */	stfd f0, 8(r1)
/* 80464174  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80464178  7C 63 07 34 */	extsh r3, r3
/* 8046417C  54 63 08 3C */	slwi r3, r3, 1
/* 80464180  38 63 00 10 */	addi r3, r3, 0x10
/* 80464184  7C 63 07 34 */	extsh r3, r3
/* 80464188  7C 00 18 00 */	cmpw r0, r3
/* 8046418C  40 81 00 18 */	ble lbl_804641A4
/* 80464190  7F E3 FB 78 */	mr r3, r31
/* 80464194  7F C5 F3 78 */	mr r5, r30
/* 80464198  38 80 00 00 */	li r4, 0
/* 8046419C  48 00 08 B1 */	bl mi_hachi_setupAction
/* 804641A0  48 00 01 98 */	b lbl_80464338
lbl_804641A4:
/* 804641A4  38 00 F8 E4 */	li r0, -1820
/* 804641A8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804641AC  B0 1F 00 72 */	sth r0, 0x72(r31)
/* 804641B0  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 804641B4  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 804641B8  3C 00 43 30 */	lis r0, 0x4330
/* 804641BC  80 84 00 00 */	lwz r4, 0(r4)
/* 804641C0  3C A0 80 64 */	lis r5, lit_678@ha /* 0x80644654@ha */
/* 804641C4  90 01 00 08 */	stw r0, 8(r1)
/* 804641C8  38 00 00 0A */	li r0, 0xa
/* 804641CC  A8 84 16 A4 */	lha r4, 0x16a4(r4)
/* 804641D0  C8 23 46 3C */	lfd f1, lit_589@l(r3)  /* 0x8064463C@l */
/* 804641D4  6C 83 80 00 */	xoris r3, r4, 0x8000
/* 804641D8  C0 45 46 54 */	lfs f2, lit_678@l(r5)  /* 0x80644654@l */
/* 804641DC  90 61 00 0C */	stw r3, 0xc(r1)
/* 804641E0  C8 01 00 08 */	lfd f0, 8(r1)
/* 804641E4  EC 00 08 28 */	fsubs f0, f0, f1
/* 804641E8  EC 02 00 32 */	fmuls f0, f2, f0
/* 804641EC  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 804641F0  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 804641F4  A8 7F 00 7A */	lha r3, 0x7a(r31)
/* 804641F8  38 03 00 01 */	addi r0, r3, 1
/* 804641FC  B0 1F 00 7A */	sth r0, 0x7a(r31)
lbl_80464200:
/* 80464200  A8 7F 00 70 */	lha r3, 0x70(r31)
/* 80464204  A8 1F 00 72 */	lha r0, 0x72(r31)
/* 80464208  7C 03 00 00 */	cmpw r3, r0
/* 8046420C  40 82 00 18 */	bne lbl_80464224
/* 80464210  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80464214  38 00 00 00 */	li r0, 0
/* 80464218  B0 1F 00 72 */	sth r0, 0x72(r31)
/* 8046421C  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80464220  D0 1F 00 58 */	stfs f0, 0x58(r31)
lbl_80464224:
/* 80464224  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80464228  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8046422C  80 63 00 00 */	lwz r3, 0(r3)
/* 80464230  A8 63 16 9C */	lha r3, 0x169c(r3)
/* 80464234  7C 60 07 35 */	extsh. r0, r3
/* 80464238  41 82 00 50 */	beq lbl_80464288
/* 8046423C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80464240  3C 00 43 30 */	lis r0, 0x4330
/* 80464244  3C 80 80 64 */	lis r4, lit_589@ha /* 0x8064463C@ha */
/* 80464248  90 61 00 0C */	stw r3, 0xc(r1)
/* 8046424C  38 64 46 3C */	addi r3, r4, lit_589@l /* 0x8064463C@l */
/* 80464250  90 01 00 08 */	stw r0, 8(r1)
/* 80464254  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80644654@ha */
/* 80464258  C8 23 00 00 */	lfd f1, 0(r3)
/* 8046425C  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 80464260  C8 01 00 08 */	lfd f0, 8(r1)
/* 80464264  C0 44 46 54 */	lfs f2, lit_678@l(r4)  /* 0x80644654@l */
/* 80464268  EC 00 08 28 */	fsubs f0, f0, f1
/* 8046426C  C0 23 45 E4 */	lfs f1, lit_505@l(r3)  /* 0x806445E4@l */
/* 80464270  EC 02 00 32 */	fmuls f0, f2, f0
/* 80464274  EC 01 00 32 */	fmuls f0, f1, f0
/* 80464278  FC 00 00 1E */	fctiwz f0, f0
/* 8046427C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80464280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80464284  B0 1F 00 74 */	sth r0, 0x74(r31)
lbl_80464288:
/* 80464288  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8046428C  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80464290  80 63 00 00 */	lwz r3, 0(r3)
/* 80464294  A8 63 16 9E */	lha r3, 0x169e(r3)
/* 80464298  7C 60 07 35 */	extsh. r0, r3
/* 8046429C  41 82 00 50 */	beq lbl_804642EC
/* 804642A0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804642A4  3C 00 43 30 */	lis r0, 0x4330
/* 804642A8  3C 80 80 64 */	lis r4, lit_589@ha /* 0x8064463C@ha */
/* 804642AC  90 61 00 14 */	stw r3, 0x14(r1)
/* 804642B0  38 64 46 3C */	addi r3, r4, lit_589@l /* 0x8064463C@l */
/* 804642B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804642B8  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80644654@ha */
/* 804642BC  C8 23 00 00 */	lfd f1, 0(r3)
/* 804642C0  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 804642C4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804642C8  C0 44 46 54 */	lfs f2, lit_678@l(r4)  /* 0x80644654@l */
/* 804642CC  EC 00 08 28 */	fsubs f0, f0, f1
/* 804642D0  C0 23 45 E4 */	lfs f1, lit_505@l(r3)  /* 0x806445E4@l */
/* 804642D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 804642D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804642DC  FC 00 00 1E */	fctiwz f0, f0
/* 804642E0  D8 01 00 08 */	stfd f0, 8(r1)
/* 804642E4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804642E8  B0 1F 00 76 */	sth r0, 0x76(r31)
lbl_804642EC:
/* 804642EC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804642F0  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 804642F4  80 63 00 00 */	lwz r3, 0(r3)
/* 804642F8  A8 63 16 A0 */	lha r3, 0x16a0(r3)
/* 804642FC  7C 60 07 35 */	extsh. r0, r3
/* 80464300  41 82 00 38 */	beq lbl_80464338
/* 80464304  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80464308  3C 00 43 30 */	lis r0, 0x4330
/* 8046430C  3C 80 80 64 */	lis r4, lit_589@ha /* 0x8064463C@ha */
/* 80464310  90 61 00 14 */	stw r3, 0x14(r1)
/* 80464314  38 64 46 3C */	addi r3, r4, lit_589@l /* 0x8064463C@l */
/* 80464318  90 01 00 10 */	stw r0, 0x10(r1)
/* 8046431C  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80644654@ha */
/* 80464320  C8 23 00 00 */	lfd f1, 0(r3)
/* 80464324  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80464328  C0 44 46 54 */	lfs f2, lit_678@l(r4)  /* 0x80644654@l */
/* 8046432C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80464330  EC 02 00 32 */	fmuls f0, f2, f0
/* 80464334  D0 1F 00 48 */	stfs f0, 0x48(r31)
lbl_80464338:
/* 80464338  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046433C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80464340  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80464344  7C 08 03 A6 */	mtlr r0
/* 80464348  38 21 00 20 */	addi r1, r1, 0x20
/* 8046434C  4E 80 00 20 */	blr 
