lbl_804BC330:
/* 804BC330  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804BC334  7C 08 02 A6 */	mflr r0
/* 804BC338  90 01 00 84 */	stw r0, 0x84(r1)
/* 804BC33C  39 61 00 80 */	addi r11, r1, 0x80
/* 804BC340  4B BD EB 91 */	bl func_8009AED0
/* 804BC344  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804BC348  7C 7C 1B 78 */	mr r28, r3
/* 804BC34C  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 804BC350  7C 9D 23 78 */	mr r29, r4
/* 804BC354  3F E3 00 02 */	addis r31, r3, 2
/* 804BC358  3B C0 00 00 */	li r30, 0
lbl_804BC35C:
/* 804BC35C  A8 1D 00 10 */	lha r0, 0x10(r29)
/* 804BC360  2C 00 00 02 */	cmpwi r0, 2
/* 804BC364  41 82 00 80 */	beq lbl_804BC3E4
/* 804BC368  40 80 00 14 */	bge lbl_804BC37C
/* 804BC36C  2C 00 00 00 */	cmpwi r0, 0
/* 804BC370  41 82 02 B0 */	beq lbl_804BC620
/* 804BC374  40 80 00 18 */	bge lbl_804BC38C
/* 804BC378  48 00 02 A8 */	b lbl_804BC620
lbl_804BC37C:
/* 804BC37C  2C 00 00 04 */	cmpwi r0, 4
/* 804BC380  41 82 01 94 */	beq lbl_804BC514
/* 804BC384  40 80 02 9C */	bge lbl_804BC620
/* 804BC388  48 00 00 88 */	b lbl_804BC410
lbl_804BC38C:
/* 804BC38C  A8 7D 00 14 */	lha r3, 0x14(r29)
/* 804BC390  2C 03 00 00 */	cmpwi r3, 0
/* 804BC394  40 81 00 10 */	ble lbl_804BC3A4
/* 804BC398  38 03 FF FF */	addi r0, r3, -1
/* 804BC39C  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 804BC3A0  48 00 02 80 */	b lbl_804BC620
lbl_804BC3A4:
/* 804BC3A4  80 DD 00 00 */	lwz r6, 0(r29)
/* 804BC3A8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804BC3AC  80 1D 00 04 */	lwz r0, 4(r29)
/* 804BC3B0  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804BC3B4  38 81 00 50 */	addi r4, r1, 0x50
/* 804BC3B8  38 A0 00 00 */	li r5, 0
/* 804BC3BC  90 C1 00 50 */	stw r6, 0x50(r1)
/* 804BC3C0  90 01 00 54 */	stw r0, 0x54(r1)
/* 804BC3C4  80 1D 00 08 */	lwz r0, 8(r29)
/* 804BC3C8  90 01 00 58 */	stw r0, 0x58(r1)
/* 804BC3CC  4B EE B4 65 */	bl mFI_SetFG_common
/* 804BC3D0  38 60 00 02 */	li r3, 2
/* 804BC3D4  38 00 00 11 */	li r0, 0x11
/* 804BC3D8  B0 7D 00 10 */	sth r3, 0x10(r29)
/* 804BC3DC  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 804BC3E0  48 00 02 40 */	b lbl_804BC620
lbl_804BC3E4:
/* 804BC3E4  A8 7D 00 14 */	lha r3, 0x14(r29)
/* 804BC3E8  2C 03 00 00 */	cmpwi r3, 0
/* 804BC3EC  41 81 00 18 */	bgt lbl_804BC404
/* 804BC3F0  38 60 00 00 */	li r3, 0
/* 804BC3F4  38 00 00 03 */	li r0, 3
/* 804BC3F8  B0 7D 00 14 */	sth r3, 0x14(r29)
/* 804BC3FC  B0 1D 00 10 */	sth r0, 0x10(r29)
/* 804BC400  48 00 02 20 */	b lbl_804BC620
lbl_804BC404:
/* 804BC404  38 03 FF FF */	addi r0, r3, -1
/* 804BC408  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 804BC40C  48 00 02 14 */	b lbl_804BC620
lbl_804BC410:
/* 804BC410  A8 9D 00 14 */	lha r4, 0x14(r29)
/* 804BC414  3C 00 43 30 */	lis r0, 0x4330
/* 804BC418  3C A0 80 64 */	lis r5, lit_770@ha /* 0x806460AC@ha */
/* 804BC41C  3C 60 80 64 */	lis r3, lit_2371@ha /* 0x8064611C@ha */
/* 804BC420  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 804BC424  90 01 00 60 */	stw r0, 0x60(r1)
/* 804BC428  C8 45 60 AC */	lfd f2, lit_770@l(r5)  /* 0x806460AC@l */
/* 804BC42C  90 81 00 64 */	stw r4, 0x64(r1)
/* 804BC430  C0 03 61 1C */	lfs f0, lit_2371@l(r3)  /* 0x8064611C@l */
/* 804BC434  C8 21 00 60 */	lfd f1, 0x60(r1)
/* 804BC438  EC 21 10 28 */	fsubs f1, f1, f2
/* 804BC43C  EC 01 00 24 */	fdivs f0, f1, f0
/* 804BC440  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 804BC444  A8 1D 00 14 */	lha r0, 0x14(r29)
/* 804BC448  2C 00 00 06 */	cmpwi r0, 6
/* 804BC44C  40 82 00 70 */	bne lbl_804BC4BC
/* 804BC450  7F A4 EB 78 */	mr r4, r29
/* 804BC454  38 60 01 3C */	li r3, 0x13c
/* 804BC458  48 17 1B 51 */	bl sAdo_OngenTrgStart
/* 804BC45C  80 DD 00 00 */	lwz r6, 0(r29)
/* 804BC460  38 61 00 38 */	addi r3, r1, 0x38
/* 804BC464  80 BD 00 04 */	lwz r5, 4(r29)
/* 804BC468  38 80 00 00 */	li r4, 0
/* 804BC46C  90 C1 00 38 */	stw r6, 0x38(r1)
/* 804BC470  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 804BC474  80 1D 00 08 */	lwz r0, 8(r29)
/* 804BC478  90 01 00 40 */	stw r0, 0x40(r1)
/* 804BC47C  90 C1 00 44 */	stw r6, 0x44(r1)
/* 804BC480  90 A1 00 48 */	stw r5, 0x48(r1)
/* 804BC484  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804BC488  4B EC CC 25 */	bl mCoBG_Wpos2Attribute
/* 804BC48C  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 804BC490  7C 69 07 34 */	extsh r9, r3
/* 804BC494  7F 87 E3 78 */	mr r7, r28
/* 804BC498  38 81 00 44 */	addi r4, r1, 0x44
/* 804BC49C  81 85 00 00 */	lwz r12, 0(r5)
/* 804BC4A0  38 60 00 61 */	li r3, 0x61
/* 804BC4A4  A1 1D 00 1A */	lhz r8, 0x1a(r29)
/* 804BC4A8  38 A0 00 01 */	li r5, 1
/* 804BC4AC  38 C0 00 00 */	li r6, 0
/* 804BC4B0  39 40 00 00 */	li r10, 0
/* 804BC4B4  7D 89 03 A6 */	mtctr r12
/* 804BC4B8  4E 80 04 21 */	bctrl 
lbl_804BC4BC:
/* 804BC4BC  3C 60 80 64 */	lis r3, lit_845@ha /* 0x806460B4@ha */
/* 804BC4C0  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 804BC4C4  C0 03 60 B4 */	lfs f0, lit_845@l(r3)  /* 0x806460B4@l */
/* 804BC4C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BC4CC  4C 41 13 82 */	cror 2, 1, 2
/* 804BC4D0  40 82 00 34 */	bne lbl_804BC504
/* 804BC4D4  80 7D 00 00 */	lwz r3, 0(r29)
/* 804BC4D8  38 81 00 2C */	addi r4, r1, 0x2c
/* 804BC4DC  80 1D 00 04 */	lwz r0, 4(r29)
/* 804BC4E0  38 A0 00 01 */	li r5, 1
/* 804BC4E4  90 61 00 2C */	stw r3, 0x2c(r1)
/* 804BC4E8  90 01 00 30 */	stw r0, 0x30(r1)
/* 804BC4EC  80 1D 00 08 */	lwz r0, 8(r29)
/* 804BC4F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BC4F4  A0 7D 00 12 */	lhz r3, 0x12(r29)
/* 804BC4F8  4B EE B3 39 */	bl mFI_SetFG_common
/* 804BC4FC  38 00 00 00 */	li r0, 0
/* 804BC500  B0 1D 00 10 */	sth r0, 0x10(r29)
lbl_804BC504:
/* 804BC504  A8 7D 00 14 */	lha r3, 0x14(r29)
/* 804BC508  38 03 00 01 */	addi r0, r3, 1
/* 804BC50C  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 804BC510  48 00 01 10 */	b lbl_804BC620
lbl_804BC514:
/* 804BC514  A8 9D 00 14 */	lha r4, 0x14(r29)
/* 804BC518  3C 00 43 30 */	lis r0, 0x4330
/* 804BC51C  3C A0 80 64 */	lis r5, lit_770@ha /* 0x806460AC@ha */
/* 804BC520  3C 60 80 64 */	lis r3, lit_2372@ha /* 0x80646120@ha */
/* 804BC524  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 804BC528  90 01 00 60 */	stw r0, 0x60(r1)
/* 804BC52C  C8 45 60 AC */	lfd f2, lit_770@l(r5)  /* 0x806460AC@l */
/* 804BC530  3C C0 80 64 */	lis r6, lit_845@ha /* 0x806460B4@ha */
/* 804BC534  90 81 00 64 */	stw r4, 0x64(r1)
/* 804BC538  C0 03 61 20 */	lfs f0, lit_2372@l(r3)  /* 0x80646120@l */
/* 804BC53C  C8 21 00 60 */	lfd f1, 0x60(r1)
/* 804BC540  EC 21 10 28 */	fsubs f1, f1, f2
/* 804BC544  C0 46 60 B4 */	lfs f2, lit_845@l(r6)  /* 0x806460B4@l */
/* 804BC548  EC 01 00 24 */	fdivs f0, f1, f0
/* 804BC54C  EC 02 00 28 */	fsubs f0, f2, f0
/* 804BC550  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 804BC554  A8 1D 00 14 */	lha r0, 0x14(r29)
/* 804BC558  2C 00 00 00 */	cmpwi r0, 0
/* 804BC55C  40 82 00 70 */	bne lbl_804BC5CC
/* 804BC560  7F A4 EB 78 */	mr r4, r29
/* 804BC564  38 60 01 5B */	li r3, 0x15b
/* 804BC568  48 17 1A 41 */	bl sAdo_OngenTrgStart
/* 804BC56C  80 DD 00 00 */	lwz r6, 0(r29)
/* 804BC570  38 61 00 14 */	addi r3, r1, 0x14
/* 804BC574  80 BD 00 04 */	lwz r5, 4(r29)
/* 804BC578  38 80 00 00 */	li r4, 0
/* 804BC57C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804BC580  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804BC584  80 1D 00 08 */	lwz r0, 8(r29)
/* 804BC588  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804BC58C  90 C1 00 20 */	stw r6, 0x20(r1)
/* 804BC590  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804BC594  90 01 00 28 */	stw r0, 0x28(r1)
/* 804BC598  4B EC CB 15 */	bl mCoBG_Wpos2Attribute
/* 804BC59C  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 804BC5A0  7C 69 07 34 */	extsh r9, r3
/* 804BC5A4  7F 87 E3 78 */	mr r7, r28
/* 804BC5A8  38 81 00 20 */	addi r4, r1, 0x20
/* 804BC5AC  81 85 00 00 */	lwz r12, 0(r5)
/* 804BC5B0  38 60 00 61 */	li r3, 0x61
/* 804BC5B4  A1 1D 00 1A */	lhz r8, 0x1a(r29)
/* 804BC5B8  38 A0 00 01 */	li r5, 1
/* 804BC5BC  38 C0 00 00 */	li r6, 0
/* 804BC5C0  39 40 00 00 */	li r10, 0
/* 804BC5C4  7D 89 03 A6 */	mtctr r12
/* 804BC5C8  4E 80 04 21 */	bctrl 
lbl_804BC5CC:
/* 804BC5CC  3C 60 80 64 */	lis r3, data_8064608C@ha /* 0x8064608C@ha */
/* 804BC5D0  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 804BC5D4  C0 03 60 8C */	lfs f0, data_8064608C@l(r3)  /* 0x8064608C@l */
/* 804BC5D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BC5DC  4C 40 13 82 */	cror 2, 0, 2
/* 804BC5E0  40 82 00 34 */	bne lbl_804BC614
/* 804BC5E4  80 DD 00 00 */	lwz r6, 0(r29)
/* 804BC5E8  38 81 00 08 */	addi r4, r1, 8
/* 804BC5EC  80 1D 00 04 */	lwz r0, 4(r29)
/* 804BC5F0  38 60 00 00 */	li r3, 0
/* 804BC5F4  38 A0 00 01 */	li r5, 1
/* 804BC5F8  90 C1 00 08 */	stw r6, 8(r1)
/* 804BC5FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BC600  80 1D 00 08 */	lwz r0, 8(r29)
/* 804BC604  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BC608  4B EE B2 29 */	bl mFI_SetFG_common
/* 804BC60C  38 00 00 00 */	li r0, 0
/* 804BC610  B0 1D 00 10 */	sth r0, 0x10(r29)
lbl_804BC614:
/* 804BC614  A8 7D 00 14 */	lha r3, 0x14(r29)
/* 804BC618  38 03 00 01 */	addi r0, r3, 1
/* 804BC61C  B0 1D 00 14 */	sth r0, 0x14(r29)
lbl_804BC620:
/* 804BC620  3B DE 00 01 */	addi r30, r30, 1
/* 804BC624  3B BD 00 1C */	addi r29, r29, 0x1c
/* 804BC628  2C 1E 00 0D */	cmpwi r30, 0xd
/* 804BC62C  41 80 FD 30 */	blt lbl_804BC35C
/* 804BC630  39 61 00 80 */	addi r11, r1, 0x80
/* 804BC634  4B BD E8 E9 */	bl func_8009AF1C
/* 804BC638  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804BC63C  7C 08 03 A6 */	mtlr r0
/* 804BC640  38 21 00 80 */	addi r1, r1, 0x80
/* 804BC644  4E 80 00 20 */	blr 
