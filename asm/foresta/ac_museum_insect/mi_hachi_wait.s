lbl_804643B4:
/* 804643B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804643B8  7C 08 02 A6 */	mflr r0
/* 804643BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804643C0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804643C4  7C 7F 1B 78 */	mr r31, r3
/* 804643C8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804643CC  7C 9E 23 78 */	mr r30, r4
/* 804643D0  A8 63 00 6E */	lha r3, 0x6e(r3)
/* 804643D4  38 03 FF FF */	addi r0, r3, -1
/* 804643D8  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 804643DC  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 804643E0  2C 00 00 00 */	cmpwi r0, 0
/* 804643E4  40 80 01 2C */	bge lbl_80464510
/* 804643E8  4B BF 89 0D */	bl fqrand
/* 804643EC  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806446FC@ha */
/* 804643F0  C0 03 46 FC */	lfs f0, lit_1066@l(r3)  /* 0x806446FC@l */
/* 804643F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804643F8  41 81 00 1C */	bgt lbl_80464414
/* 804643FC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80464400  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80464404  80 63 00 00 */	lwz r3, 0(r3)
/* 80464408  A8 03 16 94 */	lha r0, 0x1694(r3)
/* 8046440C  2C 00 00 00 */	cmpwi r0, 0
/* 80464410  41 82 00 40 */	beq lbl_80464450
lbl_80464414:
/* 80464414  4B BF 88 E1 */	bl fqrand
/* 80464418  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 8046441C  C0 03 45 E8 */	lfs f0, lit_506@l(r3)  /* 0x806445E8@l */
/* 80464420  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80464424  40 81 00 18 */	ble lbl_8046443C
/* 80464428  7F E3 FB 78 */	mr r3, r31
/* 8046442C  7F C5 F3 78 */	mr r5, r30
/* 80464430  38 80 00 01 */	li r4, 1
/* 80464434  48 00 06 19 */	bl mi_hachi_setupAction
/* 80464438  48 00 02 10 */	b lbl_80464648
lbl_8046443C:
/* 8046443C  7F E3 FB 78 */	mr r3, r31
/* 80464440  7F C5 F3 78 */	mr r5, r30
/* 80464444  38 80 00 02 */	li r4, 2
/* 80464448  48 00 06 05 */	bl mi_hachi_setupAction
/* 8046444C  48 00 01 FC */	b lbl_80464648
lbl_80464450:
/* 80464450  38 00 F8 E4 */	li r0, -1820
/* 80464454  B0 1F 00 72 */	sth r0, 0x72(r31)
/* 80464458  4B BF 88 D5 */	bl fqrand2
/* 8046445C  3C 80 80 64 */	lis r4, lit_581@ha /* 0x8064461C@ha */
/* 80464460  3C 00 43 30 */	lis r0, 0x4330
/* 80464464  38 A4 46 1C */	addi r5, r4, lit_581@l /* 0x8064461C@l */
/* 80464468  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8046446C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80464470  38 A3 45 E4 */	addi r5, r3, lit_505@l /* 0x806445E4@l */
/* 80464474  90 01 00 10 */	stw r0, 0x10(r1)
/* 80464478  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 8046447C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80464480  C0 05 00 00 */	lfs f0, 0(r5)
/* 80464484  3C A0 80 64 */	lis r5, lit_678@ha /* 0x80644654@ha */
/* 80464488  A8 DF 00 74 */	lha r6, 0x74(r31)
/* 8046448C  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 80464490  C0 45 46 54 */	lfs f2, lit_678@l(r5)  /* 0x80644654@l */
/* 80464494  EC 00 00 72 */	fmuls f0, f0, f1
/* 80464498  C8 23 46 3C */	lfd f1, lit_589@l(r3)  /* 0x8064463C@l */
/* 8046449C  FC 00 00 1E */	fctiwz f0, f0
/* 804644A0  D8 01 00 08 */	stfd f0, 8(r1)
/* 804644A4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804644A8  7C 00 07 34 */	extsh r0, r0
/* 804644AC  7C 06 02 14 */	add r0, r6, r0
/* 804644B0  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 804644B4  80 64 61 38 */	lwz r3, debug_mode@l(r4)  /* 0x81166138@l */
/* 804644B8  A8 03 16 A4 */	lha r0, 0x16a4(r3)
/* 804644BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804644C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804644C4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804644C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 804644CC  EC 02 00 32 */	fmuls f0, f2, f0
/* 804644D0  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 804644D4  4B BF 88 21 */	bl fqrand
/* 804644D8  3C 60 80 64 */	lis r3, lit_823@ha /* 0x8064469C@ha */
/* 804644DC  C0 03 46 9C */	lfs f0, lit_823@l(r3)  /* 0x8064469C@l */
/* 804644E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804644E4  FC 00 00 1E */	fctiwz f0, f0
/* 804644E8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804644EC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 804644F0  38 03 00 28 */	addi r0, r3, 0x28
/* 804644F4  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 804644F8  A8 1F 00 8E */	lha r0, 0x8e(r31)
/* 804644FC  2C 00 00 00 */	cmpwi r0, 0
/* 80464500  40 82 00 10 */	bne lbl_80464510
/* 80464504  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 80464508  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8046450C  B0 1F 00 6E */	sth r0, 0x6e(r31)
lbl_80464510:
/* 80464510  A8 7F 00 70 */	lha r3, 0x70(r31)
/* 80464514  A8 1F 00 72 */	lha r0, 0x72(r31)
/* 80464518  7C 03 00 00 */	cmpw r3, r0
/* 8046451C  40 82 00 18 */	bne lbl_80464534
/* 80464520  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80464524  38 00 00 00 */	li r0, 0
/* 80464528  B0 1F 00 72 */	sth r0, 0x72(r31)
/* 8046452C  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80464530  D0 1F 00 58 */	stfs f0, 0x58(r31)
lbl_80464534:
/* 80464534  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80464538  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8046453C  80 63 00 00 */	lwz r3, 0(r3)
/* 80464540  A8 63 16 9C */	lha r3, 0x169c(r3)
/* 80464544  7C 60 07 35 */	extsh. r0, r3
/* 80464548  41 82 00 50 */	beq lbl_80464598
/* 8046454C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80464550  3C 00 43 30 */	lis r0, 0x4330
/* 80464554  3C 80 80 64 */	lis r4, lit_589@ha /* 0x8064463C@ha */
/* 80464558  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8046455C  38 64 46 3C */	addi r3, r4, lit_589@l /* 0x8064463C@l */
/* 80464560  90 01 00 18 */	stw r0, 0x18(r1)
/* 80464564  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80644654@ha */
/* 80464568  C8 23 00 00 */	lfd f1, 0(r3)
/* 8046456C  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 80464570  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80464574  C0 44 46 54 */	lfs f2, lit_678@l(r4)  /* 0x80644654@l */
/* 80464578  EC 00 08 28 */	fsubs f0, f0, f1
/* 8046457C  C0 23 45 E4 */	lfs f1, lit_505@l(r3)  /* 0x806445E4@l */
/* 80464580  EC 02 00 32 */	fmuls f0, f2, f0
/* 80464584  EC 01 00 32 */	fmuls f0, f1, f0
/* 80464588  FC 00 00 1E */	fctiwz f0, f0
/* 8046458C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80464590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80464594  B0 1F 00 74 */	sth r0, 0x74(r31)
lbl_80464598:
/* 80464598  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8046459C  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 804645A0  80 63 00 00 */	lwz r3, 0(r3)
/* 804645A4  A8 63 16 9E */	lha r3, 0x169e(r3)
/* 804645A8  7C 60 07 35 */	extsh. r0, r3
/* 804645AC  41 82 00 50 */	beq lbl_804645FC
/* 804645B0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804645B4  3C 00 43 30 */	lis r0, 0x4330
/* 804645B8  3C 80 80 64 */	lis r4, lit_589@ha /* 0x8064463C@ha */
/* 804645BC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 804645C0  38 64 46 3C */	addi r3, r4, lit_589@l /* 0x8064463C@l */
/* 804645C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804645C8  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80644654@ha */
/* 804645CC  C8 23 00 00 */	lfd f1, 0(r3)
/* 804645D0  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 804645D4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804645D8  C0 44 46 54 */	lfs f2, lit_678@l(r4)  /* 0x80644654@l */
/* 804645DC  EC 00 08 28 */	fsubs f0, f0, f1
/* 804645E0  C0 23 45 E4 */	lfs f1, lit_505@l(r3)  /* 0x806445E4@l */
/* 804645E4  EC 02 00 32 */	fmuls f0, f2, f0
/* 804645E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804645EC  FC 00 00 1E */	fctiwz f0, f0
/* 804645F0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804645F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804645F8  B0 1F 00 76 */	sth r0, 0x76(r31)
lbl_804645FC:
/* 804645FC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80464600  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80464604  80 63 00 00 */	lwz r3, 0(r3)
/* 80464608  A8 63 16 A0 */	lha r3, 0x16a0(r3)
/* 8046460C  7C 60 07 35 */	extsh. r0, r3
/* 80464610  41 82 00 38 */	beq lbl_80464648
/* 80464614  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80464618  3C 00 43 30 */	lis r0, 0x4330
/* 8046461C  3C 80 80 64 */	lis r4, lit_589@ha /* 0x8064463C@ha */
/* 80464620  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80464624  38 64 46 3C */	addi r3, r4, lit_589@l /* 0x8064463C@l */
/* 80464628  90 01 00 18 */	stw r0, 0x18(r1)
/* 8046462C  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80644654@ha */
/* 80464630  C8 23 00 00 */	lfd f1, 0(r3)
/* 80464634  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80464638  C0 44 46 54 */	lfs f2, lit_678@l(r4)  /* 0x80644654@l */
/* 8046463C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80464640  EC 02 00 32 */	fmuls f0, f2, f0
/* 80464644  D0 1F 00 48 */	stfs f0, 0x48(r31)
lbl_80464648:
/* 80464648  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046464C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80464650  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80464654  7C 08 03 A6 */	mtlr r0
/* 80464658  38 21 00 30 */	addi r1, r1, 0x30
/* 8046465C  4E 80 00 20 */	blr 
