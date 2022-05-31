lbl_8061D5AC:
/* 8061D5AC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8061D5B0  7C 08 02 A6 */	mflr r0
/* 8061D5B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8061D5B8  39 61 00 40 */	addi r11, r1, 0x40
/* 8061D5BC  4B A7 D9 11 */	bl func_8009AECC
/* 8061D5C0  7C 7B 1B 78 */	mr r27, r3
/* 8061D5C4  A8 03 00 00 */	lha r0, 0(r3)
/* 8061D5C8  81 03 00 10 */	lwz r8, 0x10(r3)
/* 8061D5CC  20 00 00 0C */	subfic r0, r0, 0xc
/* 8061D5D0  80 E3 00 14 */	lwz r7, 0x14(r3)
/* 8061D5D4  7C 00 0E 70 */	srawi r0, r0, 1
/* 8061D5D8  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 8061D5DC  80 A3 00 34 */	lwz r5, 0x34(r3)
/* 8061D5E0  7C 09 07 35 */	extsh. r9, r0
/* 8061D5E4  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8061D5E8  80 1B 00 3C */	lwz r0, 0x3c(r27)
/* 8061D5EC  91 01 00 14 */	stw r8, 0x14(r1)
/* 8061D5F0  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8061D5F4  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8061D5F8  90 A1 00 08 */	stw r5, 8(r1)
/* 8061D5FC  90 61 00 0C */	stw r3, 0xc(r1)
/* 8061D600  90 01 00 10 */	stw r0, 0x10(r1)
/* 8061D604  40 80 00 0C */	bge lbl_8061D610
/* 8061D608  38 00 00 00 */	li r0, 0
/* 8061D60C  48 00 00 14 */	b lbl_8061D620
lbl_8061D610:
/* 8061D610  2C 09 00 05 */	cmpwi r9, 5
/* 8061D614  38 00 00 05 */	li r0, 5
/* 8061D618  41 81 00 08 */	bgt lbl_8061D620
/* 8061D61C  7D 20 4B 78 */	mr r0, r9
lbl_8061D620:
/* 8061D620  7C 00 07 34 */	extsh r0, r0
/* 8061D624  3C 60 80 6D */	lis r3, eSibuki_DrawSibukiPtn@ha /* 0x806D3538@ha */
/* 8061D628  54 1E 10 3A */	slwi r30, r0, 2
/* 8061D62C  3B E3 35 38 */	addi r31, r3, eSibuki_DrawSibukiPtn@l /* 0x806D3538@l */
/* 8061D630  7C 1F F0 2E */	lwzx r0, r31, r30
/* 8061D634  28 00 00 00 */	cmplwi r0, 0
/* 8061D638  41 82 01 90 */	beq lbl_8061D7C8
/* 8061D63C  80 A4 00 00 */	lwz r5, 0(r4)
/* 8061D640  80 65 02 D4 */	lwz r3, 0x2d4(r5)
/* 8061D644  38 03 FF C0 */	addi r0, r3, -64
/* 8061D648  90 05 02 D4 */	stw r0, 0x2d4(r5)
/* 8061D64C  7C 1C 03 78 */	mr r28, r0
/* 8061D650  83 A4 00 00 */	lwz r29, 0(r4)
/* 8061D654  7F A3 EB 78 */	mr r3, r29
/* 8061D658  4B DC 7B 01 */	bl _texture_z_light_fog_prim_xlu
/* 8061D65C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8061D660  3C 00 43 30 */	lis r0, 0x4330
/* 8061D664  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8061D668  3C A0 80 65 */	lis r5, lit_431@ha /* 0x8064CB84@ha */
/* 8061D66C  80 84 00 00 */	lwz r4, 0(r4)
/* 8061D670  3C 60 80 65 */	lis r3, lit_433@ha /* 0x8064CB8C@ha */
/* 8061D674  C8 23 CB 8C */	lfd f1, lit_433@l(r3)  /* 0x8064CB8C@l */
/* 8061D678  3C C0 80 65 */	lis r6, lit_430@ha /* 0x8064CB80@ha */
/* 8061D67C  A8 84 19 0A */	lha r4, 0x190a(r4)
/* 8061D680  7F 83 E3 78 */	mr r3, r28
/* 8061D684  90 01 00 20 */	stw r0, 0x20(r1)
/* 8061D688  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8061D68C  C0 85 CB 84 */	lfs f4, lit_431@l(r5)  /* 0x8064CB84@l */
/* 8061D690  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061D694  38 80 EA AB */	li r4, -5461
/* 8061D698  C0 E6 CB 80 */	lfs f7, lit_430@l(r6)  /* 0x8064CB80@l */
/* 8061D69C  38 A0 00 00 */	li r5, 0
/* 8061D6A0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8061D6A4  38 C0 00 00 */	li r6, 0
/* 8061D6A8  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8061D6AC  EC 60 08 28 */	fsubs f3, f0, f1
/* 8061D6B0  C0 21 00 08 */	lfs f1, 8(r1)
/* 8061D6B4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8061D6B8  C0 A1 00 18 */	lfs f5, 0x18(r1)
/* 8061D6BC  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8061D6C0  C0 81 00 14 */	lfs f4, 0x14(r1)
/* 8061D6C4  C0 C1 00 1C */	lfs f6, 0x1c(r1)
/* 8061D6C8  EC 67 18 2A */	fadds f3, f7, f3
/* 8061D6CC  EC 21 00 F2 */	fmuls f1, f1, f3
/* 8061D6D0  EC 42 00 F2 */	fmuls f2, f2, f3
/* 8061D6D4  EC 60 00 F2 */	fmuls f3, f0, f3
/* 8061D6D8  4B DF 0D 01 */	bl suMtxMakeSRT
/* 8061D6DC  80 9D 02 E0 */	lwz r4, 0x2e0(r29)
/* 8061D6E0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8061D6E4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8061D6E8  38 64 00 08 */	addi r3, r4, 8
/* 8061D6EC  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 8061D6F0  90 04 00 00 */	stw r0, 0(r4)
/* 8061D6F4  93 84 00 04 */	stw r28, 4(r4)
/* 8061D6F8  A8 1B 00 06 */	lha r0, 6(r27)
/* 8061D6FC  2C 00 00 00 */	cmpwi r0, 0
/* 8061D700  40 82 00 48 */	bne lbl_8061D748
/* 8061D704  80 DD 02 E0 */	lwz r6, 0x2e0(r29)
/* 8061D708  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA0000FF@ha */
/* 8061D70C  3C 80 C9 00 */	lis r4, 0xC900 /* 0xC8FFFF9B@ha */
/* 8061D710  3C 60 FB 00 */	lis r3, 0xfb00
/* 8061D714  38 06 00 08 */	addi r0, r6, 8
/* 8061D718  38 A5 00 FF */	addi r5, r5, 0x00FF /* 0xFA0000FF@l */
/* 8061D71C  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 8061D720  38 84 FF 9B */	addi r4, r4, 0xFF9B /* 0xC8FFFF9B@l */
/* 8061D724  38 00 00 FF */	li r0, 0xff
/* 8061D728  90 A6 00 00 */	stw r5, 0(r6)
/* 8061D72C  90 86 00 04 */	stw r4, 4(r6)
/* 8061D730  80 BD 02 E0 */	lwz r5, 0x2e0(r29)
/* 8061D734  38 85 00 08 */	addi r4, r5, 8
/* 8061D738  90 9D 02 E0 */	stw r4, 0x2e0(r29)
/* 8061D73C  90 65 00 00 */	stw r3, 0(r5)
/* 8061D740  90 05 00 04 */	stw r0, 4(r5)
/* 8061D744  48 00 00 44 */	b lbl_8061D788
lbl_8061D748:
/* 8061D748  80 DD 02 E0 */	lwz r6, 0x2e0(r29)
/* 8061D74C  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA0000FF@ha */
/* 8061D750  3C 80 C9 00 */	lis r4, 0xC900 /* 0xC8FFFFEB@ha */
/* 8061D754  3C 60 FB 00 */	lis r3, 0xfb00
/* 8061D758  38 06 00 08 */	addi r0, r6, 8
/* 8061D75C  38 A5 00 FF */	addi r5, r5, 0x00FF /* 0xFA0000FF@l */
/* 8061D760  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 8061D764  38 84 FF EB */	addi r4, r4, 0xFFEB /* 0xC8FFFFEB@l */
/* 8061D768  38 00 00 FF */	li r0, 0xff
/* 8061D76C  90 A6 00 00 */	stw r5, 0(r6)
/* 8061D770  90 86 00 04 */	stw r4, 4(r6)
/* 8061D774  80 BD 02 E0 */	lwz r5, 0x2e0(r29)
/* 8061D778  38 85 00 08 */	addi r4, r5, 8
/* 8061D77C  90 9D 02 E0 */	stw r4, 0x2e0(r29)
/* 8061D780  90 65 00 00 */	stw r3, 0(r5)
/* 8061D784  90 05 00 04 */	stw r0, 4(r5)
lbl_8061D788:
/* 8061D788  80 DD 02 E0 */	lwz r6, 0x2e0(r29)
/* 8061D78C  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 8061D790  3C 60 80 CC */	lis r3, ef_sibuki01_00_modelT@ha /* 0x80CBE5E0@ha */
/* 8061D794  3C 80 DE 00 */	lis r4, 0xde00
/* 8061D798  38 06 00 08 */	addi r0, r6, 8
/* 8061D79C  38 A5 00 20 */	addi r5, r5, 0x0020 /* 0xDB060020@l */
/* 8061D7A0  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 8061D7A4  38 03 E5 E0 */	addi r0, r3, ef_sibuki01_00_modelT@l /* 0x80CBE5E0@l */
/* 8061D7A8  90 A6 00 00 */	stw r5, 0(r6)
/* 8061D7AC  7C 7F F0 2E */	lwzx r3, r31, r30
/* 8061D7B0  90 66 00 04 */	stw r3, 4(r6)
/* 8061D7B4  80 BD 02 E0 */	lwz r5, 0x2e0(r29)
/* 8061D7B8  38 65 00 08 */	addi r3, r5, 8
/* 8061D7BC  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 8061D7C0  90 85 00 00 */	stw r4, 0(r5)
/* 8061D7C4  90 05 00 04 */	stw r0, 4(r5)
lbl_8061D7C8:
/* 8061D7C8  39 61 00 40 */	addi r11, r1, 0x40
/* 8061D7CC  4B A7 D7 4D */	bl func_8009AF18
/* 8061D7D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8061D7D4  7C 08 03 A6 */	mtlr r0
/* 8061D7D8  38 21 00 40 */	addi r1, r1, 0x40
/* 8061D7DC  4E 80 00 20 */	blr 
