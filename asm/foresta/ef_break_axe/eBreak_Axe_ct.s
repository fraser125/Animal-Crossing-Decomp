lbl_80605490:
/* 80605490  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80605494  7C 08 02 A6 */	mflr r0
/* 80605498  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8060549C  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 806054A0  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 806054A4  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 806054A8  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 806054AC  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 806054B0  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 806054B4  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 806054B8  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 806054BC  39 61 00 90 */	addi r11, r1, 0x90
/* 806054C0  4B A9 5A 11 */	bl func_8009AED0
/* 806054C4  7C BE 2B 78 */	mr r30, r5
/* 806054C8  7C 7D 1B 78 */	mr r29, r3
/* 806054CC  A8 65 00 00 */	lha r3, 0(r5)
/* 806054D0  3C 63 00 01 */	addis r3, r3, 1
/* 806054D4  38 03 80 00 */	addi r0, r3, -32768
/* 806054D8  7C 1F 07 34 */	extsh r31, r0
/* 806054DC  4B A5 78 19 */	bl fqrand
/* 806054E0  3C 80 80 65 */	lis r4, data_8064BBD4@ha /* 0x8064BBD4@ha */
/* 806054E4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 806054E8  C0 04 BB D4 */	lfs f0, data_8064BBD4@l(r4)  /* 0x8064BBD4@l */
/* 806054EC  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 806054F0  80 63 00 00 */	lwz r3, 0(r3)
/* 806054F4  EC 00 00 72 */	fmuls f0, f0, f1
/* 806054F8  A8 63 1B 8C */	lha r3, 0x1b8c(r3)
/* 806054FC  FC 00 00 1E */	fctiwz f0, f0
/* 80605500  38 03 00 23 */	addi r0, r3, 0x23
/* 80605504  54 00 08 3C */	slwi r0, r0, 1
/* 80605508  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8060550C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80605510  54 63 08 3C */	slwi r3, r3, 1
/* 80605514  7C 00 1A 14 */	add r0, r0, r3
/* 80605518  B0 1D 00 00 */	sth r0, 0(r29)
/* 8060551C  A8 1D 00 00 */	lha r0, 0(r29)
/* 80605520  B0 1D 00 56 */	sth r0, 0x56(r29)
/* 80605524  A8 1D 00 06 */	lha r0, 6(r29)
/* 80605528  2C 00 00 01 */	cmpwi r0, 1
/* 8060552C  40 81 00 30 */	ble lbl_8060555C
/* 80605530  4B A5 77 C5 */	bl fqrand
/* 80605534  3C 80 80 65 */	lis r4, lit_420@ha /* 0x8064BBDC@ha */
/* 80605538  3C 60 80 65 */	lis r3, lit_419@ha /* 0x8064BBD8@ha */
/* 8060553C  C0 44 BB DC */	lfs f2, lit_420@l(r4)  /* 0x8064BBDC@l */
/* 80605540  C0 03 BB D8 */	lfs f0, lit_419@l(r3)  /* 0x8064BBD8@l */
/* 80605544  EC 22 08 2A */	fadds f1, f2, f1
/* 80605548  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060554C  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 80605550  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 80605554  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 80605558  48 00 00 18 */	b lbl_80605570
lbl_8060555C:
/* 8060555C  3C 60 80 65 */	lis r3, lit_419@ha /* 0x8064BBD8@ha */
/* 80605560  C0 03 BB D8 */	lfs f0, lit_419@l(r3)  /* 0x8064BBD8@l */
/* 80605564  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 80605568  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 8060556C  D0 1D 00 34 */	stfs f0, 0x34(r29)
lbl_80605570:
/* 80605570  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80605574  3C 60 80 65 */	lis r3, lit_421@ha /* 0x8064BBE0@ha */
/* 80605578  38 A3 BB E0 */	addi r5, r3, lit_421@l /* 0x8064BBE0@l */
/* 8060557C  38 81 00 08 */	addi r4, r1, 8
/* 80605580  D0 1D 00 40 */	stfs f0, 0x40(r29)
/* 80605584  38 60 00 00 */	li r3, 0
/* 80605588  C0 25 00 00 */	lfs f1, 0(r5)
/* 8060558C  80 BD 00 10 */	lwz r5, 0x10(r29)
/* 80605590  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80605594  90 A1 00 08 */	stw r5, 8(r1)
/* 80605598  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060559C  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 806055A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806055A4  4B D8 A1 15 */	bl func_8038F6B8
/* 806055A8  D0 3D 00 44 */	stfs f1, 0x44(r29)
/* 806055AC  A8 7D 00 06 */	lha r3, 6(r29)
/* 806055B0  7C 60 07 35 */	extsh. r0, r3
/* 806055B4  40 82 00 B0 */	bne lbl_80605664
/* 806055B8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 806055BC  83 83 61 38 */	lwz r28, debug_mode@l(r3)  /* 0x81166138@l */
/* 806055C0  4B A5 77 35 */	bl fqrand
/* 806055C4  A8 7C 1B 86 */	lha r3, 0x1b86(r28)
/* 806055C8  3C C0 43 30 */	lis r6, 0x4330
/* 806055CC  A8 1C 1B 84 */	lha r0, 0x1b84(r28)
/* 806055D0  3C 80 80 65 */	lis r4, lit_445@ha /* 0x8064BC3C@ha */
/* 806055D4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 806055D8  3C A0 80 65 */	lis r5, lit_424@ha /* 0x8064BBEC@ha */
/* 806055DC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 806055E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806055E4  38 E5 BB EC */	addi r7, r5, lit_424@l /* 0x8064BBEC@l */
/* 806055E8  3C 60 80 65 */	lis r3, lit_423@ha /* 0x8064BBE8@ha */
/* 806055EC  90 C1 00 18 */	stw r6, 0x18(r1)
/* 806055F0  38 A3 BB E8 */	addi r5, r3, lit_423@l /* 0x8064BBE8@l */
/* 806055F4  C8 84 BC 3C */	lfd f4, lit_445@l(r4)  /* 0x8064BC3C@l */
/* 806055F8  3C 60 80 65 */	lis r3, lit_422@ha /* 0x8064BBE4@ha */
/* 806055FC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80605600  38 83 BB E4 */	addi r4, r3, lit_422@l /* 0x8064BBE4@l */
/* 80605604  90 01 00 24 */	stw r0, 0x24(r1)
/* 80605608  3C 60 80 65 */	lis r3, data_8064BBD4@ha /* 0x8064BBD4@ha */
/* 8060560C  EC 40 20 28 */	fsubs f2, f0, f4
/* 80605610  C0 67 00 00 */	lfs f3, 0(r7)
/* 80605614  90 C1 00 20 */	stw r6, 0x20(r1)
/* 80605618  C0 A5 00 00 */	lfs f5, 0(r5)
/* 8060561C  EC C3 10 2A */	fadds f6, f3, f2
/* 80605620  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80605624  C0 5D 00 44 */	lfs f2, 0x44(r29)
/* 80605628  EC 80 20 28 */	fsubs f4, f0, f4
/* 8060562C  C0 03 BB D4 */	lfs f0, data_8064BBD4@l(r3)  /* 0x8064BBD4@l */
/* 80605630  EC C6 00 72 */	fmuls f6, f6, f1
/* 80605634  EC 02 00 2A */	fadds f0, f2, f0
/* 80605638  C0 64 00 00 */	lfs f3, 0(r4)
/* 8060563C  EC 25 20 2A */	fadds f1, f5, f4
/* 80605640  D0 1D 00 44 */	stfs f0, 0x44(r29)
/* 80605644  EC 21 30 2A */	fadds f1, f1, f6
/* 80605648  EC 03 00 72 */	fmuls f0, f3, f1
/* 8060564C  FC 00 00 1E */	fctiwz f0, f0
/* 80605650  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80605654  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80605658  7C 1F 02 14 */	add r0, r31, r0
/* 8060565C  7C 1F 07 34 */	extsh r31, r0
/* 80605660  48 00 00 FC */	b lbl_8060575C
lbl_80605664:
/* 80605664  2C 03 00 01 */	cmpwi r3, 1
/* 80605668  40 82 00 A0 */	bne lbl_80605708
/* 8060566C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80605670  83 83 61 38 */	lwz r28, debug_mode@l(r3)  /* 0x81166138@l */
/* 80605674  4B A5 76 81 */	bl fqrand
/* 80605678  A8 7C 1B 8A */	lha r3, 0x1b8a(r28)
/* 8060567C  3C A0 43 30 */	lis r5, 0x4330
/* 80605680  A8 1C 1B 88 */	lha r0, 0x1b88(r28)
/* 80605684  3C 80 80 65 */	lis r4, lit_445@ha /* 0x8064BC3C@ha */
/* 80605688  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8060568C  3C C0 80 65 */	lis r6, lit_424@ha /* 0x8064BBEC@ha */
/* 80605690  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80605694  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80605698  C8 84 BC 3C */	lfd f4, lit_445@l(r4)  /* 0x8064BC3C@l */
/* 8060569C  3C 60 80 65 */	lis r3, lit_422@ha /* 0x8064BBE4@ha */
/* 806056A0  90 A1 00 28 */	stw r5, 0x28(r1)
/* 806056A4  38 83 BB E4 */	addi r4, r3, lit_422@l /* 0x8064BBE4@l */
/* 806056A8  C0 C6 BB EC */	lfs f6, lit_424@l(r6)  /* 0x8064BBEC@l */
/* 806056AC  3C 60 80 65 */	lis r3, lit_425@ha /* 0x8064BBF0@ha */
/* 806056B0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 806056B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806056B8  EC 40 20 28 */	fsubs f2, f0, f4
/* 806056BC  C0 64 00 00 */	lfs f3, 0(r4)
/* 806056C0  90 A1 00 20 */	stw r5, 0x20(r1)
/* 806056C4  EC A6 10 2A */	fadds f5, f6, f2
/* 806056C8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 806056CC  C0 5D 00 44 */	lfs f2, 0x44(r29)
/* 806056D0  EC 80 20 28 */	fsubs f4, f0, f4
/* 806056D4  C0 03 BB F0 */	lfs f0, lit_425@l(r3)  /* 0x8064BBF0@l */
/* 806056D8  EC A5 00 72 */	fmuls f5, f5, f1
/* 806056DC  EC 02 00 2A */	fadds f0, f2, f0
/* 806056E0  EC 26 20 2A */	fadds f1, f6, f4
/* 806056E4  D0 1D 00 44 */	stfs f0, 0x44(r29)
/* 806056E8  EC 01 28 2A */	fadds f0, f1, f5
/* 806056EC  EC 03 00 32 */	fmuls f0, f3, f0
/* 806056F0  FC 00 00 1E */	fctiwz f0, f0
/* 806056F4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806056F8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806056FC  7C 1F 02 14 */	add r0, r31, r0
/* 80605700  7C 1F 07 34 */	extsh r31, r0
/* 80605704  48 00 00 58 */	b lbl_8060575C
lbl_80605708:
/* 80605708  4B A5 75 ED */	bl fqrand
/* 8060570C  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 80605710  3C 00 43 30 */	lis r0, 0x4330
/* 80605714  3C A0 80 65 */	lis r5, lit_426@ha /* 0x8064BBF4@ha */
/* 80605718  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8060571C  C0 05 BB F4 */	lfs f0, lit_426@l(r5)  /* 0x8064BBF4@l */
/* 80605720  3C 80 80 65 */	lis r4, lit_445@ha /* 0x8064BC3C@ha */
/* 80605724  90 01 00 28 */	stw r0, 0x28(r1)
/* 80605728  3C 60 80 65 */	lis r3, lit_427@ha /* 0x8064BBF8@ha */
/* 8060572C  EC 60 00 72 */	fmuls f3, f0, f1
/* 80605730  C8 44 BC 3C */	lfd f2, lit_445@l(r4)  /* 0x8064BC3C@l */
/* 80605734  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80605738  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 8060573C  EC 40 10 28 */	fsubs f2, f0, f2
/* 80605740  C0 03 BB F8 */	lfs f0, lit_427@l(r3)  /* 0x8064BBF8@l */
/* 80605744  EC 01 00 2A */	fadds f0, f1, f0
/* 80605748  EC 22 18 2A */	fadds f1, f2, f3
/* 8060574C  D0 1D 00 44 */	stfs f0, 0x44(r29)
/* 80605750  FC 00 08 1E */	fctiwz f0, f1
/* 80605754  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80605758  83 E1 00 24 */	lwz r31, 0x24(r1)
lbl_8060575C:
/* 8060575C  A8 1E 00 00 */	lha r0, 0(r30)
/* 80605760  B0 1D 00 54 */	sth r0, 0x54(r29)
/* 80605764  A8 7D 00 06 */	lha r3, 6(r29)
/* 80605768  7C 60 07 35 */	extsh. r0, r3
/* 8060576C  40 82 02 F8 */	bne lbl_80605A64
/* 80605770  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80605774  3C C0 43 30 */	lis r6, 0x4330
/* 80605778  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8060577C  3D 20 80 65 */	lis r9, lit_428@ha /* 0x8064BBFC@ha */
/* 80605780  81 44 00 00 */	lwz r10, 0(r4)
/* 80605784  3C 60 80 65 */	lis r3, lit_445@ha /* 0x8064BC3C@ha */
/* 80605788  39 03 BC 3C */	addi r8, r3, lit_445@l /* 0x8064BC3C@l */
/* 8060578C  3C A0 80 65 */	lis r5, lit_429@ha /* 0x8064BC00@ha */
/* 80605790  A8 EA 1B 54 */	lha r7, 0x1b54(r10)
/* 80605794  3C 60 80 65 */	lis r3, lit_424@ha /* 0x8064BBEC@ha */
/* 80605798  A8 8A 1B 56 */	lha r4, 0x1b56(r10)
/* 8060579C  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 806057A0  A8 0A 1B 58 */	lha r0, 0x1b58(r10)
/* 806057A4  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 806057A8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 806057AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806057B0  C8 88 00 00 */	lfd f4, 0(r8)
/* 806057B4  90 C1 00 28 */	stw r6, 0x28(r1)
/* 806057B8  C0 49 BB FC */	lfs f2, lit_428@l(r9)  /* 0x8064BBFC@l */
/* 806057BC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 806057C0  90 81 00 24 */	stw r4, 0x24(r1)
/* 806057C4  EC 20 20 28 */	fsubs f1, f0, f4
/* 806057C8  C0 65 BC 00 */	lfs f3, lit_429@l(r5)  /* 0x8064BC00@l */
/* 806057CC  90 C1 00 20 */	stw r6, 0x20(r1)
/* 806057D0  EF C2 08 2A */	fadds f30, f2, f1
/* 806057D4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 806057D8  C0 23 BB EC */	lfs f1, lit_424@l(r3)  /* 0x8064BBEC@l */
/* 806057DC  EC 40 20 28 */	fsubs f2, f0, f4
/* 806057E0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806057E4  A8 7D 00 54 */	lha r3, 0x54(r29)
/* 806057E8  90 C1 00 18 */	stw r6, 0x18(r1)
/* 806057EC  EF A3 10 2A */	fadds f29, f3, f2
/* 806057F0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 806057F4  EC 00 20 28 */	fsubs f0, f0, f4
/* 806057F8  EF 81 00 2A */	fadds f28, f1, f0
/* 806057FC  4B DB 52 A1 */	bl cos_s
/* 80605800  EF FE 00 72 */	fmuls f31, f30, f1
/* 80605804  A8 7D 00 54 */	lha r3, 0x54(r29)
/* 80605808  4B DB 52 E9 */	bl sin_s
/* 8060580C  EC 3C 00 72 */	fmuls f1, f28, f1
/* 80605810  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80605814  EC 21 F8 2A */	fadds f1, f1, f31
/* 80605818  EC 00 08 2A */	fadds f0, f0, f1
/* 8060581C  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 80605820  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80605824  EC 00 E8 2A */	fadds f0, f0, f29
/* 80605828  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 8060582C  A8 7D 00 54 */	lha r3, 0x54(r29)
/* 80605830  4B DB 52 C1 */	bl sin_s
/* 80605834  EF FE 00 72 */	fmuls f31, f30, f1
/* 80605838  A8 7D 00 54 */	lha r3, 0x54(r29)
/* 8060583C  4B DB 52 61 */	bl cos_s
/* 80605840  EC 1C 00 72 */	fmuls f0, f28, f1
/* 80605844  3C 00 43 30 */	lis r0, 0x4330
/* 80605848  3C 60 80 65 */	lis r3, lit_445@ha /* 0x8064BC3C@ha */
/* 8060584C  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 80605850  38 83 BC 3C */	addi r4, r3, lit_445@l /* 0x8064BC3C@l */
/* 80605854  90 01 00 30 */	stw r0, 0x30(r1)
/* 80605858  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8060585C  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80605860  3C 60 80 65 */	lis r3, lit_430@ha /* 0x8064BC04@ha */
/* 80605864  C8 44 00 00 */	lfd f2, 0(r4)
/* 80605868  38 C3 BC 04 */	addi r6, r3, lit_430@l /* 0x8064BC04@l */
/* 8060586C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80605870  EC 00 08 2A */	fadds f0, f0, f1
/* 80605874  3C 60 80 65 */	lis r3, lit_422@ha /* 0x8064BBE4@ha */
/* 80605878  38 E3 BB E4 */	addi r7, r3, lit_422@l /* 0x8064BBE4@l */
/* 8060587C  C0 66 00 00 */	lfs f3, 0(r6)
/* 80605880  3C 60 80 65 */	lis r3, lit_431@ha /* 0x8064BC08@ha */
/* 80605884  C0 87 00 00 */	lfs f4, 0(r7)
/* 80605888  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 8060588C  C0 23 BC 08 */	lfs f1, lit_431@l(r3)  /* 0x8064BC08@l */
/* 80605890  84 85 61 38 */	lwzu r4, debug_mode@l(r5)  /* 0x81166138@l */
/* 80605894  90 01 00 50 */	stw r0, 0x50(r1)
/* 80605898  A8 84 1B 5A */	lha r4, 0x1b5a(r4)
/* 8060589C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 806058A0  90 81 00 34 */	stw r4, 0x34(r1)
/* 806058A4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 806058A8  EC 00 10 28 */	fsubs f0, f0, f2
/* 806058AC  EC 03 00 2A */	fadds f0, f3, f0
/* 806058B0  EC 04 00 32 */	fmuls f0, f4, f0
/* 806058B4  FC 00 00 1E */	fctiwz f0, f0
/* 806058B8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806058BC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 806058C0  B0 1D 00 4C */	sth r0, 0x4c(r29)
/* 806058C4  80 65 00 00 */	lwz r3, 0(r5)
/* 806058C8  A8 9D 00 54 */	lha r4, 0x54(r29)
/* 806058CC  A8 03 1B 5C */	lha r0, 0x1b5c(r3)
/* 806058D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806058D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 806058D8  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 806058DC  EC 00 10 28 */	fsubs f0, f0, f2
/* 806058E0  EC 01 00 2A */	fadds f0, f1, f0
/* 806058E4  EC 04 00 32 */	fmuls f0, f4, f0
/* 806058E8  FC 00 00 1E */	fctiwz f0, f0
/* 806058EC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806058F0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 806058F4  7C 00 07 34 */	extsh r0, r0
/* 806058F8  7C 04 02 14 */	add r0, r4, r0
/* 806058FC  B0 1D 00 54 */	sth r0, 0x54(r29)
/* 80605900  80 65 00 00 */	lwz r3, 0(r5)
/* 80605904  A8 03 1B 5E */	lha r0, 0x1b5e(r3)
/* 80605908  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8060590C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80605910  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80605914  EC 00 10 28 */	fsubs f0, f0, f2
/* 80605918  EC 04 00 32 */	fmuls f0, f4, f0
/* 8060591C  FC 00 00 1E */	fctiwz f0, f0
/* 80605920  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80605924  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80605928  B0 1D 00 50 */	sth r0, 0x50(r29)
/* 8060592C  4B A5 73 A1 */	bl func_8005CCCC
/* 80605930  54 60 05 3E */	clrlwi r0, r3, 0x14
/* 80605934  B0 1D 00 4E */	sth r0, 0x4e(r29)
/* 80605938  4B A5 73 95 */	bl func_8005CCCC
/* 8060593C  54 60 05 3E */	clrlwi r0, r3, 0x14
/* 80605940  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80605944  B0 1D 00 52 */	sth r0, 0x52(r29)
/* 80605948  83 83 61 38 */	lwz r28, debug_mode@l(r3)  /* 0x81166138@l */
/* 8060594C  4B A5 73 A9 */	bl fqrand
/* 80605950  A8 9C 1B 76 */	lha r4, 0x1b76(r28)
/* 80605954  3C 60 43 30 */	lis r3, 0x4330
/* 80605958  A8 1C 1B 74 */	lha r0, 0x1b74(r28)
/* 8060595C  3C A0 80 65 */	lis r5, lit_445@ha /* 0x8064BC3C@ha */
/* 80605960  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80605964  90 61 00 60 */	stw r3, 0x60(r1)
/* 80605968  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8060596C  3C C0 80 65 */	lis r6, lit_433@ha /* 0x8064BC10@ha */
/* 80605970  90 81 00 64 */	stw r4, 0x64(r1)
/* 80605974  38 85 BC 3C */	addi r4, r5, lit_445@l /* 0x8064BC3C@l */
/* 80605978  C8 64 00 00 */	lfd f3, 0(r4)
/* 8060597C  38 A6 BC 10 */	addi r5, r6, lit_433@l /* 0x8064BC10@l */
/* 80605980  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 80605984  3C C0 80 65 */	lis r6, lit_434@ha /* 0x8064BC14@ha */
/* 80605988  90 61 00 68 */	stw r3, 0x68(r1)
/* 8060598C  38 86 BC 14 */	addi r4, r6, lit_434@l /* 0x8064BC14@l */
/* 80605990  EC 40 18 28 */	fsubs f2, f0, f3
/* 80605994  C0 85 00 00 */	lfs f4, 0(r5)
/* 80605998  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8060599C  3C C0 80 65 */	lis r6, lit_432@ha /* 0x8064BC0C@ha */
/* 806059A0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 806059A4  C0 A4 00 00 */	lfs f5, 0(r4)
/* 806059A8  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 806059AC  EC 44 00 B2 */	fmuls f2, f4, f2
/* 806059B0  C0 C6 BC 0C */	lfs f6, lit_432@l(r6)  /* 0x8064BC0C@l */
/* 806059B4  EC 00 18 28 */	fsubs f0, f0, f3
/* 806059B8  83 83 61 38 */	lwz r28, debug_mode@l(r3)  /* 0x81166138@l */
/* 806059BC  EC 45 10 2A */	fadds f2, f5, f2
/* 806059C0  EC 04 00 32 */	fmuls f0, f4, f0
/* 806059C4  EC 46 00 B2 */	fmuls f2, f6, f2
/* 806059C8  EC 06 00 2A */	fadds f0, f6, f0
/* 806059CC  EC 22 00 72 */	fmuls f1, f2, f1
/* 806059D0  EC 06 00 32 */	fmuls f0, f6, f0
/* 806059D4  EF E0 08 2A */	fadds f31, f0, f1
/* 806059D8  4B A5 73 1D */	bl fqrand
/* 806059DC  A8 7C 1B 7A */	lha r3, 0x1b7a(r28)
/* 806059E0  3C 80 43 30 */	lis r4, 0x4330
/* 806059E4  A8 1C 1B 78 */	lha r0, 0x1b78(r28)
/* 806059E8  3C E0 80 65 */	lis r7, lit_432@ha /* 0x8064BC0C@ha */
/* 806059EC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 806059F0  3C A0 80 65 */	lis r5, lit_445@ha /* 0x8064BC3C@ha */
/* 806059F4  90 61 00 74 */	stw r3, 0x74(r1)
/* 806059F8  38 65 BC 3C */	addi r3, r5, lit_445@l /* 0x8064BC3C@l */
/* 806059FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80605A00  C8 83 00 00 */	lfd f4, 0(r3)
/* 80605A04  90 81 00 70 */	stw r4, 0x70(r1)
/* 80605A08  3C C0 80 65 */	lis r6, lit_433@ha /* 0x8064BC10@ha */
/* 80605A0C  38 A6 BC 10 */	addi r5, r6, lit_433@l /* 0x8064BC10@l */
/* 80605A10  3C 60 80 65 */	lis r3, lit_435@ha /* 0x8064BC18@ha */
/* 80605A14  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 80605A18  3C C0 80 65 */	lis r6, lit_436@ha /* 0x8064BC1C@ha */
/* 80605A1C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80605A20  EC 40 20 28 */	fsubs f2, f0, f4
/* 80605A24  C0 A5 00 00 */	lfs f5, 0(r5)
/* 80605A28  90 81 00 78 */	stw r4, 0x78(r1)
/* 80605A2C  C0 C6 BC 1C */	lfs f6, lit_436@l(r6)  /* 0x8064BC1C@l */
/* 80605A30  EC 65 00 B2 */	fmuls f3, f5, f2
/* 80605A34  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80605A38  C0 E7 BC 0C */	lfs f7, lit_432@l(r7)  /* 0x8064BC0C@l */
/* 80605A3C  EC 00 20 28 */	fsubs f0, f0, f4
/* 80605A40  C0 43 BC 18 */	lfs f2, lit_435@l(r3)  /* 0x8064BC18@l */
/* 80605A44  EC 66 18 2A */	fadds f3, f6, f3
/* 80605A48  EC 05 00 32 */	fmuls f0, f5, f0
/* 80605A4C  EC 67 00 F2 */	fmuls f3, f7, f3
/* 80605A50  EC 02 00 2A */	fadds f0, f2, f0
/* 80605A54  EC 23 00 72 */	fmuls f1, f3, f1
/* 80605A58  EC 07 00 32 */	fmuls f0, f7, f0
/* 80605A5C  EF 80 08 2A */	fadds f28, f0, f1
/* 80605A60  48 00 04 A8 */	b lbl_80605F08
lbl_80605A64:
/* 80605A64  2C 03 00 01 */	cmpwi r3, 1
/* 80605A68  40 82 03 00 */	bne lbl_80605D68
/* 80605A6C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80605A70  3C C0 43 30 */	lis r6, 0x4330
/* 80605A74  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80605A78  3D 20 80 65 */	lis r9, lit_437@ha /* 0x8064BC20@ha */
/* 80605A7C  81 44 00 00 */	lwz r10, 0(r4)
/* 80605A80  3C 60 80 65 */	lis r3, lit_445@ha /* 0x8064BC3C@ha */
/* 80605A84  39 03 BC 3C */	addi r8, r3, lit_445@l /* 0x8064BC3C@l */
/* 80605A88  3C A0 80 65 */	lis r5, lit_438@ha /* 0x8064BC24@ha */
/* 80605A8C  A8 EA 1B 60 */	lha r7, 0x1b60(r10)
/* 80605A90  3C 60 80 65 */	lis r3, lit_439@ha /* 0x8064BC28@ha */
/* 80605A94  A8 8A 1B 62 */	lha r4, 0x1b62(r10)
/* 80605A98  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 80605A9C  A8 0A 1B 64 */	lha r0, 0x1b64(r10)
/* 80605AA0  90 E1 00 7C */	stw r7, 0x7c(r1)
/* 80605AA4  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80605AA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80605AAC  C8 88 00 00 */	lfd f4, 0(r8)
/* 80605AB0  90 C1 00 78 */	stw r6, 0x78(r1)
/* 80605AB4  C0 49 BC 20 */	lfs f2, lit_437@l(r9)  /* 0x8064BC20@l */
/* 80605AB8  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80605ABC  90 81 00 74 */	stw r4, 0x74(r1)
/* 80605AC0  EC 20 20 28 */	fsubs f1, f0, f4
/* 80605AC4  C0 65 BC 24 */	lfs f3, lit_438@l(r5)  /* 0x8064BC24@l */
/* 80605AC8  90 C1 00 70 */	stw r6, 0x70(r1)
/* 80605ACC  EF 82 08 2A */	fadds f28, f2, f1
/* 80605AD0  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 80605AD4  C0 23 BC 28 */	lfs f1, lit_439@l(r3)  /* 0x8064BC28@l */
/* 80605AD8  EC 40 20 28 */	fsubs f2, f0, f4
/* 80605ADC  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80605AE0  A8 7D 00 54 */	lha r3, 0x54(r29)
/* 80605AE4  90 C1 00 68 */	stw r6, 0x68(r1)
/* 80605AE8  EF A3 10 2A */	fadds f29, f3, f2
/* 80605AEC  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80605AF0  EC 00 20 28 */	fsubs f0, f0, f4
/* 80605AF4  EF C1 00 2A */	fadds f30, f1, f0
/* 80605AF8  4B DB 4F A5 */	bl cos_s
/* 80605AFC  EF FC 00 72 */	fmuls f31, f28, f1
/* 80605B00  A8 7D 00 54 */	lha r3, 0x54(r29)
/* 80605B04  4B DB 4F ED */	bl sin_s
/* 80605B08  EC 3E 00 72 */	fmuls f1, f30, f1
/* 80605B0C  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80605B10  EC 21 F8 2A */	fadds f1, f1, f31
/* 80605B14  EC 00 08 2A */	fadds f0, f0, f1
/* 80605B18  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 80605B1C  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80605B20  EC 00 E8 2A */	fadds f0, f0, f29
/* 80605B24  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 80605B28  A8 7D 00 54 */	lha r3, 0x54(r29)
/* 80605B2C  4B DB 4F C5 */	bl sin_s
/* 80605B30  EF FC 00 72 */	fmuls f31, f28, f1
/* 80605B34  A8 7D 00 54 */	lha r3, 0x54(r29)
/* 80605B38  4B DB 4F 65 */	bl cos_s
/* 80605B3C  EC 1E 00 72 */	fmuls f0, f30, f1
/* 80605B40  3C 00 43 30 */	lis r0, 0x4330
/* 80605B44  3C 60 80 65 */	lis r3, lit_445@ha /* 0x8064BC3C@ha */
/* 80605B48  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 80605B4C  38 83 BC 3C */	addi r4, r3, lit_445@l /* 0x8064BC3C@l */
/* 80605B50  90 01 00 60 */	stw r0, 0x60(r1)
/* 80605B54  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80605B58  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80605B5C  3C 60 80 65 */	lis r3, lit_430@ha /* 0x8064BC04@ha */
/* 80605B60  C8 44 00 00 */	lfd f2, 0(r4)
/* 80605B64  38 C3 BC 04 */	addi r6, r3, lit_430@l /* 0x8064BC04@l */
/* 80605B68  90 01 00 50 */	stw r0, 0x50(r1)
/* 80605B6C  EC 00 08 2A */	fadds f0, f0, f1
/* 80605B70  3C 60 80 65 */	lis r3, lit_422@ha /* 0x8064BBE4@ha */
/* 80605B74  38 E3 BB E4 */	addi r7, r3, lit_422@l /* 0x8064BBE4@l */
/* 80605B78  C0 66 00 00 */	lfs f3, 0(r6)
/* 80605B7C  3C 60 80 65 */	lis r3, lit_431@ha /* 0x8064BC08@ha */
/* 80605B80  C0 87 00 00 */	lfs f4, 0(r7)
/* 80605B84  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 80605B88  C0 23 BC 08 */	lfs f1, lit_431@l(r3)  /* 0x8064BC08@l */
/* 80605B8C  84 85 61 38 */	lwzu r4, debug_mode@l(r5)  /* 0x81166138@l */
/* 80605B90  90 01 00 40 */	stw r0, 0x40(r1)
/* 80605B94  A8 84 1B 66 */	lha r4, 0x1b66(r4)
/* 80605B98  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80605B9C  90 81 00 64 */	stw r4, 0x64(r1)
/* 80605BA0  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 80605BA4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80605BA8  EC 03 00 2A */	fadds f0, f3, f0
/* 80605BAC  EC 04 00 32 */	fmuls f0, f4, f0
/* 80605BB0  FC 00 00 1E */	fctiwz f0, f0
/* 80605BB4  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80605BB8  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80605BBC  B0 1D 00 4C */	sth r0, 0x4c(r29)
/* 80605BC0  80 65 00 00 */	lwz r3, 0(r5)
/* 80605BC4  A8 9D 00 54 */	lha r4, 0x54(r29)
/* 80605BC8  A8 03 1B 68 */	lha r0, 0x1b68(r3)
/* 80605BCC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80605BD0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80605BD4  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80605BD8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80605BDC  EC 01 00 2A */	fadds f0, f1, f0
/* 80605BE0  EC 04 00 32 */	fmuls f0, f4, f0
/* 80605BE4  FC 00 00 1E */	fctiwz f0, f0
/* 80605BE8  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80605BEC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80605BF0  7C 00 07 34 */	extsh r0, r0
/* 80605BF4  7C 04 02 14 */	add r0, r4, r0
/* 80605BF8  B0 1D 00 54 */	sth r0, 0x54(r29)
/* 80605BFC  80 65 00 00 */	lwz r3, 0(r5)
/* 80605C00  A8 03 1B 6A */	lha r0, 0x1b6a(r3)
/* 80605C04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80605C08  90 01 00 44 */	stw r0, 0x44(r1)
/* 80605C0C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80605C10  EC 00 10 28 */	fsubs f0, f0, f2
/* 80605C14  EC 04 00 32 */	fmuls f0, f4, f0
/* 80605C18  FC 00 00 1E */	fctiwz f0, f0
/* 80605C1C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80605C20  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80605C24  B0 1D 00 50 */	sth r0, 0x50(r29)
/* 80605C28  4B A5 70 A5 */	bl func_8005CCCC
/* 80605C2C  54 60 05 3E */	clrlwi r0, r3, 0x14
/* 80605C30  B0 1D 00 4E */	sth r0, 0x4e(r29)
/* 80605C34  4B A5 70 99 */	bl func_8005CCCC
/* 80605C38  54 60 05 3E */	clrlwi r0, r3, 0x14
/* 80605C3C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80605C40  B0 1D 00 52 */	sth r0, 0x52(r29)
/* 80605C44  83 83 61 38 */	lwz r28, debug_mode@l(r3)  /* 0x81166138@l */
/* 80605C48  4B A5 70 AD */	bl fqrand
/* 80605C4C  A8 7C 1B 7E */	lha r3, 0x1b7e(r28)
/* 80605C50  3C 80 43 30 */	lis r4, 0x4330 /* 0x43300000@ha */
/* 80605C54  A8 1C 1B 7C */	lha r0, 0x1b7c(r28)
/* 80605C58  3C E0 80 65 */	lis r7, lit_432@ha /* 0x8064BC0C@ha */
/* 80605C5C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80605C60  3C A0 80 65 */	lis r5, lit_445@ha /* 0x8064BC3C@ha */
/* 80605C64  90 61 00 34 */	stw r3, 0x34(r1)
/* 80605C68  38 65 BC 3C */	addi r3, r5, lit_445@l /* 0x8064BC3C@l */
/* 80605C6C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80605C70  C8 83 00 00 */	lfd f4, 0(r3)
/* 80605C74  90 81 00 30 */	stw r4, 0x30(r1)
/* 80605C78  3C C0 80 65 */	lis r6, lit_433@ha /* 0x8064BC10@ha */
/* 80605C7C  38 A6 BC 10 */	addi r5, r6, lit_433@l /* 0x8064BC10@l */
/* 80605C80  3C 60 80 65 */	lis r3, lit_434@ha /* 0x8064BC14@ha */
/* 80605C84  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80605C88  3C C0 80 65 */	lis r6, lit_420@ha /* 0x8064BBDC@ha */
/* 80605C8C  90 81 00 28 */	stw r4, 0x28(r1)
/* 80605C90  38 83 BC 14 */	addi r4, r3, lit_434@l /* 0x8064BC14@l */
/* 80605C94  EC 40 20 28 */	fsubs f2, f0, f4
/* 80605C98  C0 A5 00 00 */	lfs f5, 0(r5)
/* 80605C9C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80605CA0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80605CA4  C0 C6 BB DC */	lfs f6, lit_420@l(r6)  /* 0x8064BBDC@l */
/* 80605CA8  EC 65 00 B2 */	fmuls f3, f5, f2
/* 80605CAC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80605CB0  C0 E7 BC 0C */	lfs f7, lit_432@l(r7)  /* 0x8064BC0C@l */
/* 80605CB4  EC 00 20 28 */	fsubs f0, f0, f4
/* 80605CB8  C0 44 00 00 */	lfs f2, 0x0000(r4)  /* 0x43300000@l */
/* 80605CBC  EC 66 18 2A */	fadds f3, f6, f3
/* 80605CC0  83 83 61 38 */	lwz r28, debug_mode@l(r3)  /* 0x81166138@l */
/* 80605CC4  EC 05 00 32 */	fmuls f0, f5, f0
/* 80605CC8  EC 67 00 F2 */	fmuls f3, f7, f3
/* 80605CCC  EC 02 00 2A */	fadds f0, f2, f0
/* 80605CD0  EC 23 00 72 */	fmuls f1, f3, f1
/* 80605CD4  EC 07 00 32 */	fmuls f0, f7, f0
/* 80605CD8  EF E0 08 2A */	fadds f31, f0, f1
/* 80605CDC  4B A5 70 19 */	bl fqrand
/* 80605CE0  A8 7C 1B 82 */	lha r3, 0x1b82(r28)
/* 80605CE4  3C 80 43 30 */	lis r4, 0x4330
/* 80605CE8  A8 1C 1B 80 */	lha r0, 0x1b80(r28)
/* 80605CEC  3C E0 80 65 */	lis r7, lit_432@ha /* 0x8064BC0C@ha */
/* 80605CF0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80605CF4  3C A0 80 65 */	lis r5, lit_445@ha /* 0x8064BC3C@ha */
/* 80605CF8  90 61 00 24 */	stw r3, 0x24(r1)
/* 80605CFC  38 65 BC 3C */	addi r3, r5, lit_445@l /* 0x8064BC3C@l */
/* 80605D00  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80605D04  C8 83 00 00 */	lfd f4, 0(r3)
/* 80605D08  90 81 00 20 */	stw r4, 0x20(r1)
/* 80605D0C  3C C0 80 65 */	lis r6, lit_433@ha /* 0x8064BC10@ha */
/* 80605D10  38 A6 BC 10 */	addi r5, r6, lit_433@l /* 0x8064BC10@l */
/* 80605D14  3C 60 80 65 */	lis r3, lit_440@ha /* 0x8064BC2C@ha */
/* 80605D18  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80605D1C  3C C0 80 65 */	lis r6, lit_427@ha /* 0x8064BBF8@ha */
/* 80605D20  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80605D24  EC 40 20 28 */	fsubs f2, f0, f4
/* 80605D28  C0 A5 00 00 */	lfs f5, 0(r5)
/* 80605D2C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80605D30  C0 C6 BB F8 */	lfs f6, lit_427@l(r6)  /* 0x8064BBF8@l */
/* 80605D34  EC 65 00 B2 */	fmuls f3, f5, f2
/* 80605D38  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80605D3C  C0 E7 BC 0C */	lfs f7, lit_432@l(r7)  /* 0x8064BC0C@l */
/* 80605D40  EC 00 20 28 */	fsubs f0, f0, f4
/* 80605D44  C0 43 BC 2C */	lfs f2, lit_440@l(r3)  /* 0x8064BC2C@l */
/* 80605D48  EC 66 18 2A */	fadds f3, f6, f3
/* 80605D4C  EC 05 00 32 */	fmuls f0, f5, f0
/* 80605D50  EC 67 00 F2 */	fmuls f3, f7, f3
/* 80605D54  EC 02 00 2A */	fadds f0, f2, f0
/* 80605D58  EC 23 00 72 */	fmuls f1, f3, f1
/* 80605D5C  EC 07 00 32 */	fmuls f0, f7, f0
/* 80605D60  EF 80 08 2A */	fadds f28, f0, f1
/* 80605D64  48 00 01 A4 */	b lbl_80605F08
lbl_80605D68:
/* 80605D68  4B A5 6F C5 */	bl fqrand2
/* 80605D6C  3C 60 80 65 */	lis r3, data_8064BBD4@ha /* 0x8064BBD4@ha */
/* 80605D70  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80605D74  C0 43 BB D4 */	lfs f2, data_8064BBD4@l(r3)  /* 0x8064BBD4@l */
/* 80605D78  EC 22 00 72 */	fmuls f1, f2, f1
/* 80605D7C  EC 00 08 2A */	fadds f0, f0, f1
/* 80605D80  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 80605D84  4B A5 6F A9 */	bl fqrand2
/* 80605D88  3C 60 80 65 */	lis r3, data_8064BBD4@ha /* 0x8064BBD4@ha */
/* 80605D8C  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80605D90  C0 43 BB D4 */	lfs f2, data_8064BBD4@l(r3)  /* 0x8064BBD4@l */
/* 80605D94  EC 22 00 72 */	fmuls f1, f2, f1
/* 80605D98  EC 00 08 2A */	fadds f0, f0, f1
/* 80605D9C  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 80605DA0  4B A5 6F 8D */	bl fqrand2
/* 80605DA4  3C 60 80 65 */	lis r3, data_8064BBD4@ha /* 0x8064BBD4@ha */
/* 80605DA8  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80605DAC  C0 43 BB D4 */	lfs f2, data_8064BBD4@l(r3)  /* 0x8064BBD4@l */
/* 80605DB0  EC 22 00 72 */	fmuls f1, f2, f1
/* 80605DB4  EC 00 08 2A */	fadds f0, f0, f1
/* 80605DB8  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 80605DBC  4B A5 6F 11 */	bl func_8005CCCC
/* 80605DC0  B0 7D 00 4C */	sth r3, 0x4c(r29)
/* 80605DC4  4B A5 6F 09 */	bl func_8005CCCC
/* 80605DC8  B0 7D 00 50 */	sth r3, 0x50(r29)
/* 80605DCC  4B A5 6F 01 */	bl func_8005CCCC
/* 80605DD0  54 60 04 FE */	clrlwi r0, r3, 0x13
/* 80605DD4  B0 1D 00 4E */	sth r0, 0x4e(r29)
/* 80605DD8  4B A5 6E F5 */	bl func_8005CCCC
/* 80605DDC  54 60 04 FE */	clrlwi r0, r3, 0x13
/* 80605DE0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80605DE4  B0 1D 00 52 */	sth r0, 0x52(r29)
/* 80605DE8  83 83 61 38 */	lwz r28, debug_mode@l(r3)  /* 0x81166138@l */
/* 80605DEC  4B A5 6F 09 */	bl fqrand
/* 80605DF0  A8 7C 1B 6E */	lha r3, 0x1b6e(r28)
/* 80605DF4  3C 80 43 30 */	lis r4, 0x4330 /* 0x43300000@ha */
/* 80605DF8  A8 1C 1B 6C */	lha r0, 0x1b6c(r28)
/* 80605DFC  3C E0 80 65 */	lis r7, lit_432@ha /* 0x8064BC0C@ha */
/* 80605E00  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80605E04  3C A0 80 65 */	lis r5, lit_445@ha /* 0x8064BC3C@ha */
/* 80605E08  90 61 00 7C */	stw r3, 0x7c(r1)
/* 80605E0C  38 65 BC 3C */	addi r3, r5, lit_445@l /* 0x8064BC3C@l */
/* 80605E10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80605E14  C8 83 00 00 */	lfd f4, 0(r3)
/* 80605E18  90 81 00 78 */	stw r4, 0x78(r1)
/* 80605E1C  3C C0 80 65 */	lis r6, lit_433@ha /* 0x8064BC10@ha */
/* 80605E20  38 A6 BC 10 */	addi r5, r6, lit_433@l /* 0x8064BC10@l */
/* 80605E24  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064BC1C@ha */
/* 80605E28  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80605E2C  3C C0 80 65 */	lis r6, lit_441@ha /* 0x8064BC30@ha */
/* 80605E30  90 81 00 70 */	stw r4, 0x70(r1)
/* 80605E34  38 83 BC 1C */	addi r4, r3, lit_436@l /* 0x8064BC1C@l */
/* 80605E38  EC 40 20 28 */	fsubs f2, f0, f4
/* 80605E3C  C0 A5 00 00 */	lfs f5, 0(r5)
/* 80605E40  90 01 00 74 */	stw r0, 0x74(r1)
/* 80605E44  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80605E48  C0 C6 BC 30 */	lfs f6, lit_441@l(r6)  /* 0x8064BC30@l */
/* 80605E4C  EC 65 00 B2 */	fmuls f3, f5, f2
/* 80605E50  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 80605E54  C0 E7 BC 0C */	lfs f7, lit_432@l(r7)  /* 0x8064BC0C@l */
/* 80605E58  EC 00 20 28 */	fsubs f0, f0, f4
/* 80605E5C  C0 44 00 00 */	lfs f2, 0x0000(r4)  /* 0x43300000@l */
/* 80605E60  EC 66 18 2A */	fadds f3, f6, f3
/* 80605E64  83 83 61 38 */	lwz r28, debug_mode@l(r3)  /* 0x81166138@l */
/* 80605E68  EC 05 00 32 */	fmuls f0, f5, f0
/* 80605E6C  EC 67 00 F2 */	fmuls f3, f7, f3
/* 80605E70  EC 02 00 2A */	fadds f0, f2, f0
/* 80605E74  EC 23 00 72 */	fmuls f1, f3, f1
/* 80605E78  EC 07 00 32 */	fmuls f0, f7, f0
/* 80605E7C  EF E0 08 2A */	fadds f31, f0, f1
/* 80605E80  4B A5 6E 75 */	bl fqrand
/* 80605E84  A8 7C 1B 72 */	lha r3, 0x1b72(r28)
/* 80605E88  3C 80 43 30 */	lis r4, 0x4330
/* 80605E8C  A8 1C 1B 70 */	lha r0, 0x1b70(r28)
/* 80605E90  3C E0 80 65 */	lis r7, lit_432@ha /* 0x8064BC0C@ha */
/* 80605E94  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80605E98  3C A0 80 65 */	lis r5, lit_445@ha /* 0x8064BC3C@ha */
/* 80605E9C  90 61 00 6C */	stw r3, 0x6c(r1)
/* 80605EA0  38 65 BC 3C */	addi r3, r5, lit_445@l /* 0x8064BC3C@l */
/* 80605EA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80605EA8  C8 83 00 00 */	lfd f4, 0(r3)
/* 80605EAC  90 81 00 68 */	stw r4, 0x68(r1)
/* 80605EB0  3C C0 80 65 */	lis r6, lit_433@ha /* 0x8064BC10@ha */
/* 80605EB4  38 A6 BC 10 */	addi r5, r6, lit_433@l /* 0x8064BC10@l */
/* 80605EB8  3C 60 80 65 */	lis r3, lit_435@ha /* 0x8064BC18@ha */
/* 80605EBC  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80605EC0  3C C0 80 65 */	lis r6, lit_442@ha /* 0x8064BC34@ha */
/* 80605EC4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80605EC8  EC 40 20 28 */	fsubs f2, f0, f4
/* 80605ECC  C0 A5 00 00 */	lfs f5, 0(r5)
/* 80605ED0  90 81 00 60 */	stw r4, 0x60(r1)
/* 80605ED4  C0 C6 BC 34 */	lfs f6, lit_442@l(r6)  /* 0x8064BC34@l */
/* 80605ED8  EC 65 00 B2 */	fmuls f3, f5, f2
/* 80605EDC  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 80605EE0  C0 E7 BC 0C */	lfs f7, lit_432@l(r7)  /* 0x8064BC0C@l */
/* 80605EE4  EC 00 20 28 */	fsubs f0, f0, f4
/* 80605EE8  C0 43 BC 18 */	lfs f2, lit_435@l(r3)  /* 0x8064BC18@l */
/* 80605EEC  EC 66 18 2A */	fadds f3, f6, f3
/* 80605EF0  EC 05 00 32 */	fmuls f0, f5, f0
/* 80605EF4  EC 67 00 F2 */	fmuls f3, f7, f3
/* 80605EF8  EC 02 00 2A */	fadds f0, f2, f0
/* 80605EFC  EC 23 00 72 */	fmuls f1, f3, f1
/* 80605F00  EC 07 00 32 */	fmuls f0, f7, f0
/* 80605F04  EF 80 08 2A */	fadds f28, f0, f1
lbl_80605F08:
/* 80605F08  7F E3 FB 78 */	mr r3, r31
/* 80605F0C  4B DB 4B E5 */	bl sin_s
/* 80605F10  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80605F14  7F E3 FB 78 */	mr r3, r31
/* 80605F18  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 80605F1C  4B DB 4B 81 */	bl cos_s
/* 80605F20  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80605F24  3C 60 80 65 */	lis r3, lit_443@ha /* 0x8064BC38@ha */
/* 80605F28  C0 03 BC 38 */	lfs f0, lit_443@l(r3)  /* 0x8064BC38@l */
/* 80605F2C  D0 3D 00 24 */	stfs f1, 0x24(r29)
/* 80605F30  D3 9D 00 20 */	stfs f28, 0x20(r29)
/* 80605F34  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 80605F38  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80605F3C  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80605F40  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 80605F44  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80605F48  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 80605F4C  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 80605F50  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 80605F54  39 61 00 90 */	addi r11, r1, 0x90
/* 80605F58  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 80605F5C  4B A9 4F C1 */	bl func_8009AF1C
/* 80605F60  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80605F64  7C 08 03 A6 */	mtlr r0
/* 80605F68  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80605F6C  4E 80 00 20 */	blr 
