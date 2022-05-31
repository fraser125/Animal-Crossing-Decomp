lbl_803F38C4:
/* 803F38C4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803F38C8  7C 08 02 A6 */	mflr r0
/* 803F38CC  90 01 00 44 */	stw r0, 0x44(r1)
/* 803F38D0  39 61 00 40 */	addi r11, r1, 0x40
/* 803F38D4  4B CA 75 FD */	bl func_8009AED0
/* 803F38D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F38DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F38E0  3F E3 00 02 */	addis r31, r3, 2
/* 803F38E4  80 1F 61 30 */	lwz r0, 0x6130(r31)
/* 803F38E8  8B DF 61 23 */	lbz r30, 0x6123(r31)
/* 803F38EC  2C 00 00 01 */	cmpwi r0, 1
/* 803F38F0  40 82 00 20 */	bne lbl_803F3910
/* 803F38F4  88 1F 61 2F */	lbz r0, 0x612f(r31)
/* 803F38F8  28 00 00 00 */	cmplwi r0, 0
/* 803F38FC  40 82 00 14 */	bne lbl_803F3910
/* 803F3900  7F E3 FB 78 */	mr r3, r31
/* 803F3904  38 63 61 20 */	addi r3, r3, 0x6120
/* 803F3908  48 01 2E 15 */	bl lbRTC_GetTime
/* 803F390C  48 00 00 84 */	b lbl_803F3990
lbl_803F3910:
/* 803F3910  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F3914  38 00 00 3C */	li r0, 0x3c
/* 803F3918  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F391C  38 80 00 00 */	li r4, 0
/* 803F3920  3F A3 00 02 */	addis r29, r3, 2
/* 803F3924  8B 9D 61 2D */	lbz r28, 0x612d(r29)
/* 803F3928  80 7D 61 34 */	lwz r3, 0x6134(r29)
/* 803F392C  7F 9C 1A 14 */	add r28, r28, r3
/* 803F3930  7C 1C 03 96 */	divwu r0, r28, r0
/* 803F3934  7C 09 03 A6 */	mtctr r0
/* 803F3938  2C 1C 00 3C */	cmpwi r28, 0x3c
/* 803F393C  41 80 00 10 */	blt lbl_803F394C
lbl_803F3940:
/* 803F3940  3B 9C FF C4 */	addi r28, r28, -60
/* 803F3944  38 84 00 01 */	addi r4, r4, 1
/* 803F3948  42 00 FF F8 */	bdnz lbl_803F3940
lbl_803F394C:
/* 803F394C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F3950  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F3954  3C 63 00 02 */	addis r3, r3, 2
/* 803F3958  38 63 61 20 */	addi r3, r3, 0x6120
/* 803F395C  48 01 34 F1 */	bl lbRTC_Add_ss
/* 803F3960  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F3964  88 BF 61 23 */	lbz r5, 0x6123(r31)
/* 803F3968  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F396C  3C 83 00 02 */	addis r4, r3, 2
/* 803F3970  A0 64 61 26 */	lhz r3, 0x6126(r4)
/* 803F3974  88 84 61 25 */	lbz r4, 0x6125(r4)
/* 803F3978  48 01 38 51 */	bl lbRTC_Week
/* 803F397C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F3980  9B 9D 61 2D */	stb r28, 0x612d(r29)
/* 803F3984  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F3988  3C 84 00 02 */	addis r4, r4, 2
/* 803F398C  98 64 61 24 */	stb r3, 0x6124(r4)
lbl_803F3990:
/* 803F3990  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F3994  88 1F 61 23 */	lbz r0, 0x6123(r31)
/* 803F3998  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F399C  3F A3 00 02 */	addis r29, r3, 2
/* 803F39A0  7C 00 F0 40 */	cmplw r0, r30
/* 803F39A4  88 7D 61 21 */	lbz r3, 0x6121(r29)
/* 803F39A8  88 1D 61 22 */	lbz r0, 0x6122(r29)
/* 803F39AC  1C 63 00 3C */	mulli r3, r3, 0x3c
/* 803F39B0  88 9D 61 20 */	lbz r4, 0x6120(r29)
/* 803F39B4  1C 00 0E 10 */	mulli r0, r0, 0xe10
/* 803F39B8  7C 03 02 14 */	add r0, r3, r0
/* 803F39BC  7C 04 02 14 */	add r0, r4, r0
/* 803F39C0  90 1D 61 1C */	stw r0, 0x611c(r29)
/* 803F39C4  41 82 00 08 */	beq lbl_803F39CC
/* 803F39C8  4B FC 27 09 */	bl Kabu_manager
lbl_803F39CC:
/* 803F39CC  88 9D 61 21 */	lbz r4, 0x6121(r29)
/* 803F39D0  3C A0 43 30 */	lis r5, 0x4330 /* 0x43300000@ha */
/* 803F39D4  88 1D 61 22 */	lbz r0, 0x6122(r29)
/* 803F39D8  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806432E4@ha */
/* 803F39DC  1C C4 00 3C */	mulli r6, r4, 0x3c
/* 803F39E0  88 FD 61 20 */	lbz r7, 0x6120(r29)
/* 803F39E4  C8 83 32 E4 */	lfd f4, lit_505@l(r3)  /* 0x806432E4@l */
/* 803F39E8  3C 80 80 64 */	lis r4, lit_502@ha /* 0x806432DC@ha */
/* 803F39EC  C0 44 32 DC */	lfs f2, lit_502@l(r4)  /* 0x806432DC@l */
/* 803F39F0  3C 60 80 64 */	lis r3, lit_503@ha /* 0x806432E0@ha */
/* 803F39F4  7C E7 32 14 */	add r7, r7, r6
/* 803F39F8  90 A1 00 08 */	stw r5, 8(r1)
/* 803F39FC  1C 00 0E 10 */	mulli r0, r0, 0xe10
/* 803F3A00  3C 80 80 64 */	lis r4, lit_501@ha /* 0x806432D8@ha */
/* 803F3A04  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 803F3A08  90 A1 00 18 */	stw r5, 0x18(r1)
/* 803F3A0C  38 A4 32 D8 */	addi r5, r4, lit_501@l /* 0x806432D8@l */
/* 803F3A10  7C 07 02 14 */	add r0, r7, r0
/* 803F3A14  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803F3A18  90 C1 00 0C */	stw r6, 0xc(r1)
/* 803F3A1C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F3A20  39 61 00 40 */	addi r11, r1, 0x40
/* 803F3A24  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803F3A28  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F3A2C  C8 01 00 08 */	lfd f0, 8(r1)
/* 803F3A30  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 803F3A34  EC 60 20 28 */	fsubs f3, f0, f4
/* 803F3A38  C0 03 32 E0 */	lfs f0, lit_503@l(r3)  /* 0x806432E0@l */
/* 803F3A3C  EC 21 20 28 */	fsubs f1, f1, f4
/* 803F3A40  C0 85 00 00 */	lfs f4, 0x0000(r5)  /* 0x43300000@l */
/* 803F3A44  3C 64 00 02 */	addis r3, r4, 2
/* 803F3A48  EC 43 10 24 */	fdivs f2, f3, f2
/* 803F3A4C  EC 01 00 24 */	fdivs f0, f1, f0
/* 803F3A50  EC 24 00 B2 */	fmuls f1, f4, f2
/* 803F3A54  EC 04 00 32 */	fmuls f0, f4, f0
/* 803F3A58  FC 20 08 1E */	fctiwz f1, f1
/* 803F3A5C  FC 00 00 1E */	fctiwz f0, f0
/* 803F3A60  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 803F3A64  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 803F3A68  80 81 00 14 */	lwz r4, 0x14(r1)
/* 803F3A6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F3A70  B0 83 61 28 */	sth r4, 0x6128(r3)
/* 803F3A74  B0 03 61 2A */	sth r0, 0x612a(r3)
/* 803F3A78  4B CA 74 A5 */	bl func_8009AF1C
/* 803F3A7C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803F3A80  7C 08 03 A6 */	mtlr r0
/* 803F3A84  38 21 00 40 */	addi r1, r1, 0x40
/* 803F3A88  4E 80 00 20 */	blr 
