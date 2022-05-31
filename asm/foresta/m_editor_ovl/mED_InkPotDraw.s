lbl_805DB700:
/* 805DB700  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805DB704  7C 08 02 A6 */	mflr r0
/* 805DB708  90 01 00 64 */	stw r0, 0x64(r1)
/* 805DB70C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805DB710  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805DB714  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 805DB718  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 805DB71C  39 61 00 40 */	addi r11, r1, 0x40
/* 805DB720  4B AB F7 B5 */	bl func_8009AED4
/* 805DB724  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DB728  FF C0 08 90 */	fmr f30, f1
/* 805DB72C  FF E0 10 90 */	fmr f31, f2
/* 805DB730  7C 9E 23 78 */	mr r30, r4
/* 805DB734  80 03 03 5C */	lwz r0, 0x35c(r3)
/* 805DB738  7C BF 2B 78 */	mr r31, r5
/* 805DB73C  2C 00 00 02 */	cmpwi r0, 2
/* 805DB740  41 82 00 20 */	beq lbl_805DB760
/* 805DB744  40 80 00 10 */	bge lbl_805DB754
/* 805DB748  2C 00 00 00 */	cmpwi r0, 0
/* 805DB74C  41 82 00 14 */	beq lbl_805DB760
/* 805DB750  48 00 01 F8 */	b lbl_805DB948
lbl_805DB754:
/* 805DB754  2C 00 00 05 */	cmpwi r0, 5
/* 805DB758  41 82 00 08 */	beq lbl_805DB760
/* 805DB75C  48 00 01 EC */	b lbl_805DB948
lbl_805DB760:
/* 805DB760  3C 60 80 65 */	lis r3, lit_1858@ha /* 0x8064B228@ha */
/* 805DB764  3C 80 80 65 */	lis r4, lit_1859@ha /* 0x8064B22C@ha */
/* 805DB768  38 A3 B2 28 */	addi r5, r3, lit_1858@l /* 0x8064B228@l */
/* 805DB76C  C0 64 B2 2C */	lfs f3, lit_1859@l(r4)  /* 0x8064B22C@l */
/* 805DB770  C0 25 00 00 */	lfs f1, 0(r5)
/* 805DB774  38 60 00 00 */	li r3, 0
/* 805DB778  FC 40 08 90 */	fmr f2, f1
/* 805DB77C  4B E3 0C 71 */	bl Matrix_scale
/* 805DB780  3C 60 80 65 */	lis r3, lit_1800@ha /* 0x8064B220@ha */
/* 805DB784  FC 20 F0 90 */	fmr f1, f30
/* 805DB788  C0 63 B2 20 */	lfs f3, lit_1800@l(r3)  /* 0x8064B220@l */
/* 805DB78C  FC 40 F8 90 */	fmr f2, f31
/* 805DB790  38 60 00 01 */	li r3, 1
/* 805DB794  4B E3 0B 6D */	bl Matrix_translate
/* 805DB798  A8 1E 00 18 */	lha r0, 0x18(r30)
/* 805DB79C  3C 60 43 30 */	lis r3, 0x4330
/* 805DB7A0  A9 1E 00 1A */	lha r8, 0x1a(r30)
/* 805DB7A4  3C 80 80 65 */	lis r4, lit_1907@ha /* 0x8064B23C@ha */
/* 805DB7A8  A8 DE 00 1E */	lha r6, 0x1e(r30)
/* 805DB7AC  38 A4 B2 3C */	addi r5, r4, lit_1907@l /* 0x8064B23C@l */
/* 805DB7B0  7C 00 41 D6 */	mullw r0, r0, r8
/* 805DB7B4  3C E0 80 65 */	lis r7, lit_1904@ha /* 0x8064B230@ha */
/* 805DB7B8  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 805DB7BC  90 61 00 18 */	stw r3, 0x18(r1)
/* 805DB7C0  C8 45 00 00 */	lfd f2, 0(r5)
/* 805DB7C4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805DB7C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805DB7CC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805DB7D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DB7D4  3C 80 80 65 */	lis r4, lit_1800@ha /* 0x8064B220@ha */
/* 805DB7D8  EC 20 10 28 */	fsubs f1, f0, f2
/* 805DB7DC  C0 67 B2 30 */	lfs f3, lit_1904@l(r7)  /* 0x8064B230@l */
/* 805DB7E0  90 61 00 20 */	stw r3, 0x20(r1)
/* 805DB7E4  C0 84 B2 20 */	lfs f4, lit_1800@l(r4)  /* 0x8064B220@l */
/* 805DB7E8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805DB7EC  EC 23 00 72 */	fmuls f1, f3, f1
/* 805DB7F0  EC 00 10 28 */	fsubs f0, f0, f2
/* 805DB7F4  EF E1 00 24 */	fdivs f31, f1, f0
/* 805DB7F8  FC 1F 18 40 */	fcmpo cr0, f31, f3
/* 805DB7FC  40 81 00 08 */	ble lbl_805DB804
/* 805DB800  FF E0 18 90 */	fmr f31, f3
lbl_805DB804:
/* 805DB804  2C 08 00 01 */	cmpwi r8, 1
/* 805DB808  40 82 00 60 */	bne lbl_805DB868
/* 805DB80C  7F C3 F3 78 */	mr r3, r30
/* 805DB810  4B FF D9 B1 */	bl mED_get_single_line_width
/* 805DB814  3C 80 43 30 */	lis r4, 0x4330
/* 805DB818  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805DB81C  A8 1E 00 1C */	lha r0, 0x1c(r30)
/* 805DB820  3C A0 80 65 */	lis r5, lit_1907@ha /* 0x8064B23C@ha */
/* 805DB824  90 61 00 24 */	stw r3, 0x24(r1)
/* 805DB828  3C 60 80 65 */	lis r3, lit_1904@ha /* 0x8064B230@ha */
/* 805DB82C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805DB830  C8 65 B2 3C */	lfd f3, lit_1907@l(r5)  /* 0x8064B23C@l */
/* 805DB834  90 81 00 20 */	stw r4, 0x20(r1)
/* 805DB838  C0 43 B2 30 */	lfs f2, lit_1904@l(r3)  /* 0x8064B230@l */
/* 805DB83C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805DB840  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805DB844  EC 20 18 28 */	fsubs f1, f0, f3
/* 805DB848  90 81 00 18 */	stw r4, 0x18(r1)
/* 805DB84C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805DB850  EC 22 00 72 */	fmuls f1, f2, f1
/* 805DB854  EC 00 18 28 */	fsubs f0, f0, f3
/* 805DB858  EC 81 00 24 */	fdivs f4, f1, f0
/* 805DB85C  FC 04 10 40 */	fcmpo cr0, f4, f2
/* 805DB860  40 81 00 08 */	ble lbl_805DB868
/* 805DB864  FC 80 10 90 */	fmr f4, f2
lbl_805DB868:
/* 805DB868  FC 1F 20 40 */	fcmpo cr0, f31, f4
/* 805DB86C  40 80 00 08 */	bge lbl_805DB874
/* 805DB870  FF E0 20 90 */	fmr f31, f4
lbl_805DB874:
/* 805DB874  3C 60 80 65 */	lis r3, lit_1905@ha /* 0x8064B234@ha */
/* 805DB878  38 00 00 20 */	li r0, 0x20
/* 805DB87C  38 83 B2 34 */	addi r4, r3, lit_1905@l /* 0x8064B234@l */
/* 805DB880  7F E3 FB 78 */	mr r3, r31
/* 805DB884  C0 04 00 00 */	lfs f0, 0(r4)
/* 805DB888  38 80 00 00 */	li r4, 0
/* 805DB88C  38 A0 00 00 */	li r5, 0
/* 805DB890  38 C0 00 00 */	li r6, 0
/* 805DB894  EC 00 07 F2 */	fmuls f0, f0, f31
/* 805DB898  38 E0 00 20 */	li r7, 0x20
/* 805DB89C  39 00 00 20 */	li r8, 0x20
/* 805DB8A0  39 20 00 01 */	li r9, 1
/* 805DB8A4  39 40 00 00 */	li r10, 0
/* 805DB8A8  FC 00 00 1E */	fctiwz f0, f0
/* 805DB8AC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805DB8B0  81 61 00 24 */	lwz r11, 0x24(r1)
/* 805DB8B4  91 61 00 08 */	stw r11, 8(r1)
/* 805DB8B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805DB8BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805DB8C0  4B E0 9D 01 */	bl two_tex_scroll_dolphin
/* 805DB8C4  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805DB8C8  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 805DB8CC  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805DB8D0  7C 7E 1B 78 */	mr r30, r3
/* 805DB8D4  90 1D 00 00 */	stw r0, 0(r29)
/* 805DB8D8  7F E3 FB 78 */	mr r3, r31
/* 805DB8DC  4B E3 1A F9 */	bl _Matrix_to_Mtx_new
/* 805DB8E0  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 805DB8E4  90 7D 00 04 */	stw r3, 4(r29)
/* 805DB8E8  38 04 00 20 */	addi r0, r4, 0x0020 /* 0xDB060020@l */
/* 805DB8EC  3C C0 80 A7 */	lis r6, kai_sousa_ink_mode@ha /* 0x80A70620@ha */
/* 805DB8F0  90 1D 00 08 */	stw r0, 8(r29)
/* 805DB8F4  3C A0 80 A7 */	lis r5, kai_sousa_ink_model@ha /* 0x80A70648@ha */
/* 805DB8F8  3C 80 80 A7 */	lis r4, kai_sousa_inktuboT_model@ha /* 0x80A706B8@ha */
/* 805DB8FC  3C 60 80 A7 */	lis r3, kai_sousa_inkmojiT_model@ha /* 0x80A706F8@ha */
/* 805DB900  93 DD 00 0C */	stw r30, 0xc(r29)
/* 805DB904  3C E0 DE 00 */	lis r7, 0xde00
/* 805DB908  38 C6 06 20 */	addi r6, r6, kai_sousa_ink_mode@l /* 0x80A70620@l */
/* 805DB90C  38 A5 06 48 */	addi r5, r5, kai_sousa_ink_model@l /* 0x80A70648@l */
/* 805DB910  90 FD 00 10 */	stw r7, 0x10(r29)
/* 805DB914  38 84 06 B8 */	addi r4, r4, kai_sousa_inktuboT_model@l /* 0x80A706B8@l */
/* 805DB918  38 03 06 F8 */	addi r0, r3, kai_sousa_inkmojiT_model@l /* 0x80A706F8@l */
/* 805DB91C  90 DD 00 14 */	stw r6, 0x14(r29)
/* 805DB920  90 FD 00 18 */	stw r7, 0x18(r29)
/* 805DB924  90 BD 00 1C */	stw r5, 0x1c(r29)
/* 805DB928  90 FD 00 20 */	stw r7, 0x20(r29)
/* 805DB92C  90 9D 00 24 */	stw r4, 0x24(r29)
/* 805DB930  3B BD 00 28 */	addi r29, r29, 0x28
/* 805DB934  7F A3 EB 78 */	mr r3, r29
/* 805DB938  90 FD 00 00 */	stw r7, 0(r29)
/* 805DB93C  3B BD 00 08 */	addi r29, r29, 8
/* 805DB940  90 03 00 04 */	stw r0, 4(r3)
/* 805DB944  93 BF 02 D0 */	stw r29, 0x2d0(r31)
lbl_805DB948:
/* 805DB948  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805DB94C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805DB950  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 805DB954  39 61 00 40 */	addi r11, r1, 0x40
/* 805DB958  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 805DB95C  4B AB F5 C5 */	bl func_8009AF20
/* 805DB960  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805DB964  7C 08 03 A6 */	mtlr r0
/* 805DB968  38 21 00 60 */	addi r1, r1, 0x60
/* 805DB96C  4E 80 00 20 */	blr 
