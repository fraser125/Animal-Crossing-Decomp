lbl_804CB240:
/* 804CB240  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804CB244  7C 08 02 A6 */	mflr r0
/* 804CB248  90 01 00 84 */	stw r0, 0x84(r1)
/* 804CB24C  39 61 00 80 */	addi r11, r1, 0x80
/* 804CB250  4B BC FC 81 */	bl func_8009AED0
/* 804CB254  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804CB258  7C 7C 1B 78 */	mr r28, r3
/* 804CB25C  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 804CB260  7C 9D 23 78 */	mr r29, r4
/* 804CB264  3F E3 00 02 */	addis r31, r3, 2
/* 804CB268  3B C0 00 00 */	li r30, 0
lbl_804CB26C:
/* 804CB26C  A8 1D 00 10 */	lha r0, 0x10(r29)
/* 804CB270  2C 00 00 02 */	cmpwi r0, 2
/* 804CB274  41 82 00 80 */	beq lbl_804CB2F4
/* 804CB278  40 80 00 14 */	bge lbl_804CB28C
/* 804CB27C  2C 00 00 00 */	cmpwi r0, 0
/* 804CB280  41 82 02 B0 */	beq lbl_804CB530
/* 804CB284  40 80 00 18 */	bge lbl_804CB29C
/* 804CB288  48 00 02 A8 */	b lbl_804CB530
lbl_804CB28C:
/* 804CB28C  2C 00 00 04 */	cmpwi r0, 4
/* 804CB290  41 82 01 94 */	beq lbl_804CB424
/* 804CB294  40 80 02 9C */	bge lbl_804CB530
/* 804CB298  48 00 00 88 */	b lbl_804CB320
lbl_804CB29C:
/* 804CB29C  A8 7D 00 14 */	lha r3, 0x14(r29)
/* 804CB2A0  2C 03 00 00 */	cmpwi r3, 0
/* 804CB2A4  40 81 00 10 */	ble lbl_804CB2B4
/* 804CB2A8  38 03 FF FF */	addi r0, r3, -1
/* 804CB2AC  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 804CB2B0  48 00 02 80 */	b lbl_804CB530
lbl_804CB2B4:
/* 804CB2B4  80 DD 00 00 */	lwz r6, 0(r29)
/* 804CB2B8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804CB2BC  80 1D 00 04 */	lwz r0, 4(r29)
/* 804CB2C0  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804CB2C4  38 81 00 50 */	addi r4, r1, 0x50
/* 804CB2C8  38 A0 00 00 */	li r5, 0
/* 804CB2CC  90 C1 00 50 */	stw r6, 0x50(r1)
/* 804CB2D0  90 01 00 54 */	stw r0, 0x54(r1)
/* 804CB2D4  80 1D 00 08 */	lwz r0, 8(r29)
/* 804CB2D8  90 01 00 58 */	stw r0, 0x58(r1)
/* 804CB2DC  4B ED C5 55 */	bl mFI_SetFG_common
/* 804CB2E0  38 60 00 02 */	li r3, 2
/* 804CB2E4  38 00 00 11 */	li r0, 0x11
/* 804CB2E8  B0 7D 00 10 */	sth r3, 0x10(r29)
/* 804CB2EC  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 804CB2F0  48 00 02 40 */	b lbl_804CB530
lbl_804CB2F4:
/* 804CB2F4  A8 7D 00 14 */	lha r3, 0x14(r29)
/* 804CB2F8  2C 03 00 00 */	cmpwi r3, 0
/* 804CB2FC  41 81 00 18 */	bgt lbl_804CB314
/* 804CB300  38 60 00 00 */	li r3, 0
/* 804CB304  38 00 00 03 */	li r0, 3
/* 804CB308  B0 7D 00 14 */	sth r3, 0x14(r29)
/* 804CB30C  B0 1D 00 10 */	sth r0, 0x10(r29)
/* 804CB310  48 00 02 20 */	b lbl_804CB530
lbl_804CB314:
/* 804CB314  38 03 FF FF */	addi r0, r3, -1
/* 804CB318  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 804CB31C  48 00 02 14 */	b lbl_804CB530
lbl_804CB320:
/* 804CB320  A8 9D 00 14 */	lha r4, 0x14(r29)
/* 804CB324  3C 00 43 30 */	lis r0, 0x4330
/* 804CB328  3C A0 80 64 */	lis r5, lit_770@ha /* 0x806461FC@ha */
/* 804CB32C  3C 60 80 64 */	lis r3, lit_2371@ha /* 0x8064626C@ha */
/* 804CB330  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 804CB334  90 01 00 60 */	stw r0, 0x60(r1)
/* 804CB338  C8 45 61 FC */	lfd f2, lit_770@l(r5)  /* 0x806461FC@l */
/* 804CB33C  90 81 00 64 */	stw r4, 0x64(r1)
/* 804CB340  C0 03 62 6C */	lfs f0, lit_2371@l(r3)  /* 0x8064626C@l */
/* 804CB344  C8 21 00 60 */	lfd f1, 0x60(r1)
/* 804CB348  EC 21 10 28 */	fsubs f1, f1, f2
/* 804CB34C  EC 01 00 24 */	fdivs f0, f1, f0
/* 804CB350  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 804CB354  A8 1D 00 14 */	lha r0, 0x14(r29)
/* 804CB358  2C 00 00 06 */	cmpwi r0, 6
/* 804CB35C  40 82 00 70 */	bne lbl_804CB3CC
/* 804CB360  7F A4 EB 78 */	mr r4, r29
/* 804CB364  38 60 01 3C */	li r3, 0x13c
/* 804CB368  48 16 2C 41 */	bl sAdo_OngenTrgStart
/* 804CB36C  80 DD 00 00 */	lwz r6, 0(r29)
/* 804CB370  38 61 00 38 */	addi r3, r1, 0x38
/* 804CB374  80 BD 00 04 */	lwz r5, 4(r29)
/* 804CB378  38 80 00 00 */	li r4, 0
/* 804CB37C  90 C1 00 38 */	stw r6, 0x38(r1)
/* 804CB380  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 804CB384  80 1D 00 08 */	lwz r0, 8(r29)
/* 804CB388  90 01 00 40 */	stw r0, 0x40(r1)
/* 804CB38C  90 C1 00 44 */	stw r6, 0x44(r1)
/* 804CB390  90 A1 00 48 */	stw r5, 0x48(r1)
/* 804CB394  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804CB398  4B EB DD 15 */	bl mCoBG_Wpos2Attribute
/* 804CB39C  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 804CB3A0  7C 69 07 34 */	extsh r9, r3
/* 804CB3A4  7F 87 E3 78 */	mr r7, r28
/* 804CB3A8  38 81 00 44 */	addi r4, r1, 0x44
/* 804CB3AC  81 85 00 00 */	lwz r12, 0(r5)
/* 804CB3B0  38 60 00 61 */	li r3, 0x61
/* 804CB3B4  A1 1D 00 1A */	lhz r8, 0x1a(r29)
/* 804CB3B8  38 A0 00 01 */	li r5, 1
/* 804CB3BC  38 C0 00 00 */	li r6, 0
/* 804CB3C0  39 40 00 00 */	li r10, 0
/* 804CB3C4  7D 89 03 A6 */	mtctr r12
/* 804CB3C8  4E 80 04 21 */	bctrl 
lbl_804CB3CC:
/* 804CB3CC  3C 60 80 64 */	lis r3, lit_845@ha /* 0x80646204@ha */
/* 804CB3D0  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 804CB3D4  C0 03 62 04 */	lfs f0, lit_845@l(r3)  /* 0x80646204@l */
/* 804CB3D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CB3DC  4C 41 13 82 */	cror 2, 1, 2
/* 804CB3E0  40 82 00 34 */	bne lbl_804CB414
/* 804CB3E4  80 7D 00 00 */	lwz r3, 0(r29)
/* 804CB3E8  38 81 00 2C */	addi r4, r1, 0x2c
/* 804CB3EC  80 1D 00 04 */	lwz r0, 4(r29)
/* 804CB3F0  38 A0 00 01 */	li r5, 1
/* 804CB3F4  90 61 00 2C */	stw r3, 0x2c(r1)
/* 804CB3F8  90 01 00 30 */	stw r0, 0x30(r1)
/* 804CB3FC  80 1D 00 08 */	lwz r0, 8(r29)
/* 804CB400  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CB404  A0 7D 00 12 */	lhz r3, 0x12(r29)
/* 804CB408  4B ED C4 29 */	bl mFI_SetFG_common
/* 804CB40C  38 00 00 00 */	li r0, 0
/* 804CB410  B0 1D 00 10 */	sth r0, 0x10(r29)
lbl_804CB414:
/* 804CB414  A8 7D 00 14 */	lha r3, 0x14(r29)
/* 804CB418  38 03 00 01 */	addi r0, r3, 1
/* 804CB41C  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 804CB420  48 00 01 10 */	b lbl_804CB530
lbl_804CB424:
/* 804CB424  A8 9D 00 14 */	lha r4, 0x14(r29)
/* 804CB428  3C 00 43 30 */	lis r0, 0x4330
/* 804CB42C  3C A0 80 64 */	lis r5, lit_770@ha /* 0x806461FC@ha */
/* 804CB430  3C 60 80 64 */	lis r3, lit_2372@ha /* 0x80646270@ha */
/* 804CB434  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 804CB438  90 01 00 60 */	stw r0, 0x60(r1)
/* 804CB43C  C8 45 61 FC */	lfd f2, lit_770@l(r5)  /* 0x806461FC@l */
/* 804CB440  3C C0 80 64 */	lis r6, lit_845@ha /* 0x80646204@ha */
/* 804CB444  90 81 00 64 */	stw r4, 0x64(r1)
/* 804CB448  C0 03 62 70 */	lfs f0, lit_2372@l(r3)  /* 0x80646270@l */
/* 804CB44C  C8 21 00 60 */	lfd f1, 0x60(r1)
/* 804CB450  EC 21 10 28 */	fsubs f1, f1, f2
/* 804CB454  C0 46 62 04 */	lfs f2, lit_845@l(r6)  /* 0x80646204@l */
/* 804CB458  EC 01 00 24 */	fdivs f0, f1, f0
/* 804CB45C  EC 02 00 28 */	fsubs f0, f2, f0
/* 804CB460  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 804CB464  A8 1D 00 14 */	lha r0, 0x14(r29)
/* 804CB468  2C 00 00 00 */	cmpwi r0, 0
/* 804CB46C  40 82 00 70 */	bne lbl_804CB4DC
/* 804CB470  7F A4 EB 78 */	mr r4, r29
/* 804CB474  38 60 01 5B */	li r3, 0x15b
/* 804CB478  48 16 2B 31 */	bl sAdo_OngenTrgStart
/* 804CB47C  80 DD 00 00 */	lwz r6, 0(r29)
/* 804CB480  38 61 00 14 */	addi r3, r1, 0x14
/* 804CB484  80 BD 00 04 */	lwz r5, 4(r29)
/* 804CB488  38 80 00 00 */	li r4, 0
/* 804CB48C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804CB490  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804CB494  80 1D 00 08 */	lwz r0, 8(r29)
/* 804CB498  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804CB49C  90 C1 00 20 */	stw r6, 0x20(r1)
/* 804CB4A0  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804CB4A4  90 01 00 28 */	stw r0, 0x28(r1)
/* 804CB4A8  4B EB DC 05 */	bl mCoBG_Wpos2Attribute
/* 804CB4AC  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 804CB4B0  7C 69 07 34 */	extsh r9, r3
/* 804CB4B4  7F 87 E3 78 */	mr r7, r28
/* 804CB4B8  38 81 00 20 */	addi r4, r1, 0x20
/* 804CB4BC  81 85 00 00 */	lwz r12, 0(r5)
/* 804CB4C0  38 60 00 61 */	li r3, 0x61
/* 804CB4C4  A1 1D 00 1A */	lhz r8, 0x1a(r29)
/* 804CB4C8  38 A0 00 01 */	li r5, 1
/* 804CB4CC  38 C0 00 00 */	li r6, 0
/* 804CB4D0  39 40 00 00 */	li r10, 0
/* 804CB4D4  7D 89 03 A6 */	mtctr r12
/* 804CB4D8  4E 80 04 21 */	bctrl 
lbl_804CB4DC:
/* 804CB4DC  3C 60 80 64 */	lis r3, data_806461DC@ha /* 0x806461DC@ha */
/* 804CB4E0  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 804CB4E4  C0 03 61 DC */	lfs f0, data_806461DC@l(r3)  /* 0x806461DC@l */
/* 804CB4E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CB4EC  4C 40 13 82 */	cror 2, 0, 2
/* 804CB4F0  40 82 00 34 */	bne lbl_804CB524
/* 804CB4F4  80 DD 00 00 */	lwz r6, 0(r29)
/* 804CB4F8  38 81 00 08 */	addi r4, r1, 8
/* 804CB4FC  80 1D 00 04 */	lwz r0, 4(r29)
/* 804CB500  38 60 00 00 */	li r3, 0
/* 804CB504  38 A0 00 01 */	li r5, 1
/* 804CB508  90 C1 00 08 */	stw r6, 8(r1)
/* 804CB50C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CB510  80 1D 00 08 */	lwz r0, 8(r29)
/* 804CB514  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CB518  4B ED C3 19 */	bl mFI_SetFG_common
/* 804CB51C  38 00 00 00 */	li r0, 0
/* 804CB520  B0 1D 00 10 */	sth r0, 0x10(r29)
lbl_804CB524:
/* 804CB524  A8 7D 00 14 */	lha r3, 0x14(r29)
/* 804CB528  38 03 00 01 */	addi r0, r3, 1
/* 804CB52C  B0 1D 00 14 */	sth r0, 0x14(r29)
lbl_804CB530:
/* 804CB530  3B DE 00 01 */	addi r30, r30, 1
/* 804CB534  3B BD 00 1C */	addi r29, r29, 0x1c
/* 804CB538  2C 1E 00 0D */	cmpwi r30, 0xd
/* 804CB53C  41 80 FD 30 */	blt lbl_804CB26C
/* 804CB540  39 61 00 80 */	addi r11, r1, 0x80
/* 804CB544  4B BC F9 D9 */	bl func_8009AF1C
/* 804CB548  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804CB54C  7C 08 03 A6 */	mtlr r0
/* 804CB550  38 21 00 80 */	addi r1, r1, 0x80
/* 804CB554  4E 80 00 20 */	blr 
